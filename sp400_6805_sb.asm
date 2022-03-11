 .cr 68hc05
 .tf /tmp/sp400_6805_reasm.bin,bin
;;   dasm05 -- Motorola 6805 Disassembler --
;;-----------------------------------------------------------------
;   Processing "sp400_hd6805v1.bin" (4096 bytes)
;   Disassembly start address: 0x0000
;   String terminator: 0x00
portA:
;   0000:    
 .DB $ff ; .
portB:
;   0001:    
 .DB $ff ; .
portC:
;   0002:    
 .DB $ff ; .
portDdig:
;   0003:    
 .DB $ff ; .
DDRA:
;   0004:    
 .DB $ff ; .
DDRB:
;   0005:    
 .DB $ff ; .
DDRC:
;   0006:    
 .DB $ff ; .
portDana:
;   0007:    
 .DB $ff ; .
timerData:
;   0008:    
 .DB $ff ; .
timerCtrl:
;   0009:    
 .DB $ff ; .
unusedSpace0A:
;   000A:    
 .DB $ff,$ff,$ff,$ff,$ff,$ff ; ......
unusedSpace10:
;   0010:    
 .DB $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff ; ................
ram2x:
;   0020:    
 .DB $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff ; ................
ram3x:
;   0030:    
 .DB $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff ; ................
ram4x:
;   0040:    
 .DB $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff ; ................
ram5x:
;   0050:    
 .DB $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff ; ................
ram6x:
;   0060:    
 .DB $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff ; ................
ram7x:
;   0070:    
 .DB $ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff ; ................
___CL_0001:
; l0080:  .db $09,$05,$06
   brclr    4, DDRB, $0089
; l0083:  .db $0a,$ff,$ff
   brset    5, $FF, $0085
; l0086:  .db $ff
   stx      ,x
; l0087:  .db $ff
   stx      ,x
; l0088:  .db $ff
   stx      ,x
; l0089:  .db $ff
   stx      ,x
; l008a:  .db $ff
   stx      ,x
; l008b:  .db $ff
   stx      ,x
; l008c:  .db $ff
   stx      ,x
; l008d:  .db $ff
   stx      ,x
; l008e:  .db $ff
   stx      ,x
; l008f:  .db $ff
   stx      ,x
; l0090:  .db $00,$0a,$14
   brset    0, unusedSpace0A, $00A7
; l0093:  .db $1e,$28
   bset     7, $28
; l0095:  .db $32
;   ???      
 .db $32
; l0096:  .db $3c,$46
   inc      $46
; l0098:  .db $50
   negx     
; l0099:  .db $5a
   decx     
; l009a:  .db $00,$64,$c8
   brset    0, $64, $0065
; l009d:  .db $2c,$90
   bmc      $002F
; l009f:  .db $f4
   and      ,x
; l00a0:  .db $58
   lslx     
; l00a1:  .db $bc,$20
   jmp      ram2x
; l00a3:  .db $84
;   ???      
 .db $84
; l00a4:  .db $00,$00,$00
   brset    0, portA, $00A7
; l00a7:  .db $01,$01,$01
   brclr    0, portB, $00AB
; l00aa:  .db $02,$02,$03
   brset    1, portC, $00B0
; l00ad:  .db $03,$ff,$ff
   brclr    1, $FF, $00AF
; l00b0:  .db $07,$00,$fd
   brclr    3, portA, $00B0
; l00b3:  .db $05,$00,$fa
   brclr    2, portA, $00B0
; l00b6:  .db $13,$40
   bclr     1, ram4x
; l00b8:  .db $cc,$05,$ac
   jmp      $05AC
; l00bb:  .db $ff
   stx      ,x
; l00bc:  .db $ff
   stx      ,x
; l00bd:  .db $ff
   stx      ,x
; l00be:  .db $ff
   stx      ,x
; l00bf:  .db $ff
   stx      ,x
; l00c0:  .db $a8,$de
   eor      #$DE
; l00c2:  .db $fa
   ora      ,x
; l00c3:  .db $06,$d4,$ef
   brset    3, $D4, $00B5
; l00c6:  .db $fd
   jsr      ,x
; l00c7:  .db $03,$fb,$fd
   brclr    1, $FB, $00C7
; l00ca:  .db $fb
   add      ,x
; l00cb:  .db $fe
   ldx      ,x
; l00cc:  .db $fd
   jsr      ,x
; l00cd:  .db $fe
   ldx      ,x
; l00ce:  .db $fd
   jsr      ,x
; l00cf:  .db $ff
   stx      ,x
; l00d0:  .db $c0,$b0,$c0
   sub      $B0C0
; l00d3:  .db $e0,$e0
   sub      $E0,x
; l00d5:  .db $d8,$e0,$f0
   eor      $E0F0,x
; l00d8:  .db $03,$01,$03
   brclr    1, portB, $00DE
; l00db:  .db $01,$01,$00
   brclr    0, portB, $00DE
; l00de:  .db $01,$00,$7a
   brclr    0, portA, $015B
; l00e1:  .db $58
   lslx     
; l00e2:  .db $14,$14
   bset     2, $14
; l00e4:  .db $3c,$2b
   inc      $2B
; l00e6:  .db $09,$09,$16
   brclr    4, timerCtrl, $00FF
; l00e9:  .db $16,$16
   bset     3, $16
; l00eb:  .db $16,$0b
   bset     3, $0B
; l00ed:  .db $0b,$0b,$0b
   brclr    5, $0B, $00FB
; l00f0:  .db $3c,$3c
   inc      $3C
; l00f2:  .db $00,$00,$1e
   brset    0, portA, $0113
; l00f5:  .db $1e,$00
   bset     7, portA
; l00f7:  .db $00,$0a,$0e
   brset    0, unusedSpace0A, $0108
; l00fa:  .db $00,$00,$05
   brset    0, portA, $0102
; l00fd:  .db $07,$00,$00
   brclr    3, portA, $0100
; l0100:  .db $a6,$ff
   lda      #$FF
; l0102:  .db $b7,$36
   sta      $36
; l0104:  .db $20,$05
   bra      $010B
; l0106:  .db $a6,$01
   lda      #$01
; l0108:  .db $b7,$36
   sta      $36
; l010a:  .db $4f
   clra     
; l010b:  .db $b7,$37
   sta      $37
; l010d:  .db $a6,$36
   lda      #$36
; l010f:  .db $b7,$51
   sta      $51
; l0111:  .db $b6,$50
   lda      ram5x
; l0113:  .db $b7,$52
   sta      $52
; l0115:  .db $20,$22
   bra      $0139
; l0117:  .db $be,$51
   ldx      $51
; l0119:  .db $f6
   lda      ,x
; l011a:  .db $43
   coma     
; l011b:  .db $b7,$36
   sta      $36
; l011d:  .db $5c
   incx     
; l011e:  .db $f6
   lda      ,x
; l011f:  .db $43
   coma     
; l0120:  .db $b7,$37
   sta      $37
; l0122:  .db $b6,$36
   lda      $36
; l0124:  .db $ab,$01
   add      #$01
; l0126:  .db $b7,$36
   sta      $36
; l0128:  .db $b6,$37
   lda      $37
; l012a:  .db $a9,$00
   adc      #$00
; l012c:  .db $b7,$37
   sta      $37
; l012e:  .db $20,$09
   bra      $0139
; l0130:  .db $be,$51
   ldx      $51
; l0132:  .db $f6
   lda      ,x
; l0133:  .db $b7,$36
   sta      $36
; l0135:  .db $5c
   incx     
; l0136:  .db $f6
   lda      ,x
; l0137:  .db $b7,$37
   sta      $37
; l0139:  .db $b6,$37
   lda      $37
; l013b:  .db $be,$50
   ldx      ram5x
; l013d:  .db $5c
   incx     
; l013e:  .db $f8
   eor      ,x
; l013f:  .db $a4,$80
   and      #$80
; l0141:  .db $b7,$53
   sta      $53
; l0143:  .db $b6,$36
   lda      $36
; l0145:  .db $be,$50
   ldx      ram5x
; l0147:  .db $fb
   add      ,x
; l0148:  .db $be,$52
   ldx      $52
; l014a:  .db $f7
   sta      ,x
; l014b:  .db $b6,$37
   lda      $37
; l014d:  .db $be,$50
   ldx      ram5x
; l014f:  .db $5c
   incx     
; l0150:  .db $f9
   adc      ,x
; l0151:  .db $be,$52
   ldx      $52
; l0153:  .db $5c
   incx     
; l0154:  .db $f7
   sta      ,x
; l0155:  .db $b8,$37
   eor      $37
; l0157:  .db $a4,$80
   and      #$80
; l0159:  .db $27,$07
   beq      $0162
; l015b:  .db $b6,$53
   lda      $53
; l015d:  .db $26,$03
   bne      $0162
; l015f:  .db $cc,$06,$b2
   jmp      rstInt
; l0162:  .db $81
   rts      
; l0163:  .db $ff
   stx      ,x
; l0164:  .db $ff
   stx      ,x
; l0165:  .db $be,$50
   ldx      ram5x
; l0167:  .db $f6
   lda      ,x
; l0168:  .db $b7,$36
   sta      $36
; l016a:  .db $5c
   incx     
; l016b:  .db $f6
   lda      ,x
; l016c:  .db $b7,$37
   sta      $37
; l016e:  .db $be,$51
   ldx      $51
; l0170:  .db $b6,$36
   lda      $36
; l0172:  .db $f8
   eor      ,x
; l0173:  .db $b7,$53
   sta      $53
; l0175:  .db $5c
   incx     
; l0176:  .db $b6,$37
   lda      $37
; l0178:  .db $f8
   eor      ,x
; l0179:  .db $ba,$53
   ora      $53
; l017b:  .db $b7,$53
   sta      $53
; l017d:  .db $81
   rts      
; l017e:  .db $ff
   stx      ,x
; l017f:  .db $ff
   stx      ,x
; l0180:  .db $02,$40,$0a
   brset    1, ram4x, $018D
; l0183:  .db $b6,$3b
   lda      $3B
; l0185:  .db $27,$06
   beq      $018D
; l0187:  .db $b1,$26
   cmp      $26
; l0189:  .db $27,$0a
   beq      $0195
; l018b:  .db $11,$40
   bclr     0, ram4x
; l018d:  .db $00,$40,$07
   brset    0, ram4x, $0197
; l0190:  .db $07,$40,$04
   brclr    3, ram4x, $0197
; l0193:  .db $20,$0b
   bra      $01A0
; l0195:  .db $10,$40
   bset     0, ram4x
; l0197:  .db $05,$40,$1d
   brclr    2, ram4x, $01B7
; l019a:  .db $15,$40
   bclr     2, ram4x
; l019c:  .db $a6,$fe
   lda      #$FE
; l019e:  .db $20,$07
   bra      $01A7
; l01a0:  .db $04,$40,$14
   brset    2, ram4x, $01B7
; l01a3:  .db $14,$40
   bset     2, ram4x
; l01a5:  .db $a6,$fd
   lda      #$FD
; l01a7:  .db $97
   tax      
; l01a8:  .db $b6,$55
   lda      $55
; l01aa:  .db $2a,$fc
   bpl      $01A8
; l01ac:  .db $9b
   sei      
; l01ad:  .db $9f
   txa      
; l01ae:  .db $b4,$02
   and      portC
; l01b0:  .db $b7,$02
   sta      portC
; l01b2:  .db $9a
   cli      
; l01b3:  .db $a6,$12
   lda      #$12
; l01b5:  .db $b7,$55
   sta      $55
; l01b7:  .db $00,$40,$10
   brset    0, ram4x, $01CA
; l01ba:  .db $b6,$26
   lda      $26
; l01bc:  .db $27,$0c
   beq      $01CA
; l01be:  .db $bb,$25
   add      $25
; l01c0:  .db $a4,$03
   and      #$03
; l01c2:  .db $b7,$25
   sta      $25
; l01c4:  .db $a6,$03
   lda      #$03
; l01c6:  .db $b7,$27
   sta      $27
; l01c8:  .db $20,$06
   bra      $01D0
; l01ca:  .db $b6,$27
   lda      $27
; l01cc:  .db $27,$08
   beq      $01D6
; l01ce:  .db $3a,$27
   dec      $27
; l01d0:  .db $be,$25
   ldx      $25
; l01d2:  .db $e6,$80
   lda      ___CL_0001,x
; l01d4:  .db $20,$01
   bra      $01D7
; l01d6:  .db $4f
   clra     
; l01d7:  .db $b7,$24
   sta      $24
; l01d9:  .db $a6,$20
   lda      #$20
; l01db:  .db $b7,$50
   sta      ram5x
; l01dd:  .db $b6,$26
   lda      $26
; l01df:  .db $27,$0a
   beq      $01EB
; l01e1:  .db $2a,$05
   bpl      $01E8
; l01e3:  .db $cd,$01,$00
   jsr      $0100
; l01e6:  .db $20,$03
   bra      $01EB
; l01e8:  .db $cd,$01,$06
   jsr      $0106
; l01eb:  .db $b6,$2e
   lda      $2E
; l01ed:  .db $27,$0c
   beq      $01FB
; l01ef:  .db $bb,$2d
   add      $2D
; l01f1:  .db $a4,$03
   and      #$03
; l01f3:  .db $b7,$2d
   sta      $2D
; l01f5:  .db $a6,$03
   lda      #$03
; l01f7:  .db $b7,$2f
   sta      $2F
; l01f9:  .db $20,$06
   bra      $0201
; l01fb:  .db $b6,$2f
   lda      $2F
; l01fd:  .db $27,$08
   beq      $0207
; l01ff:  .db $3a,$2f
   dec      $2F
; l0201:  .db $be,$2d
   ldx      $2D
; l0203:  .db $e6,$80
   lda      ___CL_0001,x
; l0205:  .db $20,$01
   bra      $0208
; l0207:  .db $4f
   clra     
; l0208:  .db $b7,$2c
   sta      $2C
; l020a:  .db $a6,$28
   lda      #$28
; l020c:  .db $b7,$50
   sta      ram5x
; l020e:  .db $b6,$2e
   lda      $2E
; l0210:  .db $27,$0a
   beq      $021C
; l0212:  .db $2a,$05
   bpl      $0219
; l0214:  .db $cd,$01,$00
   jsr      $0100
; l0217:  .db $20,$03
   bra      $021C
; l0219:  .db $cd,$01,$06
   jsr      $0106
; l021c:  .db $a6,$20
   lda      #$20
; l021e:  .db $b7,$50
   sta      ram5x
; l0220:  .db $a6,$30
   lda      #$30
; l0222:  .db $b7,$51
   sta      $51
; l0224:  .db $cd,$01,$65
   jsr      $0165
; l0227:  .db $27,$0c
   beq      $0235
; l0229:  .db $a6,$32
   lda      #$32
; l022b:  .db $b7,$51
   sta      $51
; l022d:  .db $cd,$01,$65
   jsr      $0165
; l0230:  .db $27,$07
   beq      $0239
; l0232:  .db $4f
   clra     
; l0233:  .db $20,$06
   bra      $023B
; l0235:  .db $a6,$ff
   lda      #$FF
; l0237:  .db $20,$02
   bra      $023B
; l0239:  .db $a6,$01
   lda      #$01
; l023b:  .db $b7,$3b
   sta      $3B
; l023d:  .db $b6,$55
   lda      $55
