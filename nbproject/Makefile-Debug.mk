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
CND_CONF=Debug
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
	${OBJECTDIR}/cwsw_lib/src/cwsw_lib.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f2 \
	${TESTDIR}/TestFiles/f1 \
	${TESTDIR}/TestFiles/f3

# Test Object Files
TESTOBJECTFILES= \
	${TESTDIR}/ut/ut_arch/cwsw_arch_test.o \
	${TESTDIR}/ut/ut_lib/cwsw_lib_test.o

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
	$(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -std=c11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/app/main.o app/main.c

${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api.o: cwsw_arch/i386/peripheral/ports/ports_api.c
	${MKDIR} -p ${OBJECTDIR}/cwsw_arch/i386/peripheral/ports
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -std=c11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api.o cwsw_arch/i386/peripheral/ports/ports_api.c

${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch.o: cwsw_arch/i386/src/cwsw_arch.c
	${MKDIR} -p ${OBJECTDIR}/cwsw_arch/i386/src
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -std=c11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch.o cwsw_arch/i386/src/cwsw_arch.c

${OBJECTDIR}/cwsw_board/none/src/cwsw_board.o: cwsw_board/none/src/cwsw_board.c
	${MKDIR} -p ${OBJECTDIR}/cwsw_board/none/src
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -std=c11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_board/none/src/cwsw_board.o cwsw_board/none/src/cwsw_board.c

${OBJECTDIR}/cwsw_lib/src/cwsw_lib.o: cwsw_lib/src/cwsw_lib.c
	${MKDIR} -p ${OBJECTDIR}/cwsw_lib/src
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -std=c11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_lib/src/cwsw_lib.o cwsw_lib/src/cwsw_lib.c

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-tests-subprojects .build-conf ${TESTFILES}
.build-tests-subprojects:

${TESTDIR}/TestFiles/f2: ${TESTDIR}/ut/ut_arch/cwsw_arch_test.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.c} -o ${TESTDIR}/TestFiles/f2 $^ ${LDLIBSOPTIONS}   `pkg-config --libs cunit`   -l-lcunit 

${TESTDIR}/TestFiles/f1: ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.c} -o ${TESTDIR}/TestFiles/f1 -s $^ ${LDLIBSOPTIONS}   `pkg-config --libs cunit`   

${TESTDIR}/TestFiles/f3: ${TESTDIR}/ut/ut_lib/cwsw_lib_test.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.c} -o ${TESTDIR}/TestFiles/f3 $^ ${LDLIBSOPTIONS}   `pkg-config --libs cunit`   


${TESTDIR}/ut/ut_arch/cwsw_arch_test.o: ut/ut_arch/cwsw_arch_test.c 
	${MKDIR} -p ${TESTDIR}/ut/ut_arch
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -I. -std=c11 -MMD -MP -MF "$@.d" -o ${TESTDIR}/ut/ut_arch/cwsw_arch_test.o ut/ut_arch/cwsw_arch_test.c


${TESTDIR}/ut/ut_lib/cwsw_lib_test.o: ut/ut_lib/cwsw_lib_test.c 
	${MKDIR} -p ${TESTDIR}/ut/ut_lib
	${RM} "$@.d"
	$(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -I. -std=c11 -MMD -MP -MF "$@.d" -o ${TESTDIR}/ut/ut_lib/cwsw_lib_test.o ut/ut_lib/cwsw_lib_test.c


${OBJECTDIR}/app/main_nomain.o: ${OBJECTDIR}/app/main.o app/main.c 
	${MKDIR} -p ${OBJECTDIR}/app
	@NMOUTPUT=`${NM} ${OBJECTDIR}/app/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -std=c11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/app/main_nomain.o app/main.c;\
	else  \
	    ${CP} ${OBJECTDIR}/app/main.o ${OBJECTDIR}/app/main_nomain.o;\
	fi

${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api_nomain.o: ${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api.o cwsw_arch/i386/peripheral/ports/ports_api.c 
	${MKDIR} -p ${OBJECTDIR}/cwsw_arch/i386/peripheral/ports
	@NMOUTPUT=`${NM} ${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -std=c11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api_nomain.o cwsw_arch/i386/peripheral/ports/ports_api.c;\
	else  \
	    ${CP} ${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api.o ${OBJECTDIR}/cwsw_arch/i386/peripheral/ports/ports_api_nomain.o;\
	fi

${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch_nomain.o: ${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch.o cwsw_arch/i386/src/cwsw_arch.c 
	${MKDIR} -p ${OBJECTDIR}/cwsw_arch/i386/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -std=c11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch_nomain.o cwsw_arch/i386/src/cwsw_arch.c;\
	else  \
	    ${CP} ${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch.o ${OBJECTDIR}/cwsw_arch/i386/src/cwsw_arch_nomain.o;\
	fi

${OBJECTDIR}/cwsw_board/none/src/cwsw_board_nomain.o: ${OBJECTDIR}/cwsw_board/none/src/cwsw_board.o cwsw_board/none/src/cwsw_board.c 
	${MKDIR} -p ${OBJECTDIR}/cwsw_board/none/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/cwsw_board/none/src/cwsw_board.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -std=c11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_board/none/src/cwsw_board_nomain.o cwsw_board/none/src/cwsw_board.c;\
	else  \
	    ${CP} ${OBJECTDIR}/cwsw_board/none/src/cwsw_board.o ${OBJECTDIR}/cwsw_board/none/src/cwsw_board_nomain.o;\
	fi

${OBJECTDIR}/cwsw_lib/src/cwsw_lib_nomain.o: ${OBJECTDIR}/cwsw_lib/src/cwsw_lib.o cwsw_lib/src/cwsw_lib.c 
	${MKDIR} -p ${OBJECTDIR}/cwsw_lib/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/cwsw_lib/src/cwsw_lib.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.c) -g -Wall -DXPRJ_NB_${CONF} -Icfg -Icwsw_lib -Icwsw_arch/i386 -Icwsw_board/none -std=c11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/cwsw_lib/src/cwsw_lib_nomain.o cwsw_lib/src/cwsw_lib.c;\
	else  \
	    ${CP} ${OBJECTDIR}/cwsw_lib/src/cwsw_lib.o ${OBJECTDIR}/cwsw_lib/src/cwsw_lib_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f2 || true; \
	    ${TESTDIR}/TestFiles/f1 || true; \
	    ${TESTDIR}/TestFiles/f3 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
