#!/bin/bash
echo "----------------------------"
echo " SERVER PERFORMANCE STATS"
echo "----------------------------"
echo ""
echo " Total CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'
echo ""
echo " Memory Usage:"
free -m | awk 'NR==2{printf "Used: %s MB / Total: %s MB (%.2f%%)\n", $3, $2, $3*100/$2 }'
echo ""
echo " Disk Usage (/ partition):"
df -h / | awk 'NR==2{printf "Used: %s / Total: %s (%s used)\n", $3, $2, $5}'
echo ""
echo " Top 5 Processes by CPU Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""
echo " Top 5 Processes by Memory Usage:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo ""
echo "🖥OS Version:"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2

echo ""
echo " Uptime:"
uptime -p

echo ""
echo " Load Average:"
uptime | awk -F'load average: ' '{ print $2 }'

echo ""
echo " Logged In Users:"
who

echo ""
echo " Failed Login Attempts:"
grep "Failed password" /var/log/auth.log | wc -l
