; dumped by HoverEel
.org 0x0000,0xFF
  jmp main

.org 0x0100,0xFF
main:
  mov r2,#$0           ;unsent chars
  mov r0,#$10          ;read pointer
  mov r1,#$10          ;write pointer
idle:
  anl p2,#$DF          ;P25=0
mainLoop:
  in a,p2
  jb4 readChar
  mov a,r2
  jz idle
  in a,p2              ;P27?mainLoop
  jb7 mainLoop
  in a,p2
  jb4 readChar
  mov a,r1
  jb6 writeBuffLoopback
  jmp writeChar
writeBuffLoopback:
  mov r1,#$10          
writeChar:
  in a,p2
  jb4 readChar
  mov a,@r1            ;P1=data
  outl p1,a
  in a,p2
  jb4 readChar
  anl p2,#$BF          ;P26=0
  orl p2,#$40          ;P26=1
  dec r2
  inc r1
  jmp mainLoop
  
readChar:
  call delay_7
  in a,p2
  jb4 p24_stillset
  jmp wait_p24_clear  
p24_stillset:
  call delay_F
  in a,p2             ;P24 is data bit
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5           ;r5 stores the data, lsb is the first received
  rrc a
  mov r5,a
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  nop
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  nop
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  nop
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  mov a,r2          ;max 37 received chars
  add a,#$DB        
  jc wait_p24_clear
  inc r2
  mov a,r5
  xrl a,#$FF         ;cpl
  mov @r0,a          
  orl p2,#$20        ;P25=1
  inc r0
  mov a,r0
  jb6 readBuffLoopback     
  jmp wait_p24_clear
readBuffLoopback:          
  mov r0,#$10        
wait_p24_clear:
  in a,p2
  jb4 wait_p24_clear
  jmp mainLoop

delay_D:
  mov a,#$D
loop_D:
  dec a
  jnz loop_D
  nop
  nop
  ret
  
delay_F:
  mov a,#$F
loop_F:
  dec a
  jnz loop_F
  nop
  ret
  
delay_7:
  mov a,#$7
loop_7:
  dec a
  jnz loop_7
  ret

.org 0x0800,0xFF
  jmp main

.org 0x0900,0xFF
  mov r2,#$0
  mov r0,#$10
  mov r1,#$10
label_0906:
  anl p2,#$DF
label_0908:
  in a,p2
  jb4 label_092b
  mov a,r2
  jz label_0906
  in a,p2
  jb7 label_0908
  in a,p2
  jb4 label_092b
  mov a,r1
  jb6 writeBuffLoopback+0x800
  jmp writeChar
label_0919:
  mov r1,#$10
  in a,p2
  jb4 label_092b
  mov a,@r1
  outl p1,a
  in a,p2
  jb4 label_092b
  anl p2,#$BF
  orl p2,#$40
  dec r2
  inc r1
  jmp mainLoop
label_092b:
  call delay_7
  in a,p2
  jb4 label_0932
  jmp wait_p24_clear
label_0932:
  call delay_F
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  nop
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  nop
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  nop
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  call delay_D
  in a,p2
  rlc a
  rlc a
  rlc a
  rlc a
  mov a,r5
  rrc a
  mov r5,a
  mov a,r2
  add a,#$DB
  jc label_0999
  inc r2
  mov a,r5
  xrl a,#$FF
  mov @r0,a
  orl p2,#$20
  inc r0
  mov a,r0
  jb6 label_0997
  jmp wait_p24_clear
label_0997:
  mov r0,#$10
label_0999:
  in a,p2
  jb4 label_0999
  jmp mainLoop
  mov a,#$D
label_09a0:
  dec a
  jnz label_09a0
  nop
  nop
  ret
  mov a,#$F
label_09a8:
  dec a
  jnz label_09a8
  nop
  ret
  mov a,#$7
label_09af:
  dec a
  jnz label_09af
  ret

.org 0x1000,0xFF
