#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9517056 cd4e016e9c0acbdb5e6fcd0769cc481aafb6c191 8226816 06a74c45a7f695b2c4dc0e4080d4a86947e12b34
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9517056:cd4e016e9c0acbdb5e6fcd0769cc481aafb6c191; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8226816:06a74c45a7f695b2c4dc0e4080d4a86947e12b34 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery cd4e016e9c0acbdb5e6fcd0769cc481aafb6c191 9517056 06a74c45a7f695b2c4dc0e4080d4a86947e12b34:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
