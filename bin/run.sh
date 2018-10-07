CODE_HOME=/home/dev/Code
NX_CONFIG=${CODE_HOME}/nextflow.config
LOG_DIR=${CODE_HOME}/logs/.nextflow.log
WORK_DIR=${CODE_HOME}/works

nextflow -log $LOG_DIR -C $NX_CONFIG run $1 -w $WORK_DIR -resume