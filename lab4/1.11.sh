#!/bin/bash

echo "��������:"
ls -l | grep ^d
echo "������� �����:"
ls -l | grep ^-
echo "���������� ������:"
ls -l | grep ^l
echo "���������� ����������:"
ls -l | grep ^c
echo "������� ����������:"
ls -l | grep ^b