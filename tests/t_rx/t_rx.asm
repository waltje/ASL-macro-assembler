;;;
;;;	Test Renesas RX
;;;

;;;	RXv1

	CPU	RXV1

	;; ABS (0)
	ABS	R0		; (1)
	ABS	R1,R2		; (2)

	;; ADC (5)
	ADC	#127,R3		; (1)
	ADC	#32767,R4
	ADC	#-8388608,R5
	ADC	#8388608,R6
	ADC	R7,R8		; (2)
	ADC	[R9].L,R10	; (3)
	ADC	1020[R11].L,R12
	ADC	1024[R13].L,R14

	;; ADD (2D)
	ADD	#15,R0		; (1)
	ADD	#127,R1		; (2)
	ADD	#32767,R2
	ADD	#32768,R3
	ADD	#8388608,R4
	ADD	R5,R6		; (3)
	ADD	[R7].UB,R8
	ADD	128[R9].B,R10
	ADD	512[R11].W,R12
	ADD	[R13].L,R14
	ADD	510[R15].UW,R0
	ADD	#-128,R1,R2	; (4)
	ADD	R3,R4,R5	; (5)

	;; AND (5B)
	AND	#8,R6		; (1)
	AND	#55AAH,R7	; (2)
	AND	R8,R9		; (3)
	AND	32[R10].UB,R11
	AND	192[R12].B,R13
	AND	R14,R15,R0	; (4)

	;; BCLR (6D)
	BCLR	#7,256[R1].B	; (1)
	BCLR	R2,[R3].B	; (2)
	BCLR	#31,R4		; (3)
	BCLR	R5,R6		; (4)

	;; BCnd (79)
	BEQ.S	$+10		; (1)
	BZ	$+3
	BNE	$+5
	BNZ.B	$+10		; (2)
	BGEU	$+32
	BC.B	$+127
	BLTU	$-128
	BNC	$
	BGTU	$+64
	BLEU	$-64
	BPZ	$+16
	BN	$-16
	BGE	$+32
	BLT	$-32
	BGT	$+48
	BLE	$-48
	BO	$+127
	BNO	$-128
	BEQ	$+128
	BNZ.W	$-128

	;; BMCnd (A0)
	BMEQ	#0,[R1].B	; (1)
	BMZ	#1,127[R2]
	BMNE	#2,128[R3]
	BMNZ	#3,256[R4].B
	BMGEU	#4,[R5]
	BMC	#5,255[R6]
	BMLTU	#6,65535[R7]
	BMNC	#7,[R8].B
	BMGTU	#0,128[R9].B
	BMLEU	#1,32768[R10].B
	BMPZ	#2,[R11]
	BMN	#3,0[R12]
	BMGE	#8,R13		; (2)
	BMLT	#16,R14
	BMGT	#24,R15
	BMLE	#31,R0
	BMO	#31,R1
	BMNO	#31,R2

	;; BNOT (E0)
	BNOT	#7,[R0].B	; (1)
	BNOT	R1,128[R2]	; (2)
	BNOT	#16,R3		; (3)
	BNOT	R4,R5		; (4)

	;; BRA (ED)
	BRA	$+10		; (1)
	BRA.S	$+3
	BRA.B	$+3		; (2)
	BRA	$+127
	BRA	$+128		; (3)
	BRA.W	$+64
	BRA	$+32768		; (4)
	BRA.A	$+64
	BRA	R8		; (5)
	BRA.L	R9

	;; BRK (105)
	BRK			; (1)

	;; BSET (106)
	BSET	#7,[R10]	; (1)
	BSET	R11,256[R12].B	; (2)
	BSET	#8,R13		; (3)
	BSET	R14,R15		; (4)

	;; BSR (112)
	BSR	$+128		; (1)
	BSR.W	$-128
	BSR	$-32769		; (2)
	BSR.A	$+32767
	BSR	R10		; (3)
	BSR.L	R11

	;; BTST (124)
	BTST	#0,128[R12]	; (1)
	BTST	R13,256[R14].B	; (2)
	BTST	#16,R15		; (3)
	BTST	R0,R1		; (4)

	;; CLRPSW (131)
	CLRPSW	C		; (1)
	CLRPSW	S
	CLRPSW	I

	;; CMP (137)
	CMP	#15,R2		; (1)
	CMP	#128,R3		; (2)
	CMP	#-128,R4	; (3)
	CMP	R5,R6		; (4)
	CMP	255[R7].UB,R8
	CMP	32768[R9].L,R10

	;; DIV (149)
	DIV	#65536,R11	; (1)
	DIV	R12,R13		; (2)
	DIV	[R14].UB,R15
	DIV	16[R0].L,R1

	;; DIVU (15A)
	DIVU	#127,R2		; (1)
	DIVU	R3,R4		; (2)
	DIVU	256[R5].UB,R6
	DIVU	[R7].B,R8

	;; EMUL (16A)
	EMUL	#256,R9		; (1)
	EMUL	R10,R11		; (2)
	EMUL	[R12].UB,R13
	EMUL	32[R14].W,R15

	;; EMULU (17A)
	EMULU	#65536,R0	; (1)
	EMULU	R1,R2		; (2)
	EMULU	128[R3].UB,R4
	EMULU	512[R5].L,R6

	;; FADD (18C)
	FADD	#0.0,R7		; (1)
	FADD	R8,R9		; (2)
	FADD	[R10],R11

	;; FCMP (199)
	FCMP	#0.15625,R12	; (1)
	FCMP	R13,R14		; (2)
	FCMP	1020[R15],R0

	;; FDIV (1A7)
	FDIV	#3E200000H,R1	; (1)
	FDIV	R2,R3		; (2)
	FDIV	1024[R4],R5

	;; FMUL (1B6)
	FMUL	#0.0,R6		; (1)
	FMUL	R7,R8		; (2)
	FMUL	[R9],R10

	;; FSUB (1C3)
	FSUB	#.15625,R11	; (1)
	FSUB	R12,R13		; (2)
	FSUB	128[R14],R15

	;; FTOI (1D1)
	FTOI	R0,R1		; (1)
	FTOI	2048[R2],R3

	;; INT (1D9)
	INT	#255		; (1)

	;; ITOF (1DC)
	ITOF	R4,R5		; (1)
	ITOF	[R6].UB,R7
	ITOF	4[R8].W,R9

	;; JMP (1E7)
	JMP	R10		; (1)

	;; JSR (1E9)
	JSR	R11		; (1)

	;; MACHI (1EB)
	MACHI	R12,R13		; (1)

	;; MACLO (1EE)
	MACLO	R14,R15

	;; MAX (1F1)
	MAX	#127,R0		; (1)
	MAX	R1,R2		; (2)
	MAX	128[R3].UB,R4
	MAX	256[R5].L,R6

	;; MIN (201)
	MIN	#-128,R7	; (1)
	MIN	R8,R9		; (2)
	MIN	256[R10].UB,R11
	MIN	[R12].B,R13

	;; MOV (211)
	MOV.B	R0,5[R1]	; (1)
	MOV.W	24[R2],R3	; (2)
	MOV.L	#15,R4		; (3)
	MOV.B	#255,31[R5]	; (4)
	MOV.W	#255,62[R6]
	MOV.L	#128,R8		; (5)
	MOV.L	#-128,R9	; (6)
	MOV.L	#32767,R10
	MOV.L	#8388607,R11
	MOV.L	#9999999,R12
	MOV.B	R13,R14		; (7)
	MOV.W	R15,R0
	MOV.L	R1,R2
	MOV.B	#-128,[R8]	; (8)
	MOV.B	#127,15[R9]
	MOV.B	#255,256[R10]
	MOV.W	#-128,[R11]
	MOV.W	#128,128[R12]
	MOV.W	#65535,1024[R13]
	MOV.B	[R14],R15	; (9)
	MOV.W	510[R0],R1
	MOV.L	262140[R2],R3
	MOV.B	[R4,R5],R6	; (10)
	MOV.W	[R7,R8],R9
	MOV.L	[R10,R11],R12
	MOV.B	R13,[R14]	; (11)
	MOV.W	R15,64[R0]
	MOV.L	R1,1024[R2]
	MOV.B	R3,[R4,R5]	; (12)
	MOV.W	R6,[R7,R8]
	MOV.L	R9,[R10,R11]
	MOV.B	[R12],[R13]	; (13)
	MOV.B	[R14],192[R15]
	MOV.W	[R0],512[R1]
	MOV.W	64[R2],[R3]
	MOV.L	256[R4],512[R5]
	MOV.L	768[R6],1024[R7]
	MOV.B	256[R8],[R9]
	MOV.B	65535[R10],32[R11]
	MOV.W	512[R12],4096[R13]
	MOV.B	R14,[R15+]	; (14)
	MOV.W	R0,[-R1]
	MOV.L	[R2+],R3	; (15)
	MOV.B	[-R4],R5
	
	;; MOVU (2A6)
	MOVU.B	7[R0],R1	; (1)
	MOVU.W	62[R2],R3
	MOVU.B	R4,R5		; (2)
	MOVU.W	[R6],R7
	MOVU.B	255[R8],R9
	MOVU.W	510[R10],R11
	MOVU.B	[R12,R13],R14	; (3)
	MOVU.W	[R15+],R0	; (4)
	MOVU.B	[-R1],R2

	;; MUL (2BD)
	MUL	#15,R3		; (1)
	MUL	#127,R4		; (2)
	MUL	#32767,R5
	MUL	#65535,R6
	MUL	R7,R8		; (3)
	MUL	[R9].UB,R10
	MUL	8[R11].L,R12
	MUL	R13,R14,R15	; (4)

	;; MULHI (2D6)
	MULHI	R11,R12

	;; MULLO (2D9)
	MULLO	R13,R14
	
	;; MVFACHI (2DC)
	MVFACHI	R0

	;; MVFACMI (2DF)
	MVFACMI	R1

	;; MVFC (2E2)
	MVFC	PSW,R0
	MVFC	PC,R1
	MVFC	USP,R2
	MVFC	FPSW,R3
	MVFC	BPSW,R4

	;; MVTACHI (2F1)
	MVTACHI	R2

	;; MVTACLO (2F4)
	MVTACLO	R3

	;; MVTC (2F7)
	MVTC	#1,BPSW		; (1)
	MVTC	#0100H,BPC
	MVTC	#10000H,ISP
	MVTC	#7FFFFFFFH,FINTV
	MVTC	R4,INTB		; (2)

	;; MVTIPL (310)
	SUPMODE	ON
	MVTIPL	#0
	MVTIPL	#15
	SUPMODE	OFF
	EXPECT	50
	MVTIPL	#8
	ENDEXPECT

	;; NEG (316)
	NEG	R5		; (1)
	NEG	R6,R7		; (2)
	
	;; NOP (31B)
	NOP

	;; NOT (31C)
	NOT	R8		; (1)
	NOT	R9,R10		; (2)

	;; OR (321)
	OR	#7,R11		; (1)
	OR	#7FFFH,R12	; (2)
	OR	R13,R14		; (3)
	OR	[R15].UB,R0
	OR	256[R1].L,R2
	OR	R3,R4,R5	; (4)

	;; POP (332)
	POP	R0

	;; POPC (334)
	POPC	PSW	

	;; POPM (336)
	POPM	R1-R15

	;; PUSH (338)
	PUSH.B	R1		; (1)
	PUSH.W	[R2]		; (2)
	PUSH.L	256[R3]
	PUSH.B	256[R4]

	;; PUSHC (343)
	PUSHC	USP

	;; PUSHM (345)
	PUSHM	R5-R6

	;; RACW (347)
	RACW	#1
	RACW	#2

	;; REVL (34D)
	REVL	R7,R8

	;; REVW (350)
	REVW	R9,R10

	;; RMPA (353)
	RMPA.B
	RMPA.W
	RMPA.L

	;; ROLC (359)
	ROLC	R11

	;; RORC (35B)
	RORC	R12

	;; ROTL (35D)
	ROTL	#3,R13		; (1)
	ROTL	R14,R15		; (2)

	;; ROTR (363)
	ROTR	#31,R0		; (1)
	ROTR	R1,R2		; (2)

	;; ROUND (369)
	ROUND	R3,R4
	ROUND	[R5].L,R6
	
	;; RTE (36F)
	SUPMODE	ON
	RTE

	;; RTFI (371)
	RTFI
	SUPMODE	OFF

	;; RTS (373)
	RTS

	;; RTSD (374)
	RTSD	#0		; (1)
	RTSD	#255,R4-R7	; (2)

	;; SAT (379)
	SAT	R8

	;; SATR (37B)
	SATR

	;; SBB (37D)
	SBB	R9,R10		; (1)
	SBB	256[R11].L,R12	; (2)

	;; SCCnd (385)
	SCEQ.L	R0
	SCZ.B	[R1]
	SCNE.W	24[R2]
	SCNZ.L	1024[R3]
	SCGEU.L	R4
	SCC.L	R5
	SCLTU.B	[R6]
	SCNC.W	[R7]
	SCGTU.L	R8
	SCLEU.B [R9]
	SCPZ.W	[R10]
	SCN.L	R11
	SCGE.B	[R12]
	SCLT.W	[R13]
	SCGT.L	R14
	SCLE.B	[R15]
	SCO.W	[R0]
	SCNO.L	R1

	;; SCMPU (3BE)
	SCMPU

	;; SETPSW (3C0)
	SETPSW	Z
	SETPSW	O
	SETPSW	U

	;; SHAR (3C6)
	SHAR	#0,R2		; (1)
	SHAR	R3,R4		; (2)
	SHAR	#7,R5,R6	; (3)

	;; SHLL (3CE)
	SHLL	#31,R7		; (1)
	SHLL	R8,R9		; (2)
	SHLL	#16,R10,R11	; (3)

	;; SHLR (3D6)
	SHLR	#0,R12		; (1)
	SHLR	R13,R14		; (2)
	SHLR	#8,R15,R0	; (3)

	;; SMOVB (3DE)
	SMOVB

	;; SMOVF (3E0)
	SMOVF

	;; SMOVU (3E2)
	SMOVU

	;; SSTR (3E4)
	SSTR.B
	SSTR.W
	SSTR.L

	;; STNZ (3EA)
	STNZ	#100,R0

	;; STZ (3EE)
	STZ	#65536,R1

	;; SUB (3F4)
	SUB	#8,R2		; (1)
	SUB	R3,R4		; (2)
	SUB	[R5].UB,R6
	SUB	4[R7].UW,R8
	SUB	R9,R10,R11	; (3)

	;; SUNTIL (401)
	SUNTIL.B

	;; SWHILE 403)
	SWHILE.W

	;; TST (405)
	TST	#1024,R12	; (1)
	TST	R13,R14		; (2)
	TST	3[R15].UB,R0
	TST	8[R1].L,R2

	;; WAIT (416)
	SUPMODE ON
	WAIT
	SUPMODE	OFF

	;; XCHG (418)
	XCHG	R3,R4
	XCHG	[R5].UB,R6
	XCHG	256[R7].B,R8

	;; XOR (424)
	XOR	#256,R9		; (1)
	XOR	R10,R11		; (2)
	XOR	[R12].UB,R13
	XOR	[R14].W,R15

