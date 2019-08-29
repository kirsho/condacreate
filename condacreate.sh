#!/bin/bash

# script to create a conda env locally
# 1st argument is env name
# 2nd arguments are app names. if more than one must be between quote
# and export env config in a yml file


CONDA=$(locate -r "conda3/bin/conda$")
CONDA_PATH=${CONDA%%conda}
$CONDA_PATH/conda create -y -n $1 $2
$CONDA_PATH/conda env export -n $1 --no-build > $1.yml





