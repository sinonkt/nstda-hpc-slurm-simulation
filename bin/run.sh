NX_CONFIG=nextflow.config
LOG_DIR=logs/.nextflow.log
WORK_DIR=works/

nextflow -log $LOG_DIR -C $NX_CONFIG run $1 -w $WORK_DIR -resume