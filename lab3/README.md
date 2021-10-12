### ����������

������� ������� `find`, `xargs`, � `grep` � ������� ������� `man`.

### �������

��������� ������� `find`:

1. ������� ��� ����� � ��������, ��� ������� �������� ����� `pass`, ����� ������� � ��������� ��������.

   ```sh
   find / \( -type f -o -type d \) -name "*pass*"
   ```

1. ������� ��� ����� � ��������, ��� ������� �������� ����� `pass` ��� ����� ��������, ����� ������� � ��������� ��������.

   ```sh
   find / \( -type f -o -type d \) -iname "*pass*"
   ```

1. ������� ��� ����� � ��������, ��� ������� �������� ����� `pass`, ��������� ������� ������ ����� ���������, ����� ������� � ��������� ��������.

   ```sh
   find / -maxdepth 1 \( -type f -o -type d \) -name "*pass*"
   ```

1. ������� ��� ����� � ��������, ����� ������� ������������ �� `.bin`. ����� ���������� ��������� � �������� `/home`.

   ```sh
   find /home \( -type f -o -type d \) -name "*.bin"
   ```

1. ������� ��� **�����** (� ������ �����) � ����������� `bak` � ������� ��.

   ```sh
   find / -type f -name "*.bak" -delete
   ```

1. ������� ��� **�����** (� ������ �����) � ������������ `txt` � `sh`.

   ```sh
   find / -type f \( -name "*.txt" -o -name "*.sh" \)
   ```

1. ������� ��� **�����** (� ������ �����) � ������� �������� � �������� **������** ��� ����� (��� ��������), ���������, ������ ���������, ���������� ������ ������ �� ���� ���� � ��� ������ � ������.

   ```sh
   find . -maxdepth 1 -type f -printf "%f:%u:%g:%n:%s\n"
   ```

1. ������� ��� ������ **��������** � ������� ��������.

   ```sh
   find . -type d -empty
   ```

1. ������� ��� ������ **��������** � ������� �������� � ������� ��.

   ```sh
   find . -type d -empty -delete
   ```

1. ������� � ������� ��� ������ **�����** (� ������ �����).

   ```sh
   find / -type f -empty -delete
   ```

1. ������� ��� **�����** (� ������ �����) � ������� ��������, �� ������� ���� ���� �� ���� ������ ������.

   ```sh
   find . -maxdepth 1 -type f -links +0
   ```

1. ������� ����� � �������� � �������� `/etc`, **��** ������������� ������������ `root`.

   ```sh
   find /etc \( -type f -o -type d \) ! -user root
   ```

1. ������� ��� **�����** (� ������ �����), � ������� **���** ���������� `sh`.

   ```sh
   find / -type f ! -name "*.sh"
   ```

1. ������� ��� **�����** (� ������ �����), � ������� ���������� ������ ������ ����� ����.

   ```sh
   find / -type f -links +2
   ```

1. ������� ��� **�����** (� ������ �����) � �������� `/usr/bin`, ��������� ������ � ������� ������������� ����� ��� ������� �����.

   ```sh
   find /usr/bin -type f -atime +90
   ```

1. ������� ��� **�����** (� ������ �����) � ��������� `/usr/bin` � `/usr/share`, ��������� ��� ���������� � ������� ��������� 10 ����.

   ```sh
   find /usr/bin /usr/share -mtime -10
   ```

1. ������� � ������� ��� **�����** (� ������ �����) � �������� `/tmp`, ������� �� �������� ����� ���� ������.

   ```sh
   find /tmp -type f ! -ctime +14 -delete
   ```

1. ������� ��� **�����** (� ������ �����) � �������� `/usr/bin` � ������������� ������ suid/sgid.

   ```sh
   find /usr/bin -type f -perm /u+s,g+s
   ```

��������� ������� `find` � `xargs` ��� �������� `-exec` ������� `find`:

1. ������� ��� **�����** (� ������ �����) � ����������� `txt` � ����������� ���������� ����� �� ���� ���� ������.

   ```sh
   find / -type f -name "*.txt" | xargs wc -l
   ```

1. ������� ��� �������� � ��������� `.svn` � ������� ��, ������� ���������� ���� ���������, ������� ������ ������ �������� ������ �� �����.

   ```sh
   find / -type d -name ".svn" -delete | xargs -r0 echo
   ```

1. ������� ��� **�����** (� ������ �����) � ����������� `sh` � ��������� �� ����� �� ����������.

   ```sh
   find / -type f -name "*.sh" | xargs chmod +x
   ```

1. ������� ��� **�����** (� ������ �����) � ����������� `conf` � �������� `/etc` � ����������� �� ��������� ������, ��������� ������� du.

   ```sh
   find /etc -type f -name "*.conf" | xargs du -c
   ```

������������� �������, ������� �� �������� ����, ��� ������ � ���������, � ������ ������� ���������� ������� � ����������� �������, ����� ��� `!` � `&`.

��������� ������� `grep`:

1. �� ����� `/var/log/messages` ������� ������, ���������� �������� ����� `ERROR`, ��� ����� ��������.

   ```sh
   grep -i "ERROR" /var/log/messages
   ```

1. �� ����� `/var/log/messages` ������� **����������** �����, **��** ���������� �������� ����� `ERROR`, ��� ����� ��������.

   ```sh
   grep -iv "ERROR" /var/log/messages
   ```

1. �� ����� `/var/log/messages` ������� ������, ���������� **������ ����� `ERROR` �������**, � ������ ��������.

   ```sh
   grep -w "ERROR" /var/log/messages
   ```

1. ������� ���������� ����� �� ����� `/etc/group`, ����������� � �������� `wheel`.

   ```sh
   grep -c "wheel" /etc/group
   ```

1. ����� �� ���� ������ �� �������� �������� � ��������� ������������ ������, ���������� ������ `#!bin/bash`.

   ```sh
   grep -r "#!bin/bash"
   ```

1. �������� ���������� ������� ����� �������, ����� ��� �������� �������������� 10 ����� ����� ������� ���������� �������.

   ```sh
   grep -r "#!bin/bash" -A 10
   ```

1. ����� �� ���� ������ � ����������� `sh` �� �������� �������� � ��������� ������������ ������, ���������� ����� `echo` **�������**. � ������ ������� `grep` ��������� ����� �������� ������.

   ```sh
   grep -rw "echo" --include "*.sh" --color=auto
   ```

1. �������� ���������� ������� ����� �������, ����� ������� grep ���������� ����� ��� ����� � ����� ������, � ������� ���� ���������� ���������� � ��������.

   ```sh
   grep -nrw "echo" --include "*.sh" --color=auto
   ```

# ����� �� ������������ ������

���������� ������ ������������ ������ � ���� ����� Markdown �� ���� ���������, � ��� ������ �������� �������� �����.

```sh
git clone https://github.com/efanov/mephi.wiki.git
```

������������ ���� ��������� � ����������� �����������.