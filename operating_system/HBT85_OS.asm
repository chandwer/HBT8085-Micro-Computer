;<HBT-8085 OS>

;***************************
;* LINE STATUS TEST STATES *
;***************************
;Uart transmitter LSR state
;mvi a, 00100000b ;THR empty
;mvi a, 00000000b ;THR full

;mvi a, 00100001b ;RBR data available
;mvi a, 00100000b ;RBR empty

;sta 0f00dh ;LSR location


;Real Program Starts Here
jmp main

;DATA
input: equ 08000h
;Welcome Message
welcome_msg: db 48h,48h,20h,20h,20h,
20h,48h,48h,20h,42h,42h,42h,42h,42h,42h,20h,20h,20h,54h,54h,54h,54h,54h,54h,54h,54h,54h,54h,20h,20h,20h,20h,20h,20h,38h,38h,38h,38h,38h,20h,20h,35h,35h,35h,35h,35h,35h,35h,0dh,48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,20h,20h,20h,20h,42h,42h,20h,20h,20h,20h,20h,54h,54h,20h,20h,20h,20h,20h,20h,20h,20h,20h,38h,38h,20h,20h,20h,38h,38h,20h,35h,35h,0dh,48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,20h,20h,20h,20h,42h,42h,20h,20h,20h,20h,20h,54h,54h,20h,20h,20h,20h,20h,20h,20h,20h,20h,38h,38h,20h,20h,20h,38h,38h,20h,35h,35h,0dh,48h,48h,48h,48h,48h,48h,48h,48h,20h,42h,42h,42h,42h,42h,42h,42h,42h,20h,20h,20h,20h,20h,54h,54h,20h,20h,3dh,3dh,3dh,3dh,3dh,3dh,20h,20h,38h,38h,38h,38h,38h,20h,20h,35h,35h,35h,35h,35h,35h,35h,0dh,48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,20h,20h,20h,20h,42h,42h,20h,20h,20h,20h,20h,54h,54h,20h,20h,3dh,3dh,3dh,3dh,3dh,3dh,20h,38h,38h,20h,20h,20h,38h,38h,20h,20h,20h,20h,20h,20h,35h,35h,0dh,48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,20h,20h,20h,20h,42h,42h,20h,20h,20h,20h,20h,54h,54h,20h,20h,20h,20h,20h,20h,20h,20h,20h,38h,38h,20h,20h,20h,38h,38h,20h,20h,20h,20h,20h,20h,35h,35h,0dh,48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,42h,42h,42h,42h,42h,20h,20h,20h,20h,20h,20h,54h,54h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,38h,38h,38h,38h,38h,20h,20h,35h,35h,35h,35h,35h,35h,35h,0dh,0dh,49h,6eh,74h,65h,6ch,20h,38h,30h,38h,35h,20h,40h,20h,7eh,33h,4dh,48h,7ah,0dh,33h,32h,6bh,20h,45h,45h,2dh,50h,52h,4fh,4dh,0dh,32h,38h,6bh,20h,4eh,56h,2dh,52h,41h,4dh,0dh,0dh,68h,6fh,6dh,65h,62h,72h,65h,77h,74h,65h,63h,68h,6eh,6fh,6ch,6fh,67h,79h,2eh,6fh,72h,67h,0dh,48h,61h,63h,6bh,69h,6eh,67h,20h,6ch,69h,6bh,65h,20h,69h,74h,73h,20h,31h,39h,37h,39h,2eh,0dh,0dh,52h,65h,61h,64h,79h,2eh,2eh,2eh,0dh,0dh,00h

;Invalid error message
invalid_msg: db 43h,6fh,6dh,6dh,61h,6eh,64h,20h,6eh,6fh,74h,20h,66h,6fh,75h,6eh,64h,0dh,00h

;CODE
main: lxi sp, 0efffh 		;start stack end of RAM
call init_uart			;initialize 16C550 UART

lxi h, welcome_msg		;load message addr. in HL reg.
call print			;print welcome message

run: lxi b, input		;set location for command input
call stdin			;get user's command
lxi h, input			;set location back to cmd input start
call command			;find and execute users command
hlt

;****************************
; UART DRIVERS & STD IN/OUT *
;****************************

;16C550 UART Driver Data

uart_line_control: equ 0f00bh
uart_divisor_lsb: equ 0f008h
uart_divisor_msb: equ 0f009h

uart_fifo_control: equ 0f00ah
uart_line_status:  equ 0f00dh

