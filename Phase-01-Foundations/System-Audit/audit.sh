#!/bin/bash

echo "Generating report..."
echo "--- SYSTEM AUDIT REPORT ---" > report.txt
echo "Generated on: $(date)" >> report.txt
echo "" >> report.txt

echo "1. KERNEL INFO:" >> report.txt
uname -a >> report.txt

echo -e "\n2. DISK USAGE (Top 5):" >> report.txt
df -h | head -n 6 >> report.txt

echo -e "\n3. MEMORY STATS:" >> report.txt
free -m >> report.txt

echo "Audit Complete. Results saved to report.txt"