; l023f:  .db $2a,$fc
   bpl      $023D
; l0241:  .db $10,$02
   bset     0, portC
; l0243:  .db $12,$02
   bset     1, portC
; l0245:  .db $a6,$0d
   lda      #$0D
; l0247:  .db $b7,$55
   sta      $55
; l0249:  .db $b6,$2c
   lda      $2C
; l024b:  .db $48
   lsla     
; l024c:  .db $48
   lsla     
; l024d:  .db $48
   lsla     
; l024e:  .db $48
   lsla     
; l024f:  .db $ba,$24
   ora      $24
; l0251:  .db $b7,$01
   sta      portB
; l0253:  .db $26,$02
   bne      $0257
; l0255:  .db $3f,$55
   clr      $55
; l0257:  .db $81
   rts      
; l0258:  .db $be,$3d
   ldx      $3D
; l025a:  .db $b6,$3c
   lda      $3C
; l025c:  .db $b7,$3d
   sta      $3D
; l025e:  .db $bf,$3c
   stx      $3C
; l0260:  .db $b0,$3c
   sub      $3C
; l0262:  .db $b7,$3c
   sta      $3C
; l0264:  .db $be,$3f
   ldx      $3F
; l0266:  .db $b6,$3e
   lda      $3E
; l0268:  .db $b7,$3f
   sta      $3F
; l026a:  .db $bf,$3e
   stx      $3E
; l026c:  .db $b0,$3e
   sub      $3E
; l026e:  .db $b7,$3e
   sta      $3E
; l0270:  .db $b6,$4e
   lda      $4E
; l0272:  .db $27,$1d
   beq      $0291
; l0274:  .db $4a
   deca     
; l0275:  .db $27,$0a
   beq      $0281
; l0277:  .db $4a
   deca     
; l0278:  .db $27,$13
   beq      $028D
; l027a:  .db $4a
   deca     
; l027b:  .db $26,$14
   bne      $0291
; l027d:  .db $30,$3e
   neg      $3E
; l027f:  .db $20,$02
   bra      $0283
; l0281:  .db $30,$3c
   neg      $3C
; l0283:  .db $b6,$3c
   lda      $3C
; l0285:  .db $be,$3e
   ldx      $3E
; l0287:  .db $b7,$3e
   sta      $3E
; l0289:  .db $bf,$3c
   stx      $3C
; l028b:  .db $20,$04
   bra      $0291
; l028d:  .db $30,$3c
   neg      $3C
; l028f:  .db $30,$3e
   neg      $3E
; l0291:  .db $5f
   clrx     
; l0292:  .db $b6,$3c
   lda      $3C
; l0294:  .db $27,$08
   beq      $029E
; l0296:  .db $2a,$04
   bpl      $029C
; l0298:  .db $ae,$ff
   ldx      #$FF
; l029a:  .db $20,$02
   bra      $029E
; l029c:  .db $ae,$01
   ldx      #$01
; l029e:  .db $bf,$26
   stx      $26
; l02a0:  .db $5f
   clrx     
; l02a1:  .db $b6,$3e
   lda      $3E
; l02a3:  .db $27,$08
   beq      $02AD
; l02a5:  .db $2a,$04
   bpl      $02AB
; l02a7:  .db $ae,$ff
   ldx      #$FF
; l02a9:  .db $20,$02
   bra      $02AD
; l02ab:  .db $ae,$01
   ldx      #$01
; l02ad:  .db $bf,$2e
   stx      $2E
; l02af:  .db $20,$02
   bra      $02B3
; l02b1:  .db $17,$40
   bclr     3, ram4x
; l02b3:  .db $b6,$4c
   lda      $4C
; l02b5:  .db $b7,$4d
   sta      $4D
; l02b7:  .db $cd,$01,$80
   jsr      $0180
; l02ba:  .db $3a,$4d
   dec      $4D
; l02bc:  .db $2a,$f9
   bpl      $02B7
; l02be:  .db $b6,$3c
   lda      $3C
; l02c0:  .db $b0,$26
   sub      $26
; l02c2:  .db $b7,$3c
   sta      $3C
; l02c4:  .db $26,$02
   bne      $02C8
; l02c6:  .db $3f,$26
   clr      $26
; l02c8:  .db $b6,$3e
   lda      $3E
; l02ca:  .db $b0,$2e
   sub      $2E
; l02cc:  .db $b7,$3e
   sta      $3E
; l02ce:  .db $26,$02
   bne      $02D2
; l02d0:  .db $3f,$2e
   clr      $2E
; l02d2:  .db $b6,$26
   lda      $26
; l02d4:  .db $26,$dd
   bne      $02B3
; l02d6:  .db $b6,$2e
   lda      $2E
; l02d8:  .db $26,$d9
   bne      $02B3
; l02da:  .db $81
   rts      
; l02db:  .db $b6,$48
   lda      $48
; l02dd:  .db $a0,$20
   sub      #$20
; l02df:  .db $a1,$70
   cmp      #$70
; l02e1:  .db $2b,$02
   bmi      $02E5
; l02e3:  .db $a0,$20
   sub      #$20
; l02e5:  .db $97
   tax      
; l02e6:  .db $d6,$0a,$c0
   lda      $0AC0,x
; l02e9:  .db $b7,$49
   sta      $49
; l02eb:  .db $d6,$0b,$60
   lda      $0B60,x
; l02ee:  .db $b7,$48
   sta      $48
; l02f0:  .db $00,$41,$16
   brset    0, $41, $0309
; l02f3:  .db $a6,$20
   lda      #$20
; l02f5:  .db $b7,$51
   sta      $51
; l02f7:  .db $a6,$34
   lda      #$34
; l02f9:  .db $b7,$50
   sta      ram5x
; l02fb:  .db $a6,$36
   lda      #$36
; l02fd:  .db $b7,$52
   sta      $52
; l02ff:  .db $cd,$01,$17
   jsr      $0117
; l0302:  .db $b6,$37
   lda      $37
; l0304:  .db $2a,$03
   bpl      $0309
; l0306:  .db $cd,$03,$65
   jsr      $0365
; l0309:  .db $3f,$3d
   clr      $3D
; l030b:  .db $3f,$3f
   clr      $3F
; l030d:  .db $be,$48
   ldx      $48
; l030f:  .db $b6,$49
   lda      $49
; l0311:  .db $27,$15
   beq      $0328
; l0313:  .db $4a
   deca     
; l0314:  .db $27,$0d
   beq      $0323
; l0316:  .db $4a
   deca     
; l0317:  .db $27,$05
   beq      $031E
; l0319:  .db $d6,$0f,$00
   lda      $0F00,x
; l031c:  .db $20,$0f
   bra      $032D
; l031e:  .db $d6,$0e,$00
   lda      $0E00,x
; l0321:  .db $20,$0a
   bra      $032D
; l0323:  .db $d6,$0d,$00
   lda      $0D00,x
; l0326:  .db $20,$05
   bra      $032D
; l0328:  .db $d6,$0c,$00
   lda      $0C00,x
; l032b:  .db $20,$00
   bra      $032D
; l032d:  .db $3c,$48
   inc      $48
; l032f:  .db $b7,$53
   sta      $53
; l0331:  .db $13,$41
   bclr     1, $41
; l0333:  .db $a4,$80
   and      #$80
; l0335:  .db $27,$02
   beq      $0339
; l0337:  .db $12,$41
   bset     1, $41
; l0339:  .db $b6,$53
   lda      $53
; l033b:  .db $17,$40
   bclr     3, ram4x
; l033d:  .db $a4,$08
   and      #$08
; l033f:  .db $27,$02
   beq      $0343
; l0341:  .db $16,$40
   bset     3, ram4x
; l0343:  .db $b6,$53
   lda      $53
; l0345:  .db $a4,$07
   and      #$07
; l0347:  .db $b7,$3e
   sta      $3E
; l0349:  .db $b6,$53
   lda      $53
; l034b:  .db $a4,$70
   and      #$70
; l034d:  .db $44
   lsra     
; l034e:  .db $44
   lsra     
; l034f:  .db $44
   lsra     
; l0350:  .db $44
   lsra     
; l0351:  .db $b7,$3c
   sta      $3C
; l0353:  .db $cd,$02,$58
   jsr      $0258
; l0356:  .db $03,$41,$b4
   brclr    1, $41, $030D
; l0359:  .db $17,$40
   bclr     3, ram4x
; l035b:  .db $3f,$3e
   clr      $3E
; l035d:  .db $a6,$06
   lda      #$06
; l035f:  .db $b7,$3c
   sta      $3C
; l0361:  .db $cd,$02,$58
   jsr      $0258
; l0364:  .db $81
   rts      
; l0365:  .db $3f,$26
   clr      $26
; l0367:  .db $a6,$ff
   lda      #$FF
; l0369:  .db $b7,$2e
   sta      $2E
; l036b:  .db $3f,$3c
   clr      $3C
; l036d:  .db $a6,$f4
   lda      #$F4
; l036f:  .db $b7,$3e
   sta      $3E
; l0371:  .db $cd,$02,$b1
   jsr      $02B1
; l0374:  .db $17,$40
   bclr     3, ram4x
; l0376:  .db $3f,$23
   clr      $23
; l0378:  .db $3f,$22
   clr      $22
; l037a:  .db $b6,$29
   lda      $29
; l037c:  .db $b7,$2b
   sta      $2B
; l037e:  .db $b6,$28
   lda      $28
; l0380:  .db $b7,$2a
   sta      $2A
; l0382:  .db $cd,$03,$93
   jsr      $0393
; l0385:  .db $81
   rts      
; l0386:  .db $e6,$01
   lda      portB,x
; l0388:  .db $2a,$08
   bpl      $0392
; l038a:  .db $73
   com      ,x
; l038b:  .db $63,$01
   com      portB,x
; l038d:  .db $7c
   inc      ,x
; l038e:  .db $26,$02
   bne      $0392
; l0390:  .db $6c,$01
   inc      portB,x
; l0392:  .db $81
   rts      
; l0393:  .db $a6,$22
   lda      #$22
; l0395:  .db $b7,$50
   sta      ram5x
; l0397:  .db $b7,$52
   sta      $52
; l0399:  .db $a6,$20
   lda      #$20
; l039b:  .db $b7,$51
   sta      $51
; l039d:  .db $cd,$01,$17
   jsr      $0117
; l03a0:  .db $a6,$2a
   lda      #$2A
; l03a2:  .db $b7,$50
   sta      ram5x
; l03a4:  .db $b7,$52
   sta      $52
; l03a6:  .db $a6,$28
   lda      #$28
; l03a8:  .db $b7,$51
   sta      $51
; l03aa:  .db $cd,$01,$17
   jsr      $0117
; l03ad:  .db $3f,$44
   clr      $44
; l03af:  .db $3f,$45
   clr      $45
; l03b1:  .db $ae,$01
   ldx      #$01
; l03b3:  .db $b6,$23
   lda      $23
; l03b5:  .db $2a,$02
   bpl      $03B9
; l03b7:  .db $ae,$ff
   ldx      #$FF
; l03b9:  .db $bf,$26
   stx      $26
; l03bb:  .db $ae,$01
   ldx      #$01
; l03bd:  .db $b6,$2b
   lda      $2B
; l03bf:  .db $2a,$02
   bpl      $03C3
; l03c1:  .db $ae,$ff
   ldx      #$FF
; l03c3:  .db $bf,$2e
   stx      $2E
; l03c5:  .db $ae,$22
   ldx      #$22
; l03c7:  .db $cd,$03,$86
   jsr      $0386
; l03ca:  .db $ae,$2a
   ldx      #$2A
; l03cc:  .db $cd,$03,$86
   jsr      $0386
; l03cf:  .db $a6,$22
   lda      #$22
; l03d1:  .db $b7,$50
   sta      ram5x
; l03d3:  .db $a6,$2a
   lda      #$2A
; l03d5:  .db $b7,$51
   sta      $51
; l03d7:  .db $a6,$36
   lda      #$36
; l03d9:  .db $b7,$52
   sta      $52
; l03db:  .db $cd,$01,$17
   jsr      $0117
; l03de:  .db $b6,$37
   lda      $37
; l03e0:  .db $2a,$06
   bpl      $03E8
; l03e2:  .db $a6,$2a
   lda      #$2A
; l03e4:  .db $ae,$22
   ldx      #$22
; l03e6:  .db $20,$04
   bra      $03EC
; l03e8:  .db $a6,$22
   lda      #$22
; l03ea:  .db $ae,$2a
   ldx      #$2A
; l03ec:  .db $b7,$42
   sta      $42
; l03ee:  .db $bf,$43
   stx      $43
; l03f0:  .db $be,$42
   ldx      $42
; l03f2:  .db $f6
   lda      ,x
; l03f3:  .db $b7,$46
   sta      $46
; l03f5:  .db $5c
   incx     
; l03f6:  .db $f6
   lda      ,x
; l03f7:  .db $44
   lsra     
; l03f8:  .db $b7,$47
   sta      $47
; l03fa:  .db $36,$46
   ror      $46
; l03fc:  .db $be,$43
   ldx      $43
; l03fe:  .db $e6,$04
   lda      DDRA,x
; l0400:  .db $b7,$54
   sta      $54
; l0402:  .db $b6,$42
   lda      $42
; l0404:  .db $b7,$50
   sta      ram5x
; l0406:  .db $a6,$44
   lda      #$44
; l0408:  .db $b7,$51
   sta      $51
; l040a:  .db $cd,$01,$65
   jsr      $0165
; l040d:  .db $26,$05
   bne      $0414
; l040f:  .db $19,$40
   bclr     4, ram4x
; l0411:  .db $9d
   nop      
; l0412:  .db $9d
   nop      
; l0413:  .db $81
   rts      
; l0414:  .db $a6,$46
   lda      #$46
; l0416:  .db $b7,$50
   sta      ram5x
; l0418:  .db $b7,$52
   sta      $52
; l041a:  .db $b6,$43
   lda      $43
; l041c:  .db $b7,$51
   sta      $51
; l041e:  .db $cd,$01,$17
   jsr      $0117
; l0421:  .db $5f
   clrx     
; l0422:  .db $b6,$47
   lda      $47
; l0424:  .db $2a,$0f
   bpl      $0435
; l0426:  .db $a6,$46
   lda      #$46
; l0428:  .db $b7,$50
   sta      ram5x
; l042a:  .db $b7,$52
   sta      $52
; l042c:  .db $b6,$42
   lda      $42
; l042e:  .db $b7,$51
   sta      $51
; l0430:  .db $cd,$01,$30
   jsr      $0130
; l0433:  .db $be,$54
   ldx      $54
; l0435:  .db $9f
   txa      
; l0436:  .db $be,$43
   ldx      $43
; l0438:  .db $e7,$04
   sta      DDRA,x
; l043a:  .db $a6,$44
   lda      #$44
; l043c:  .db $b7,$50
   sta      ram5x
; l043e:  .db $cd,$01,$06
   jsr      $0106
; l0441:  .db $09,$40,$1a
   brclr    4, ram4x, $045E
; l0444:  .db $b6,$4a
   lda      $4A
; l0446:  .db $27,$1a
   beq      $0462
; l0448:  .db $3a,$4b
   dec      $4B
; l044a:  .db $26,$0d
   bne      $0459
; l044c:  .db $07,$40,$04
   brclr    3, ram4x, $0453
; l044f:  .db $17,$40
   bclr     3, ram4x
