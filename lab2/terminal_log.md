```sh
[tecatech@10 test]$ ls -lR
.:
total 8
drw-rwxr-x. 2 tecatech tecatech 22 Sep 25 15:23 dir
-rw-r-----. 1 root     tecatech  5 Sep 25 15:16 file
-rw-------. 1 tecatech tecatech  0 Sep 25 15:35 file1
-rw-rw-rw-. 1 tecatech tecatech  0 Sep 25 15:36 file2
-rw-rw-r--. 1 tecatech tecatech  7 Sep 25 15:23 new_file

./dir:
ls: cannot access './dir/new_file': Permission denied
total 0
-????????? ? ? ? ?            ? new_file
[tecatech@10 test]$ history
    1  cd ~
    2  mkdir test && cd test
    3  touch file && ll file
    4  chmod 000 file
    5  echo "тест" > file
    6  cat file
    7  chmod u+w file && ll file
    8  echo "test" > file && cat file
    9  chmod g+r file && ll file
   10  cat file
   11  chmod u+r file && ls -l file
   12  cat file
   13  mkdir dir && touch dir/new_file && echo "file 2" > new_file
   14  ls dir
   15  chmod u-x dir
   16  cat dir/new_file
   17  rm dir/new_file
   18  chown root file
   19  chgrp root file
   20  umask 0077 && touch file1 && ll file1
   21  umask 0000 && touch file2 && ll file2
   22  cat file
   23  cat file
   24  ls -lR
   25  history
```
