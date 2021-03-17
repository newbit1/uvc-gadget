#!/system/bin/sh
BB=/data/adb/magisk/busybox
MNTIMAGE=$(getprop rw.cust.mass_storage)
ISMOUNTED=$($BB losetup /dev/block/loop7)
if [[ ! "$ISMOUNTED" ]]; then
	$($BB losetup /dev/block/loop7 $MNTIMAGE)
fi
sleep 1
$($BB losetup -d /dev/block/loop7)