; l0451:  .db $20,$02
   bra      $0455
; l0453:  .db $16,$40
   bset     3, ram4x
; l0455:  .db $b6,$4a
   lda      $4A
; l0457:  .db $b7,$4b
   sta      $4B
; l0459:  .db $cd,$01,$80
   jsr      $0180
; l045c:  .db $20,$a4
   bra      $0402
; l045e:  .db $17,$40
   bclr     3, ram4x
; l0460:  .db $20,$f7
   bra      $0459
; l0462:  .db $16,$40
   bset     3, ram4x
; l0464:  .db $20,$f3
   bra      $0459
; l0466:  .db $b6,$5f
   lda      $5F
; l0468:  .db $4c
   inca     
; l0469:  .db $a4,$03
   and      #$03
; l046b:  .db $b7,$5e
   sta      $5E
; l046d:  .db $b6,$20
   lda      ram2x
; l046f:  .db $b7,$5c
   sta      $5C
; l0471:  .db $b6,$21
   lda      $21
; l0473:  .db $b7,$5d
   sta      $5D
; l0475:  .db $b6,$28
   lda      $28
; l0477:  .db $b7,$2a
   sta      $2A
; l0479:  .db $b6,$29
   lda      $29
; l047b:  .db $b7,$2b
   sta      $2B
; l047d:  .db $b6,$30
   lda      ram3x
; l047f:  .db $b7,$22
   sta      $22
; l0481:  .db $b6,$31
   lda      $31
; l0483:  .db $b7,$23
   sta      $23
; l0485:  .db $cd,$03,$93
   jsr      $0393
; l0488:  .db $12,$40
   bset     1, ram4x
; l048a:  .db $11,$40
   bclr     0, ram4x
; l048c:  .db $be,$4f
   ldx      $4F
; l048e:  .db $e6,$e0
   lda      $E0,x
; l0490:  .db $b7,$22
   sta      $22
; l0492:  .db $3f,$23
   clr      $23
; l0494:  .db $cd,$0a,$a0
   jsr      $0AA0
; l0497:  .db $be,$4f
   ldx      $4F
; l0499:  .db $e6,$f0
   lda      $F0,x
; l049b:  .db $b7,$22
   sta      $22
; l049d:  .db $cd,$03,$ad
   jsr      $03AD
; l04a0:  .db $cd,$0a,$a0
   jsr      $0AA0
; l04a3:  .db $cd,$03,$ad
   jsr      $03AD
; l04a6:  .db $cd,$0a,$a0
   jsr      $0AA0
; l04a9:  .db $b6,$5f
   lda      $5F
; l04ab:  .db $4c
   inca     
; l04ac:  .db $a4,$03
   and      #$03
; l04ae:  .db $b7,$5f
   sta      $5F
; l04b0:  .db $b1,$5e
   cmp      $5E
; l04b2:  .db $27,$08
   beq      $04BC
; l04b4:  .db $cd,$03,$ad
   jsr      $03AD
; l04b7:  .db $cd,$0a,$a0
   jsr      $0AA0
; l04ba:  .db $20,$e1
   bra      $049D
; l04bc:  .db $be,$4f
   ldx      $4F
; l04be:  .db $e6,$e0
   lda      $E0,x
; l04c0:  .db $b7,$22
   sta      $22
; l04c2:  .db $3f,$23
   clr      $23
; l04c4:  .db $cd,$03,$ad
   jsr      $03AD
; l04c7:  .db $13,$40
   bclr     1, ram4x
; l04c9:  .db $b6,$5c
   lda      $5C
; l04cb:  .db $b7,$22
   sta      $22
; l04cd:  .db $b6,$5d
   lda      $5D
; l04cf:  .db $b7,$23
   sta      $23
; l04d1:  .db $b6,$28
   lda      $28
; l04d3:  .db $b7,$2a
   sta      $2A
; l04d5:  .db $b6,$29
   lda      $29
; l04d7:  .db $b7,$2b
   sta      $2B
; l04d9:  .db $cd,$03,$93
   jsr      $0393
; l04dc:  .db $81
   rts      
; l04dd:  .db $a6,$71
   lda      #$71
; l04df:  .db $b7,$48
   sta      $48
; l04e1:  .db $a6,$03
   lda      #$03
; l04e3:  .db $b7,$49
   sta      $49
; l04e5:  .db $cc,$02,$f0
   jmp      $02F0
; l04e8:  .db $b6,$32
   lda      $32
; l04ea:  .db $b7,$34
   sta      $34
; l04ec:  .db $b6,$33
   lda      $33
; l04ee:  .db $b7,$35
   sta      $35
; l04f0:  .db $b6,$4c
   lda      $4C
; l04f2:  .db $b7,$36
   sta      $36
; l04f4:  .db $3c,$36
   inc      $36
; l04f6:  .db $3f,$37
   clr      $37
; l04f8:  .db $ae,$36
   ldx      #$36
; l04fa:  .db $cd,$03,$8a
   jsr      $038A
; l04fd:  .db $a6,$34
   lda      #$34
; l04ff:  .db $b7,$50
   sta      ram5x
; l0501:  .db $b7,$52
   sta      $52
; l0503:  .db $a6,$36
   lda      #$36
; l0505:  .db $b7,$51
   sta      $51
; l0507:  .db $a6,$05
   lda      #$05
; l0509:  .db $b7,$58
   sta      $58
; l050b:  .db $cd,$01,$39
   jsr      $0139
; l050e:  .db $3a,$58
   dec      $58
; l0510:  .db $2a,$f9
   bpl      $050B
; l0512:  .db $81
   rts      
; l0513:  .db $b6,$20
   lda      ram2x
; l0515:  .db $b7,$5c
   sta      $5C
; l0517:  .db $b6,$21
   lda      $21
; l0519:  .db $b7,$5d
   sta      $5D
; l051b:  .db $08,$00,$32
   brset    4, portA, $0550
; l051e:  .db $b6,$28
   lda      $28
; l0520:  .db $b7,$2a
   sta      $2A
; l0522:  .db $b6,$29
   lda      $29
; l0524:  .db $b7,$2b
   sta      $2B
; l0526:  .db $b6,$32
   lda      $32
; l0528:  .db $b7,$22
   sta      $22
; l052a:  .db $b6,$33
   lda      $33
; l052c:  .db $b7,$23
   sta      $23
; l052e:  .db $cd,$03,$93
   jsr      $0393
; l0531:  .db $be,$4f
   ldx      $4F
; l0533:  .db $e6,$f8
   lda      $F8,x
; l0535:  .db $b7,$22
   sta      $22
; l0537:  .db $3f,$23
   clr      $23
; l0539:  .db $12,$40
   bset     1, ram4x
; l053b:  .db $11,$40
   bclr     0, ram4x
; l053d:  .db $cd,$03,$ad
   jsr      $03AD
; l0540:  .db $07,$00,$0d
   brclr    3, portA, $0550
; l0543:  .db $04,$00,$05
   brset    2, portA, $054B
; l0546:  .db $cd,$0a,$a8
   jsr      $0AA8
; l0549:  .db $20,$d3
   bra      $051E
; l054b:  .db $cd,$06,$1f
   jsr      $061F
; l054e:  .db $20,$f0
   bra      $0540
; l0550:  .db $06,$00,$50
   brset    3, portA, $05A3
; l0553:  .db $b6,$28
   lda      $28
; l0555:  .db $b7,$2a
   sta      $2A
; l0557:  .db $b6,$29
   lda      $29
; l0559:  .db $b7,$2b
   sta      $2B
; l055b:  .db $b6,$30
   lda      ram3x
; l055d:  .db $b7,$22
   sta      $22
; l055f:  .db $b6,$31
   lda      $31
; l0561:  .db $b7,$23
   sta      $23
; l0563:  .db $cd,$03,$93
   jsr      $0393
; l0566:  .db $be,$4f
   ldx      $4F
; l0568:  .db $e6,$e8
   lda      $E8,x
; l056a:  .db $b7,$22
   sta      $22
; l056c:  .db $3f,$23
   clr      $23
; l056e:  .db $12,$40
   bset     1, ram4x
; l0570:  .db $11,$40
   bclr     0, ram4x
; l0572:  .db $cd,$0a,$a0
   jsr      $0AA0
; l0575:  .db $06,$00,$1c
   brset    3, portA, $0594
; l0578:  .db $04,$00,$07
   brset    2, portA, $0582
; l057b:  .db $be,$4f
   ldx      $4F
; l057d:  .db $e6,$e8
   lda      $E8,x
; l057f:  .db $cc,$0a,$b2
   jmp      $0AB2
; l0582:  .db $a6,$ff
   lda      #$FF
; l0584:  .db $b7,$2e
   sta      $2E
; l0586:  .db $3f,$26
   clr      $26
; l0588:  .db $cd,$01,$80
   jsr      $0180
; l058b:  .db $a6,$28
   lda      #$28
; l058d:  .db $b7,$50
   sta      ram5x
; l058f:  .db $cd,$01,$06
   jsr      $0106
; l0592:  .db $20,$e1
   bra      $0575
; l0594:  .db $be,$4f
   ldx      $4F
; l0596:  .db $e6,$e8
   lda      $E8,x
; l0598:  .db $b7,$22
   sta      $22
; l059a:  .db $3f,$23
   clr      $23
; l059c:  .db $3f,$2a
   clr      $2A
; l059e:  .db $3f,$2b
   clr      $2B
; l05a0:  .db $cc,$04,$c4
   jmp      $04C4
; l05a3:  .db $04,$00,$4a
   brset    2, portA, $05F0
; l05a6:  .db $14,$40
   bset     2, ram4x
; l05a8:  .db $cc,$04,$66
   jmp      $0466
; l05ab:  .db $3f,$a6
   clr      $A6
; l05ad:  .db $20,$b7
   bra      $0566
; l05af:  .db $50
   negx     
; l05b0:  .db $b7,$52
   sta      $52
; l05b2:  .db $a6,$30
   lda      #$30
; l05b4:  .db $b7,$51
   sta      $51
; l05b6:  .db $cd,$01,$17
   jsr      $0117
; l05b9:  .db $a6,$32
   lda      #$32
; l05bb:  .db $b7,$50
   sta      ram5x
; l05bd:  .db $b7,$52
   sta      $52
; l05bf:  .db $cd,$01,$17
   jsr      $0117
; l05c2:  .db $3f,$30
   clr      ram3x
; l05c4:  .db $3f,$31
   clr      $31
; l05c6:  .db $3f,$28
   clr      $28
; l05c8:  .db $3f,$29
   clr      $29
; l05ca:  .db $3f,$2a
   clr      $2A
; l05cc:  .db $3f,$2b
   clr      $2B
; l05ce:  .db $11,$41
   bclr     0, $41
; l05d0:  .db $cd,$04,$e8
   jsr      $04E8
; l05d3:  .db $3f,$4e
   clr      $4E
; l05d5:  .db $b6,$21
   lda      $21
; l05d7:  .db $2a,$08
   bpl      $05E1
; l05d9:  .db $3f,$20
   clr      ram2x
; l05db:  .db $3f,$21
   clr      $21
; l05dd:  .db $a6,$ff
   lda      #$FF
; l05df:  .db $20,$0d
   bra      $05EE
; l05e1:  .db $01,$40,$0c
   brclr    0, ram4x, $05F0
; l05e4:  .db $b6,$32
   lda      $32
; l05e6:  .db $b7,$20
   sta      ram2x
; l05e8:  .db $b6,$33
   lda      $33
; l05ea:  .db $b7,$21
   sta      $21
; l05ec:  .db $a6,$01
   lda      #$01
; l05ee:  .db $b7,$3b
   sta      $3B
; l05f0:  .db $81
   rts      
; l05f1:  .db $9a
   cli      
; l05f2:  .db $b6,$57
   lda      $57
; l05f4:  .db $a1,$06
   cmp      #$06
; l05f6:  .db $2a,$10
   bpl      $0608
; l05f8:  .db $0a,$41,$0d
   brset    5, $41, $0608
; l05fb:  .db $09,$02,$0a
   brclr    4, portC, $0608
; l05fe:  .db $9b
   sei      
; l05ff:  .db $19,$02
   bclr     4, portC
; l0601:  .db $1b,$02
   bclr     5, portC
; l0603:  .db $9d
   nop      
; l0604:  .db $9d
   nop      
; l0605:  .db $1a,$02
   bset     5, portC
; l0607:  .db $9a
   cli      
; l0608:  .db $b6,$57
   lda      $57
; l060a:  .db $27,$11
   beq      $061D
; l060c:  .db $9b
   sei      
; l060d:  .db $3a,$57
   dec      $57
; l060f:  .db $b6,$56
   lda      $56
; l0611:  .db $4c
   inca     
; l0612:  .db $a4,$07
   and      #$07
; l0614:  .db $b7,$56
   sta      $56
; l0616:  .db $97
   tax      
; l0617:  .db $9a
   cli      
; l0618:  .db $e6,$60
   lda      ram6x,x
; l061a:  .db $b7,$48
   sta      $48
; l061c:  .db $81
   rts      
; l061d:  .db $3f,$48
   clr      $48
; l061f:  .db $3f,$26
   clr      $26
; l0621:  .db $3f,$2e
   clr      $2E
; l0623:  .db $cc,$01,$80
   jmp      $0180
; l0626:  .db $15,$41
   bclr     2, $41
; l0628:  .db $17,$41
   bclr     3, $41
; l062a:  .db $3f,$38
   clr      $38
; l062c:  .db $3f,$39
   clr      $39
; l062e:  .db $3f,$3a
   clr      $3A
; l0630:  .db $cd,$05,$f1
   jsr      $05F1
; l0633:  .db $b6,$48
   lda      $48
; l0635:  .db $27,$f9
   beq      $0630
; l0637:  .db $a1,$20
   cmp      #$20
; l0639:  .db $27,$f5
   beq      $0630
; l063b:  .db $a1,$2d
   cmp      #$2D
; l063d:  .db $26,$04
   bne      $0643
; l063f:  .db $16,$41
   bset     3, $41
; l0641:  .db $20,$ed
   bra      $0630
; l0643:  .db $a4,$f0
   and      #$F0
; l0645:  .db $a1,$30
   cmp      #$30
; l0647:  .db $26,$27
   bne      $0670
; l0649:  .db $b6,$48
   lda      $48
; l064b:  .db $a4,$0f
   and      #$0F
; l064d:  .db $a1,$0a
   cmp      #$0A
; l064f:  .db $2a,$1f
   bpl      $0670
; l0651:  .db $be,$38
   ldx      $38
; l0653:  .db $b7,$38
   sta      $38
; l0655:  .db $b6,$39
   lda      $39
; l0657:  .db $bf,$39
   stx      $39
; l0659:  .db $b7,$3a
   sta      $3A
; l065b:  .db $cd,$05,$f1
   jsr      $05F1
; l065e:  .db $b6,$48
   lda      $48
; l0660:  .db $27,$f9
   beq      $065B
; l0662:  .db $a1,$0d
   cmp      #$0D
; l0664:  .db $27,$06
   beq      $066C
; l0666:  .db $a1,$2c
   cmp      #$2C
; l0668:  .db $26,$d9
   bne      $0643
; l066a:  .db $20,$1b
   bra      $0687
; l066c:  .db $14,$41
   bset     2, $41
; l066e:  .db $20,$17
   bra      $0687
; l0670:  .db $b6,$48
   lda      $48
