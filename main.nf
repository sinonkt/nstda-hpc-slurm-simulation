#!/usr/bin/env nextflow

HOME="/home/dev"
INPUT="${HOME}/Code/input"

// etcs=Channel.fromPath("${INPUT}/etc/*/")
// traces=Channel.fromPath("${INPUT}/traces/*/")
// Channel
//   .fromPath('/path/project_*/sample_*/R1.file')
//   .map {  file -> 
//       def project = file.parent.parent.name
//       def sample = file.parent.name    
//       return [ project, sample, file ] 
//    }
//   .set { your_channel_name }

process simulate {

    input:
    val test from Channel.from(1)

    output:
    stdout result

    shell: 
    '''
    ls -al
    '''
}

result.subscribe {
    println it
}