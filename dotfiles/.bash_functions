#!/usr/bin/env bash

#============================================
#     HTCondor
#============================================

# condor_change_scheduler
function condor_change_scheduler (){
    export _condor_SCHEDD_HOST="bigbird$1.cern.ch"
    export _condor_CREDD_HOST="bigbird$1.cern.ch"
}
export -f condor_change_scheduler

# condor_check_schedulers
function condor_check_schedulers () {
    for n in {01..14} 
    do 
        condor_q -name bigbird0$n.cern.ch
    done
}
export -f condor_check_schedulers

#============================================
#     Virtual environments
#============================================

# virtualenv_info
function virtualenv_info(){
    if [[ -n "$VIRTUAL_ENV" ]]; then
        venv="${VIRTUAL_ENV##*/}"
        [[ -n "$venv" ]] && echo "($venv) "
    else
        venv=""
    fi
}

# condaenv_info
function condaenv_info(){
    if [[ -n "$CONDA_DEFAULT_ENV" ]]; then
        venv="${CONDA_DEFAULT_ENV##*/}"
        [[ -n "$venv" ]] && echo "($venv) "
    else
        venv=""
    fi
}