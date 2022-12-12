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
#     Virtualenv
#============================================

# virtualenv_info
function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
        [[ -n "$venv" ]] && echo "($venv) "
    else
        # In case you don't have one activated
        venv=""
    fi
}