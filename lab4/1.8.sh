#!/bin/bash

echo -e "��������� ������������:\n$USER"
ps -U $USER | wc -l
echo "��������� ������������ root:"
ps -U root | wc -l