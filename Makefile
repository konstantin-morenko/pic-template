
########################################
# COMPILER

XC8 = /opt/microchip/xc8/v2.10/bin/xc8
XC8_FLAGS = ""


########################################
# PROJECT

PRJ_NAME = template
CHIP = 16F628A
VER = 0.1.0
OBJS = *.c
OUT_PREFIX = ${PRJ_NAME}-${CHIP}-${VER}
.DEFAULT_GOAL := all

########################################
# DIRS

OBJ_DIR = src
RLS_DIR = releases
BLD_DIR = build

${RLS_DIR}:
	mkdir ${RLS_DIR}

${BLD_DIR}:
	mkdir ${BLD_DIR}


########################################
# RELEASES

all: ${addprefix ${RLS_DIR}/${OUT_PREFIX}+, main.hex}

${RLS_DIR}/${OUT_PREFIX}+main.hex: ${addprefix ${OBJ_DIR}/, ${OBJS}} | ${BLD_DIR} ${RLS_DIR}
	${XC8} ${XC8_FLAGS} --chip=${CHIP} -O${BLD_DIR}/${@F} $^
	mv ${BLD_DIR}/${@F} $@

########################################
# SPECIAL

clean:
	rm ${BLD_DIR}/*
	rmdir ${BLD_DIR}
	rm ${RLS_DIR}/*
	rmdir ${RLS_DIR}
