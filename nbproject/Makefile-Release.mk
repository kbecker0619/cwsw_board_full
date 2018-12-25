#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=Cygwin-Windows
CND_DLIB_EXT=dll
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/app/main.o \
	${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api.o \
	${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch.o \
	${OBJECTDIR}/cwsw_board/none/src/cwsw_board.o \
	${OBJECTDIR}/cwsw_lib/src/cwsw_lib.o \
	${OBJECTDIR}/ut/ut_arch/cwsw_arch_test.o \
	${OBJECTDIR}/ut/ut_lib/cwsw_lib_test.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cwsw_board.git.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cwsw_board.git.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.c} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/cwsw_board.git ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/app/main.o: app/main.c
	${MKDIR} -p ${OBJECTDIR}/app
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/app/main.o app/main.c

${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api.o: cwsw_arch/i386/peripheral/ports/ports_api.c
	${MKDIR} -p ${OBJECTDIR}/cwsw_arch/i386/peripheral/ports
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api.o cwsw_arch/i386/peripheral/ports/ports_api.c

${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch.o: cwsw_arch/i386/src/cwsw_arch.c
	${MKDIR} -p ${OBJECTDIR}/cwsw_arch/i386/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch.o cwsw_arch/i386/src/cwsw_arch.c

${OBJECTDIR}/cwsw_board/none/src/cwsw_board.o: cwsw_board/none/src/cwsw_board.c
	${MKDIR} -p ${OBJECTDIR}/cwsw_board/none/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_board/none/src/cwsw_board.o cwsw_board/none/src/cwsw_board.c

${OBJECTDIR}/cwsw_lib/src/cwsw_lib.o: cwsw_lib/src/cwsw_lib.c
	${MKDIR} -p ${OBJECTDIR}/cwsw_lib/src
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_lib/src/cwsw_lib.o cwsw_lib/src/cwsw_lib.c

${OBJECTDIR}/ut/ut_arch/cwsw_arch_test.o: ut/ut_arch/cwsw_arch_test.c
	${MKDIR} -p ${OBJECTDIR}/ut/ut_arch
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ut/ut_arch/cwsw_arch_test.o ut/ut_arch/cwsw_arch_test.c

${OBJECTDIR}/ut/ut_lib/cwsw_lib_test.o: ut/ut_lib/cwsw_lib_test.c
	${MKDIR} -p ${OBJECTDIR}/ut/ut_lib
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ut/ut_lib/cwsw_lib_test.o ut/ut_lib/cwsw_lib_test.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
