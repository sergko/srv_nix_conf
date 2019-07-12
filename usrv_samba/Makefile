
mount_net:
	@mount -t cifs -o credentials=/etc/creds/UMATE //10.2.83.208/zfs /net/smb_umate_zfs/
	@mount -t cifs -o credentials=/etc/creds/UMATE //10.2.83.208/zfs2 /net/smb_umate_zfs2/
	@mount -t cifs -o credentials=/etc/creds/UMATE //10.2.83.208/zfs3 /net/smb_umate_zfs3/
	@mount -t cifs -o credentials=/etc/creds/UMATE //10.2.83.208/nata /net/smb_umate_nata/

umount_net:
	umount /net/smb_umate_zfs/ ;\
	umount /net/smb_umate_zfs2/ ;\
	umount /net/smb_umate_zfs3/ ;\
	umount /net/smb_umate_nata/
