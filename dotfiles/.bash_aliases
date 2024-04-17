#!/usr/bin/env bash

# CMake
alias cinit="cmake -B build"
alias cbuild="cmake --build build"
alias cinstall="sudo cmake --build build --target install"
alias ctarget="cmake --build build --target"
alias cclean="rm -rf build"
alias cdebug="cmake -B build -DCMAKE_BUILD_TYPE=Debug"

# Docker
alias dinit="docker buildx create --use"
alias dqt="docker buildx build --platform linux/amd64,linux/arm64 -t justwhit3/qt-6.4.2:gcc_11 --push ."

# apt
alias ainstall="sudo apt install"

# System
alias system_space="sudo du -h --max-depth=1 /"
alias current_space="du -sh *"
alias system_clean="bleachbit"

