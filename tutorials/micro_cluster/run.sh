export PATH=/opt/slurm_sim_tools/bin:$PATH


export CLUS_DIR=$(pwd)
export MACHINE_NAME="slurmsimcont"
export RUN_NAME="priority_saf"
export dtstart=79
export replica=1

slurmsim -v run_sim  -d \
            -e ${CLUS_DIR}/etc \
            -a ${CLUS_DIR}/etc/sacctmgr.script \
            -w ${CLUS_DIR}/workload/jobs500.events \
            -r ${CLUS_DIR}/results/${MACHINE_NAME}/${RUN_NAME}/dtstart_${dtstart}_${replica} \
            -dtstart $dtstart



