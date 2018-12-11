/** @file
 *	@brief	One-sentence short description of file.
 *
 *	Description:
 *
 *	Copyright (c) 2019 Kevin L. Becker. All rights reserved.
 *
 *	Original:
 *	Created on: Dec 9, 2018
 *	Author: KBECKE35
 *
 *	Current:
 *	$Revision: $
 *	$Date: $
 */

// ============================================================================
// ----	Include Files ---------------------------------------------------------
// ============================================================================

#include "projcfg.h"

// ----	System Headers --------------------------
#include <stdbool.h>	/* true, false */
#include <stdint.h>
#include <limits.h>		/* CHAR_BITS */
#include <ctype.h>		/* iswhite() */
#include <string.h>		/* strlen(), size_t */
#include <stdlib.h>     /* EXIT_SUCCESS */

// ----	Project Headers -------------------------
#include "cwsw_lib.h"
#include "cwsw_arch.h"
#include "cwsw_eventsim.h"

// ----	Module Headers --------------------------
#include "cwsw_board.h"


// ============================================================================
// ----	Constants -------------------------------------------------------------
// ============================================================================

// ============================================================================
// ----	Type Definitions ------------------------------------------------------
// ============================================================================

// ============================================================================
// ----	Global Variables ------------------------------------------------------
// ============================================================================

// ============================================================================
// ----	Module-level Variables ------------------------------------------------
// ============================================================================

static bool terminate_requested = true;

// ============================================================================
// ----	Private Functions -----------------------------------------------------
// ============================================================================


/** Event handler for application Termination Requested events (#evTerminateRequested).
 */
void
EventHandler__evTerminateRequested(tEventPayload ev)
{
	UNUSED(ev);
	terminate_requested = true;
}

// ============================================================================
// ----	Public Functions ------------------------------------------------------
// ============================================================================

int main(void)
{
	int retcode = EXIT_SUCCESS;
	tEventPayload ev = {0};

	/* provoke a NotInit event*/
	retcode = Init(Cwsw_Board);									// Cwsw_Board__Init()
	if(retcode == EXIT_FAILURE)	retcode = Init(Cwsw_Lib);		// Cwsw_Lib__Init()

	(void)Init(Cwsw_Lib);		// Cwsw_Lib__Init()
	(void)Init(Cwsw_Arch);		// Cwsw_Arch__Init()

	PostEvent(evTerminateRequested, ev);
	return EXIT_SUCCESS;
}


/** Global handler for simulated even evNotInitialized.
 *	Because this UT environment is supremely simple, I have intimate knowledge that this event
 *	was posted because I wanted to test my error handling. Because I intentionally provoked an
 *	exception, I am here taking the unconventional step of restoring normal behavior without any
 *	other examination.
 *	@param EventData	Unused in this error handler.
 */
void
EventHandler__evNotInitialized(tEventPayload EventData)
{
	UNUSED(EventData);
	terminate_requested = false;
}
