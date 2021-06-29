#!/bin/bash
set -e
all_args=$@
args_str=${all_args[9]}
formatted=$args_str | tr -s "\" \"" " "
all_args[9]=$formatted
echo ${all_args} 
/dependency-check/bin/dependency-check.sh  ${all_args} 