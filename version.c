/* version.c */
/*****************************************************************************/
/* SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only                     */
/*                                                                           */
/* AS-Portierung                                                             */
/*                                                                           */
/* Lagert die Versionsnummer                                                 */
/*                                                                           */
/*****************************************************************************/

#include <string.h>
#include "stdinc.h"
#include "version.h"


/* Preprocessor magic, needed below. */
#define _STRCAT(a,b)  0x##a##b##f
#define STRCAT(a,b)  _STRCAT(a,b)


#if AS_ALPHA
# define ABSTATE	" Alpha"
#elif AS_BETA
# define ABSTATE	" Beta"
#else
# define ABSTATE	""
#endif

#if AS_VER_PATCH && AS_VER_PATCH > 0
const char *Version = STR(AS_VER_MAJOR.AS_VER_MINOR) ABSTATE " [Bld " STR(AS_VER_BUILD)"] Patch " STR(AS_VER_PATCH);
const char *DebVersion = STR(AS_VER_MAJOR.AS_VER_MINOR)"bld"STR(AS_VER_BUILD)"-"STR(AS_VER_PATCH);
#else
const char *Version = STR(AS_VER_MAJOR.AS_VER_MINOR) ABSTATE " [Bld " STR(AS_VER_BUILD)"]";
const char *DebVersion = STR(AS_VER_MAJOR.AS_VER_MINOR)"bld"STR(AS_VER_BUILD)"-1";
#endif

LongInt VerNo = STRCAT(AS_VER_MAJOR,AS_VER_MINOR);

const char *InfoMessCopyright = "(C) 1992-2023 Alfred Arnold";

LongInt Magic = 0x12372e46;

void version_init(void)
{
  unsigned int z;
  const char *CMess = InfoMessCopyright;
  LongWord XORVal;

  for (z = 0; z < strlen(CMess); z++)
  {
    XORVal = CMess[z];
    XORVal = XORVal << (((z + 1) % 4) * 8);
    Magic = Magic ^ XORVal;
  }
}
