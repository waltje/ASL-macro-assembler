;* cmdarg.msg
;*****************************************************************************
;* AS-Portierung                                                             *
;*                                                                           *
;* Definition der Fehlermeldungen, die beim Einlesen auftreten koennen       *
;*****************************************************************************

Include header.msg

Message ErrMsgKeyFileNotFound
 "Key-Datei nicht gefunden"
 "key file not found"

Message ErrMsgKeyFileError
 "Fehler beim Lesen der Key-Datei"
 "error reading key file"

Message ErrMsgNoKeyInFile
 "Referenz auf Key-Datei in Key-Datei nicht erlaubt"
 "no references to a key file from inside a key file"
