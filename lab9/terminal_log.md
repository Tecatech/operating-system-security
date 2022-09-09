```
[tecatech@10 ~]$ nano server.php
[tecatech@10 ~]$ php server.php
[tecatech@10 ~]$ nc -u 127.0.0.1 10000
uppercase_message
UPPERCASE_MESSAGE
^C
[tecatech@10 ~]$ sudo nano /etc/systemd/system/mephi.service
[tecatech@10 ~]$ sudo chmod 664 /etc/systemd/system/mephi.service
[tecatech@10 ~]$ systemctl daemon-reload
[tecatech@10 ~]$ systemctl status mephi
[tecatech@10 ~]$ systemctl start mephi
[tecatech@10 ~]$ systemctl status mephi
[tecatech@10 ~]$ nc -u 127.0.0.1 10000
uppercase_message
UPPERCASE_MESSAGE
^C
[tecatech@10 ~]$ ls -lZ /etc/systemd/system/mephi.service
-rw-r--r--. 1 root root unconfined_u:object_r:systemd_unit_file_t:s0 240 Mar 11 23:03 /etc/systemd/system/mephi.service
[tecatech@10 ~]$ systemctl stop mephi
[tecatech@10 ~]$ systemctl status mephi
[tecatech@10 ~]$ journalctl -f -u mephi
-- Logs begin at Fri 2022-03-11 23:15:05 MSK. --
Mar 11 23:16:44 10.0.2.15 systemd[1]: Started Custom PHP Server.
Mar 11 23:21:47 10.0.2.15 systemd[1]: Stopping Custom PHP Server...
Mar 11 23:21:47 10.0.2.15 systemd[1]: mephi.service: Succeeded.
Mar 11 23:21:47 10.0.2.15 systemd[1]: Stopped Custom PHP Server.
[tecatech@10 ~]$ systemctl enable mephi
```