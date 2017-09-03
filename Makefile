# Copyright (c) 2016 PolySync Technologies, Inc.  All Rights Reserved.

# This file is part of Open Source Car Control (OSCC).

# OSCC is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# OSCC is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with OSCC.  If not, see <http://www.gnu.org/licenses/>.


##########################################################
# Makefile for Steering Control Module
##########################################################

#
PROJECT_DIR := $(shell pwd)

#
ARDMK_DIR = $(PROJECT_DIR)/arduino_make

#
ARDUINO_DIR = /usr/share/arduino

#
USER_LIB_PATH = $(PROJECT_DIR)/arduino_libraries/

#
BOARD_TAG = nano328

#
MONITOR_BAUDRATE = 115200

#
AVR_TOOLS_DIR =

#
AVRDUDE = /usr/bin/avrdude

#
CFLAGS_STD = -std=gnu11

#
CXXFLAGS_STD = -std=gnu++11

#
CXXFLAGS += -pedantic -Wall -Wextra

#
CFLAGS_STD += -DPSYNC_DEBUG_FLAG
#CXXFLAGS += -DPSYNC_DEBUG_FLAG

#
MONITOR_PORT = /dev/ttyUSB0

#
CURRENT_DIR = $(shell basename $(CURDIR))

#
OBJDIR = $(PROJECT_DIR)/bin/$(BOARD_TAG)/$(CURRENT_DIR)

#
include $(ARDMK_DIR)/Arduino.mk
