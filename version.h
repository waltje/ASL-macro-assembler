#ifndef _VERSION_H
#define _VERSION_H
/* version.h */
/*****************************************************************************/
/* SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only                     */
/*                                                                           */
/* AS-Portierung                                                             */
/*                                                                           */
/* Lagert die Versionsnummer                                                 */
/*                                                                           */
/*****************************************************************************/

#define AS_VER_MAJOR	1		// major version number
#define AS_VER_MINOR	42		// minor version number
#define AS_VER_BUILD	255		// build (should be automated)
#define AS_VER_PATCH	0		// local patch number

#define AS_ALPHA	0		// is this an ALPHA-level build?
#define AS_BETA		1		// is this a BETA-level build?


/* Standard C preprocessor macros. */
#define STR_STRING(x)	#x
#define STR(x)		STR_STRING(x)
#define STR_RC(a,e)	a ## , ## e


/* These are used in the application. */
#define AS_VER_NUM	AS_VER_MAJOR.AS_VER_MINOR.AS_VER_BUILD
#if defined(AS_VER_PATCH) && AS_VER_PATCH > 0
# define AS_VER_NUM_4	AS_VER_MAJOR.AS_VER_MINOR.AS_VER_BUILD.AS_VER_PATCH
# define AS_VERSION	STR(AS_VER_NUM_4)
#else
# define AS_VER_NUM_4	AS_VER_MAJOR.AS_VER_MINOR.AS_VER_BUILD.0
# define AS_VERSION	STR(AS_VER_NUM)
#endif


extern const char *Version;
extern LongInt VerNo;

extern const char *InfoMessCopyright;

extern LongInt Magic;

extern void version_init(void);

#endif /* _VERSION_H */
