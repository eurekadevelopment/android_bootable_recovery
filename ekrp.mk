# Copyright (C) 2007 The Android Open Source Project
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


LOCAL_CFLAGS += -Wno-unused-parameter -Wno-unused-function -Wno-unused-variable -Wno-unused-result
#LOCAL_CFLAGS += -Wno-implicit-fallthrough -Wno-format-extra-args

ifneq ($(EK_FLASHLIGHT_ENABLE),)
    LOCAL_CFLAGS += -DEK_FLASHLIGHT_ENABLE='"$(EK_FLASHLIGHT_ENABLE)"'
else
    LOCAL_CFLAGS += -DEK_FLASHLIGHT_ENABLE='"1"'
endif

ifneq ($(EK_FL_PATH1),)
    LOCAL_CFLAGS += -DEK_FL_PATH1='"$(EK_FL_PATH1)"'
else
    LOCAL_CFLAGS += -DEK_FL_PATH1='""'
endif

ifneq ($(EK_FL_PATH2),)
    LOCAL_CFLAGS += -DEK_FL_PATH2='"$(EK_FL_PATH2)"'
else
    LOCAL_CFLAGS += -DEK_FL_PATH2='""'
endif

