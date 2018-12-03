;; Compile Options : /TML620504F /MS /near /IC:\Users\chiya\Desktop\LAZURI~1\LIBRAR~1\SERIAL~1 /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2 /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\lazurite /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1 /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\clock /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\common /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\irq /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\lp /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\MCU_SM~1 /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\ML620Q~1\wdt /IC:\Users\chiya\Desktop\LAZURI~1\hardware\LAZURI~2\sub_ghz\ /D_ML620Q504 /DLITTLE_ENDIAN /DLAZURITE_IDE /DSUBGHZ /SS 512 /SL 65 /SD /Oa /Ot /W 3 /Faobj\ /Lv 
;; Version Number  : Ver.3.53.1
;; File Name       : kirakira.c

	type (ML620504F) 
	model small, near
	$$TABled0$kirakira segment table 2h #0h
	$$loop$kirakira segment code 2h #0h
	$$setup$kirakira segment code 2h #0h
CVERSION 3.53.1
CGLOBAL 01H 03H 0000H "loop" 08H 02H 43H 00H 81H 04H 00H 00H 07H
CGLOBAL 01H 03H 0000H "setup" 08H 02H 42H 00H 81H 04H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 001EH 0002H 00000004H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "init" 0AH 03H 00H 02H 2AH 01H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 00000002H "write" 0AH 03H 00H 02H 2BH 01H 00H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 001DH 001AH 00000034H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "init" 0AH 03H 00H 02H 0CH 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000002H "remove" 0AH 03H 00H 02H 0DH 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000004H "begin" 0AH 03H 00H 02H 0EH 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000006H "close" 0AH 03H 00H 02H 0FH 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000008H "send" 0AH 03H 00H 02H 11H 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 0000000AH "send64le" 0AH 03H 00H 02H 13H 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 0000000CH "send64be" 0AH 03H 00H 02H 15H 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 0000000EH "rxEnable" 0AH 03H 00H 02H 17H 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000010H "setPromiscuous" 0AH 03H 00H 02H 18H 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000012H "setAckReq" 0AH 03H 00H 02H 19H 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000014H "setBroadcastEnb" 0AH 03H 00H 02H 1AH 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000016H "rxDisable" 0AH 03H 00H 02H 1BH 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000018H "readData" 0AH 03H 00H 02H 1CH 01H 00H 00H 00H 00H 08H
CSTRUCTMEM 42H 00000002H 0000001AH "getMyAddress" 0AH 03H 00H 02H 1DH 01H 00H 00H 00H 00H 08H
CSTRUCTMEM 43H 00000002H 0000001CH "getMyAddr64" 0AH 03H 00H 02H 1EH 01H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 0000001EH "setMyAddress" 0AH 03H 00H 02H 1FH 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000020H "getStatus" 0AH 03H 00H 02H 20H 01H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 00000022H "msgOut" 0AH 03H 00H 02H 21H 01H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 00000024H "setSendMode" 0AH 03H 00H 02H 22H 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000026H "getSendMode" 0AH 03H 00H 02H 23H 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000028H "decMac" 0AH 03H 00H 02H 24H 01H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 0000002AH "setKey" 0AH 03H 00H 02H 25H 01H 00H 00H 00H 00H 01H
CSTRUCTMEM 42H 00000002H 0000002CH "setEnhanceAck" 0AH 03H 00H 02H 26H 01H 00H 00H 00H 00H 00H
CSTRUCTMEM 43H 00000002H 0000002EH "getEnhanceAck" 0AH 03H 00H 02H 27H 01H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 00000030H "setAckTxInterval" 0AH 03H 00H 02H 28H 01H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 00000032H "getEdValue" 0AH 03H 00H 02H 29H 01H 00H 00H 00H 00H 07H
CSTRUCTTAG 0000H 0000H 0011H 000BH 00000002H "mac_fc_alignment"
CSTRUCTMEM 52H 00000003H 00000000H "frame_type" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "sec_enb" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "pending" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "ack_req" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "panid_comp" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "nop" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000008H "seq_comp" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000009H "ielist" 02H 00H 00H
CSTRUCTMEM 52H 00000002H 0000000AH "dst_addr_type" 02H 00H 00H
CSTRUCTMEM 52H 00000002H 0000000CH "frame_ver" 02H 00H 00H
CSTRUCTMEM 52H 00000002H 0000000EH "src_addr_type" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 001CH 000BH 00000020H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "mac_header" 04H 00H 06H 12H 00H
CSTRUCTMEM 42H 00000001H 00000002H "seq_num" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000003H "addr_type" 02H 00H 00H
CSTRUCTMEM 42H 00000002H 00000004H "dst_panid" 02H 00H 08H
CSTRUCTMEM 42H 00000008H 00000006H "dst_addr" 05H 01H 08H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000EH "src_panid" 02H 00H 08H
CSTRUCTMEM 42H 00000008H 00000010H "src_addr" 05H 01H 08H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000018H "raw" 04H 03H 00H 00H 00H
CSTRUCTMEM 43H 00000002H 0000001AH "raw_len" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 0000001CH "payload" 04H 03H 00H 00H 00H
CSTRUCTMEM 43H 00000002H 0000001EH "payload_len" 02H 00H 08H
CSTRUCTTAG 0000H 0000H 001BH 0006H 0000000AH "_Notag"
CSTRUCTMEM 42H 00000001H 00000000H "addrType" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000001H "senseTime" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000002H "txRetry" 02H 00H 00H
CSTRUCTMEM 42H 00000002H 00000004H "txInterval" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000006H "myAddress" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000008H "ccaWait" 02H 00H 08H
CSTRUCTTAG 0000H 0000H 001AH 0002H 00000004H "_Notag"
CSTRUCTMEM 42H 00000001H 00000000H "rssi" 02H 00H 00H
CSTRUCTMEM 43H 00000002H 00000002H "status" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0008H 0003H 00000006H "_Notag"
CSTRUCTMEM 42H 00000002H 00000000H "data" 04H 03H 00H 00H 00H
CSTRUCTMEM 42H 00000002H 00000002H "len" 02H 00H 08H
CSTRUCTMEM 43H 00000002H 00000004H "size" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0009H 0004H 00000010H "_Notag"
CSTRUCTMEM 42H 00000001H 00000000H "id" 02H 00H 00H
CSTRUCTMEM 42H 00000002H 00000002H "buf_size" 02H 00H 08H
CSTRUCTMEM 43H 00000006H 00000004H "in" 04H 00H 05H 08H 00H
CSTRUCTMEM 43H 00000006H 0000000AH "out" 04H 00H 05H 08H 00H
CSTRUCTTAG 0000H 0000H 000CH 0015H 00000028H "_Notag"
CSTRUCTMEM 42H 00000001H 00000000H "condition" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000001H "pages" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000002H "ch" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000003H "ccaRetry" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000004H "ccaBe" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "ccaCount" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "txPower" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "txRetry" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000008H "txMode" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000009H "sequnceNum" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 0000000AH "resendingNum" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 0000000BH "rxOnEnable" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 0000000CH "promiscuousMode" 02H 00H 00H
CSTRUCTMEM 42H 00000002H 0000000EH "ack_timeout" 02H 00H 08H
CSTRUCTMEM 43H 00000002H 00000010H "status" 02H 00H 01H
CSTRUCTMEM 42H 00000004H 00000012H "total_send_bytes" 02H 00H 02H
CSTRUCTMEM 42H 00000004H 00000016H "start_send_time" 02H 00H 02H
CSTRUCTMEM 42H 00000004H 0000001AH "last_send_time" 02H 00H 02H
CSTRUCTMEM 43H 00000002H 0000001EH "phy" 06H 03H 00H 00H 05H 09H 00H
CSTRUCTMEM 43H 00000006H 00000020H "ack" 04H 00H 05H 08H 00H
CSTRUCTMEM 42H 00000002H 00000026H "tx_ack_interval" 02H 00H 08H
CSTRUCTTAG 0000H 0000H 0015H 0005H 0000000EH "mac_addr"
CSTRUCTMEM 42H 00000001H 00000000H "pan_coord" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000001H "lddn_addr" 02H 00H 00H
CSTRUCTMEM 42H 00000002H 00000002H "pan_id" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000004H "short_addr" 02H 00H 08H
CSTRUCTMEM 42H 00000008H 00000006H "ieee_addr" 05H 01H 08H 00H 00H 00H
CSTRUCTTAG 0000H 0000H 000FH 0002H 00000004H "_Notag"
CSTRUCTMEM 42H 00000001H 00000000H "enb" 02H 00H 00H
CSTRUCTMEM 42H 00000002H 00000002H "data" 02H 00H 08H
CSTRUCTTAG 0000H 0000H 000EH 0003H 0000000EH "fc_addr"
CSTRUCTMEM 43H 00000004H 00000000H "panid" 04H 00H 05H 0FH 00H
CSTRUCTMEM 42H 00000001H 00000004H "addr_type" 02H 00H 00H
CSTRUCTMEM 43H 00000008H 00000006H "addr" 04H 00H 06H 10H 00H
CSTRUCTTAG 0000H 0000H 0013H 000AH 00000036H "mac_header"
CSTRUCTMEM 43H 00000002H 00000000H "fc" 04H 00H 06H 12H 00H
CSTRUCTMEM 43H 0000000EH 00000002H "dst" 04H 00H 05H 0EH 00H
CSTRUCTMEM 43H 0000000EH 00000010H "src" 04H 00H 05H 0EH 00H
CSTRUCTMEM 42H 00000001H 0000001EH "seq" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 0000001FH "addr_type" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000020H "rssi" 02H 00H 00H
CSTRUCTMEM 43H 00000006H 00000022H "payload" 04H 00H 05H 08H 00H
CSTRUCTMEM 43H 00000006H 00000028H "raw" 04H 00H 05H 08H 00H
CSTRUCTMEM 43H 00000006H 0000002EH "input" 04H 00H 05H 08H 00H
CSTRUCTMEM 43H 00000002H 00000034H "payload_offset" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0014H 000BH 00000014H "rf_param"
CSTRUCTMEM 42H 00000001H 00000000H "ch" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000001H "pages" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000002H "cca_min_be" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000003H "cca_max_be" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000004H "cca_retry" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000005H "tx_min_be" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000006H "tx_max_be" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 00000007H "tx_retry" 02H 00H 00H
CSTRUCTMEM 42H 00000004H 00000008H "ack_timeout" 02H 00H 02H
CSTRUCTMEM 43H 00000004H 0000000CH "cca_level" 02H 00H 02H
CSTRUCTMEM 43H 00000004H 00000010H "tx_power" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0016H 000AH 000000FAH "mach_param"
CSTRUCTMEM 43H 00000002H 00000000H "macl" 06H 03H 00H 00H 05H 0CH 00H
CSTRUCTMEM 43H 0000000EH 00000002H "my_addr" 04H 00H 05H 15H 00H
CSTRUCTMEM 43H 0000000EH 00000010H "coord_addr" 04H 00H 05H 15H 00H
CSTRUCTMEM 43H 00000036H 0000001EH "tx" 04H 00H 05H 13H 00H
CSTRUCTMEM 43H 00000036H 00000054H "rx" 04H 00H 05H 13H 00H
CSTRUCTMEM 43H 00000036H 0000008AH "rx_prev" 04H 00H 05H 13H 00H
CSTRUCTMEM 43H 00000036H 000000C0H "ack" 04H 00H 05H 13H 00H
CSTRUCTMEM 42H 00000001H 000000F6H "coordinator" 02H 00H 00H
CSTRUCTMEM 42H 00000001H 000000F7H "sending" 02H 00H 00H
CSTRUCTMEM 43H 00000002H 000000F8H "rf" 06H 03H 00H 00H 05H 14H 00H
CSTRUCTTAG 0000H 0000H 000DH 0004H 0000000EH "ieee802154_my_addr"
CSTRUCTMEM 42H 00000002H 00000000H "pan_id" 02H 00H 08H
CSTRUCTMEM 42H 00000002H 00000002H "short_addr" 02H 00H 08H
CSTRUCTMEM 42H 00000008H 00000004H "ieee_addr" 05H 01H 08H 00H 00H 00H
CSTRUCTMEM 42H 00000001H 0000000CH "pan_coord" 02H 00H 00H
CSTRUCTTAG 0000H 0000H 0006H 0002H 00000008H "_Notag"
CSTRUCTMEM 43H 00000004H 00000000H "quot" 02H 00H 02H
CSTRUCTMEM 43H 00000004H 00000004H "rem" 02H 00H 02H
CSTRUCTTAG 0000H 0000H 0005H 0002H 00000004H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "quot" 02H 00H 01H
CSTRUCTMEM 43H 00000002H 00000002H "rem" 02H 00H 01H
CSTRUCTTAG 0000H 0000H 0004H 0005H 0000000AH "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "write" 0AH 03H 00H 02H 7BH 00H 00H 00H 00H 00H 07H
CSTRUCTMEM 42H 00000002H 00000002H "read" 0AH 03H 00H 02H 7CH 00H 00H 00H 00H 00H 08H
CSTRUCTMEM 43H 00000002H 00000004H "erase" 0AH 03H 00H 02H 7DH 00H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 00000006H "write_byte" 0AH 03H 00H 02H 7EH 00H 00H 00H 00H 00H 07H
CSTRUCTMEM 42H 00000002H 00000008H "read_byte" 0AH 03H 00H 02H 7FH 00H 00H 00H 00H 00H 00H
CSTRUCTTAG 0000H 0000H 0003H 0008H 00000010H "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "init" 0AH 03H 00H 02H 68H 00H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 00000002H "p" 0AH 03H 00H 02H 69H 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000004H "l" 0AH 03H 00H 02H 6AH 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000006H "f" 0AH 03H 00H 02H 6BH 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000008H "d" 0AH 03H 00H 02H 6CH 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 0000000AH "ln" 0AH 03H 00H 02H 6DH 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 0000000CH "status" 0AH 03H 00H 02H 6EH 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 0000000EH "len" 0AH 03H 00H 02H 6FH 00H 00H 00H 00H 00H 01H
CSTRUCTTAG 0000H 0000H 0002H 000FH 0000001EH "_Notag"
CSTRUCTMEM 43H 00000002H 00000000H "begin" 0AH 03H 00H 02H 59H 00H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 00000002H "end" 0AH 03H 00H 02H 5AH 00H 00H 00H 00H 00H 07H
CSTRUCTMEM 43H 00000002H 00000004H "available" 0AH 03H 00H 02H 5BH 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000006H "read" 0AH 03H 00H 02H 5CH 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 00000008H "peek" 0AH 03H 00H 02H 5DH 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 0000000AH "flush" 0AH 03H 00H 02H 5EH 00H 00H 00H 00H 00H 07H
CSTRUCTMEM 42H 00000002H 0000000CH "print" 0AH 03H 00H 02H 5FH 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 42H 00000002H 0000000EH "println" 0AH 03H 00H 02H 60H 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 42H 00000002H 00000010H "print_long" 0AH 03H 00H 02H 61H 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 42H 00000002H 00000012H "println_long" 0AH 03H 00H 02H 62H 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 42H 00000002H 00000014H "print_double" 0AH 03H 00H 02H 63H 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 42H 00000002H 00000016H "println_double" 0AH 03H 00H 02H 64H 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 42H 00000002H 00000018H "write" 0AH 03H 00H 02H 65H 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 42H 00000002H 0000001AH "write_byte" 0AH 03H 00H 02H 66H 00H 00H 00H 00H 00H 01H
CSTRUCTMEM 43H 00000002H 0000001CH "tx_available" 0AH 03H 00H 02H 67H 00H 00H 00H 00H 00H 01H
CSTRUCTTAG 0000H 0000H 0000H 0008H 00000001H "_Notag"
CSTRUCTMEM 52H 00000001H 00000000H "b0" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000001H "b1" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000002H "b2" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000003H "b3" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000004H "b4" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000005H "b5" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000006H "b6" 02H 00H 00H
CSTRUCTMEM 52H 00000001H 00000007H "b7" 02H 00H 00H
CUNIONTAG 0000H 0000H 0012H 0003H 00000002H "mac_frame_control"
CUNIONMEM 42H 00000002H "fc8" 05H 01H 02H 00H 00H 00H
CUNIONMEM 42H 00000002H "fc16" 02H 00H 08H
CUNIONMEM 43H 00000002H "fc_bit" 04H 00H 05H 11H 00H
CUNIONTAG 0000H 0000H 0010H 0003H 00000008H "_Notag"
CUNIONMEM 42H 00000002H "short_addr" 02H 00H 08H
CUNIONMEM 42H 00000002H "lddn_addr" 02H 00H 08H
CUNIONMEM 42H 00000008H "ieee_addr" 05H 01H 08H 00H 00H 00H
CUNIONTAG 0000H 0000H 0007H 0002H 00000008H "_Notag"
CUNIONMEM 42H 00000008H "_W" 05H 01H 04H 00H 00H 08H
CUNIONMEM 43H 00000008H "_D" 02H 00H 04H
CENUMTAG 0000H 0000H 0019H 0002H "_Notag"
CENUMMEM 00000014H "SUBGHZ_PWR_20MW"
CENUMMEM 00000001H "SUBGHZ_PWR_1MW"
CENUMTAG 0000H 0000H 0018H 0002H "_Notag"
CENUMMEM 00000064H "SUBGHZ_100KBPS"
CENUMMEM 00000032H "SUBGHZ_50KBPS"
CENUMTAG 0000H 0000H 0017H 0012H "_Notag"
CENUMMEM 00000000H "SUBGHZ_OK"
CENUMMEM 00000001H "SUBGHZ_RESET_FAIL"
CENUMMEM 00000002H "SUBGHZ_SETUP_FAIL"
CENUMMEM 00000003H "SUBGHZ_SLEEP_FAIL"
CENUMMEM 00000004H "SUBGHZ_WAKEUP_FAIL"
CENUMMEM 00000005H "SUBGHZ_MYADDR_FAIL"
CENUMMEM 00000006H "SUBGHZ_SETFIL_FAIL"
CENUMMEM 00000007H "SUBGHZ_TX_COMP_FAIL"
CENUMMEM 00000008H "SUBGHZ_TX_FAIL"
CENUMMEM 00000009H "SUBGHZ_TX_CCA_FAIL"
CENUMMEM 0000000AH "SUBGHZ_TX_ACK_FAIL"
CENUMMEM 0000000BH "SUBGHZ_RX_ENB_FAIL"
CENUMMEM 0000000CH "SUBGHZ_RX_DIS_FAIL"
CENUMMEM 0000000DH "SUBGHZ_RX_COMP_FAIL"
CENUMMEM 0000000EH "SUBGHZ_PANID"
CENUMMEM 0000000FH "SUBGHZ_ERR_ADDRTYPE"
CENUMMEM 00000010H "SUBGHZ_TTL_SEND_OVR"
CENUMMEM 00000011H "SUBGHZ_DUMMY"
CENUMTAG 0000H 0000H 000BH 000EH "_Notag"
CENUMMEM 00000000H "SUBGHZ_ST_TX_START"
CENUMMEM 00000001H "SUBGHZ_ST_CCA_FAST"
CENUMMEM 00000002H "SUBGHZ_ST_CCA_IDLE_DETECT"
CENUMMEM 00000003H "SUBGHZ_ST_CCA_ABORT"
CENUMMEM 00000004H "SUBGHZ_ST_CCA_RETRY"
CENUMMEM 00000005H "SUBGHZ_ST_CCA_FAILURE"
CENUMMEM 00000006H "SUBGHZ_ST_CCA_DONE"
CENUMMEM 00000007H "SUBGHZ_ST_TX_DONE"
CENUMMEM 00000008H "SUBGHZ_ST_TX_ACK_TIMEOUT"
CENUMMEM 00000009H "SUBGHZ_ST_TX_ACK_DONE"
CENUMMEM 0000000AH "SUBGHZ_ST_RX_START"
CENUMMEM 0000000BH "SUBGHZ_ST_RX_DONE"
CENUMMEM 0000000CH "SUBGHZ_ST_RX_ACK_DONE"
CENUMMEM 0000000DH "SUBGHZ_ST_NONE"
CENUMTAG 0000H 0000H 000AH 0005H "_Notag"
CENUMMEM 00000000H "CCA_IDLE"
CENUMMEM 00000001H "CCA_FAST"
CENUMMEM 00000002H "IDLE_DETECT"
CENUMMEM 00000003H "CCA_RETRY"
CENUMMEM 00000004H "CCA_FAILURE"
CENUMTAG 0000H 0000H 0001H 0003H "_Notag"
CENUMMEM 00000001H "HALT_I2C1_END"
CENUMMEM 00000002H "HALT_I2C0_END"
CENUMMEM 00000003H "HALT_DELAY"
CTYPEDEF 0000H 0000H 43H "SUBGHZ_POWER" 04H 00H 0AH 19H 00H
CTYPEDEF 0000H 0000H 01H "_Dconst" 04H 00H 06H 07H 00H
CTYPEDEF 0000H 0000H 43H "SubGHz_CTRL" 04H 00H 05H 1DH 00H
CTYPEDEF 0000H 0000H 43H "INT8" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "PHY_PARAM" 04H 00H 05H 09H 00H
CTYPEDEF 0000H 0000H 43H "SUBGHZ_PARAM" 04H 00H 05H 1BH 00H
CTYPEDEF 0000H 0000H 43H "_Ptrdifft" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "SUBGHZ_MSG" 04H 00H 0AH 17H 00H
CTYPEDEF 0000H 0000H 42H "bool" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "t_print" 04H 00H 05H 03H 00H
CTYPEDEF 0000H 0000H 42H "byte" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "INT32" 02H 00H 02H
CTYPEDEF 0000H 0000H 43H "INT16" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "_Sizet" 02H 00H 01H
CTYPEDEF 0000H 0000H 43H "SUBGHZ_MAC_STATE" 04H 00H 0AH 0BH 00H
CTYPEDEF 0000H 0000H 43H "MACL_PARAM" 04H 00H 05H 0CH 00H
CTYPEDEF 0000H 0000H 42H "BOOLEAN" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "SUBGHZ_MAC_PARAM" 04H 00H 05H 1CH 00H
CTYPEDEF 0000H 0000H 42H "UCHAR" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "SUBGHZ_STATUS" 04H 00H 05H 1AH 00H
CTYPEDEF 0000H 0000H 42H "size_t" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "uint8_t" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "SUBGHZ_RATE" 04H 00H 0AH 18H 00H
CTYPEDEF 0000H 0000H 43H "BUFFER" 04H 00H 05H 08H 00H
CTYPEDEF 0000H 0000H 43H "int8_t" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "t_SERIAL_LED" 04H 00H 05H 1EH 00H
CTYPEDEF 0000H 0000H 43H "int16_t" 02H 00H 08H
CTYPEDEF 0000H 0000H 43H "int32_t" 02H 00H 02H
CTYPEDEF 0000H 0000H 42H "UINT8" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "DATAFLASH" 04H 00H 05H 04H 00H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nf" 08H 02H 84H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_nn" 08H 02H 83H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 43H "CHAR" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "HardwareSerial" 04H 00H 05H 02H 00H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_ff" 08H 02H 86H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 03H "_Cmpfun_fn" 08H 02H 85H 00H 00H 00H 00H 00H 01H
CTYPEDEF 0000H 0000H 42H "UINT16" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "UINT32" 02H 00H 02H
CTYPEDEF 0000H 0000H 42H "boolean" 02H 00H 00H
CTYPEDEF 0000H 0000H 42H "word" 02H 00H 01H
CTYPEDEF 0000H 0000H 42H "BOOL" 02H 00H 00H
CTYPEDEF 0000H 0000H 43H "HALT_EVENT" 04H 00H 0AH 01H 00H
CTYPEDEF 0000H 0000H 43H "CCA_STATE" 04H 00H 0AH 0AH 00H
CTYPEDEF 0000H 0000H 43H "div_t" 04H 00H 05H 05H 00H
CTYPEDEF 0000H 0000H 43H "ldiv_t" 04H 00H 05H 06H 00H
CTYPEDEF 0000H 0000H 42H "uint32_t" 02H 00H 02H
CTYPEDEF 0000H 0000H 43H "_BYTE_FIELD" 04H 00H 05H 00H 00H
CTYPEDEF 0000H 0000H 42H "uint16_t" 02H 00H 08H
CGLOBAL 00H 42H 001EH "led_ram" 05H 01H 1EH 00H 00H 00H
CGLOBAL 02H 01H 0004H "led" 04H 00H 05H 1EH 00H
CGLOBAL 01H 00H 0165H "led0" 05H 01H 65H 01H 00H 00H
CFILE 0001H 00000003H "kirakira_ide.h"
CFILE 0002H 0000003EH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\lazurite.h"
CFILE 0003H 0000007BH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\common.h"
CFILE 0004H 00000F42H "C:\\Users\\chiya\\Desktop\\LazuriteIDE\\bin\\U8Dev\\Inc\\ml620504F.h"
CFILE 0005H 000000C9H "C:\\Users\\chiya\\Desktop\\LazuriteIDE\\bin\\U8Dev\\Inc\\string.h"
CFILE 0006H 0000007AH "C:\\Users\\chiya\\Desktop\\LazuriteIDE\\bin\\U8Dev\\Inc\\yvals.h"
CFILE 0007H 0000002BH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\analogio.h"
CFILE 0008H 00000022H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\ML620Q~1\\MCU_SM~1\\mcu.h"
CFILE 0009H 0000002BH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\digitalio.h"
CFILE 000AH 00000041H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\pin_assignment.h"
CFILE 000BH 00000051H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\lazurite_system.h"
CFILE 000CH 00000045H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\serial.h"
CFILE 000DH 0000002DH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\print.h"
CFILE 000EH 0000002DH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\wiring_shift.h"
CFILE 000FH 0000002CH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\wiring_pulse.h"
CFILE 0010H 0000002DH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\WInterrupts.h"
CFILE 0011H 0000002DH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\WMath.h"
CFILE 0012H 00000031H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\flash.h"
CFILE 0013H 0000002DH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\lazurite\\tone.h"
CFILE 0014H 000000DAH "C:\\Users\\chiya\\Desktop\\LazuriteIDE\\bin\\U8Dev\\Inc\\stdlib.h"
CFILE 0015H 0000004FH "C:\\Users\\chiya\\Desktop\\LazuriteIDE\\bin\\U8Dev\\Inc\\math.h"
CFILE 0016H 00000081H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\sub_ghz\\subghz_api.h"
CFILE 0017H 0000009BH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\sub_ghz\\mach.h"
CFILE 0018H 00000064H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\sub_ghz\\macl.h"
CFILE 0019H 00000032H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\sub_ghz\\common_subghz.h"
CFILE 001AH 00000060H "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\sub_ghz\\phy.h"
CFILE 001BH 0000003DH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\hardware\\LAZURI~2\\sub_ghz\\endian.h"
CFILE 001CH 0000002CH "C:\\Users\\chiya\\Desktop\\LAZURI~1\\LIBRAR~1\\SERIAL~1\\SerialLED.h"
CFILE 0000H 00000090H "kirakira.c"

	rseg $$setup$kirakira