; l0672:  .db $a1,$0d
   cmp      #$0D
; l0674:  .db $26,$04
   bne      $067A
; l0676:  .db $14,$41
   bset     2, $41
; l0678:  .db $20,$0d
   bra      $0687
; l067a:  .db $a1,$2c
   cmp      #$2C
; l067c:  .db $27,$09
   beq      $0687
; l067e:  .db $cd,$05,$f1
   jsr      $05F1
; l0681:  .db $b6,$48
   lda      $48
; l0683:  .db $27,$f9
   beq      $067E
; l0685:  .db $20,$e9
   bra      $0670
; l0687:  .db $b6,$38
   lda      $38
; l0689:  .db $be,$39
   ldx      $39
; l068b:  .db $eb,$90
   add      $90,x
; l068d:  .db $b7,$38
   sta      $38
; l068f:  .db $3f,$39
   clr      $39
; l0691:  .db $be,$3a
   ldx      $3A
; l0693:  .db $e6,$9a
   lda      $9A,x
; l0695:  .db $b7,$48
   sta      $48
; l0697:  .db $e6,$a4
   lda      $A4,x
; l0699:  .db $b7,$49
   sta      $49
; l069b:  .db $a6,$38
   lda      #$38
; l069d:  .db $b7,$50
   sta      ram5x
; l069f:  .db $b7,$52
   sta      $52
; l06a1:  .db $a6,$48
   lda      #$48
; l06a3:  .db $b7,$51
   sta      $51
; l06a5:  .db $cd,$01,$30
   jsr      $0130
; l06a8:  .db $07,$41,$05
   brclr    3, $41, $06B0
; l06ab:  .db $ae,$38
   ldx      #$38
; l06ad:  .db $cd,$03,$8a
   jsr      $038A
; l06b0:  .db $81
   rts      
___BDATA_0001:
;   06B1:    
 .DB $b6 ; .
rstInt:
; l06b2:  .db $9b
   sei      
; l06b3:  .db $9c
   rsp      
; l06b4:  .db $4f
   clra     
; l06b5:  .db $ae,$20
   ldx      #$20
; l06b7:  .db $f7
   sta      ,x
; l06b8:  .db $5c
   incx     
; l06b9:  .db $a3,$60
   cpx      #$60
; l06bb:  .db $26,$fa
   bne      $06B7
; l06bd:  .db $b7,$04
   sta      DDRA
; l06bf:  .db $a6,$ff
   lda      #$FF
; l06c1:  .db $b7,$05
   sta      DDRB
; l06c3:  .db $a6,$73
   lda      #$73
; l06c5:  .db $b7,$06
   sta      DDRC
; l06c7:  .db $3f,$01
   clr      portB
; l06c9:  .db $a6,$03
   lda      #$03
; l06cb:  .db $b7,$02
   sta      portC
; l06cd:  .db $06,$00,$02
   brset    3, portA, $06D2
; l06d0:  .db $18,$41
   bset     4, $41
; l06d2:  .db $1a,$02
   bset     5, portC
; l06d4:  .db $1c,$02
   bset     6, portC
; l06d6:  .db $12,$40
   bset     1, ram4x
; l06d8:  .db $14,$40
   bset     2, ram4x
; l06da:  .db $b6,$00
   lda      portA
; l06dc:  .db $44
   lsra     
; l06dd:  .db $44
   lsra     
; l06de:  .db $44
   lsra     
; l06df:  .db $44
   lsra     
; l06e0:  .db $44
   lsra     
; l06e1:  .db $b7,$4f
   sta      $4F
; l06e3:  .db $a6,$03
   lda      #$03
; l06e5:  .db $b7,$09
   sta      timerCtrl
; l06e7:  .db $9a
   cli      
; l06e8:  .db $be,$4f
   ldx      $4F
; l06ea:  .db $e6,$c0
   lda      $C0,x
; l06ec:  .db $b7,$22
   sta      $22
; l06ee:  .db $e6,$c8
   lda      $C8,x
; l06f0:  .db $b7,$23
   sta      $23
; l06f2:  .db $cd,$03,$ad
   jsr      $03AD
; l06f5:  .db $06,$02,$02
   brset    3, portC, $06FA
; l06f8:  .db $1e,$40
   bset     7, ram4x
; l06fa:  .db $be,$4f
   ldx      $4F
; l06fc:  .db $e6,$e0
   lda      $E0,x
; l06fe:  .db $ab,$02
   add      #$02
; l0700:  .db $b7,$22
   sta      $22
; l0702:  .db $3f,$23
   clr      $23
; l0704:  .db $cd,$03,$ad
   jsr      $03AD
; l0707:  .db $3f,$20
   clr      ram2x
; l0709:  .db $3f,$21
   clr      $21
; l070b:  .db $be,$4f
   ldx      $4F
; l070d:  .db $e6,$d0
   lda      $D0,x
; l070f:  .db $b7,$32
   sta      $32
; l0711:  .db $e6,$d8
   lda      $D8,x
; l0713:  .db $b7,$33
   sta      $33
; l0715:  .db $cd,$04,$e8
   jsr      $04E8
; l0718:  .db $cd,$0a,$a0
   jsr      $0AA0
; l071b:  .db $a6,$05
   lda      #$05
; l071d:  .db $0e,$00,$02
   brset    7, portA, $0722
; l0720:  .db $a6,$0b
   lda      #$0B
; l0722:  .db $b7,$4c
   sta      $4C
; l0724:  .db $0c,$00,$4b
   brset    6, portA, $0772
; l0727:  .db $a6,$0a
   lda      #$0A
; l0729:  .db $b7,$4b
   sta      $4B
; l072b:  .db $07,$02,$19
   brclr    3, portC, $0747
; l072e:  .db $be,$4f
   ldx      $4F
; l0730:  .db $e6,$f0
   lda      $F0,x
; l0732:  .db $b7,$22
   sta      $22
; l0734:  .db $3f,$23
   clr      $23
; l0736:  .db $cd,$03,$ad
   jsr      $03AD
; l0739:  .db $cd,$0a,$a0
   jsr      $0AA0
; l073c:  .db $3a,$4b
   dec      $4B
; l073e:  .db $26,$eb
   bne      $072B
; l0740:  .db $0f,$40,$04
   brclr    7, ram4x, $0747
; l0743:  .db $1f,$40
   bclr     7, ram4x
; l0745:  .db $20,$e4
   bra      $072B
; l0747:  .db $3f,$5f
   clr      $5F
; l0749:  .db $be,$4f
   ldx      $4F
; l074b:  .db $e6,$e0
   lda      $E0,x
; l074d:  .db $ab,$02
   add      #$02
; l074f:  .db $b7,$22
   sta      $22
; l0751:  .db $3f,$23
   clr      $23
; l0753:  .db $cd,$03,$ad
   jsr      $03AD
; l0756:  .db $cd,$03,$65
   jsr      $0365
; l0759:  .db $cd,$04,$dd
   jsr      $04DD
; l075c:  .db $a6,$03
   lda      #$03
; l075e:  .db $b7,$4b
   sta      $4B
; l0760:  .db $cd,$04,$66
   jsr      $0466
; l0763:  .db $cd,$04,$dd
   jsr      $04DD
; l0766:  .db $3a,$4b
   dec      $4B
; l0768:  .db $26,$f6
   bne      $0760
; l076a:  .db $cd,$03,$65
   jsr      $0365
; l076d:  .db $cd,$04,$66
   jsr      $0466
; l0770:  .db $20,$16
   bra      $0788
; l0772:  .db $be,$4f
   ldx      $4F
; l0774:  .db $e6,$e0
   lda      $E0,x
; l0776:  .db $ab,$02
   add      #$02
; l0778:  .db $b7,$22
   sta      $22
; l077a:  .db $3f,$23
   clr      $23
; l077c:  .db $cd,$03,$ad
   jsr      $03AD
; l077f:  .db $cd,$03,$65
   jsr      $0365
; l0782:  .db $cd,$04,$dd
   jsr      $04DD
; l0785:  .db $cd,$03,$65
   jsr      $0365
; l0788:  .db $4f
   clra     
; l0789:  .db $00,$00,$01
   brset    0, portA, $078D
; l078c:  .db $4c
   inca     
; l078d:  .db $0e,$00,$01
   brset    7, portA, $0791
; l0790:  .db $4c
   inca     
; l0791:  .db $b7,$4c
   sta      $4C
; l0793:  .db $cd,$04,$e8
   jsr      $04E8
; l0796:  .db $13,$40
   bclr     1, ram4x
; l0798:  .db $09,$41,$2d
   brclr    4, $41, $07C8
; l079b:  .db $a6,$20
   lda      #$20
; l079d:  .db $b7,$4b
   sta      $4B
; l079f:  .db $b6,$4b
   lda      $4B
; l07a1:  .db $b7,$48
   sta      $48
; l07a3:  .db $cd,$02,$db
   jsr      $02DB
; l07a6:  .db $3c,$4b
   inc      $4B
; l07a8:  .db $0c,$00,$09
   brset    6, portA, $07B4
; l07ab:  .db $b6,$4b
   lda      $4B
; l07ad:  .db $a4,$0f
   and      #$0F
; l07af:  .db $26,$03
   bne      $07B4
; l07b1:  .db $cd,$04,$66
   jsr      $0466
; l07b4:  .db $b6,$4b
   lda      $4B
; l07b6:  .db $a1,$80
   cmp      #$80
; l07b8:  .db $26,$e5
   bne      $079F
; l07ba:  .db $cd,$03,$65
   jsr      $0365
; l07bd:  .db $cd,$03,$65
   jsr      $0365
; l07c0:  .db $0c,$00,$05
   brset    6, portA, $07C8
; l07c3:  .db $3f,$5e
   clr      $5E
; l07c5:  .db $cd,$04,$6d
   jsr      $046D
; l07c8:  .db $20,$01
   bra      swInt
___BDATA_0002:
;   07CA:    
 .DB $00 ; .
;----------------------------------------------------------------
;        Function: swInt
swInt:
; l07cb:  .db $cd,$05,$13
   jsr      $0513
; l07ce:  .db $cd,$05,$f1
   jsr      $05F1
; l07d1:  .db $b6,$48
   lda      $48
; l07d3:  .db $a1,$11
   cmp      #$11
; l07d5:  .db $26,$05
   bne      $07DC
; l07d7:  .db $cd,$05,$ac
   jsr      $05AC
; l07da:  .db $20,$f2
   bra      $07CE
; l07dc:  .db $a1,$12
   cmp      #$12
; l07de:  .db $26,$04
   bne      $07E4
; l07e0:  .db $10,$41
   bset     0, $41
; l07e2:  .db $20,$ea
   bra      $07CE
; l07e4:  .db $b1,$00
   cmp      portA
; l07e6:  .db $27,$e3
   beq      swInt
; l07e8:  .db $01,$41,$03
   brclr    0, $41, $07EE
; l07eb:  .db $cc,$08,$6f
   jmp      $086F
; l07ee:  .db $b6,$48
   lda      $48
; l07f0:  .db $27,$d9
   beq      swInt
; l07f2:  .db $a1,$0d
   cmp      #$0D
; l07f4:  .db $27,$66
   beq      $085C
; l07f6:  .db $a1,$0a
   cmp      #$0A
; l07f8:  .db $27,$2f
   beq      $0829
; l07fa:  .db $a1,$0b
   cmp      #$0B
; l07fc:  .db $27,$36
   beq      $0834
; l07fe:  .db $a1,$08
   cmp      #$08
; l0800:  .db $27,$3d
   beq      $083F
; l0802:  .db $a1,$1d
   cmp      #$1D
; l0804:  .db $26,$05
   bne      $080B
; l0806:  .db $cd,$04,$66
   jsr      $0466
; l0809:  .db $20,$19
   bra      $0824
; l080b:  .db $a4,$f0
   and      #$F0
; l080d:  .db $44
   lsra     
; l080e:  .db $44
   lsra     
; l080f:  .db $44
   lsra     
; l0810:  .db $44
   lsra     
; l0811:  .db $a1,$02
   cmp      #$02
; l0813:  .db $2b,$0f
   bmi      $0824
; l0815:  .db $a1,$0e
   cmp      #$0E
; l0817:  .db $2a,$0b
   bpl      $0824
; l0819:  .db $a1,$08
   cmp      #$08
; l081b:  .db $2b,$04
   bmi      $0821
; l081d:  .db $a1,$0a
   cmp      #$0A
; l081f:  .db $2b,$03
   bmi      $0824
; l0821:  .db $cd,$02,$db
   jsr      $02DB
; l0824:  .db $cd,$05,$f1
   jsr      $05F1
; l0827:  .db $20,$c5
   bra      $07EE
; l0829:  .db $3f,$26
   clr      $26
; l082b:  .db $a6,$ff
   lda      #$FF
; l082d:  .db $b7,$2e
   sta      $2E
; l082f:  .db $4f
   clra     
; l0830:  .db $ae,$f4
   ldx      #$F4
; l0832:  .db $20,$1f
   bra      $0853
; l0834:  .db $3f,$26
   clr      $26
; l0836:  .db $a6,$01
   lda      #$01
; l0838:  .db $b7,$2e
   sta      $2E
; l083a:  .db $4f
   clra     
; l083b:  .db $ae,$0c
   ldx      #$0C
; l083d:  .db $20,$14
   bra      $0853
; l083f:  .db $b6,$20
   lda      ram2x
; l0841:  .db $26,$07
   bne      $084A
; l0843:  .db $b6,$21
   lda      $21
; l0845:  .db $26,$03
   bne      $084A
; l0847:  .db $cc,$07,$cb
   jmp      swInt
; l084a:  .db $a6,$ff
   lda      #$FF
; l084c:  .db $b7,$26
   sta      $26
; l084e:  .db $3f,$2e
   clr      $2E
; l0850:  .db $a6,$fa
   lda      #$FA
; l0852:  .db $5f
   clrx     
; l0853:  .db $b7,$3c
   sta      $3C
; l0855:  .db $bf,$3e
   stx      $3E
; l0857:  .db $cd,$02,$b1
   jsr      $02B1
; l085a:  .db $20,$0b
   bra      $0867
; l085c:  .db $03,$00,$05
   brclr    1, portA, $0864
; l085f:  .db $cd,$03,$74
   jsr      $0374
; l0862:  .db $20,$03
   bra      $0867
; l0864:  .db $cd,$03,$65
   jsr      $0365
; l0867:  .db $3f,$28
   clr      $28
; l0869:  .db $3f,$29
   clr      $29
; l086b:  .db $cc,$07,$cb
   jmp      swInt
; l086e:  .db $f0
   sub      ,x
; l086f:  .db $b6,$48
   lda      $48
; l0871:  .db $a4,$f0
   and      #$F0
; l0873:  .db $a1,$40
   cmp      #$40
; l0875:  .db $27,$06
   beq      $087D
; l0877:  .db $a1,$50
   cmp      #$50
; l0879:  .db $27,$02
   beq      $087D
; l087b:  .db $20,$0c
   bra      $0889
; l087d:  .db $b6,$48
   lda      $48
; l087f:  .db $a0,$40
   sub      #$40
; l0881:  .db $97
   tax      
; l0882:  .db $d6,$09,$c7
   lda      $09C7,x
; l0885:  .db $97
   tax      
; l0886:  .db $dc,$08,$89
   jmp      $0889,x
; l0889:  .db $cc,$07,$cb
   jmp      swInt
