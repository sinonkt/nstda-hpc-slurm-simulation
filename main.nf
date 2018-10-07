#!/usr/bin/env nextflow

HOME="/home/dev"
INPUT="${HOME}/Code/input"
RESULTS="${HOME}/Code/results"

def toDirTuple = {  dir -> tuple(dir.name, dir) }

etcs=Channel.fromPath("${INPUT}/etc/*", type: 'dir').map(toDirTuple) 
traces=Channel.fromPath("${INPUT}/traces/*", type: 'dir').map(toDirTuple) 

process simulate {

    disk '2 GB'

    publishDir "${RESULTS}/${etcId}_${traceId}", mode: 'copy'

    input:
    set etcId, etcDir from etcs
    set traceId, traceDir from traces

    output:
    set etcId, \
        traceId, \
        'jobcomp.log', \
        'sched.log', \
        'sdiag.out', \
        'simstat.out', \
        'sinfo.out', \
        'sprio.out', \
        'squeue.out', \
        'sdiag.csv', \
        'simstat_backfill.csv', \
        'sinfo.csv', \
        'sprio.csv', \
        'squeue.csv', \
        'slurmctld.log', \
        'slurmdbd.log' \
        into simulatedResults

    shell: 
    '''
    simulate !{etcDir} !{traceDir}
    '''
}

simulatedResults.subscribe {
    println it
}
