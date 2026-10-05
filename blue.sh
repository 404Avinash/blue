#!/bin/bash


HOSTNAME=$(hostname)
USER=$(whoami)
KERNEL=$(uname -r)
UPTIME=$(uptime -p)
DATE=$(date)
CURRENT_SHELL="$SHELL"
DIRECTORY=$(pwd)
MEM_TOTAL=$(grep "MemTotal" /proc/meminfo  | awk '{print $2}')
MEM_AVAILABLE=$(grep "MemAvailable" /proc/meminfo  | awk '{print $2}')
MEM_USED=$((MEM_TOTAL - MEM_AVAILABLE))
MEM_USAGE=$((MEM_USED * 100 / MEM_TOTAL))
echo "=============================="
echo "           Blue v0.1"
echo "=============================="

echo "Hostname   : $HOSTNAME"

echo "User       : $USER"

echo "Kernel     : $KERNEL"

echo "Uptime     : $UPTIME"

echo "Date       : $DATE"

echo "SHELL      : $CURRENT_SHELL"

echo "Directory  : $DIRECTORY"

echo 

echo "MEMORY INFORMATION CHECK"
echo "------------------------------"

if [ -f /proc/meminfo ]
then 
	echo " Memory Inforation Is Available"
else
	echo " Memory Information Is Unavailable"
fi
echo 

echo "MEMORY"
echo "------------------------------"
echo "$MEM_TOTAL KB"
echo "$MEM_AVAILABLE KB"
echo "$MEM_USED KB"
echo "$MEM_USAGE%"
