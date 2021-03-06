# Copyright 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := nativeperms
LOCAL_SRC_FILES := \
    nativeperms.cpp \
    android/os/IPermissionController.aidl
LOCAL_CFLAGS := -Wall -Werror
LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libbrillo \
    libbrillo-binder \
    libchrome \
    libutils
LOCAL_INIT_RC := nativeperms.rc
include $(BUILD_EXECUTABLE)
