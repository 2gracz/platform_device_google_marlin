#
# Copyright (C) Lunarixus 2020
# Please use this, to keep your trees sane.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE		:= fstab.common
LOCAL_MODULE_TAGS	:= optional
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/fstab.common
LOCAL_MODULE_PATH	:= $(TARGET_OUT_VENDOR_ETC)/fstab.$(PRODUCT_HARDWARE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.common.rc
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.common.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/init.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.common.usb.rc
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.common.usb.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/init.usb.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.common.nanohub.rc
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.common.nanohub.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/init.nanohub.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := ueventd.common.rc
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/ueventd.common.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR)/ueventd.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.radio.sh
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := bin/init.radio.sh
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.power.sh
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := bin/init.power.sh
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.mid.sh
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := bin/init.mid.sh
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.foreground.sh
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := bin/init.foreground.sh
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.qcom.devstart.sh
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := bin/init.qcom.devstart.sh
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))

include $(CLEAR_VARS)
LOCAL_MODULE            := init.common.diag.rc
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := bin/init.common.diag.rc.userdebug
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/init.diag.rc
include $(BUILD_PREBUILT)

else

include $(CLEAR_VARS)
LOCAL_MODULE            := init.common.diag.rc
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := bin/init.common.diag.rc.user
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/init.diag.rc
include $(BUILD_PREBUILT)
endif
