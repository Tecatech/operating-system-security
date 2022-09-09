```
[tecatech@mephi ~]$ sudo nano /etc/pam.d/su
[tecatech@mephi ~]$ man useradd
[tecatech@mephi ~]$ sudo useradd -G wheel user1
[tecatech@mephi ~]$ sudo passwd user1
Changing password for user user1.
New password:
Retype new password:
passwd: all authentication tokens updated successfully
[tecatech@mephi ~]$ su - user1
Password:
[user1@mephi ~]$ whoami
user1
[user1@mephi ~]$ su
Password:
sh: Permission denied
[user1@mephi ~]$ exit
logout
[tecatech@mephi ~]$ sudo nano /etc/pam.d/su
[tecatech@mephi ~]$ su - user1
Password:
[user1@mephi user1]$ su
Password:
[root@mephi user1]$ whoami
root
[root@mephi user1]$ exit
exit
[user1@mephi ~]$ exit
logout
[tecatech@mephi ~]$ man pam_pwquality
[tecatech@mephi ~]$ sudo nano /etc/security/pwquality.conf
[tecatech@mephi ~]$ sudo nano /etc/pam.d/system-auth
[tecatech@mephi ~]$ sudo passwd user1
Changing password for user user1.
New password:
BAD PASSWORD: The password is shorter than 12 characters
[tecatech@mephi ~]$ wget https://raw.githubusercontent.com/linux-pam/linux-pam/master/examples/check_user.c
[tecatech@mephi ~]$ nano check_user.c
[tecatech@mephi ~]$ sudo yum install pam-devel
[tecatech@mephi ~]$ gcc check_user.c -o check_user -lpam -lpam_misc
[tecatech@mephi ~]$ sudo nano /etc/pam.d/check
[tecatech@mephi ~]$ ./check_user tecatech
Password:
Authenticated
error code: Success
[tecatech@mephi ~]$ su -
Password:
[root@mephi ~]$ passwd -e tecatech
Expiring password for user tecatech.
passwd: Success
[root@mephi ~]$ exit
logout
[tecatech@mephi ~]$ ./check_user tecatech
Password:
Not Authenticated
error code: Authentication token is no longer valid; new one required
```