CFUNCTION 66

_setup	:
CBLOCK 66 1 130

;;{
CLINEA 0000H 0001H 0082H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
	push	er4
CBLOCK 66 2 130
CRET 0002H

;;  led.init(8, LED_LENGTH);
CLINEA 0000H 0001H 0083H 0003H 001AH
	mov	er2,	#60
	mov	r0,	#08h
	l	er4,	NEAR _led
	bl	er4
CBLOCKEND 66 2 132

;;}
CLINEA 0000H 0001H 0084H 0001H 0001H
	pop	er4
	pop	pc
CBLOCKEND 66 1 132
CFUNCTIONEND 66


	rseg $$loop$kirakira
CFUNCTION 67

_loop	:
CBLOCK 67 1 135

;;{
CLINEA 0000H 0001H 0087H 0001H 0001H
;;*****************************************
;;	register/stack information
;;*****************************************
;;*****************************************

	push	lr
	push	er4
CBLOCK 67 2 135
CRET 0002H
CLOCAL 47H 0002H 0026H 0002H "i" 02H 00H 01H
CLOCAL 4BH 0002H 0000H 0002H "j" 02H 00H 01H

;;  for (i = 0; i < LED_LENGTH * 3; i += 3)
CLINEA 0000H 0001H 008AH 0003H 0029H
	mov	er4,	#0 	;; _li$0
_$L4 :
CBLOCK 67 3 139

;;    led.write(&led0[i]);
CLINEA 0000H 0001H 008CH 0005H 0018H
	mov	r0,	#BYTE1 OFFSET _led0
	mov	r1,	#BYTE2 OFFSET _led0
	add	er0,	er4
	l	er2,	NEAR _led+02h
	bl	er2

;;    delay(80);
CLINEA 0000H 0001H 008DH 0005H 000EH
	mov	r0,	#050h
	mov	r1,	#00h
	mov	er2,	#0 
	bl	_delay_long
CBLOCKEND 67 3 142

;;  for (i = 0; i < LED_LENGTH * 3; i += 3)
CLINEA 0000H 0000H 008AH 0003H 0029H
	add	er4,	#3 
	cmp	r4,	#0b4h
	cmpc	r5,	#00h
	blts	_$L4
CBLOCKEND 67 2 144

;;}
CLINEA 0000H 0001H 0090H 0001H 0001H
	pop	er4
	pop	pc
CBLOCKEND 67 1 144
CFUNCTIONEND 67

	public _led0
	public _loop
	public _setup
	_led_ram comm data 01eh #00h
	extrn table near : _led
	extrn code near : _delay_long
	extrn code near : _main

	rseg $$TABled0$kirakira
_led0 :
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	060h
	db	0ffh
	db	060h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	0ffh
	db	0dfh
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h
	db	00h

	end
