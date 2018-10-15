# NSTDA-HPC Slurm Simulation


## Prerequisite
  - Docker for Mac / Docker for Window.

## Usage

  ### Run Simulation
  All slurm configuration locate in `input/etc/*`, for traces `input/traces/*`.
  - `./bin/root.sh` to spawn docker-nextflow-singularity session. then
  - (inside docker)> `./bin/run.sh main.nf` to run simulation for all combinations[`input/etc/*` X `input/traces/*`].
  - (inside docker)> `./bin/clean.sh` to clear nextflow cached && working dir.
  
  ### Analyse Simulated Results in RStudio server.
  Analytic code locate in `src`, ubccr example code in `tutorial`
  - `./bin/dev.sh` to spawn RStudio server (docker-r-slurm-sim-tools) session. then
  - (inside docker)> `echo "dev:your_new_passwd" | chpasswd` change password to secure localhost:8787 while developing.
  
# Credits 
- [Slurm Simulations Tools](https://github.com/ubccr-slurm-simulator/slurm_sim_tools) made by University at Buffalo.
- [Nextflow](https://github.com/nextflow-io/nextflow)
- [Singularity](https://github.com/sylabs/singularity)
