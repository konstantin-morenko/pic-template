
########################################
# COMPILER

XC8 = /opt/microchip/xc8/v2.10/bin/xc8
XC8_FLAGS = ""


########################################
# PROJECT

PRJ_NAME = template
CHIP = 16F628A
VER = 0.1.0
OBJS = src/main.c src/isr.c src/confbits.c
RLS_DIR = releases

OUTPREFIX = ${PRJ_NAME}-${CHIP}-${VER}

all: releases packages


########################################
# RELEASES

releases: main

main: ${RLS_DIR}/${OUTPREFIX}.main.hex


########################################
# FILES

${RLS_DIR}/${OUTPREFIX}.main.hex: ${OBJS}
	${XC8} ${XC8_FLAGS} --chip=${CHIP} -O$@ ${OBJS}