;;;	RXv2
	CPU	RXV2

	;; FSQRT (433)
	FSQRT	R0,R1
	FSQRT	1024[R2].L,R3

	;; FTOU (43B)
	FTOU	R4,R5
	FTOU	[R6].L,R7

	;; UTOF (441)
	UTOF	R8,R9
	UTOF	[R10].UB,R11
	UTOF	[R12].UW,R13

	;; MOVCO (44B)
	MOVCO	R14,[R15]

	;; MOVLI (44E)
	MOVLI	[R0],R1

	;; EMACA (451)
	EMACA	R2,R3,A0

	;; EMSBA (454)
	EMSBA	R4,R5,A1

	;; EMULA (457)
	EMULA	R6,R7,A0

	;; MACLH (45A)
	MACLH	R8,R9,A1

	;; MSBHI (45D)
	MSBHI	R10,R11,A0

	;; MSBLH (460)
	MSBLH	R12,R13,A1

	;; MSBLO (463)
	MSBLO	R14,R15,A0

	;; MULLH (466)
	MULLH	R0,R1,A1

	;; MVFACGU (469)
	MVFACGU	#0,A0,R2

	;; MVFACLO (46C)
	MVFACLO	#1,A1,R3

	;; MVTACGU (46F)
	MVTACGU	R4,A0

	;; RACL (472)
	RACL	#1,A1

	;; RDACL (475)
	RDACL	#2,A0

	;; RDACW (478)
	RDACW	#1,A1

	;; FADD (47B)
	FADD	R5,R6,R7

	;; FMUL (47E)
	FMUL	R8,R9,R10

	;; FSUB (481)
	FSUB	R11,R12,R13

	;; STNZ (484)
	STNZ	R14,R15

	;; STZ (487)
	STZ	R0,R1

	;; MVFC (48A)
	MVFC	EXTB,R2

	;; MVTC (48D)
	MVTC	#127,EXTB

	;; POPC (491)
	POPC	EXTB

	;; PUSHC (493)
	PUSHC	EXTB

	;; MACHI (495)
	MACHI	R3,R4,A0

	;; MACLO (498)
	MACLO	R5,R6,A1

	;; MULHI (49B)
	MULHI	R7,R8,A0

	;; MULLO (49E)
	MULLO	R9,R10,A1

	;; MVFACHI (4A1)
	MVFACHI	#2,A0,R11

	;; MVFACMI (4A4)
	MVFACMI	#0,A1,R12

	;; MVTACHI (4A7)
	MVTACHI	R13,A0

	;; MVTACLO (4AA)
	MVTACLO	R14,A1

	;; RACW (4AD)
	RACW	#2,A0
	
