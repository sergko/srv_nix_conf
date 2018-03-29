#!/bin/bash
#or use sfdisk -l /dev/sdd
#or use sfdisk -F /dev/sdd
#or use sgdisk -p /dev/sdd
#https://superuser.com/questions/332252/how-to-create-and-format-a-partition-using-a-bash-script
#run with:
#sudo sh mk_partition.sh /dev/sdxxx
#replace belove paramenters with your own:
#NUM_PARTITIONS=5
#PARTITION_SIZE="+10G" 

if [ $# -eq 0 ]
then
  echo "input the device like: sudo sh mk_partition.sh /dev/sdd"
  exit
fi

TAIL="p
w
q
"
TGTDEV=$1

SED_STRING="$TAIL"
sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | fdisk ${TGTDEV}
  $SED_STRING
EOF
