#!/bin/bash
set -e
all_args=$@
args_str=${all_args[9]}
echo "${args//' '/'\" \"'}"
formatted=$args_str | tr -s "\" \"" " "
all_args[9]=$formatted

/dependency-check/bin/dependency-check.sh  ${all_args} 