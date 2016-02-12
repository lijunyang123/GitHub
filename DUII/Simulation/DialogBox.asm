﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\DUII\DialogBox.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

EXTRN	_BUTTON_CreateIndirect:PROC
EXTRN	_TEXT_CreateIndirect:PROC
EXTRN	_FRAMEWIN_CreateIndirect:PROC
_BSS	SEGMENT
$SG15092 DB	01H DUP (?)
_BSS	ENDS
_DATA	SEGMENT
COMM	_Title:DWORD
COMM	__hDlg:DWORD
COMM	_Text:DWORD
COMM	__hPrevWin:DWORD
_DATA	ENDS
CONST	SEGMENT
__aDialogCreate DD FLAT:_FRAMEWIN_CreateIndirect
	DD	FLAT:$SG15092
	DW	00H
	DW	05aH
	DW	024H
	DW	012cH
	DW	0c8H
	DW	010H
	DD	00H
	DD	FLAT:_TEXT_CreateIndirect
	DD	FLAT:$SG15093
	DW	0161H
	DW	0aH
	DW	0aH
	DW	0118H
	DW	06eH
	DW	00H
	ORG $+4
	DD	FLAT:_BUTTON_CreateIndirect
	DD	FLAT:$SG15094
	DW	0171H
	DW	032H
	DW	078H
	DW	04bH
	DW	032H
	ORG $+6
	DD	FLAT:_BUTTON_CreateIndirect
	DD	FLAT:$SG15095
	DW	0172H
	DW	0aaH
	DW	078H
	DW	04bH
	DW	032H
	ORG $+6
CONST	ENDS
_DATA	SEGMENT
$SG15093 DB	'text', 00H
	ORG $+3
$SG15094 DB	'YES', 00H
$SG15095 DB	'NO', 00H
_DATA	ENDS
PUBLIC	_ShowDialog
EXTRN	_GUI_ExecCreatedDialog:PROC
EXTRN	_TEXT_SetWrapMode:PROC
EXTRN	_TEXT_SetTextAlign:PROC
EXTRN	_TEXT_CreateEx:PROC
EXTRN	_FRAMEWIN_SetText:PROC
EXTRN	_GUI_CreateDialogBox:PROC
EXTRN	_WM_GetFocussedWindow:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\duii\dialogbox.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _ShowDialog
_TEXT	SEGMENT
_hTxt1$ = -8						; size = 4
_sTitle$ = 8						; size = 4
_sText$ = 12						; size = 4
_x_org$ = 16						; size = 4
_y_org$ = 20						; size = 4
_ShowDialog PROC					; COMDAT
; Line 64
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 69
	call	_WM_GetFocussedWindow
	mov	DWORD PTR __hPrevWin, eax
; Line 71
	mov	eax, DWORD PTR _y_org$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x_org$[ebp]
	push	ecx
	push	0
	push	OFFSET __cbCallback
	push	4
	push	OFFSET __aDialogCreate
	call	_GUI_CreateDialogBox
	add	esp, 24					; 00000018H
	mov	DWORD PTR __hDlg, eax
; Line 73
	mov	eax, DWORD PTR _sTitle$[ebp]
	push	eax
	mov	ecx, DWORD PTR __hDlg
	push	ecx
	call	_FRAMEWIN_SetText
	add	esp, 8
; Line 75
	mov	eax, DWORD PTR _sText$[ebp]
	push	eax
	push	353					; 00000161H
	push	0
	push	2
	mov	ecx, DWORD PTR __hDlg
	push	ecx
	push	110					; 0000006eH
	push	280					; 00000118H
	push	10					; 0000000aH
	push	10					; 0000000aH
	call	_TEXT_CreateEx
	add	esp, 36					; 00000024H
	mov	DWORD PTR _hTxt1$[ebp], eax
; Line 76
	push	14					; 0000000eH
	mov	eax, DWORD PTR _hTxt1$[ebp]
	push	eax
	call	_TEXT_SetTextAlign
	add	esp, 8
; Line 77
	push	1
	mov	eax, DWORD PTR _hTxt1$[ebp]
	push	eax
	call	_TEXT_SetWrapMode
	add	esp, 8
