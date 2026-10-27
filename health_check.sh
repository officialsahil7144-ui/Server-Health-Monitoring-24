#!/usr/bin/env bash 
set -u 
echo "Timestamp: $(date '+%F %T')" 
echo 
echo "Uptime and load:" 
uptime 
echo 
echo "Memory:" 
if command -v free >/dev/null 2>&1; then free -h; else cat /proc/meminfo | head -n 5; fi 
echo 
echo "Disk usage:" 
df -h / | tail -n 1 
echo 
echo "Top CPU processes:" 
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6 
echo 
echo "Health check completed." 
