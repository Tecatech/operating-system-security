* ��� ���������� ��� ���������� ������� `text-trap.sh`? ���������, ������.
    ```
    ��� ������� �� ���������� ������ Ctrl+c �� ����� ���������� ����������� ������� �� ������ SIGINT (Signal Interrupt), ������������� �������� trap, � ��������� �������� �����������.
    ```
* ��������, �� ����� ������� ������ ������� `ls -l /proc/self` � `ls -l /proc/$$` ����������?
    ```
    ���� /proc/self �������� ������������� ������� �� �������, ��������������� �������� ��������. �����������, ���������� ������ �������� � ����������� �� ����, ��� � ��� ����������. ����� ������� `ls -l /proc/self` ������������� �������������� �������� ls.

    $$ � ��� ����������� ���������� BASH, ������������ PID �������� ��������-��������. ����� ������� `ls -l /proc/$$` ������������� PID �������� Bash.
    ```
* ��������, ����� ����������� � ������ ������� `ls -l /proc/self/fd` �������� �� `stdin`, `stdout`, `stderr`.
    ```
    0 � stdin
    1 � stdout
    2 � stderr
    ```
* ��� ���������� � ������������� ��� ��������������� ������� `stdout` � `stderr` � ����� ��� ���������� ������� `ls -l /proc/self/fd > /tmp/ls.out 2> /tmp/ls.err`?
    ```
    ���������� �������������� �������� ������������, ��������� �� ������������ �������� ������ � �����������: ��������� �������� Bash �������������� ����������� ������ ������ � ����������� � ����� /tmp/ls.out � /tmp/ls.err ��������������.
    ```
* �������� ��� �� �������, ������� � ��� ��������������� ������ `stdin`. ��� ����������?
    ```sh
    ls -l /proc/self/fd < /tmp/ls.in > /tmp/ls.out 2> /tmp/ls.err
    ```

    ```
    � ������, ���� ������� ���� �����������, ��������� �� ������ ���������� � ���� /tmp/ls.err. ����� � ����� ������� `ls -l /proc/self/fd` ������������ � ���� /tmp/ls.out.
    ```
* ����� ������ ����������� ��� ���������� ������� `exec ps -l`?
    ```
    ������� ������� �������� Bash ���������� ��������� ������� `ps -l`: ����� ��������� ������� ������������ � ����������� ����� ������, ����� ���� ���������� ���������� �������� ��������.
    ```
* ��� �������� `pos` ��� ������ ����������� ����� `/proc/$$/fdinfo/3`?
    ```
    ������� ������� ��������� ������-������ � �������� ����� �������� �������� Bash.
    ```
* ���������� �� ����������� ������ ���������� ����� `test.out` ���� ����� ��� ��������? ������ ��� ����������?
    ```
    �������� ����� � ��� �������� ��������� �� ��� inode � �������� ����������� �����, ���� �� �������� �� ����� ������� ������ �� ����.

    � ������, ���� ��������� � ����� test.out �������������� ����� ����������, ����� ������� `cat <&4` ������ ���� ������: �������� ���������� ��������� �� inode �����, ������� ���������� ����� �������� ������� �����.

    ��� ��������� � ����� test.out �� ����� ��������� ��������� �� ������.
    ```