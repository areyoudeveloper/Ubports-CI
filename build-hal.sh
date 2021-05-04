#!/bin/bash
source halium.env
cd $ANDROID_ROOT

source build/envsetup.sh
export USE_CCACHE=1
breakfast $DEVICE
mka recoveryimage
md5sum $ANDROID_ROOT/out/target/product/land/recovery.img

