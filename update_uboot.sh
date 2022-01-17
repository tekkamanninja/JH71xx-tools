#!/bin/sh
#title		:recover_dev.sh
#description	:This script will help to execute jh7100-recover.
#author	:TekkamanV <tekkamanv@163.com>
#date		:202107013
#version	:0.1
#usage		:./recover_dev.sh [tty_device_name]
#		default UART port is /dev/ttyUSB0, you can set up it by ${1},
#		like, ./recover_dev.sh ttyUSB1
#SPDX-License-Identifier: GNU General Public License v2.0 or later
#==============================================================================

PROG_NAME=jh7100-recover

UART_PORT=/dev/${1:-ttyUSB0}

PREBUILD_PATH=./prebuild
UBOOT_PATH=${PREBUILD_PATH}/fw_payload.bin.out

./${PROG_NAME} \
	-D ${UART_PORT} \
	-f ${UBOOT_PATH}
