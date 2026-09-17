#!/bin/sh

LOG_FILE="system_report.log"

echo "System Report" > "$LOG_FILE"
echo "=============" >> "$LOG_FILE"
echo "Date: $(date)" >> "$LOG_FILE"
echo "Hostname: $(hostname)" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "Disk Usage" >> "$LOG_FILE"
df -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "Memory Information" >> "$LOG_FILE"
free -h 2>/dev/null || vm_stat >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "Top Level Files" >> "$LOG_FILE"
ls -la >> "$LOG_FILE"

echo "Report saved to $LOG_FILE"
