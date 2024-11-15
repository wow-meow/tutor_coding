Modified on `X230-Win10`
Modified on `WSL-Ubuntu_on_X230-Win10`


#### Mounting Windows Filesystems with Different Permissions in WSL2

Q: In WSL2 Ubuntu on Win10, all Windows files and directories are green and
highlighted by a green background. How to restore their normal look and make
them the same as those created through WSL2 Ubuntu?


A: 

1. By default, Windows filesystems are mounted in WSL2 with certain default
   permissions. You can change the mount options to modify these permissions.
To do this, you need to edit the /etc/wsl.conf file in your WSL2 environment.
If the file doesn't exist, you can create it. Open the file with a text editor
like nano:

``` bash
sudo nano /etc/wsl.conf
```

2. Add the following lines to the file to set custom mount options for the
   Windows filesystem. For example, to set more permissive permissions for the
Windows drive C:

``` plaintext
[automount]
options = "metadata,uid=1000,gid=1000,umask=002,fmask=0133"
```

Here, uid=1000 and gid=1000 set the user ID and group ID to the default values
for the first user in most Linux distributions. umask=002 and fmask=0133 set
the permissions for directories and files, respectively. The umask value 002
means that directories will have permissions 775 (read, write, and execute for
owner and group, and read and execute for others), and the fmask value 0133
means that files will have permissions 644 (read and write for owner, and read
for group and others). You can adjust these values according to your specific
requirements.


3. After adding these lines, save the file and exit the text editor. Then, you
   need to restart WSL2 for the changes to take effect. You can do this by
closing all WSL2 terminals and then reopening them, or by running the following
command in an elevated Windows Command Prompt:

```cmd
wsl --shutdown
```

and then starting WSL2 again.


