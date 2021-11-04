#!/bin/bash

echo -e "Домашний каталог пользователя\n$USER\nсодержит обычных файлов:"
find ~ -maxdepth 1 -type f -not -name ".*" | wc -l
echo "скрытых файлов:"
find ~ -maxdepth 1 -type f -name ".*" | wc -l