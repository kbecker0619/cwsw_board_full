/** @file projevtnames.h
 *	@brief	One-sentence short description of file.
 *
 *	Description:
 *
 *	Copyright (c) 2018 Kevin L. Becker. All rights reserved.
 *
 *	Original:
 *	Created on: Jan 20, 2018
 *	Author: kbecker
 *
 *	Current:
 *	$Revision: $
 *	$Date: $
 */

#ifndef UT_PROJEVTNAMES_H_
#define UT_PROJEVTNAMES_H_


// ============================================================================
// ----	Include Files ---------------------------------------------------------
// ============================================================================

// ----	System Headers --------------------------

// ----	Project Headers -------------------------

// ----	Module Headers --------------------------


#ifdef	__cplusplus
extern "C" {
#endif


// ============================================================================
// ----	Constants -------------------------------------------------------------
// ============================================================================
#define UT_PROJEVTNAMES_H__REVSTRING "$Revision: 0123 $"

/** Project-specific list of events.
 * This list must be contained inside the enumeration; the name of the enumeration tag is
 * significant, and it is highly recommended the 1st enum (value of 0) should be reserved for No
 * Event. Other than that,
 */
enum eProjectEvents {
	evNoEvent,				//!< reserved value, used for initialization
	evNotInit,              //!< evNotInit
	evButtonPressed,
	evButtonCommit,			//!< debounced press event
	evButtonReleased,
	evUpdateUi,
	evTerminateRequested
};


// ============================================================================
// ----	Type Definitions ------------------------------------------------------
// ============================================================================

// ============================================================================
// ----	Public Variables ------------------------------------------------------
// ============================================================================

// ============================================================================
// ----	Public API ------------------------------------------------------------
// ============================================================================


extern void EventHandler__evNotInitialized		(tEventPayload EventData);
extern void EventHandler__evTerminateRequested	(tEventPayload EventData);
extern void EventHandler__evButtonCommit		(tEventPayload EventData);
extern void EventHandler__evButtonPressed		(tEventPayload EventData);
extern void EventHandler__evButtonReleased		(tEventPayload EventData);

#ifdef	__cplusplus
}
#endif

#endif /* UT_PROJEVTNAMES_H_ */