;Refrences user's command, at HL location, with refrence at DE location
;Command name ends with CR, next byte is associated #. 
;Entire reference string ends with 0x00, which denotes CMD not found.
;Ex: TXTEDIT CR 0x01
;1) TXTEDIT, 2) INFO
progs: db 54h,58h,54h,45h,44h,49h,54h,0dh,01h, 49h,4eh,46h,4fh,0dh,02h,00h
command: lxi d, progs		;set mem location of cmd reference
compare_cmd: ldax d		;load current byte of progs ref into accumulator
cpi 0dh				;Check for CR (meaning end reached & CMD matches)
jz found_cmd			;Match found
cpi 00h				;Check for null termination
jz invalid_cmd			;No command found
cmp m				;compares input at HL register location with accumulator
jnz next_cmd			;If input != ref jump to next CMD
inx h				;A(DE) == HL increment HL input and...
inx d				;increment DE refrence
jmp compare_cmd
next_cmd: inx d			;increment DE refrence
ldax d				;load current byte of progs ref into accumulator
cpi 0dh				;check if CR (0dh)
jnz next_cmd			;Keep seeking until CR
inx d				;skip over CR
inx d				;skip over associated # byte
lxi h, input 			;set location back to cmd input start
jmp compare_cmd			;check next command in list
invalid_cmd: lxi h, invalid_msg	;load message addr. in HL reg.
call print			;print not found message
jmp run
found_cmd: inx d		;set next byte, past CR, for refrence number
;IF TXTEDIT
ldax d
cpi 01h
jz txtedit
;IF INFO
cpi 02h
jz info			

;Waits for new data from UART when DLAB = 0
;Reads in data and stored at BC location until carrige return
stdin: lda uart_line_status	 
ani 01h				;logic AND checks if data available on first bit
jz stdin			;loops until data is avaliable
lda 0f008h			;reads user input from reciver buffer
stax b				;stores input at BC location
sta 0f008h			;sends charecter back to terminal
cpi 0dh				;check for carrige return
jz stdinret			;end if CR found
inx  b
jmp stdin
stdinret: mvi a, 00h
stax b				;null terminate CR
ret

;writes data to UART when DLAB = 0
print: lda uart_line_status
ani 20h				;checks line status to see if transmit buffer is full
jz print
mov a, m			;load acumulator with charecter 
cpi 00h				;check for null termination
jz prntdone
sta 0f008h			;store in UART output
inx h				;increments HL
jmp print
prntdone: ret

;Initialize 16C550 uart
init_uart: mvi a, 83h
sta uart_line_control 		;set DLAB to 1 to access divider
mvi a, 14h
sta uart_divisor_lsb 		;divides 3.072 MHz input for 9600 baud
mvi a, 00h
sta uart_divisor_msb

mvi a, 07h
sta uart_fifo_control 		;init fifo and clear all buffers
mvi a, 03h
sta uart_line_control 		;clear DLAB back to 0

ret
;Main OS functions end here.


;**********************
; TEXT EDITOR PROGRAM *
;**********************

;DATA
te_welcome: db 54h,58h,54h,45h,44h,49h,54h,0dh,00h
;CODE
txtedit: lxi h, te_welcome
call print
jmp run

;***********************
; SYSTEM INFO PROGRAM  *
;***********************
;DATA
info_string: db 0dh,48h,42h,54h,2dh,38h,35h,20h,4dh,65h,6dh,6fh,72h,79h,2fh,49h,4fh,0dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,0dh,45h,45h,50h,52h,4fh,4dh,3ah,20h,20h,20h,20h,20h,20h,20h,20h,30h,78h,30h,30h,30h,30h,20h,2dh,20h,30h,78h,37h,46h,46h,46h,20h,20h,28h,33h,32h,6bh,29h,0dh,4eh,56h,52h,41h,4dh,3ah,20h,20h,20h,20h,20h,20h,20h,20h,20h,30h,78h,38h,30h,30h,30h,20h,2dh,20h,30h,78h,45h,46h,46h,46h,20h,20h,28h,32h,38h,6bh,29h,0dh,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,30h,78h,38h,30h,30h,30h,20h,74h,6fh,20h,30h,78h,38h,30h,38h,30h,20h,28h,31h,32h,38h,20h,42h,79h,74h,65h,73h,20h,73h,79h,73h,74h,65h,6dh,20h,72h,65h,73h,65h,72h,76h,65h,64h,29h,0dh,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,30h,78h,38h,30h,38h,31h,20h,74h,6fh,20h,30h,78h,45h,46h,46h,46h,20h,28h,32h,38h,2ch,35h,34h,32h,20h,42h,79h,74h,65h,73h,20h,75h,73h,65h,72h,20h,73h,70h,61h,63h,65h,29h,0dh,38h,32h,35h,35h,20h,49h,2fh,4fh,3ah,20h,20h,20h,20h,20h,20h,30h,78h,46h,30h,30h,30h,20h,2dh,20h,30h,78h,46h,30h,30h,33h,0dh,31h,36h,43h,35h,35h,30h,20h,55h,41h,52h,54h,3ah,20h,20h,20h,30h,78h,46h,30h,30h,38h,20h,2dh,20h,30h,78h,46h,30h,30h,46h,0dh,00h
;CODE
info: lxi h, info_string
call print
jmp run

;***********************
;  CALCULATOR PROGRAM  *
;***********************
;DATA

;CODE
calculator: nop

;***********************
; PORT CONTROL PROGRAM *
;***********************
;DATA

;CODE
portout: nop
ret

portin: nop
ret