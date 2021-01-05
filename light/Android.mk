LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.lights-service.qti
LOCAL_MODULE_TAGS  := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_STEM := android.hardware.lights-service.qti

LOCAL_SRC_FILES := \
    aidl/Lights.cpp \
    aidl/main.cpp

LOCAL_REQUIRED_MODULES := \
    android.hardware.lights-service.qti.rc

LOCAL_SHARED_LIBRARIES := \
    libbase \
    liblog \
    libhardware \
    libbinder_ndk \
    android.hardware.light-ndk_platform

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.lights-service.qti.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/init
LOCAL_MODULE_STEM := android.hardware.lights-service.qti.rc

LOCAL_SRC_FILES := aidl/android.hardware.lights-service.qti.rc

include $(BUILD_PREBUILT)