;;;	RXv3
	CPU	RXV3

	;; BFMOV (4B0)
	BFMOV	#0,#5,#8,R0,R1

	;; BFMOVZ (4B5)
	BFMOVZ	#8,#24,#8,R2,R3

	;; RSTR (4BA)
	RSTR	#128		; (1)
	RSTR	R4		; (2)

	;; SAVE (4C2)
	SAVE	#255		; (1)
	SAVE	R5		; (2)

	;; XOR (4CA)
	XOR	R6,R7,R8	; (3)

	;; DABS (4CD)
	DABS	DR0,DR1

	;; DADD (4D1)
	DADD	DR2,DR3,DR4

	;; DCMPcm (4D5)
	DCMPUN	DR5,DR6
	DCMPEQ	DR7,DR8
	DCMPLT	DR9,DR10
	DCMPLE	DR11,DR12

	;; DDIV (4E5)
	DDIV	DR13,DR14,DR15

	;; DMOV (4E9)
	DMOV.D	R9,DRH0		; (1)
	DMOV.L	R10,DRH1	; (2)
	DMOV.L	R11,DRL2	; (3)
	DMOV.L	DRH3,R12	; (4)
	DMOV.L	DRL4,R13	; (5)
	DMOV.D	DR5,DR6		; (6)
	DMOV.D	DR7,[R14]	; (7)
	DMOV.D	2040[R15],DR8	; (8)
	DMOV.D	#12345678H,DRH9	; (9)
	DMOV.L	#87654321H,DRH10 ; (10)
	DMOV.L	#12345678H,DRL11 ; (11)

	;; DMUL (51F)
	DMUL	DR12,DR13,DR14

	;; DNEG (523)
	DNEG	DR15,DR0

	;; DPOPM (527)
	DPOPM.D	DR0-DR7		; (1)
	DPOPM.L	DCR1-DCR3	; (2)
	DPOPM.L	DPSW-DECNT

	;; DPUSHM (530)
	DPUSHM.D	DR4-DR15 ; (1)
	DPUSHM.L	DCMR-DEPC ; (2)

	;; DROUND (536)
	DROUND	DR1,DR2

	;; DSQRT (53A)
	DSQRT	DR3,DR4

	;; DSUB (53E)
	DSUB	DR5,DR6,DR7

	;; DTOF (542)
	DTOF	DR8,DR9

	;; DTOI (546)
	DTOI	DR10,DR11

	;; DTOU (54A)
	DTOU	DR12,DR13

	;; FTOD (54E)
	FTOD	R0,DR14

	;; ITOD (552)
	ITOD	R1,DR15

	;; MVFDC (556)
	MVFDC	DCR0,R2

	;; MVFDR (55A)
	MVFDR

	;; MVTDC (55D)
	MVTDC	R3,DCMR

	;; UTOD (561)
	UTOD	R4,DR0

;;;	Pseudo Instructions

	ALIGN	8,03H

	;; BYTE (568)
	BYTE	0,11B,22O,33H
	BYTE	"Str",0

	BIGENDIAN ON

	;; WORD (570)
	WORD	-32768,0ABCDH

	;; FLOAT (574)
	FLOAT	0.15625

	BIGENDIAN OFF

	;; LWORD (578)
	LWORD	12345678H,-2

	;; DOUBLE (580)
	DOUBLE	0.25

	ENDIAN	BIG

	;; LWORD (588)
	LWORD	89ABCDEFH

	ENDIAN	LITTLE

	;; LWORD (58C)
	LWORD	89ABCDEFH

	END