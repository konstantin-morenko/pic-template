
########################################
# COMPILER

XC8 = /opt/microchip/xc8/v2.10/bin/xc8
XC8_FLAGS = ""


########################################
# PROJECT

PRJ_NAME = template
CHIP = 16F628A
VER = 0.1.0
OBJS = src/main.c src/isr.c src/conf_bits.c
RLS_DIR = releases

all: releases packages


########################################
# RELEASES

releases: main

main: ${RLS_DIR}/${PRJ_NAME}-${VER}-${CHIP}.main.hex


########################################
# FILES

${RLS_DIR}/${PRJ_NAME}-${VER}-${CHIP}.main.hex: ${OBJS}
	${XC8} ${XC8_FLAGS} --chip=${CHIP} -O$@ ${OBJS}


########################################
# PACKAGES

packages:
