set -o xtrace

alias python="python2"
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_BUILD_DEVICE="$selected_device"
export LC_ALL="C"

if [ -f /usr/bin/ccache ]; then
  export USE_CCACHE=1
  export CCACHE_EXEC=/usr/bin/ccache
  ccache -M 50G
fi

export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/platform/bootdevice/by-name/recovery"
export OF_FORCE_PREBUILT_KERNEL=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export OF_USE_LZMA_COMPRESSION=1
export OF_NO_SAMSUNG_SPECIAL=0
export FOX_DYNAMIC_SAMSUNG_FIX=0
export FOX_VANILLA_BUILD=0
export OF_RUN_POST_FORMAT_PROCESS=1
export FOX_ENABLE_APP_MANAGER=0
export OF_USE_SYSTEM_FINGERPRINT=0
export OF_USE_TWRP_SAR_DETECT=1
export FOX_DISABLE_UPDATEZIP=0
export OF_MAINTAINER="Zears & david7xw"
export OF_SCREEN_H="2400"
export OF_STATUS_H="80"
export OF_STATUS_INDENT_LEFT="48"
export OF_STATUS_INDENT_RIGHT="48"
export OF_CLOCK_POS=1
export OF_ALLOW_DISABLE_NAVBAR=0
export TARGET_DEVICE_ALT="a22, a22ns, a22nsxx"
export FOX_TARGET_DEVICES="a22, a22ns, a22nsxx"
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_REPLACE_BUSYBOX_PS=1
export FOX_VERSION="R11.1"
export OF_FLASHLIGHT_ENABLE=0
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export TW_DEFAULT_LANGUAGE="en-US"
export OF_HIDE_NOTCH=1
if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
	 export | grep "FOX" >> $FOX_BUILD_LOG_FILE
	 export | grep "OF_" >> $FOX_BUILD_LOG_FILE
	 export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
	 export | grep "TW_" >> $FOX_BUILD_LOG_FILE
fi
