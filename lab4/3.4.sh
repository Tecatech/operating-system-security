#!/bin/bash

echo "Каталоги:"
ls -l "$1" | grep ^d
echo "Обычные файлы:"
ls -l "$1" | grep ^-
echo "Символьные ссылки:"
ls -l "$1" | grep ^l
echo "Символьные устройства:"
ls -l "$1" | grep ^c
echo "Блочные устройства:"
ls -l "$1" | grep ^b