LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := gnuintl
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/gnulib

LOCAL_SRC_FILES := \
	src/bindtextdom.c \
	src/explodename.c \
	src/langprefs.c \
	src/log.c \
	src/relocatable.c \
	src/dcgettext.c \
	src/finddomain.c \
	src/loadmsgcat.c \
	src/ngettext.c \
	src/setlocale.c \
	src/dcigettext.c \
	src/gettext.c \
	src/localcharset.c \
	src/osdep.c \
	src/textdomain.c \
	src/dcngettext.c \
	src/hash-string.c \
	src/localealias.c \
	src/plural-exp.c \
	src/threadlib.c \
	src/dgettext.c \
	src/intl-compat.c \
	src/localename.c \
	src/plural.c \
	src/version.c \
	src/dngettext.c \
	src/l10nflist.c \
	src/lock.c \
	src/printf.c \
	src/xsize.c \
		
LOCAL_CFLAGS := -DHAVE_CONFIG_H
LOCAL_CFLAGS += -DDEPENDS_ON_LIBICONV=1
LOCAL_CFLAGS += -Drelocate=libintl_relocate
LOCAL_CFLAGS += -Dset_relocation_prefix=libintl_set_relocation_prefix
LOCAL_CFLAGS += -DNO_XMALLOC
LOCAL_CFLAGS += -DIN_LIBRARY
LOCAL_CFLAGS += -DENABLE_RELOCATABLE=1
LOCAL_CFLAGS += -DIN_LIBINTL
LOCAL_CFLAGS += -DBUILDING_DLL
LOCAL_CFLAGS += -DBUILDING_LIBINTL
LOCAL_CFLAGS += -DLOCALE_ALIAS_PATH=\"/sdcard/.alias\"

ifeq ($(TARGET_ARCH_ABI), arm64-v8a)
    LOCAL_CFLAGS += -DHAVE_STPCPY
endif

#LOCAL_SHARED_LIBRARIES := freetype expat

include $(BUILD_SHARED_LIBRARY)

#include $(LOCAL_PATH)/freetype/Android.mk
