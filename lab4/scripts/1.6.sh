#!/bin/bash

echo -e "�������� ������� ������������\n$USER\n�������� ������� ������:"
find ~ -maxdepth 1 -type f -not -name ".*" | wc -l
echo "������� ������:"
find ~ -maxdepth 1 -type f -name ".*" | wc -l