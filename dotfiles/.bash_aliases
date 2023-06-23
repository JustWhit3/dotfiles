#!/usr/bin/env bash

#============================================
#     CMake
#============================================
alias cinit="cmake -B build"
alias cbuild="cmake --build build"
alias cinstall="sudo cmake --build build --target install"
alias ctarget="cmake --build build --target"
alias cclean="rm -rf build"
alias cdebug="cmake -B build -DCMAKE_BUILD_TYPE=Debug"

#============================================
#     Docker
#============================================
alias dcompose="sudo docker-compose run --rm"

#============================================
#     apt
#============================================
alias ainstall="sudo apt install"

#============================================
#     System
#============================================
alias system_space="sudo du -h --max-depth=1 /"
alias current_space="du -sh *"
alias system_clean="bleachbit"