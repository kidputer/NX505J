#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10563584 65e832c2f71dcb0066e7416dfcf2c9574ecedb02 8224768 60e39c93d235c079d2b7bce462c6cfd23fd5b822
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10563584:65e832c2f71dcb0066e7416dfcf2c9574ecedb02; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8224768:60e39c93d235c079d2b7bce462c6cfd23fd5b822 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 65e832c2f71dcb0066e7416dfcf2c9574ecedb02 10563584 60e39c93d235c079d2b7bce462c6cfd23fd5b822:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