; l088c:  .db $cd,$06,$26
   jsr      $0626
; l088f:  .db $b6,$38
   lda      $38
; l0891:  .db $a4,$0f
   and      #$0F
; l0893:  .db $b7,$4a
   sta      $4A
; l0895:  .db $b7,$4b
   sta      $4B
; l0897:  .db $20,$f0
   bra      $0889
; l0899:  .db $cd,$05,$ac
   jsr      $05AC
; l089c:  .db $3f,$22
   clr      $22
; l089e:  .db $3f,$23
   clr      $23
; l08a0:  .db $3f,$2a
   clr      $2A
; l08a2:  .db $3f,$2b
   clr      $2B
; l08a4:  .db $cd,$03,$93
   jsr      $0393
; l08a7:  .db $20,$e0
   bra      $0889
; l08a9:  .db $a6,$30
   lda      #$30
; l08ab:  .db $b7,$50
   sta      ram5x
; l08ad:  .db $b7,$52
   sta      $52
; l08af:  .db $a6,$20
   lda      #$20
; l08b1:  .db $b7,$51
   sta      $51
; l08b3:  .db $cd,$01,$17
   jsr      $0117
; l08b6:  .db $a6,$32
   lda      #$32
; l08b8:  .db $b7,$50
   sta      ram5x
; l08ba:  .db $b7,$52
   sta      $52
; l08bc:  .db $a6,$20
   lda      #$20
; l08be:  .db $b7,$51
   sta      $51
; l08c0:  .db $cd,$01,$17
   jsr      $0117
; l08c3:  .db $3f,$20
   clr      ram2x
; l08c5:  .db $3f,$21
   clr      $21
; l08c7:  .db $3f,$28
   clr      $28
; l08c9:  .db $3f,$29
   clr      $29
; l08cb:  .db $20,$bc
   bra      $0889
; l08cd:  .db $cd,$06,$26
   jsr      $0626
; l08d0:  .db $b6,$38
   lda      $38
; l08d2:  .db $a4,$3f
   and      #$3F
; l08d4:  .db $b7,$4c
   sta      $4C
; l08d6:  .db $20,$b1
   bra      $0889
; l08d8:  .db $cd,$06,$26
   jsr      $0626
; l08db:  .db $b6,$38
   lda      $38
; l08dd:  .db $a4,$03
   and      #$03
; l08df:  .db $b7,$4e
   sta      $4E
; l08e1:  .db $20,$a6
   bra      $0889
; l08e3:  .db $cd,$05,$f1
   jsr      $05F1
; l08e6:  .db $b6,$48
   lda      $48
; l08e8:  .db $27,$f9
   beq      $08E3
; l08ea:  .db $a1,$0d
   cmp      #$0D
; l08ec:  .db $27,$9b
   beq      $0889
; l08ee:  .db $a4,$f0
   and      #$F0
; l08f0:  .db $44
   lsra     
; l08f1:  .db $44
   lsra     
; l08f2:  .db $44
   lsra     
; l08f3:  .db $44
   lsra     
; l08f4:  .db $a1,$02
   cmp      #$02
; l08f6:  .db $2b,$eb
   bmi      $08E3
; l08f8:  .db $a1,$0e
   cmp      #$0E
; l08fa:  .db $2a,$e7
   bpl      $08E3
; l08fc:  .db $a1,$08
   cmp      #$08
; l08fe:  .db $2b,$04
   bmi      $0904
; l0900:  .db $a1,$0a
   cmp      #$0A
; l0902:  .db $2b,$df
   bmi      $08E3
; l0904:  .db $cd,$02,$db
   jsr      $02DB
; l0907:  .db $20,$da
   bra      $08E3
; l0909:  .db $ae,$30
   ldx      #$30
; l090b:  .db $20,$09
   bra      $0916
; l090d:  .db $ae,$10
   ldx      #$10
; l090f:  .db $20,$05
   bra      $0916
; l0911:  .db $ae,$20
   ldx      #$20
; l0913:  .db $20,$01
   bra      $0916
; l0915:  .db $5f
   clrx     
; l0916:  .db $bf,$58
   stx      $58
; l0918:  .db $b6,$40
   lda      ram4x
; l091a:  .db $a4,$cf
   and      #$CF
; l091c:  .db $ba,$58
   ora      $58
; l091e:  .db $b7,$40
   sta      ram4x
; l0920:  .db $cd,$06,$26
   jsr      $0626
; l0923:  .db $b6,$38
   lda      $38
; l0925:  .db $b7,$22
   sta      $22
; l0927:  .db $b6,$39
   lda      $39
; l0929:  .db $b7,$23
   sta      $23
; l092b:  .db $cd,$06,$26
   jsr      $0626
; l092e:  .db $b6,$38
   lda      $38
; l0930:  .db $b7,$2a
   sta      $2A
; l0932:  .db $b6,$39
   lda      $39
; l0934:  .db $b7,$2b
   sta      $2B
; l0936:  .db $0a,$40,$05
   brset    5, ram4x, $093E
; l0939:  .db $cd,$03,$ad
   jsr      $03AD
; l093c:  .db $20,$03
   bra      $0941
; l093e:  .db $cd,$03,$93
   jsr      $0393
; l0941:  .db $05,$41,$d4
   brclr    2, $41, $0918
; l0944:  .db $20,$10
   bra      $0956
; l0946:  .db $cd,$06,$26
   jsr      $0626
; l0949:  .db $b6,$38
   lda      $38
; l094b:  .db $a4,$03
   and      #$03
; l094d:  .db $b7,$5e
   sta      $5E
; l094f:  .db $b1,$5f
   cmp      $5F
; l0951:  .db $27,$03
   beq      $0956
; l0953:  .db $cd,$04,$6d
   jsr      $046D
; l0956:  .db $cc,$07,$cb
   jmp      swInt
; l0959:  .db $cd,$06,$26
   jsr      $0626
; l095c:  .db $b6,$38
   lda      $38
; l095e:  .db $b7,$58
   sta      $58
; l0960:  .db $cd,$06,$26
   jsr      $0626
; l0963:  .db $b6,$38
   lda      $38
; l0965:  .db $b7,$5c
   sta      $5C
; l0967:  .db $b6,$39
   lda      $39
; l0969:  .db $b7,$5d
   sta      $5D
; l096b:  .db $cd,$06,$26
   jsr      $0626
; l096e:  .db $3f,$4a
   clr      $4A
; l0970:  .db $b6,$58
   lda      $58
; l0972:  .db $27,$06
   beq      $097A
; l0974:  .db $a6,$22
   lda      #$22
; l0976:  .db $ae,$2a
   ldx      #$2A
; l0978:  .db $20,$04
   bra      $097E
; l097a:  .db $a6,$2a
   lda      #$2A
; l097c:  .db $ae,$22
   ldx      #$22
; l097e:  .db $b7,$58
   sta      $58
; l0980:  .db $bf,$3a
   stx      $3A
; l0982:  .db $b6,$38
   lda      $38
; l0984:  .db $26,$03
   bne      $0989
; l0986:  .db $cc,$07,$cb
   jmp      swInt
; l0989:  .db $3a,$38
   dec      $38
; l098b:  .db $b6,$5c
   lda      $5C
; l098d:  .db $be,$58
   ldx      $58
; l098f:  .db $f7
   sta      ,x
; l0990:  .db $b6,$5d
   lda      $5D
; l0992:  .db $5c
   incx     
; l0993:  .db $f7
   sta      ,x
; l0994:  .db $be,$3a
   ldx      $3A
; l0996:  .db $7f
   clr      ,x
; l0997:  .db $5c
   incx     
; l0998:  .db $7f
   clr      ,x
; l0999:  .db $18,$40
   bset     4, ram4x
; l099b:  .db $cd,$03,$ad
   jsr      $03AD
; l099e:  .db $be,$58
   ldx      $58
; l09a0:  .db $7f
   clr      ,x
; l09a1:  .db $5c
   incx     
; l09a2:  .db $7f
   clr      ,x
; l09a3:  .db $be,$3a
   ldx      $3A
; l09a5:  .db $a6,$fd
   lda      #$FD
; l09a7:  .db $f7
   sta      ,x
; l09a8:  .db $5c
   incx     
; l09a9:  .db $a6,$ff
   lda      #$FF
; l09ab:  .db $f7
   sta      ,x
; l09ac:  .db $18,$40
   bset     4, ram4x
; l09ae:  .db $cd,$03,$ad
   jsr      $03AD
; l09b1:  .db $18,$40
   bset     4, ram4x
; l09b3:  .db $cd,$03,$ad
   jsr      $03AD
; l09b6:  .db $18,$40
   bset     4, ram4x
; l09b8:  .db $cd,$03,$ad
   jsr      $03AD
; l09bb:  .db $be,$3a
   ldx      $3A
; l09bd:  .db $cd,$03,$8a
   jsr      $038A
; l09c0:  .db $18,$40
   bset     4, ram4x
; l09c2:  .db $cd,$03,$ad
   jsr      $03AD
; l09c5:  .db $20,$bb
   bra      $0982
; l09c7:  .db $00,$10,$00
   brset    0, unusedSpace10, $09CA
; l09ca:  .db $bd,$80
   jsr      ___CL_0001
; l09cc:  .db $00,$00,$00
   brset    0, portA, $09CF
; l09cf:  .db $13,$20
   bclr     1, ram2x
; l09d1:  .db $84
;   ???      
 .db $84
; l09d2:  .db $00,$03,$88
   brset    0, portDdig, $095D
; l09d5:  .db $00,$00,$5a
   brset    0, portA, $0A32
; l09d8:  .db $4f
   clra     
; l09d9:  .db $8c
;   ???      
 .db $8c
; l09da:  .db $44
   lsra     
; l09db:  .db $00,$00,$00
   brset    0, portA, $09DE
; l09de:  .db $00,$d0,$00
   brset    0, $D0, $09E1
; l09e1:  .db $00,$00,$00
   brset    0, portA, $09E4
; l09e4:  .db $00,$00,$00
   brset    0, portA, hwInt
;----------------------------------------------------------------
;        Function: hwInt
hwInt:
; l09e7:  .db $05,$02,$20
   brclr    2, portC, $0A0A
; l09ea:  .db $18,$02
   bset     4, portC
; l09ec:  .db $3c,$57
   inc      $57
; l09ee:  .db $b6,$57
   lda      $57
; l09f0:  .db $bb,$56
   add      $56
; l09f2:  .db $a4,$07
   and      #$07
; l09f4:  .db $97
   tax      
; l09f5:  .db $b6,$03
   lda      portDdig
; l09f7:  .db $e7,$60
   sta      ram6x,x
; l09f9:  .db $1d,$02
   bclr     6, portC
; l09fb:  .db $b6,$57
   lda      $57
; l09fd:  .db $1c,$02
   bset     6, portC
; l09ff:  .db $a1,$05
   cmp      #$05
; l0a01:  .db $2a,$06
   bpl      $0A09
; l0a03:  .db $1b,$02
   bclr     5, portC
; l0a05:  .db $19,$02
   bclr     4, portC
; l0a07:  .db $1a,$02
   bset     5, portC
; l0a09:  .db $80
   rti      
; l0a0a:  .db $1a,$41
   bset     5, $41
; l0a0c:  .db $a6,$02
   lda      #$02
; l0a0e:  .db $b7,$59
   sta      $59
; l0a10:  .db $a6,$34
   lda      #$34
; l0a12:  .db $b7,$08
   sta      timerData
; l0a14:  .db $1f,$09
   bclr     7, timerCtrl
; l0a16:  .db $3f,$5a
   clr      $5A
; l0a18:  .db $a6,$0a
   lda      #$0A
; l0a1a:  .db $b7,$5b
   sta      $5B
; l0a1c:  .db $1e,$41
   bset     7, $41
; l0a1e:  .db $80
   rti      
;----------------------------------------------------------------
;        Function: timerInt
timerInt:
; l0a1f:  .db $a6,$20
   lda      #$20
; l0a21:  .db $1f,$09
   bclr     7, timerCtrl
; l0a23:  .db $b7,$08
   sta      timerData
; l0a25:  .db $3a,$55
   dec      $55
; l0a27:  .db $0a,$41,$01
   brset    5, $41, $0A2B
; l0a2a:  .db $80
   rti      
; l0a2b:  .db $3a,$59
   dec      $59
; l0a2d:  .db $27,$01
   beq      $0A30
; l0a2f:  .db $80
   rti      
; l0a30:  .db $0e,$41,$44
   brset    7, $41, $0A77
; l0a33:  .db $0c,$41,$14
   brset    6, $41, $0A4A
; l0a36:  .db $18,$02
   bset     4, portC
; l0a38:  .db $34,$5a
   lsr      $5A
; l0a3a:  .db $b6,$02
   lda      portC
; l0a3c:  .db $a4,$80
   and      #$80
; l0a3e:  .db $ba,$5a
   ora      $5A
; l0a40:  .db $b7,$5a
   sta      $5A
; l0a42:  .db $b6,$5b
   lda      $5B
; l0a44:  .db $a1,$02
   cmp      #$02
; l0a46:  .db $26,$02
   bne      $0A4A
; l0a48:  .db $1c,$41
   bset     6, $41
; l0a4a:  .db $a6,$06
   lda      #$06
; l0a4c:  .db $b7,$59
   sta      $59
; l0a4e:  .db $3a,$5b
   dec      $5B
; l0a50:  .db $27,$01
   beq      $0A53
; l0a52:  .db $80
   rti      
; l0a53:  .db $3c,$57
   inc      $57
; l0a55:  .db $b6,$57
   lda      $57
; l0a57:  .db $bb,$56
   add      $56
; l0a59:  .db $a4,$07
   and      #$07
; l0a5b:  .db $97
   tax      
; l0a5c:  .db $b6,$5a
   lda      $5A
; l0a5e:  .db $b4,$03
   and      portDdig
; l0a60:  .db $e7,$60
   sta      ram6x,x
; l0a62:  .db $1b,$41
   bclr     5, $41
; l0a64:  .db $1d,$41
   bclr     6, $41
; l0a66:  .db $1d,$02
   bclr     6, portC
; l0a68:  .db $b6,$57
   lda      $57
; l0a6a:  .db $1c,$02
   bset     6, portC
; l0a6c:  .db $a1,$05
   cmp      #$05
; l0a6e:  .db $2a,$06
   bpl      $0A76
; l0a70:  .db $1b,$02
   bclr     5, portC
; l0a72:  .db $19,$02
   bclr     4, portC
; l0a74:  .db $1a,$02
   bset     5, portC
; l0a76:  .db $80
   rti      
; l0a77:  .db $0f,$02,$04
   brclr    7, portC, $0A7E
; l0a7a:  .db $1f,$41
   bclr     7, $41
; l0a7c:  .db $20,$e4
   bra      $0A62
; l0a7e:  .db $1f,$41
   bclr     7, $41
; l0a80:  .db $20,$b1
   bra      $0A33
; l0a82:  .db $b4,$03
   and      portDdig
; l0a84:  .db $e7,$60
   sta      ram6x,x
; l0a86:  .db $1b,$41
   bclr     5, $41
; l0a88:  .db $1d,$41
   bclr     6, $41
; l0a8a:  .db $1d,$02
   bclr     6, portC
; l0a8c:  .db $b6,$57
   lda      $57
; l0a8e:  .db $1c,$02
   bset     6, portC
; l0a90:  .db $a1,$05
   cmp      #$05