; Line 79
	mov	eax, DWORD PTR __hDlg
	push	eax
	call	_GUI_ExecCreatedDialog
	add	esp, 4
; Line 80
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_ShowDialog ENDP
_TEXT	ENDS
EXTRN	_WM_DefaultProc:PROC
EXTRN	_GUI_EndDialog:PROC
EXTRN	_WM_GetId:PROC
EXTRN	_TEXT_SetText:PROC
EXTRN	_WM_GetDialogItem:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __cbCallback
_TEXT	SEGMENT
tv81 = -232						; size = 4
tv80 = -232						; size = 4
tv64 = -232						; size = 4
_hTxt1$ = -32						; size = 4
_Id$ = -20						; size = 4
_NCode$ = -8						; size = 4
_pMsg$ = 8						; size = 4
__cbCallback PROC					; COMDAT
; Line 23
	push	ebp
	mov	ebp, esp
	sub	esp, 232				; 000000e8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-232]
	mov	ecx, 58					; 0000003aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 27
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR tv64[ebp], ecx
	cmp	DWORD PTR tv64[ebp], 29			; 0000001dH
	je	SHORT $LN10@cbCallback
	cmp	DWORD PTR tv64[ebp], 38			; 00000026H
	je	SHORT $LN9@cbCallback
	jmp	$LN1@cbCallback
$LN10@cbCallback:
; Line 30
	push	353					; 00000161H
	mov	eax, DWORD PTR __hDlg
	push	eax
	call	_WM_GetDialogItem
	add	esp, 8
	mov	DWORD PTR _hTxt1$[ebp], eax
; Line 31
	push	14					; 0000000eH
	mov	eax, DWORD PTR _hTxt1$[ebp]
	push	eax
	call	_TEXT_SetTextAlign
	add	esp, 8
; Line 32
	push	1
	mov	eax, DWORD PTR _hTxt1$[ebp]
	push	eax
	call	_TEXT_SetWrapMode
	add	esp, 8
; Line 33
	mov	eax, DWORD PTR _Text
	push	eax
	mov	ecx, DWORD PTR _hTxt1$[ebp]
	push	ecx
	call	_TEXT_SetText
	add	esp, 8
; Line 35
	mov	eax, DWORD PTR _Title
	push	eax
	mov	ecx, DWORD PTR __hDlg
	push	ecx
	call	_FRAMEWIN_SetText
	add	esp, 8
; Line 37
	jmp	$LN13@cbCallback
$LN9@cbCallback:
; Line 39
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	call	_WM_GetId
	add	esp, 4
	mov	DWORD PTR _Id$[ebp], eax
; Line 40
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _NCode$[ebp], ecx
; Line 41
	mov	eax, DWORD PTR _NCode$[ebp]
	mov	DWORD PTR tv80[ebp], eax
	cmp	DWORD PTR tv80[ebp], 2
	je	SHORT $LN6@cbCallback
	jmp	SHORT $LN7@cbCallback
$LN6@cbCallback:
; Line 47
	mov	eax, DWORD PTR _Id$[ebp]
	mov	DWORD PTR tv81[ebp], eax
	cmp	DWORD PTR tv81[ebp], 369		; 00000171H
	je	SHORT $LN2@cbCallback
	cmp	DWORD PTR tv81[ebp], 370		; 00000172H
	je	SHORT $LN3@cbCallback
	jmp	SHORT $LN7@cbCallback
$LN3@cbCallback:
; Line 49
	push	0
	mov	eax, DWORD PTR __hDlg
	push	eax
	call	_GUI_EndDialog
	add	esp, 8
; Line 50
	jmp	SHORT $LN7@cbCallback
$LN2@cbCallback:
; Line 52
	push	1
	mov	eax, DWORD PTR __hDlg
	push	eax
	call	_GUI_EndDialog
	add	esp, 8
$LN7@cbCallback:
; Line 57
	jmp	SHORT $LN13@cbCallback
$LN1@cbCallback:
; Line 59
	mov	eax, DWORD PTR _pMsg$[ebp]
	push	eax
	call	_WM_DefaultProc
	add	esp, 4
$LN13@cbCallback:
; Line 61
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 232				; 000000e8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__cbCallback ENDP
_TEXT	ENDS
END