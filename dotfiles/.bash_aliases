#!/usr/bin/env bash

#============================================
#     CMake
#============================================
alias cinit="cmake -B build"
alias cbuild="cmake --build build"
alias cinstall="sudo cmake --build build --target install"
alias ctarget="cmake --build build --target"
alias cclean="rm -rf build"