; l0a92:  .db $2a,$06
   bpl      $0A9A
; l0a94:  .db $1b,$02
   bclr     5, portC
; l0a96:  .db $19,$02
   bclr     4, portC
; l0a98:  .db $1a,$02
   bset     5, portC
; l0a9a:  .db $80
   rti      
; l0a9b:  .db $ff
   stx      ,x
; l0a9c:  .db $ff
   stx      ,x
; l0a9d:  .db $ff
   stx      ,x
; l0a9e:  .db $ff
   stx      ,x
; l0a9f:  .db $ff
   stx      ,x
; l0aa0:  .db $ae,$22
   ldx      #$22
; l0aa2:  .db $cd,$03,$8a
   jsr      $038A
; l0aa5:  .db $cc,$03,$ad
   jmp      $03AD
; l0aa8:  .db $b6,$5f
   lda      $5F
; l0aaa:  .db $4c
   inca     
; l0aab:  .db $a4,$03
   and      #$03
; l0aad:  .db $b7,$5e
   sta      $5E
; l0aaf:  .db $cc,$04,$75
   jmp      $0475
; l0ab2:  .db $b7,$22
   sta      $22
; l0ab4:  .db $3f,$23
   clr      $23
; l0ab6:  .db $3f,$2a
   clr      $2A
; l0ab8:  .db $3f,$2b
   clr      $2B
; l0aba:  .db $cd,$03,$ad
   jsr      $03AD
; l0abd:  .db $bc,$b0
   jmp      $B0
; l0abf:  .db $ff
   stx      ,x
; l0ac0:  .db $00,$00,$00
   brset    0, portA, $0AC3
; l0ac3:  .db $00,$00,$00
   brset    0, portA, $0AC6
; l0ac6:  .db $00,$00,$00
   brset    0, portA, $0AC9
; l0ac9:  .db $00,$00,$00
   brset    0, portA, $0ACC
; l0acc:  .db $00,$00,$00
   brset    0, portA, $0ACF
; l0acf:  .db $00,$00,$00
   brset    0, portA, $0AD2
; l0ad2:  .db $00,$00,$00
   brset    0, portA, $0AD5
; l0ad5:  .db $00,$00,$00
   brset    0, portA, $0AD8
; l0ad8:  .db $00,$00,$00
   brset    0, portA, $0ADB
; l0adb:  .db $00,$00,$00
   brset    0, portA, $0ADE
; l0ade:  .db $00,$00,$00
   brset    0, portA, $0AE1
; l0ae1:  .db $00,$00,$00
   brset    0, portA, $0AE4
; l0ae4:  .db $00,$00,$00
   brset    0, portA, $0AE7
; l0ae7:  .db $00,$00,$01
   brset    0, portA, $0AEB
; l0aea:  .db $01,$01,$01
   brclr    0, portB, $0AEE
; l0aed:  .db $01,$01,$01
   brclr    0, portB, $0AF1
; l0af0:  .db $01,$01,$01
   brclr    0, portB, $0AF4
; l0af3:  .db $01,$01,$01
   brclr    0, portB, $0AF7
; l0af6:  .db $01,$01,$01
   brclr    0, portB, $0AFA
; l0af9:  .db $01,$01,$01
   brclr    0, portB, $0AFD
; l0afc:  .db $01,$01,$01
   brclr    0, portB, $0B00
; l0aff:  .db $01,$01,$01
   brclr    0, portB, $0B03
; l0b02:  .db $01,$01,$01
   brclr    0, portB, $0B06
; l0b05:  .db $01,$01,$01
   brclr    0, portB, $0B09
; l0b08:  .db $01,$01,$01
   brclr    0, portB, $0B0C
; l0b0b:  .db $01,$01,$01
   brclr    0, portB, $0B0F
; l0b0e:  .db $01,$01,$01
   brclr    0, portB, $0B12
; l0b11:  .db $01,$01,$01
   brclr    0, portB, $0B15
; l0b14:  .db $01,$01,$01
   brclr    0, portB, $0B18
; l0b17:  .db $01,$01,$01
   brclr    0, portB, $0B1B
; l0b1a:  .db $02,$02,$02
   brset    1, portC, $0B1F
; l0b1d:  .db $02,$02,$02
   brset    1, portC, $0B22
; l0b20:  .db $02,$02,$02
   brset    1, portC, $0B25
; l0b23:  .db $02,$02,$02
   brset    1, portC, $0B28
; l0b26:  .db $02,$02,$02
   brset    1, portC, $0B2B
; l0b29:  .db $02,$02,$02
   brset    1, portC, $0B2E
; l0b2c:  .db $02,$02,$02
   brset    1, portC, $0B31
; l0b2f:  .db $02,$02,$02
   brset    1, portC, $0B34
; l0b32:  .db $02,$02,$02
   brset    1, portC, $0B37
; l0b35:  .db $02,$02,$02
   brset    1, portC, $0B3A
; l0b38:  .db $02,$02,$02
   brset    1, portC, $0B3D
; l0b3b:  .db $02,$02,$02
   brset    1, portC, $0B40
; l0b3e:  .db $02,$02,$02
   brset    1, portC, $0B43
; l0b41:  .db $02,$02,$02
   brset    1, portC, $0B46
; l0b44:  .db $02,$02,$02
   brset    1, portC, $0B49
; l0b47:  .db $02,$02,$03
   brset    1, portC, $0B4D
; l0b4a:  .db $03,$03,$03
   brclr    1, portDdig, $0B50
; l0b4d:  .db $03,$03,$03
   brclr    1, portDdig, $0B53
; l0b50:  .db $03,$03,$03
   brclr    1, portDdig, $0B56
; l0b53:  .db $03,$03,$03
   brclr    1, portDdig, $0B59
; l0b56:  .db $03,$03,$03
   brclr    1, portDdig, $0B5C
; l0b59:  .db $03,$03,$03
   brclr    1, portDdig, $0B5F
; l0b5c:  .db $03,$03,$03
   brclr    1, portDdig, $0B62
; l0b5f:  .db $03,$00,$01
   brclr    1, portA, $0B63
; l0b62:  .db $0b,$0f,$1a
   brclr    5, $0F, $0B7F
; l0b65:  .db $24,$30
   bcc      $0B97
; l0b67:  .db $37,$3c
   asr      $3C
; l0b69:  .db $40
   nega     
; l0b6a:  .db $44
   lsra     
; l0b6b:  .db $4a
   deca     
; l0b6c:  .db $4f
   clra     
; l0b6d:  .db $54
   lsrx     
; l0b6e:  .db $56
   rorx     
; l0b6f:  .db $5b
;   ???      
 .db $5b
; l0b70:  .db $5d
   tstx     
; l0b71:  .db $64,$69
   lsr      $69,x
; l0b73:  .db $6e
;   ???      
 .db $6e
; l0b74:  .db $76
   ror      ,x
; l0b75:  .db $7a
   dec      ,x
; l0b76:  .db $80
   rti      
; l0b77:  .db $87
;   ???      
 .db $87
; l0b78:  .db $8a
;   ???      
 .db $8a
; l0b79:  .db $94
;   ???      
 .db $94
; l0b7a:  .db $9b
   sei      
; l0b7b:  .db $a5,$af
   bit      #$AF
; l0b7d:  .db $b2,$b6
   sbc      $B6
; l0b7f:  .db $b9,$c1
   adc      $C1
; l0b81:  .db $cb,$d1,$d9
   add      $D1D9
; l0b84:  .db $de,$e3,$eb
   ldx      $E3EB,x
; l0b87:  .db $f2
   sbc      ,x
; l0b88:  .db $fa
   ora      ,x
; l0b89:  .db $00,$06,$09
   brset    0, DDRC, $0B95
; l0b8c:  .db $0f,$12,$17
   brclr    7, $12, $0BA6
; l0b8f:  .db $1c,$22
   bset     6, $22
; l0b91:  .db $27,$2e
   beq      $0BC1
; l0b93:  .db $35
;   ???      
 .db $35
; l0b94:  .db $3c,$40
   inc      ram4x
; l0b96:  .db $44
   lsra     
; l0b97:  .db $48
   lsla     
; l0b98:  .db $4e
;   ???      
 .db $4e
; l0b99:  .db $54
   lsrx     
; l0b9a:  .db $5c
   incx     
; l0b9b:  .db $65
;   ???      
 .db $65
; l0b9c:  .db $69,$6b
   rol      $6B,x
; l0b9e:  .db $6f,$72
   clr      $72,x
; l0ba0:  .db $73
   com      ,x
; l0ba1:  .db $78
   lsl      ,x
; l0ba2:  .db $80
   rti      
; l0ba3:  .db $85
;   ???      
 .db $85
; l0ba4:  .db $8a
;   ???      
 .db $8a
; l0ba5:  .db $8f
   wait     
; l0ba6:  .db $95
;   ???      
 .db $95
; l0ba7:  .db $9c
   rsp      
; l0ba8:  .db $a2,$a7
   sbc      #$A7
; l0baa:  .db $ab,$b0
   add      #$B0
; l0bac:  .db $b6,$b9
   lda      $B9
; l0bae:  .db $c1,$c6,$cc
   cmp      $C6CC
; l0bb1:  .db $d0,$d6,$db
   sub      $D6DB,x
; l0bb4:  .db $e2,$e9
   sbc      $E9,x
; l0bb6:  .db $ed,$f1
   jsr      $F1,x
; l0bb8:  .db $f8
   eor      ,x
; l0bb9:  .db $fc
   jmp      ,x
; l0bba:  .db $00,$04,$0a
   brset    0, DDRA, $0BC7
; l0bbd:  .db $0e,$14,$18
   brset    7, $14, $0BD8
; l0bc0:  .db $22,$23
   bhi      $0BE5
; l0bc2:  .db $28,$2b
   bhcc     $0BEF
; l0bc4:  .db $2e,$30
   bil      $0BF6
; l0bc6:  .db $35
;   ???      
 .db $35
; l0bc7:  .db $3a,$3f
   dec      $3F
; l0bc9:  .db $43
   coma     
; l0bca:  .db $49
   rola     
; l0bcb:  .db $4f
   clra     
; l0bcc:  .db $56
   rorx     
; l0bcd:  .db $5b
;   ???      
 .db $5b
; l0bce:  .db $60,$67
   neg      $67,x
; l0bd0:  .db $6e
;   ???      
 .db $6e
; l0bd1:  .db $70
   neg      ,x
; l0bd2:  .db $75
;   ???      
 .db $75
; l0bd3:  .db $79
   rol      ,x
; l0bd4:  .db $7f
   clr      ,x
; l0bd5:  .db $85
;   ???      
 .db $85
; l0bd6:  .db $8c
;   ???      
 .db $8c
; l0bd7:  .db $93
;   ???      
 .db $93
; l0bd8:  .db $99
   sec      
; l0bd9:  .db $9e
;   ???      
 .db $9e
; l0bda:  .db $a5,$a9
   bit      #$A9
; l0bdc:  .db $b1,$b8
   cmp      $B8
; l0bde:  .db $be,$c5
   ldx      $C5
; l0be0:  .db $ca,$d2,$d8
   ora      $D2D8
; l0be3:  .db $df,$e5,$e9
   stx      $E5E9,x
; l0be6:  .db $ee,$f2
   ldx      $F2,x
; l0be8:  .db $f7
   sta      ,x
; l0be9:  .db $00,$02,$06
   brset    0, portC, $0BF2
; l0bec:  .db $0b,$0f,$12
   brclr    5, $0F, $0C01
; l0bef:  .db $1a,$20
   bset     5, ram2x
; l0bf1:  .db $27,$2c
   beq      $0C1F
; l0bf3:  .db $30,$37
   neg      $37
; l0bf5:  .db $3c,$41
   inc      $41
; l0bf7:  .db $48
   lsla     
; l0bf8:  .db $4e
;   ???      
 .db $4e
; l0bf9:  .db $52
;   ???      
 .db $52
; l0bfa:  .db $57
   asrx     
; l0bfb:  .db $5a
   decx     
; l0bfc:  .db $5f
   clrx     
; l0bfd:  .db $63,$68
   com      $68,x
; l0bff:  .db $6c,$e0
   inc      $E0,x
; l0c01:  .db $11,$39
   bclr     0, $39
; l0c03:  .db $2a,$19
   bpl      $0C1E
; l0c05:  .db $14,$1f
   bset     2, $1F
; l0c07:  .db $3f,$3c
   clr      $3C
; l0c09:  .db $2b,$9c
   bmi      $0BA7
; l0c0b:  .db $15,$1f
   bclr     2, $1F
; l0c0d:  .db $37,$bd
   asr      $BD
; l0c0f:  .db $03,$4b,$3b
   brclr    1, $4B, $0C4D
; l0c12:  .db $39,$3f
   rol      $3F
; l0c14:  .db $3d,$4d
   tst      $4D
; l0c16:  .db $0d,$1d,$1f
   brclr    6, $1D, $0C38
; l0c19:  .db $99
   sec      
; l0c1a:  .db $03,$3a,$4b
   brclr    1, $3A, $0C68
; l0c1d:  .db $1c,$0d
   bset     6, $0D
; l0c1f:  .db $3e
;   ???      
 .db $3e
; l0c20:  .db $4d
   tsta     
; l0c21:  .db $2e,$2f
   bil      $0C52
; l0c23:  .db $a9,$02
   adc      #$02
; l0c25:  .db $4e
;   ???      
 .db $4e
; l0c26:  .db $26,$1e
   bne      $0C46
; l0c28:  .db $1d,$2d
   bclr     6, $2D
; l0c2a:  .db $2e,$23
   bil      $0C4F
; l0c2c:  .db $2a,$3a
   bpl      $0C68
; l0c2e:  .db $3b
;   ???      
 .db $3b
; l0c2f:  .db $ab,$43
   add      #$43
; l0c31:  .db $19,$0b
   bclr     4, $0B
; l0c33:  .db $2e,$1f
   bil      $0C54
; l0c35:  .db $0d,$c9,$14
   brclr    6, $C9, $0C4C
; l0c38:  .db $2f,$1f
   bih      $0C59
; l0c3a:  .db $1e,$ae
   bset     7, $AE
; l0c3c:  .db $31
;   ???      
 .db $31
; l0c3d:  .db $29,$1e
   bhcs     $0C5D
; l0c3f:  .db $bf,$11
   stx      $11
; l0c41:  .db $29,$3e
   bhcs     $0C81
; l0c43:  .db $9f
   txa      
; l0c44:  .db $02,$4e,$42
   brset    1, $4E, $0C89
; l0c47:  .db $0e,$27,$a9
   brset    7, $27, $0BF3
; l0c4a:  .db $22,$2e
   bhi      $0C7A
; l0c4c:  .db $2c,$0c
   bmc      $0C5A
; l0c4e:  .db $cc,$10,$2b
   jmp      $102B
; l0c51:  .db $1b,$1a
   bclr     5, $1A
; l0c53:  .db $aa,$04
   ora      #$04
; l0c55:  .db $cc,$11,$29
   jmp      $1129
; l0c58:  .db $2a,$1a
   bpl      $0C74
; l0c5a:  .db $99
   sec      
; l0c5b:  .db $02,$ce,$02
   brset    1, $CE, $0C60
; l0c5e:  .db $0e,$3f,$4a
   brset    7, $3F, $0CAB
; l0c61:  .db $19,$0a
   bclr     4, unusedSpace0A
