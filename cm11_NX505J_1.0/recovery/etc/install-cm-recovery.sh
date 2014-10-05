#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8890368 81d7df589ee758957ddefc2eade8f277c0f40ea0 8218624 ff994dab02a22571209ad428e1a0cfbae911efe9
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:8890368:81d7df589ee758957ddefc2eade8f277c0f40ea0; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8218624:ff994dab02a22571209ad428e1a0cfbae911efe9 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 81d7df589ee758957ddefc2eade8f277c0f40ea0 8890368 ff994dab02a22571209ad428e1a0cfbae911efe9:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
