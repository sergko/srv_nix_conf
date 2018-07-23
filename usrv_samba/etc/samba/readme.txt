Requirements


Install Samba
http://help.ubuntu.ru/wiki/samba
sudo apt-get install samba samba-common cifs-utils smbclient

Config new user + samb user + permissions
useradd -M -s /sbin/nologin smbu # -M - no home, -s - no shell, to prevent login to ssh etc see /etc/passwd
passwd smbu
groupadd smbg
usermod -G smbg smbu

######IMPORTANT#############
smbpasswd -a smbu #add samba user + passwrd
smbpasswd -e smbu # enable / -d disable
############################

chown -R smbu /mnt/ztest/
chgrp -R smbg /mnt/ztest/
chmod 2775 /mnt/ztest/

Mount on client
smb://10.2.83.208/flash/ - in Nautilus etc

smbclient -L UMATE -Userg -WZEON.LAN - list shares
smbclient -L UMATE -Userg -WZEON.LAN -i10.2.83.208 - similar with concrate IP if error above
smbclient //10.2.83.208/ztest_ztest1 -U serg -W ZEON.LAN - mount with username + password

FSTAB
https://wiki.ubuntu.com/MountWindowsSharesPermanently
//servername/sharename  /media/windowsshare  cifs  guest,uid=1000,iocharset=utf8  0  0
//servername/sharename /media/windowsshare cifs credentials=/home/ubuntuusername/.smbcredentials,iocharset=utf8,sec=ntlm 0 0 

mount -t cifs -o username=smbuser,password=smbpasswd //server/share /mountpoint
mount -t cifs -o credentials=/etc/creds/host_user.cred //server/share /mountpoint

# cat host_user.cred, 'domain' is optional
username=smbuser
password=smbpasswd
domain=OSN


Reload/restart smbd/nmbd
smbcontrol all reload-config
systemctl restart smbd
systemctl restart nmbd


AUTOMOUNT
https://help.ubuntu.com/community/Autofs
apt install autofs

Config autofs for SMB
root@su-pc:~# mcedit /etc/auto.master
+auto.master
/smb /etc/auto.smb --timeout=60

#create similar cred file /etc/creds/host_user.cred but with name of host => /etc/creds/UMATE
#in result you'll see at /smb => /smb/UMATE with all shares as folders
#note!
#chmod should be correct to have access, because in autofs you can connect TO SERVER shares with only 1 user
#note 2
#if anything hiden - pls restart autofs on client, and if not - smbd/nmbd on server too
#note 3
#zfs share -a - use 'net usershare' so all zfs share declared at /var/lib/samba/usershares
#note 4
#'writeble = yes/no' is non necessary, because enough 'read only = no/yes'
#and if you have both - bottom will overwrite and above will not be used.