```
[tecatexas@mephi ~]$ sudo nano /etc/pam.d/su
[tecatexas@mephi ~]$ man useradd
[tecatexas@mephi ~]$ sudo useradd -G wheel user1
[tecatexas@mephi ~]$ sudo passwd user1
Changing password for user user1.
New password:
Retype new password:
passwd: all authentication tokens updated successfully
[tecatexas@mephi ~]$ su - user1
Password:
[user1@mephi ~]$ whoami
user1
[user1@mephi ~]$ su
Password:
sh: Permission denied
[user1@mephi ~]$ exit
logout
[tecatexas@mephi ~]$ sudo nano /etc/pam.d/su
[tecatexas@mephi ~]$ su - user1
Password:
[user1@mephi user1]$ su
Password:
[root@mephi user1]$ whoami
root
[root@mephi user1]$ exit
exit
[user1@mephi ~]$ exit
logout
[tecatexas@mephi ~]$ man pam_pwquality
[tecatexas@mephi ~]$ sudo nano /etc/security/pwquality.conf
[tecatexas@mephi ~]$ sudo nano /etc/pam.d/system-auth
[tecatexas@mephi ~]$ sudo passwd user1
Changing password for user user1.
New password:
BAD PASSWORD: The password is shorter than 12 characters
[tecatexas@mephi ~]$ wget https://raw.githubusercontent.com/linux-pam/linux-pam/master/examples/check_user.c
[tecatexas@mephi ~]$ nano check_user.c
[tecatexas@mephi ~]$ sudo yum install pam-devel
[tecatexas@mephi ~]$ gcc check_user.c -o check_user -lpam -lpam_misc
[tecatexas@mephi ~]$ sudo nano /etc/pam.d/check
[tecatexas@mephi ~]$ ./check_user tecatexas
Password:
Authenticated
error code: Success
[tecatexas@mephi ~]$ su -
Password:
[root@mephi ~]$ passwd -e tecatexas
Expiring password for user tecatexas.
passwd: Success
[root@mephi ~]$ exit
logout
[tecatexas@mephi ~]$ ./check_user tecatexas
Password:
Not Authenticated
error code: Authentication token is no longer valid; new one required
```