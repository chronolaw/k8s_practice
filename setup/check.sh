#!/bin/sh

# chrono @ 2023-05

# check linux info
uname -a
cat /etc/os-release

# check hostname
hostname

# check hardware info
cat /proc/cpuinfo
cat /proc/meminfo | head

# check ip info
ip addr

# check shell
# . ./check.sh
#echo $0