; l0c63:  .db $ce,$11,$39
   ldx      $1139
; l0c66:  .db $29,$2f
   bhcs     $0C97
; l0c68:  .db $9e
;   ???      
 .db $9e
; l0c69:  .db $06,$3f,$4d
   brset    3, $3F, $0CB9
; l0c6c:  .db $09,$c9,$06
   brclr    4, $C9, $0C75
; l0c6f:  .db $3f,$4d
   clr      $4D
; l0c71:  .db $2c,$3c
   bmc      $0CAF
; l0c73:  .db $4a
   deca     
; l0c74:  .db $19,$8a
   bclr     4, $8A
; l0c76:  .db $31
;   ???      
 .db $31
; l0c77:  .db $3f,$0b
   clr      $0B
; l0c79:  .db $cb,$02,$39
   add      $0239
; l0c7c:  .db $4c
   inca     
; l0c7d:  .db $0d,$0f,$cf
   brclr    6, $0F, $0C4F
; l0c80:  .db $04,$3d,$4a
   brset    2, $3D, $0CCD
; l0c83:  .db $19,$0e
   bclr     4, $0E
; l0c85:  .db $3f,$ce
   clr      $CE
; l0c87:  .db $01,$4f,$8f
   brclr    0, $4F, $0C19
; l0c8a:  .db $11,$0b
   bclr     0, $0B
; l0c8c:  .db $1c,$0e
   bset     6, $0E
; l0c8e:  .db $3f,$4d
   clr      $4D
; l0c90:  .db $1c,$3c
   bset     6, $3C
; l0c92:  .db $4a
   deca     
; l0c93:  .db $99
   sec      
; l0c94:  .db $02,$39,$4e
   brset    1, $39, $0CE5
; l0c97:  .db $1f,$0d
   bclr     7, $0D
; l0c99:  .db $3c,$cd
   inc      $CD
; l0c9b:  .db $33,$2b
   com      $2B
; l0c9d:  .db $2a,$3a
   bpl      $0CD9
; l0c9f:  .db $3b
;   ???      
 .db $3b
; l0ca0:  .db $35
;   ???      
 .db $35
; l0ca1:  .db $3e
;   ???      
 .db $3e
; l0ca2:  .db $2e,$2d
   bil      $0CD1
; l0ca4:  .db $bd,$20
   jsr      ram2x
; l0ca6:  .db $3b
;   ???      
 .db $3b
; l0ca7:  .db $2b,$2a
   bmi      $0CD3
; l0ca9:  .db $3a,$35
   dec      $35
; l0cab:  .db $3e
;   ???      
 .db $3e
; l0cac:  .db $2e,$2d
   bil      $0CDB
; l0cae:  .db $bd,$41
   jsr      $41
; l0cb0:  .db $1c,$cf
   bset     6, $CF
; l0cb2:  .db $45
;   ???      
 .db $45
; l0cb3:  .db $0d,$03,$cb
   brclr    6, portDdig, $0C81
; l0cb6:  .db $01,$3c,$8f
   brclr    0, $3C, $0C48
; l0cb9:  .db $21,$2a
   brn      $0CE5
; l0cbb:  .db $23,$2c
   bls      $0CE9
; l0cbd:  .db $3c,$4e
   inc      $4E
; l0cbf:  .db $1f,$8d
   bclr     7, $8D
; l0cc1:  .db $33,$3d
   com      $3D
; l0cc3:  .db $2d,$1b
   bms      $0CE0
; l0cc5:  .db $2a,$4b
   bpl      $0D12
; l0cc7:  .db $4e
;   ???      
 .db $4e
; l0cc8:  .db $1f,$0a
   bclr     7, unusedSpace0A
; l0cca:  .db $c9,$01,$0d
   adc      $010D
; l0ccd:  .db $2f,$49
   bih      $0D18
; l0ccf:  .db $4c
   inca     
; l0cd0:  .db $8c
;   ???      
 .db $8c
; l0cd1:  .db $01,$0f,$3f
   brclr    0, $0F, $0D13
; l0cd4:  .db $4d
   tsta     
; l0cd5:  .db $0c,$3c,$4a
   brset    6, $3C, $0D22
; l0cd8:  .db $89
;   ???      
 .db $89
; l0cd9:  .db $42
   mul      
; l0cda:  .db $19,$0e
   bclr     4, $0E
; l0cdc:  .db $3f,$ce
   clr      $CE
; l0cde:  .db $01,$0f,$3f
   brclr    0, $0F, $0D20
; l0ce1:  .db $4a
   deca     
; l0ce2:  .db $89
;   ???      
 .db $89
; l0ce3:  .db $01,$49,$09
   brclr    0, $49, $0CEF
; l0ce6:  .db $0c,$3c,$0c
   brset    6, $3C, $0CF5
; l0ce9:  .db $0f,$cf,$21
   brclr    7, $CF, $0D0D
; l0cec:  .db $01,$0c,$3c
   brclr    0, $0C, $0D2B
; l0cef:  .db $0c,$0f,$cf
   brset    6, $0F, $0CC1
; l0cf2:  .db $46
   rora     
; l0cf3:  .db $1f,$0a
   bclr     7, unusedSpace0A
; l0cf5:  .db $39,$4c
   rol      $4C
; l0cf7:  .db $2c,$4c
   bmc      $0D45
; l0cf9:  .db $c9,$01,$0f
   adc      $010F
; l0cfc:  .db $0c,$4c,$4f
   brset    6, $4C, $0D4E
; l0cff:  .db $c9,$11,$39
   adc      $1139
; l0d02:  .db $29,$2f
   bhcs     $0D33
; l0d04:  .db $1f,$bf
   bclr     7, $BF
; l0d06:  .db $02,$29,$bf
   brset    1, $29, $0CC8
; l0d09:  .db $01,$0f,$0b
   brclr    0, $0F, $0D17
; l0d0c:  .db $4f
   clra     
; l0d0d:  .db $14,$c9
   bset     2, $C9
; l0d0f:  .db $07,$09,$c9
   brclr    3, timerCtrl, $0CDB
; l0d12:  .db $01,$0f,$2d
   brclr    0, $0F, $0D42
; l0d15:  .db $4f
   clra     
; l0d16:  .db $c9,$01,$0f
   adc      $010F
; l0d19:  .db $0e,$49,$cf
   brset    7, $49, $0CEB
; l0d1c:  .db $02,$0e,$3f
   brset    1, $0E, $0D5E
; l0d1f:  .db $4a
   deca     
; l0d20:  .db $19,$8a
   bclr     4, $8A
; l0d22:  .db $01,$0f,$3f
   brclr    0, $0F, $0D64
; l0d25:  .db $4d
   tsta     
; l0d26:  .db $8c
;   ???      
 .db $8c
; l0d27:  .db $23,$49
   bls      $0D72
; l0d29:  .db $4e
;   ???      
 .db $4e
; l0d2a:  .db $1f,$0a
   bclr     7, unusedSpace0A
; l0d2c:  .db $39,$ca
   rol      $CA
; l0d2e:  .db $01,$0f,$3f
   brclr    0, $0F, $0D70
; l0d31:  .db $4d
   tsta     
; l0d32:  .db $0c,$1c,$c9
   brset    6, $1C, $0CFE
; l0d35:  .db $02,$39,$4b
   brset    1, $39, $0D83
; l0d38:  .db $1c,$0e
   bset     6, $0E
; l0d3a:  .db $3f,$ce
   clr      $CE
; l0d3c:  .db $21,$2f
   brn      $0D6D
; l0d3e:  .db $0f,$cf,$07
   brclr    7, $CF, $0D48
; l0d41:  .db $09,$49,$cf
   brclr    4, $49, $0D13
; l0d44:  .db $07,$0b,$29
   brclr    3, $0B, $0D70
; l0d47:  .db $cf,$07,$09
   stx      $0709
; l0d4a:  .db $2c,$2b
   bmc      $0D77
; l0d4c:  .db $49
   rola     
; l0d4d:  .db $cf,$01,$0a
   stx      $010A
; l0d50:  .db $4f
   clra     
; l0d51:  .db $07,$0e,$c9
   brclr    3, $0E, $0D1D
; l0d54:  .db $07,$2d,$47
   brclr    3, $2D, $0D9E
; l0d57:  .db $a9,$00
   adc      #$00
; l0d59:  .db $00,$00,$00
   brset    0, portA, $0D5C
; l0d5c:  .db $07,$3f,$4e
   brclr    3, $3F, $0DAD
; l0d5f:  .db $2c,$1d
   bmc      $0D7E
; l0d61:  .db $3b
;   ???      
 .db $3b
; l0d62:  .db $2c,$0a
   bmc      $0D6E
; l0d64:  .db $c9,$31,$19
   adc      $3119
; l0d67:  .db $1f,$bf
   bclr     7, $BF
; l0d69:  .db $06,$ca,$11
   brset    3, $CA, $0D7D
; l0d6c:  .db $39,$3f
   rol      $3F
; l0d6e:  .db $9f
   txa      
; l0d6f:  .db $04,$2e,$cc
   brset    2, $2E, $0D3E
; l0d72:  .db $e8,$34
   eor      $34,x
; l0d74:  .db $2f,$3f
   bih      $0DB5
; l0d76:  .db $3e
;   ???      
 .db $3e
; l0d77:  .db $ae,$15
   ldx      #$15
; l0d79:  .db $2d,$3a
   bms      $0DB5
; l0d7b:  .db $19,$0b
   bclr     4, $0B
; l0d7d:  .db $2c,$3a
   bmc      $0DB9
; l0d7f:  .db $c9,$07,$09
   adc      $0709
; l0d82:  .db $29,$3c
   bhcs     $0DC0
; l0d84:  .db $8d
;   ???      
 .db $8d
; l0d85:  .db $34,$1d
   lsr      $1D
; l0d87:  .db $0a,$29,$ba
   brset    5, $29, $0D44
; l0d8a:  .db $37,$39
   asr      $39
; l0d8c:  .db $19,$0c
   bclr     4, $0C
; l0d8e:  .db $bd,$03
   jsr      portDdig
; l0d90:  .db $3b
;   ???      
 .db $3b
; l0d91:  .db $3c,$1d
   inc      $1D
; l0d93:  .db $0a,$b9,$21
   brset    5, $B9, $0DB7
; l0d96:  .db $2c,$3c
   bmc      $0DD4
; l0d98:  .db $1c,$2c
   bset     6, $2C
; l0d9a:  .db $2f,$bf
   bih      $0D5B
; l0d9c:  .db $33,$1a
   com      $1A
; l0d9e:  .db $0c,$2d,$39
   brset    6, $2D, $0DDA
; l0da1:  .db $88
;   ???      
 .db $88
; l0da2:  .db $07,$09,$0d
   brclr    3, timerCtrl, $0DB2
; l0da5:  .db $2d,$b9
   bms      $0D60
; l0da7:  .db $26,$2d
   bne      $0DD6
; l0da9:  .db $24,$a9
   bcc      $0D54
; l0dab:  .db $01,$28,$3c
   brclr    0, $28, $0DEA
; l0dae:  .db $35
;   ???      
 .db $35
; l0daf:  .db $be,$07
   ldx      portDana
; l0db1:  .db $09,$0a,$3d
   brclr    4, unusedSpace0A, $0DF1
; l0db4:  .db $1b,$b9
   bclr     5, $B9
; l0db6:  .db $27,$29
   beq      $0DE1
; l0db8:  .db $b9,$01
   adc      portB
; l0dba:  .db $0d,$0c,$1d
   brclr    6, $0C, $0DDA
; l0dbd:  .db $29,$2c
   bhcs     $0DEB
; l0dbf:  .db $3d,$c9
   tst      $C9
; l0dc1:  .db $01,$0d,$0c
   brclr    0, $0D, $0DD0
; l0dc4:  .db $2d,$b9
   bms      $0D7F
; l0dc6:  .db $34,$1d
   lsr      $1D
; l0dc8:  .db $0a,$29,$bc
   brset    5, $29, $0D87
; l0dcb:  .db $01,$0d,$2d
   brclr    0, $0D, $0DFB
; l0dce:  .db $3b
;   ???      
 .db $3b
; l0dcf:  .db $8a
;   ???      
 .db $8a
; l0dd0:  .db $32
;   ???      
 .db $32
; l0dd1:  .db $1a,$0c
   bset     5, $0C
; l0dd3:  .db $3d,$38
   tst      $38
; l0dd5:  .db $c8,$05,$1d
   eor      $051D
; l0dd8:  .db $19,$1c
   bclr     4, $1C
; l0dda:  .db $bd,$02
   jsr      portC
; l0ddc:  .db $29,$3a
   bhcs     $0E18
; l0dde:  .db $1b,$0c
   bclr     5, $0C
; l0de0:  .db $2d,$bc
   bms      $0D9E
; l0de2:  .db $05,$2d,$1d
   brclr    2, $2D, $0E02
; l0de5:  .db $1f,$19
   bclr     7, $19
; l0de7:  .db $29,$ba
   bhcs     $0DA3
; l0de9:  .db $05,$09,$39
   brclr    2, timerCtrl, $0E25
; l0dec:  .db $bd,$05
   jsr      DDRB
; l0dee:  .db $0b,$29,$cd
   brclr    5, $29, $0DBE
; l0df1:  .db $05,$0a,$19
   brclr    2, unusedSpace0A, $0E0D
; l0df4:  .db $2b,$2a
   bmi      $0E20
; l0df6:  .db $39,$cd
   rol      $CD
; l0df8:  .db $01,$4d,$05
   brclr    0, $4D, $0E00
; l0dfb:  .db $c9,$4d,$05
   adc      $4D05
; l0dfe:  .db $0c,$aa,$05
   brset    6, $AA, $0E06
; l0e01:  .db $4d
   tsta     
; l0e02:  .db $09,$c9,$31
   brclr    4, $C9, $0E36
; l0e05:  .db $2c,$1c
   bmc      $0E23
; l0e07:  .db $2c,$2e
   bmc      $0E37
; l0e09:  .db $bf,$21
   stx      $21
; l0e0b:  .db $2b,$25
   bmi      $0E32
; l0e0d:  .db $af
;   ???      
 .db $af
; l0e0e:  .db $11,$2c
   bclr     0, $2C
; l0e10:  .db $3c,$2c
   inc      $2C
; l0e12:  .db $2e,$9f
   bil      $0DB3
; l0e14:  .db $04,$1d,$3b
   brset    2, $1D, $0E52
; l0e17:  .db $cc,$01,$0f
   jmp      $010F
; l0e1a:  .db $4f
   clra     
; l0e1b:  .db $49
   rola     
; l0e1c:  .db $09,$0a,$4f
   brclr    4, unusedSpace0A, $0E6E
; l0e1f:  .db $0f,$0e,$c9
   brclr    7, $0E, $0DEB
; l0e22:  .db $e0,$11
   sub      $11,x
; l0e24:  .db $2a,$1b
   bpl      $0E41
; l0e26:  .db $0a,$99,$13
   brset    5, $99, $0E3C
; l0e29:  .db $1f,$cf
   bclr     7, $CF
; l0e2b:  .db $01,$39,$bd
   brclr    0, $39, $0DEB
; l0e2e:  .db $02,$a8,$23
   brset    1, $A8, $0E54
; l0e31:  .db $3c,$2d
   inc      $2D
; l0e33:  .db $1c,$ab
   bset     6, $AB
