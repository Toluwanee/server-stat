#!/bin/bash

echo -e "Total CPU/multiprocessor usage, and statistics"
mpstat

echo -e "\nTotal Memory usage in %"
free -h

echo -e "\nTotal disk usage"
df -h

echo -e "\nThis is the top 5 processes currently used by the CPU"
top -o %CPU | head -n 12 | tail -n 6


echo -e "\nTop 5 processes that are consuming memory"
top -o %MEM | head -n 12 | tail -n 6

echo -e "\nOperating system version"
cat /etc/*release

echo -e "\nLogged in users details"
w: check for logged in user

echo -e "\UPTIME AT LAST UPTIME"
uptime -s

echo -e "\nUPTIME AND LOAD AVERAGE"
uptime

echo ""
