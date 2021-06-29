#!/bin/bash
set -e
all_args=$@
args_str=${all_args[9]}
echo "${args//' '/'\" \"'}"
formatted_args = "${args//' '/'\" \"'}"
all_args[9] = formatted_args

/dependency-check/bin/dependency-check.sh  ${all_args} 