/** @file
 *	@brief	Project Configuration for CWSW Arch Library Unit test environment
 *
 *	Description:
 *
 *	Copyright (c) 2018 Kevin L. Becker. All rights reserved.
 *
 *	Original:
 *	Created on: Sep 4, 2016
 *	Author: kbecker
 *
 *	Current:
 *	$Revision: $
 *	$Date: $
 */

#ifndef PROJCFG__H_
#define PROJCFG__H_


// ============================================================================
// ----	Include Files ---------------------------------------------------------
// ============================================================================

// ----	System Headers --------------------------
#include <stdbool.h>	/* true, false - for preprocessor usage */

// ----	Project Headers -------------------------
#include "ctassert.h"

// ----	Module Headers --------------------------


#ifdef	__cplusplus
extern "C" {
#endif


// ============================================================================
// ----	Constants -------------------------------------------------------------
// ============================================================================
#define PROJCFG_H__REVSTRING "$Revision: 09042016 $"

// ==== PROJECT-INVARIANT CONSTANTS ========================================= {
/* ==== A WORD ABOUT BUILD TARGETS ============================================
 *	Within Eclipse, the configuration is available as an IDE variable named
 *		"${ConfigName}"
 *	This can be put into a command-line define, for use in the code itself;
 *	within this project's settings, this is done by defining
 *		"XPRJ_${ConfigName}"
 *
 *	Use by preprocessor code such as
 *		"#if defined(XPRJ_Debug)"
 *
 *	Note the name of this define is specifically chosen for cross-platform
 *	Compatibility, for example with MPLAB X.
 *
 *	Within the NetBeans IDE used by MPLAB X, the equivalent mechanism is to
 *	detect off the command-line define "XPRJ_<config>",
 *		"#if defined(XPRJ_Debug)"
 *
 *	Note the name of the default configuration created by MPLAB X' New Project
 *	wizard is "default" - if you want a configuration named "Debug", you need to
 *	create it.
 *
 *	Within my development environment, I let Eclipse' New Project Wizard create
 *	its standard Debug and Release configurations, then create new ones for on-
 *	target debugging, as required. I assume my Windows/Linux Debug configuration
 *	is also intended for unit tests, so I rather indiscriminately print things
 *	to the console.
 * ========================================================================= */

/* ==== A FOLLOW-UP WORD ABOUT BUILD TARGETS ==================================
 * ANSI/ISO C says that the preprocessor evaluates an undefined symbol as having
 * the value '0' - however, many of the environments i'm targeting, and also many
 * of the static analysis tools, emit warnings about usage of undefined symbols
 * in normal C code - and even though i do it when necessary, i have a rather
 * strong aversion to using #if defined(x) mechanisms in normal code.
 * therefore, i'll here define all of the non-active build targets.
 * ========================================================================= */

/* ==== One final word ========================================================
 * This section is intended to be pristine and unchanged for all projects.
 * Configuration-specific defines (aka options specific to one of these Build
 * Targets) should be done in a followup section below.
 * ========================================================================= */
/* Configuration Check */
#if defined(XPRJ_Debug)
	/* This configuration is created by Eclipse; we do not want it used, unless ... */
	#if (XPRJ_Debug == 99)
		#pragma message "Building Within Atmel Studio"

	#else
		#error This configuration reserved for Atmel Studio
	#endif

#elif defined(XPRJ_Release)
	/* This configuration is created by Eclipse; we do not want it used */
	#error For now, do not build with the "Release" build target active

#elif defined(XPRJ_Win_MinGW_Debug)
	/* This is the configuration intended for development on Windows, using the MinGW tool suite */
	#define XPRJ_Win_MinGW_UT			0
	#define XPRJ_NB_Debug				0
	#define XPRJ_Debug_Linux_GCC		0
	#define XPRJ_MSVC_Debug				0
	#define	XPRJ_CVI_Debug				0
	#define XPRJ_Debug_Win_MZ2048EFM	0

#elif defined(XPRJ_NB_Debug)
	/* This is the configuration intended for development on Windows, using NetBeans and Cygwin (b/c easy CUnit availability) */
    #define XPRJ_Win_MinGW_Debug        0
	#define XPRJ_Win_MinGW_UT			0
	#define XPRJ_Debug_Linux_GCC		0
	#define XPRJ_MSVC_Debug				0
	#define	XPRJ_CVI_Debug				0
	#define XPRJ_Debug_Win_MZ2048EFM	0
    
#elif defined(XPRJ_Debug_Linux_GCC) || defined(XPRJ_Debug_Linux_GCC_Desktop)
	/* This is the configuration intended for development & debugging in a Linux VM */
	/* The 1st is intended to debug on a PowerPC Target from a Linux development environment */
	/* The 2nd (Desktop) is intended for building within S32DS on Linux for a Linux debugging session */
	#define	XPRJ_Debug_CVI				0
	#define	XPRJ_MSVC_Debug				0
	#define	XPRJ_Win_MinGW_Debug 		0

#elif defined(_CVI_)
	#define	XPRJ_Debug_CVI				1
	#define	XPRJ_MSVC_Debug				0
	#define	XPRJ_Win_MinGW_Debug 		0
	#define XPRJ_Debug_Linux_GCC		0
	#define XPRJ_pic32mz_ef_sk			0

#elif (XPRJ_MSVC_Debug)
	/* Visual Studio 8, which is decidedly shy of C11 */
	/* NOTE: VS8 does not ship w/ headers <stdint.h> or <stdbool.h>, so i found alternate versions
	 * and copied them into my install directory. i happened to find some web sites w/ versions
	 * that claimed to work w/ VS8 or VS10, but you could also probably pull them from any other
	 * compiler you may have installed.
	 */
	#define XPRJ_Win_MinGW_Debug	false
	#define	XPRJ_Debug_CVI			false

#elif (XPRJ_Debug_Win_MZ2048EFM) || defined(XPRJ_pic32mz_ef_sk)
    /* xMPLAB assigns XPRJ_pic32mz_ef_sk=pic32mz_ef_sk, but the latter signal is not defined to be anything */
	#define pic32mz_ef_sk				1

	#define Debug_MZ2048EFM				1
	#define XPRJ_Win_MinGW_Debug		0
	#define XPRJ_Debug_Linux_GCC		0
	#define	XPRJ_Debug_CVI				0
	#define XPRJ_MSVC_Debug				0

#elif (XPRJ_Debug_Cx_AtmelSamv71)
	/* This configuration is intended for the Atmel SAMV71 Xplained Ultra board */

#elif (XPRJ_Debug_XC_MPC57xx_DevKit) || (XPRJ_Debug_XC_MPC57xx_DevKit_RAM)
	#define pic32mz_ef_sk				(-1)	/* must make this mismatch the project def of the same name */

	/* This configuration is intended for the NXP Calypso Dev Board */
	#define XPRJ_Win_MinGW_Debug		(0)
	#define XPRJ_Debug_Linux_GCC		(0)
	#define	XPRJ_Debug_CVI				(0)
	#define XPRJ_MSVC_Debug				0
	#define Debug_MZ2048EFM				(0)

#else
#error Must define Eclipse symbol XPRJ_${ConfigName}

#endif

// ====	/PROJECT-INVARIANT CONSTANTS ======================================== }

// ==== PROJECT SPECIFIC CONSTANTS ========================================== {
#if (XPRJ_Win_MinGW_Debug)
	#define __PIC32MZ__					/* TODO: ABSTRACT AWAY PIC32MZ STUFF. this, for plib_ports.h */
	#define __32MZ2048EFM144__			/* and this, for ports_p32xxx.h */
	#define pic32mz_ef_sk				(-1)	/* must make this mismatch the project def of the same name */

	/* enable or disable individual architectural features */
	#define USE_SYS_CLK					(0)		/* For modules that need the Clock module. In most cases, this will be true */
	#define USE_SYS_DEVCON				(0)		/* For modules that need the Device Control functionality */
	#define USE_SYS_PORTS				(0)		/* Enable for modules that use GPIO ports */

#endif

#if (XPRJ_NB_Debug)
	#define __PIC32MZ__					/* TODO: ABSTRACT AWAY PIC32MZ STUFF. this, for plib_ports.h */
	#define __32MZ2048EFM144__			/* and this, for ports_p32xxx.h */
	#define pic32mz_ef_sk				(-1)	/* must make this mismatch the project def of the same name */

	/* enable or disable individual architectural features */
	#define USE_SYS_CLK					(0)		/* For modules that need the Clock module. In most cases, this will be true */
	#define USE_SYS_DEVCON				(0)		/* For modules that need the Device Control functionality */
	#define USE_SYS_PORTS				(0)		/* Enable for modules that use GPIO ports */

#endif
    
#if (XPRJ_Debug_Linux_GCC)
    #error Not Yet Tested
	#define pic32mz_ef_sk				(-1)	/* must make this mismatch the project def of the same name */

	/* enable or disable individual architectural features */
	#define USE_SYS_CLK					(1)
	#define USE_SYS_DEVCON				(0)
	#define USE_SYS_PORTS				(1)

#endif

#if (XPRJ_Debug_CVI)
#error Not Yet Tested
	#define pic32mz_ef_sk				(-1)	/* must make this mismatch the project def of the same name */
	// use cwsw simulated events to achieve separation between UI panels
	#define USE_SIMULATED_EVENTS		(1)
	#define USE_SYS_CLK					(0)
	#define USE_SYS_DEVCON				(0)
	#define USE_SYS_PORTS				(0)

#endif

#if (XPRJ_Debug_Win_MZ2048EFM) || (XPRJ_pic32mz_ef_sk == pic32mz_ef_sk)
#error Not Yet Tested
	/* define stuff that MPLAB defines on the command line */
//    #define pic32mz_ef_sk             (1)
	#if !defined(__PIC32M)
		#define __PIC32M
		#define __LANGUAGE_ASSEMBLY__

		#define __32MZ1024EFM144__      1	/* used in ports selection */

	#endif

	/* enable or disable individual architectural features */
	#define USE_SYS_CLK					(0)		/* tested: (0) (0) (0) */
	#define USE_SYS_DEVCON				(1)		/* tested: (0) (0) (0) */
	#define USE_SYS_PORTS				(1)		/* tested: (0) (0) (0) */

#endif

#if (XPRJ_Debug_XC_MPC57xx_DevKit) || (XPRJ_Debug_XC_MPC57xx_DevKit_RAM)
#error Not Yet Tested
	/* enable or disable individual architectural features */
	#define USE_SYS_CLK					(0)
	#define USE_SYS_DEVCON				(0)
	#define USE_SYS_PORTS				(0)

#endif

#if (USE_SYS_DEVCON)
	#if !(USE_SYS_CLK)
		#error DEVCON depends on CLK functionality
	#endif
#endif


/*	Allow for the possibility that USE_SIMULATED_EVENTS might be a command-line
 *	define. Pick reasonable defaults if not defined.
 */
#if !defined(USE_SIMULATED_EVENTS)
#define USE_SIMULATED_EVENTS			(true)

#else
#endif


/*	Allow for the possibility that BUILD_FOR_UNIT_TEST might be a command-line
 *	define. Pick reasonable defaults if not defined.
 */
#if !defined(BUILD_FOR_UNIT_TEST)
	#if (XPRJ_Win_MinGW_Debug) || (XPRJ_Debug_Linux_GCC) || (XPRJ_NB_Debug) || (XPRJ_MSVC_Debug) || (XPRJ_Debug_CVI)
		#define BUILD_FOR_UNIT_TEST		(true)

	#else
        #error
		#define BUILD_FOR_UNIT_TEST		(false)

	#endif
#else
#error

#endif

// ==== /PROJECT SPECIFIC CONSTANTS ========================================= }


// ============================================================================
// ----	Type Definitions ------------------------------------------------------
// ============================================================================

// ============================================================================
// ----	Public Variables ------------------------------------------------------
// ============================================================================

// ============================================================================
// ----	Public API ------------------------------------------------------------
// ============================================================================

/* Define WEAK attribute */
/**	Macro to designate a function as weakly bound.
 *	This allows a project to define a default function that can be overridden by
 *	a specific implementation. Note not all compilers support this, so on projects
 *	that rely on this, you'll need to figure out a work-around.
 */
#if !defined(WEAK)
#if defined (__GNUC__)					/* GCC CS3 2009q3-68 */
#define WEAK __attribute__ ((weak))

#elif defined (__CC_ARM  )				/* Keil �Vision 4 */
#define WEAK __attribute__ ((weak))

#elif defined (__ICCARM__)				/* IAR Ewarm 5.41+ */
#define WEAK __weak

#elif defined(_MSC_VER) || defined(_CVI_)	/* visual studio 8 and LabWindows/CVI v7.1 */
/* WEAK not available */

#else
#error Unrecognized or unsupported compiler

#endif
#endif


// define specifically for Eclipse CDT parser
#ifdef __CDT_PARSER__
  #define __BASE_FILE__ __FILE__
#endif


#ifdef	__cplusplus
}
#endif

#endif /* PROJCFG__H_ */
