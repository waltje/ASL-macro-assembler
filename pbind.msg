;* pbind.msg
;****************************************************************************
;* Makroassembler AS 							    *
;* 									    *
;* Stringdefinitionen fuer BIND                                             *
;****************************************************************************

Include header.msg
Include tools2.msg

;-----------------------------------------------------------------------------
; Fehlermeldungen

Message ErrMsgTargetMissing
 "Zieldateiangabe fehlt!"
 "target file specification is missing!"

;-----------------------------------------------------------------------------
; Ansagen

Message InfoMessHead2
 " <Quelldatei(en)> <Zieldatei> [Optionen]"
 " <source file(s)> <target file> [options]"

Message Byte
 "byte"
 "Byte"

Message Bytes
 "bytes"
 "Bytes"

Message InfoMessHelp
 "\n" \
 "Optionen:\n" \
 "  -f <Headerliste> : auszufilternde Records\n" \
 "  -help            : nur Hilfe ausgeben\n" \
 "  -q, -quiet       : Stiller Betrieb\n" \
 "  -v               : wortreicher Betrieb\n" \
 "  -version         : nur Versionsinfo ausgeben\n" \
 "\n"
 "\n" \
 "options:\n" \
 "  -f <header list> : records to filter out\n" \
 "  -help            : print help and exit\n" \
 "  -q, -quiet       : silent operation\n" \
 "  -v               : verbose operation\n" \
 "  -version         : print version info and exit\n" \
 "\n"
