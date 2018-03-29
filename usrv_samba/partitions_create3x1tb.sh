#!/bin/bash
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

NUM_PARTITIONS=3
PARTITION_SIZE="+1TB"


SED_STRING="o"
TAIL="p
w
q
"

NEW_LINE="
"
LETTER_n="n"
EXTENDED_PART_NUM=4
TGTDEV=$1

SED_STRING="$SED_STRING$NEW_LINE"
for i in $(seq $NUM_PARTITIONS)
do
  if [ $i -lt $EXTENDED_PART_NUM ]
  then
    SED_STRING="$SED_STRING$LETTER_n$NEW_LINE$NEW_LINE$NEW_LINE$NEW_LINE$PARTITION_SIZE$NEW_LINE"
  fi
  if [ $i -eq $EXTENDED_PART_NUM ]
  then
    SED_STRING="$SED_STRING$LETTER_n$NEW_LINE$NEW_LINE$NEW_LINE$NEW_LINE"
    SED_STRING="$SED_STRING$LETTER_n$NEW_LINE$NEW_LINE$PARTITION_SIZE$NEW_LINE"
  fi
  if [ $i -gt $EXTENDED_PART_NUM ]
  then
    SED_STRING="$SED_STRING$LETTER_n$NEW_LINE$NEW_LINE$PARTITION_SIZE$NEW_LINE"
  fi
done
SED_STRING="$SED_STRING$TAIL"

sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | fdisk ${TGTDEV}
  $SED_STRING
EOF
