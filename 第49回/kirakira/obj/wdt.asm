;; Compile Options : /TML620504F /MS /near /IC:\Users\chiya\Desktop\LAZURI~1\LIBRAR~1\SERIAL~1 /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2 /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\lazurite /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1 /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\clock /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\common /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\irq /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\lp /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\MCU_SM~1 /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\wdt /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\sub_ghz\ /D_ML620Q504 /DLITTLE_ENDIAN /DLAZURITE_IDE /DSUBGHZ /SS 512 /SL 65 /SD /Oa /Ot /W 3 /Faobj\ /Lv 
;; Version Number  : Ver.3.53.1
;; File Name       : wdt.c

	type (ML620504F) 
	model small, near
	$$wdt_clear$wdt segment code 2h #0h
CVERSION 3.53.1
CGLOBAL 01H 03H 0000H "wdt_clear" 08H 02H 00H 00H 80H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CFILE 0001H 00000022H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\ML620Q~1\\MCU_SM~1\\mcu.h"
CFILE 0002H 00000F42H "C:\\Users\\chiya\\Desktop\\LazuriteIDE\\bin\\U8Dev\\Inc\\ml620504F.h"
CFILE 0003H 00000045H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\ML620Q~1\\common\\rdwr_reg.h"
CFILE 0004H 00000040H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\lazurite_subghz\\ml620q504\\wdt\\wdt.h"
CFILE 0000H 0000003DH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\lazurite_subghz\\ml620q504\\wdt\\wdt.c"

	rseg $$wdt_clear$wdt
CFUNCTION 0

_wdt_clear	:
CBLOCK 0 1 53

;;{
CLINEA 0000H 0001H 0035H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

CBLOCK 0 2 53

;;	do {
CLINEA 0000H 0001H 0036H 0002H 0005H
_$L3 :
CBLOCK 0 3 54

;;		write_reg8( WDTCON, 0x5A );
CLINEA 0000H 0001H 0037H 0003H 001DH
	mov	r0,	#05ah
	st	r0,	0f00eh
CBLOCKEND 0 3 56

;;	} while ( (read_reg8( WDTCON ) & WDTCON_WDP) == 0 );
CLINEA 0000H 0000H 0038H 0002H 0035H
	tb	0f00eh.0
	beq	_$L3

;;	write_reg8( WDTCON, 0xA5 );
CLINEA 0000H 0001H 0039H 0002H 001CH
	mov	r0,	#0a5h
	st	r0,	0f00eh
CBLOCKEND 0 2 58

;;}
CLINEA 0000H 0001H 003AH 0001H 0001H
	rt
CBLOCKEND 0 1 58
CFUNCTIONEND 0

	public _wdt_clear
	extrn code near : _main

	end
