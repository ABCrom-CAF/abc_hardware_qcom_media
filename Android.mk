QCOM_MEDIA_ROOT := $(call my-dir)
ifneq ($(filter msm8610 msm8226 msm8974 msm8960 msm8660 msm7627a msm7630_surf apq8084 mpq8092 msm_bronze,$(TARGET_BOARD_PLATFORM)),)
include $(QCOM_MEDIA_ROOT)/mm-core/Android.mk
include $(QCOM_MEDIA_ROOT)/libstagefrighthw/Android.mk
endif

ifneq ($(filter msm8610 msm8226 msm8974 msm8960 msm8660 msm7630_surf apq8084 mpq8092 msm_bronze,$(TARGET_BOARD_PLATFORM)),)
include $(QCOM_MEDIA_ROOT)/mm-video-v4l2/Android.mk
endif

ifneq ($(filter msm8610 msm8226 msm8974 msm8960 apq8084 mpq8092 msm_bronze,$(TARGET_BOARD_PLATFORM)),)
include $(QCOM_MEDIA_ROOT)/libc2dcolorconvert/Android.mk
endif

ifneq ($(filter msm8974 msm8960 msm8226 apq8084 mpq8092 msm8610 msm_bronze,$(TARGET_BOARD_PLATFORM)),)
ifneq (1,$(filter 1,$(shell echo "$$(( $(PLATFORM_SDK_VERSION) >=  19 ))" )))
include $(QCOM_MEDIA_ROOT)/QCMediaPlayer/Android.mk
include $(QCOM_MEDIA_ROOT)/dashplayer/Android.mk
endif
endif

ifneq ($(filter apq8084,$(TARGET_BOARD_PLATFORM)),)
include $(QCOM_MEDIA_ROOT)/videopp/Android.mk
endif
