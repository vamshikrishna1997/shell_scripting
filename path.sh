#!/bin/bash

#run a command which always work
mktemp
#storing the exit codes of mktemp
mktemp_ec=$?

#run a command which always fails
mkdir /home/ubuntu/two
mkdir_ec=$?
echo "mktemp returned success exit code which ${mktemp_ec}"
echo "mkdir returned failire exit code which  ${mkdir_ec}"
