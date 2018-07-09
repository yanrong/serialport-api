#
# Copyright 2009 Cedric Priscal
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License. 
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES :=\
    $(JNI_H_INCLUDE) \
    SerialPort.h
    
LOCAL_SHARED_LIBRARIES := \
    libcutils 
    

TARGET_PLATFORM := android-10

LOCAL_SRC_FILES := SerialPort.c
LOCAL_LDLIBS    := -llog

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE    := libserial_port
LOCAL_MODULE_TAGS := eng

include $(BUILD_SHARED_LIBRARY)
