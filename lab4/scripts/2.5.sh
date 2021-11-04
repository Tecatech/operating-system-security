#!/bin/bash

find ~ -type f -name "*.txt" > /tmp/lab4.txt
cat /tmp/lab4.txt | xargs du -acb 2>/dev/null | tail -1 | cut -f1
cat /tmp/lab4.txt | xargs wc -l 2>/dev/null | tail -1 | awk '{print $1}'
rm /tmp/lab4.txt