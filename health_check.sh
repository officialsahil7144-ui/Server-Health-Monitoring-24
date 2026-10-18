
#!/usr/bin/env bash
set -u

echo "System Health Monitoring"
echo "------------------------"

echo
echo "System Uptime:"
uptime

echo
echo "CPU Information:"
if command -v nproc >/dev/null 2>&1; then
    echo "Available CPU cores: $(nproc)"
fi

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "Running Process Count:"
ps -e --no-headers | wc -l

echo
echo "System Health Check Completed."
