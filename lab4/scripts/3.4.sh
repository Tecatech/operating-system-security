#!/bin/bash

echo "��������:"
ls -l "$1" | grep ^d
echo "������� �����:"
ls -l "$1" | grep ^-
echo "���������� ������:"
ls -l "$1" | grep ^l
echo "���������� ����������:"
ls -l "$1" | grep ^c
echo "������� ����������:"
ls -l "$1" | grep ^b