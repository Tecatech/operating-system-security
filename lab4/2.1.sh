#!/bin/bash

date >> /tmp/run.log
echo "Hello, World!"
cat /tmp/run.log | wc -l >&2