; l0e35:  .db $11,$4f
   bclr     0, $4F
; l0e37:  .db $0f,$05,$cd
   brclr    7, DDRB, $0E07
; l0e3a:  .db $01,$1c,$1b
   brclr    0, $1C, $0E58
; l0e3d:  .db $3d,$8d
   tst      $8D
; l0e3f:  .db $21,$2c
   brn      $0E6D
; l0e41:  .db $3d,$8b
   tst      $8B
; l0e43:  .db $11,$3c
   bclr     0, $3C
; l0e45:  .db $0c,$0b,$15
   brset    6, $0B, $0E5D
; l0e48:  .db $ac
;   ???      
 .db $ac
; l0e49:  .db $04,$4c,$2c
   brset    2, $4C, $0E78
; l0e4c:  .db $29,$09
   bhcs     $0E57
; l0e4e:  .db $c9,$01,$2d
   adc      $012D
; l0e51:  .db $2c,$3c
   bmc      $0E8F
; l0e53:  .db $0c,$2c,$a9
   brset    6, $2C, $0DFF
; l0e56:  .db $11,$1d
   bclr     0, $1D
; l0e58:  .db $04,$3c,$ab
   brset    2, $3C, $0E06
; l0e5b:  .db $01,$39,$29
   brclr    0, $39, $0E87
; l0e5e:  .db $2c,$8c
   bmc      $0DEC
; l0e60:  .db $01,$39,$3b
   brclr    0, $39, $0E9E
; l0e63:  .db $0b,$3b,$3d
   brclr    5, $3B, $0EA3
; l0e66:  .db $8d
;   ???      
 .db $8d
; l0e67:  .db $01,$19,$3d
   brclr    0, $19, $0EA7
; l0e6a:  .db $15,$1b
   bclr     2, $1B
; l0e6c:  .db $03,$8d,$04
   brclr    1, $8D, $0E73
; l0e6f:  .db $cc,$11,$2d
   jmp      $112D
; l0e72:  .db $2c,$4f
   bmc      $0EC3
; l0e74:  .db $8f
   wait     
; l0e75:  .db $21,$2d
   brn      $0EA4
; l0e77:  .db $0b,$bf,$11
   brclr    5, $BF, $0E8B
; l0e7a:  .db $4e
;   ???      
 .db $4e
; l0e7b:  .db $0e,$0c,$26
   brset    7, $0C, $0EA4
; l0e7e:  .db $af
;   ???      
 .db $af
; l0e7f:  .db $01,$49,$29
   brclr    0, $49, $0EAB
; l0e82:  .db $2e,$0e
   bil      $0E92
; l0e84:  .db $ce,$02,$3f
   ldx      $023F
; l0e87:  .db $3e
;   ???      
 .db $3e
; l0e88:  .db $4e
;   ???      
 .db $4e
; l0e89:  .db $0e,$3e,$b9
   brset    7, $3E, $0E45
; l0e8c:  .db $01,$1f,$1e
   brclr    0, $1F, $0EAD
; l0e8f:  .db $0e,$4e,$4a
   brset    7, $4E, $0EDC
; l0e92:  .db $b9,$04
   adc      DDRA
; l0e94:  .db $4c
   inca     
; l0e95:  .db $46
   rora     
; l0e96:  .db $0e,$27,$a9
   brset    7, $27, $0E42
; l0e99:  .db $05,$1f,$4f
   brclr    2, $1F, $0EEB
; l0e9c:  .db $4d
   tsta     
; l0e9d:  .db $89
;   ???      
 .db $89
; l0e9e:  .db $04,$0f,$0e
   brset    2, $0F, $0EAF
; l0ea1:  .db $4e
;   ???      
 .db $4e
; l0ea2:  .db $3e
;   ???      
 .db $3e
; l0ea3:  .db $3a,$a9
   dec      $A9
; l0ea5:  .db $01,$39,$3f
   brclr    0, $39, $0EE7
; l0ea8:  .db $8f
   wait     
; l0ea9:  .db $11,$3f
   bclr     0, $3F
; l0eab:  .db $3e
;   ???      
 .db $3e
; l0eac:  .db $4e
;   ???      
 .db $4e
; l0ead:  .db $0e,$1e,$1f
   brset    7, $1E, $0ECF
; l0eb0:  .db $9c
   rsp      
; l0eb1:  .db $01,$29,$4f
   brclr    0, $29, $0F03
; l0eb4:  .db $27,$0f
   beq      $0EC5
; l0eb6:  .db $05,$ad,$01
   brclr    2, $AD, $0EBA
; l0eb9:  .db $0a,$4f,$0f
   brset    5, $4F, $0ECB
; l0ebc:  .db $24,$c9
   bcc      $0E87
; l0ebe:  .db $34,$4e
   lsr      $4E
; l0ec0:  .db $0e,$1e,$1f
   brset    7, $1E, $0EE2
; l0ec3:  .db $1a,$c9
   bset     5, $C9
; l0ec5:  .db $06,$1c,$47
   brset    3, $1C, $0F0F
; l0ec8:  .db $4c
   inca     
; l0ec9:  .db $89
;   ???      
 .db $89
; l0eca:  .db $04,$1f,$4f
   brset    2, $1F, $0F1C
; l0ecd:  .db $4d
   tsta     
; l0ece:  .db $1d,$4d
   bclr     6, $4D
; l0ed0:  .db $4c
   inca     
; l0ed1:  .db $99
   sec      
; l0ed2:  .db $11,$2e
   bclr     0, $2E
; l0ed4:  .db $3f,$0e
   clr      $0E
; l0ed6:  .db $04,$cc,$05
   brset    2, $CC, $0EDE
; l0ed9:  .db $0f,$27,$2d
   brclr    7, $27, $0F09
; l0edc:  .db $47
   asra     
; l0edd:  .db $4c
   inca     
; l0ede:  .db $89
;   ???      
 .db $89
; l0edf:  .db $11,$2d
   bclr     0, $2D
; l0ee1:  .db $4d
   tsta     
; l0ee2:  .db $0d,$17,$bf
   brclr    6, $17, $0EA4
; l0ee5:  .db $11,$1f
   bclr     0, $1F
; l0ee7:  .db $1d,$bb
   bclr     6, $BB
; l0ee9:  .db $01,$2f,$2d
   brclr    0, $2F, $0F19
; l0eec:  .db $0d,$cd,$01
   brclr    6, $CD, $0EF0
; l0eef:  .db $49
   rola     
; l0ef0:  .db $16,$be
   bset     3, $BE
; l0ef2:  .db $01,$4f,$0f
   brclr    0, $4F, $0F04
; l0ef5:  .db $14,$c9
   bset     2, $C9
; l0ef7:  .db $26,$2f
   bne      $0F28
; l0ef9:  .db $06,$4e,$09
   brset    3, $4E, $0F05
; l0efc:  .db $21,$2c
   brn      $0F2A
; l0efe:  .db $c9,$ff,$01
   adc      $FF01
; l0f01:  .db $cf,$01,$0c
   stx      $010C
; l0f04:  .db $27,$c9
   beq      $0ECF
; l0f06:  .db $45
;   ???      
 .db $45
; l0f07:  .db $0d,$0f,$0a
   brclr    6, $0F, $0F14
; l0f0a:  .db $c9,$01,$19
   adc      $0119
; l0f0d:  .db $4f
   clra     
; l0f0e:  .db $8f
   wait     
; l0f0f:  .db $06,$1f,$c9
   brset    3, $1F, $0EDB
; l0f12:  .db $21,$2f
   brn      $0F43
; l0f14:  .db $46
   rora     
; l0f15:  .db $0e,$14,$09
   brset    7, $14, $0F21
; l0f18:  .db $34,$c9
   lsr      $C9
; l0f1a:  .db $07,$4f,$4d
   brclr    3, $4F, $0F6A
; l0f1d:  .db $1a,$0b
   bset     5, $0B
; l0f1f:  .db $a9,$16
   adc      #$16
; l0f21:  .db $3e
;   ???      
 .db $3e
; l0f22:  .db $34,$1c
   lsr      $1C
; l0f24:  .db $02,$3a,$c9
   brset    1, $3A, $0EF0
; l0f27:  .db $47
   asra     
; l0f28:  .db $0a,$4a,$4b
   brset    5, $4A, $0F76
; l0f2b:  .db $c9,$01,$4f
   adc      $014F
; l0f2e:  .db $14,$ba
   bset     2, $BA
; l0f30:  .db $07,$4f,$44
   brclr    3, $4F, $0F77
; l0f33:  .db $0c,$27,$29
   brset    6, $27, $0F5F
; l0f36:  .db $c9,$06,$4e
   adc      $064E
; l0f39:  .db $2c,$17
   bmc      $0F52
; l0f3b:  .db $99
   sec      
; l0f3c:  .db $01,$49,$39
   brclr    0, $49, $0F78
; l0f3f:  .db $3f,$9f
   clr      $9F
; l0f41:  .db $01,$49,$4c
   brclr    0, $49, $0F90
; l0f44:  .db $0c,$4c,$4f
   brset    6, $4C, $0F96
; l0f47:  .db $8f
   wait     
; l0f48:  .db $01,$19,$4d
   brclr    0, $19, $0F98
; l0f4b:  .db $0d,$07,$cf
   brclr    6, portDana, $0F1D
; l0f4e:  .db $11,$3f
   bclr     0, $3F
; l0f50:  .db $07,$8c,$01
   brclr    3, $8C, $0F54
; l0f53:  .db $0f,$27,$29
   brclr    7, $27, $0F7F
; l0f56:  .db $cb,$07,$09
   add      $0709
; l0f59:  .db $bc,$01
   jmp      portB
; l0f5b:  .db $0f,$3f,$39
   brclr    7, $3F, $0F97
; l0f5e:  .db $89
;   ???      
 .db $89
; l0f5f:  .db $11,$4f
   bclr     0, $4F
; l0f61:  .db $0f,$8d,$01
   brclr    7, $8D, $0F65
; l0f64:  .db $29,$4f
   bhcs     $0FB5
; l0f66:  .db $25,$8d
   bcs      $0EF5
; l0f68:  .db $06,$1c,$27
   brset    3, $1C, $0F92
; l0f6b:  .db $bd,$06
   jsr      DDRC
; l0f6d:  .db $1f,$2e
   bclr     7, $2E
; l0f6f:  .db $1d,$8e
   bclr     6, $8E
; l0f71:  .db $48
   lsla     
; l0f72:  .db $4c
   inca     
; l0f73:  .db $0c,$08,$48
   brset    6, timerData, $0FBE
; l0f76:  .db $4c
   inca     
; l0f77:  .db $0c,$08,$c8
   brset    6, timerData, $0F42
; l0f7a:  .db $ff
   stx      ,x
; l0f7b:  .db $ff
   stx      ,x
; l0f7c:  .db $ff
   stx      ,x
; l0f7d:  .db $ff
   stx      ,x
; l0f7e:  .db $ff
   stx      ,x
; l0f7f:  .db $ff
   stx      ,x
; l0f80:  .db $9c
   rsp      
; l0f81:  .db $33,$02
   com      portC
; l0f83:  .db $26,$fe
   bne      $0F83
; l0f85:  .db $a6,$ff
   lda      #$FF
; l0f87:  .db $b7,$06
   sta      DDRC
; l0f89:  .db $3f,$09
   clr      timerCtrl
; l0f8b:  .db $83
   swi      
; l0f8c:  .db $ae,$01
   ldx      #$01
; l0f8e:  .db $a6,$f0
   lda      #$F0
; l0f90:  .db $ad,$49
   bsr      $0FDB
; l0f92:  .db $a9,$ba
   adc      #$BA
; l0f94:  .db $ad,$45
   bsr      $0FDB
; l0f96:  .db $5a
   decx     
; l0f97:  .db $27,$f5
   beq      $0F8E
; l0f99:  .db $4f
   clra     
; l0f9a:  .db $83
   swi      
; l0f9b:  .db $ae,$20
   ldx      #$20
; l0f9d:  .db $f7
   sta      ,x
; l0f9e:  .db $46
   rora     
; l0f9f:  .db $5c
   incx     
; l0fa0:  .db $26,$fb
   bne      $0F9D
; l0fa2:  .db $46
   rora     
; l0fa3:  .db $ae,$20
   ldx      #$20
; l0fa5:  .db $f8
   eor      ,x
; l0fa6:  .db $26,$fe
   bne      $0FA6
; l0fa8:  .db $f6
   lda      ,x
; l0fa9:  .db $46
   rora     
; l0faa:  .db $5c
   incx     
; l0fab:  .db $2a,$f8
   bpl      $0FA5
; l0fad:  .db $46
   rora     
; l0fae:  .db $46
   rora     
; l0faf:  .db $24,$ea
   bcc      $0F9B
; l0fb1:  .db $83
   swi      
; l0fb2:  .db $ae,$c8
   ldx      #$C8
; l0fb4:  .db $bf,$27
   stx      $27
; l0fb6:  .db $ae,$81
   ldx      #$81
; l0fb8:  .db $bf,$2a
   stx      $2A
; l0fba:  .db $4f
   clra     
; l0fbb:  .db $bd,$27
   jsr      $27
; l0fbd:  .db $3c,$29
   inc      $29
; l0fbf:  .db $26,$fa
   bne      $0FBB
; l0fc1:  .db $3c,$28
   inc      $28
; l0fc3:  .db $09,$28,$f5
   brclr    4, $28, $0FBB
; l0fc6:  .db $43
   coma     
; l0fc7:  .db $26,$fe
   bne      $0FC7
; l0fc9:  .db $83
   swi      
; l0fca:  .db $9a
   cli      
; l0fcb:  .db $9b
   sei      
; l0fcc:  .db $2c,$fe
   bmc      $0FCC
; l0fce:  .db $b0,$7c
   sub      $7C
; l0fd0:  .db $26,$fe
   bne      $0FD0
; l0fd2:  .db $b3,$7d
   cpx      $7D
; l0fd4:  .db $26,$fe
   bne      $0FD4
; l0fd6:  .db $0b,$32,$fd
   brclr    5, $32, $0FD6
; l0fd9:  .db $20,$ae
   bra      $0F89
; l0fdb:  .db $e7,$04
   sta      DDRA,x
; l0fdd:  .db $a6,$55
   lda      #$55
; l0fdf:  .db $f7
   sta      ,x
; l0fe0:  .db $f1
   cmp      ,x
; l0fe1:  .db $26,$fe
   bne      $0FE1
; l0fe3:  .db $48
   lsla     
; l0fe4:  .db $2b,$f9
   bmi      $0FDF
; l0fe6:  .db $81
   rts      
; l0fe7:  .db $3c,$02
   inc      portC
; l0fe9:  .db $80
   rti      
; l0fea:  .db $1f,$09
   bclr     7, timerCtrl
; l0fec:  .db $37,$32
   asr      $32
; l0fee:  .db $80
   rti      
; l0fef:  .db $21,$0f
   brn      $1000
; l0ff1:  .db $ea,$0f
   ora      $0F,x
; l0ff3:  .db $ec,$0f
   jmp      $0F,x
; l0ff5:  .db $e7,$0f
   sta      $0F,x
; l0ff7:  .db $80
   rti      
timerVec:
;   0FF8:    
 .DW timerInt
hwVec:
;   0FFA:    
 .DW hwInt
swVev:
;   0FFC:    
 .DW swInt
rstVec:
;   0FFE:    
 .DW rstInt
