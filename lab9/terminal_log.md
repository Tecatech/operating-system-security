```sh
[tecatexas@10 ~]$ nano server.php
[tecatexas@10 ~]$ php server.php
[tecatexas@10 ~]$ nc -u 127.0.0.1 10000
uppercase_message
UPPERCASE_MESSAGE
^C
[tecatexas@10 ~]$ sudo nano /etc/systemd/system/tecatech.service
[tecatexas@10 ~]$ sudo chmod 664 /etc/systemd/system/tecatech.service
[tecatexas@10 ~]$ systemctl daemon-reload
[tecatexas@10 ~]$ systemctl status tecatech
[tecatexas@10 ~]$ systemctl start tecatech
[tecatexas@10 ~]$ systemctl status tecatech
[tecatexas@10 ~]$ nc -u 127.0.0.1 10000
uppercase_message
UPPERCASE_MESSAGE
^C
[tecatexas@10 ~]$ ls -lZ /etc/systemd/system/tecatech.service
-rw-r--r--. 1 root root unconfined_u:object_r:systemd_unit_file_t:s0 240 Mar 11 23:03 /etc/systemd/system/tecatech.service
[tecatexas@10 ~]$ systemctl stop tecatech
[tecatexas@10 ~]$ systemctl status tecatech
[tecatexas@10 ~]$ journalctl -f -u tecatech
-- Logs begin at Fri 2022-03-11 23:15:05 MSK. --
Mar 11 23:16:44 10.0.2.15 systemd[1]: Started Custom PHP Server.
Mar 11 23:21:47 10.0.2.15 systemd[1]: Stopping Custom PHP Server...
Mar 11 23:21:47 10.0.2.15 systemd[1]: tecatech.service: Succeeded.
Mar 11 23:21:47 10.0.2.15 systemd[1]: Stopped Custom PHP Server.
[tecatexas@10 ~]$ systemctl enable tecatech
```