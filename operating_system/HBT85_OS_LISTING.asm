; Assembler generated listing; Not editable.
; Generated by GNUSim8085: http://www.gnusim8085.org/
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
   0 C3 C9  1   jmp main
  
  ;DATA
  input: equ 08000h
  ;Welcome Message
   3   48 48 20 20 20 20 48 48 20 42 42 42 42 42 42 20 20 20 54 54 54 54 54 54 54 54 54 54 20 20 20 20 20 20 38 38 38 38 38 20 20 35 35 35 35 35 35 35 0D 48 48 20 20 20 20 48 48 20 42 42 20 20 20 20 42 42 20 20 20 20 20 54 54 20 20 20 20 20 20 20 20 20 38 38 20 20 20 38 38 20 35 35 0D 48 48 20 20 20 20 48 48 20 42 42 20 20 20 20 42 42 20 20 20 20 20 54 54 20 20 20 20 20 20 20 20 20 38 38 20 20 20 38 38 20 35 35 0D 48 48 48 48 48 48 48 48 20 42 42 42 42 42 42 42 42 20 20 20 20 20 54 54 20 20 3D 3D 3D 3D 3D 3D 20 20 38 38 38 38 38 20 20 35 35 35 35 35 35 35 0D 48 48 20 20 20 20 48 48 20 42 42 20 20 20 20 42 42 20 20 20 20 20 54 54 20 20 3D 3D 3D 3D 3D 3D 20 38 38 20 20 20 38 38 20 20 20 20 20 20 35 35 0D 48 48 20 20 20 20 48 48 20 42 42 20 20 20 20 42 42 20 20 20 20 20 54 54 20 20 20 20 20 20 20 20 20 38 38 20 20 20 38 38 20 20 20 20 20 20 35 35 0D 48 48 20 20 20 20 48 48 20 42 42 42 42 42 42 42 20 20 20 20 20 20 54 54 20 20 20 20 20 20 20 20 20 20 38 38 38 38 38 20 20 35 35 35 35 35 35 35 0D 0D 49 6E 74 65 6C 20 38 30 38 35 20 40 20 7E 33 4D 48 7A 0D 33 32 6B 20 45 45 2D 50 52 4F 4D 0D 32 38 6B 20 4E 56 2D 52 41 4D 0D 0D 68 6F 6D 65 62 72 65 77 74 65 63 68 6E 6F 6C 6F 67 79 2E 6F 72 67 0D 48 61 63 6B 69 6E 67 20 6C 69 6B 65 20 69 74 73 20 31 39 37 39 2E 0D 0D 52 65 61 64 79 2E 2E 2E 0D 0D 00 (435 bytes)                                                                                                                                                                                                                                                                                                                                          welcome_msg: db 48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,42h,42h,42h,42h,20h,20h,20h,54h,54h,54h,54h,54h,54h,54h,54h,54h,54h,20h,20h,20h,20h,20h,20h,38h,38h,38h,38h,38h,20h,20h,35h,35h,35h,35h,35h,35h,35h,0dh,48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,20h,20h,20h,20h,42h,42h,20h,20h,20h,20h,20h,54h,54h,20h,20h,20h,20h,20h,20h,20h,20h,20h,38h,38h,20h,20h,20h,38h,38h,20h,35h,35h,0dh,48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,20h,20h,20h,20h,42h,42h,20h,20h,20h,20h,20h,54h,54h,20h,20h,20h,20h,20h,20h,20h,20h,20h,38h,38h,20h,20h,20h,38h,38h,20h,35h,35h,0dh,48h,48h,48h,48h,48h,48h,48h,48h,20h,42h,42h,42h,42h,42h,42h,42h,42h,20h,20h,20h,20h,20h,54h,54h,20h,20h,3dh,3dh,3dh,3dh,3dh,3dh,20h,20h,38h,38h,38h,38h,38h,20h,20h,35h,35h,35h,35h,35h,35h,35h,0dh,48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,20h,20h,20h,20h,42h,42h,20h,20h,20h,20h,20h,54h,54h,20h,20h,3dh,3dh,3dh,3dh,3dh,3dh,20h,38h,38h,20h,20h,20h,38h,38h,20h,20h,20h,20h,20h,20h,35h,35h,0dh,48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,20h,20h,20h,20h,42h,42h,20h,20h,20h,20h,20h,54h,54h,20h,20h,20h,20h,20h,20h,20h,20h,20h,38h,38h,20h,20h,20h,38h,38h,20h,20h,20h,20h,20h,20h,35h,35h,0dh,48h,48h,20h,20h,20h,20h,48h,48h,20h,42h,42h,42h,42h,42h,42h,42h,20h,20h,20h,20h,20h,20h,54h,54h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,38h,38h,38h,38h,38h,20h,20h,35h,35h,35h,35h,35h,35h,35h,0dh,0dh,49h,6eh,74h,65h,6ch,20h,38h,30h,38h,35h,20h,40h,20h,7eh,33h,4dh,48h,7ah,0dh,33h,32h,6bh,20h,45h,45h,2dh,50h,52h,4fh,4dh,0dh,32h,38h,6bh,20h,4eh,56h,2dh,52h,41h,4dh,0dh,0dh,68h,6fh,6dh,65h,62h,72h,65h,77h,74h,65h,63h,68h,6eh,6fh,6ch,6fh,67h,79h,2eh,6fh,72h,67h,0dh,48h,61h,63h,6bh,69h,6eh,67h,20h,6ch,69h,6bh,65h,20h,69h,74h,73h,20h,31h,39h,37h,39h,2eh,0dh,0dh,52h,65h,61h,64h,79h,2eh,2eh,2eh,0dh,0dh,00h
  
  ;Invalid error message
 1B6   43 6F 6D 6D 61 6E 64 20 6E 6F 74 20 66 6F 75 6E 64 0D 00 (19 bytes)                  invalid_msg: db 43h,6fh,6dh,6dh,61h,6eh,64h,20h,6eh,6fh,74h,20h,66h,6fh,75h,6eh,64h,0dh,00h
  
  ;CODE
 1C9 31 FF EF   main: lxi sp, 0efffh 		;start stack end of RAM
 1CC CD 5F  2   call init_uart			;initialize 16C550 UART
  
 1CF 21 03 00   lxi h, welcome_msg		;load message addr. in HL reg.
 1D2 CD 49  2   call print			;print welcome message
  
 1D5 01 00 080   run: lxi b, input		;set location for command input
 1D8 CD 2D  2   call stdin			;get user's command
 1DB 21 00 080   lxi h, input			;set location back to cmd input start
 1DE CD F2  1   call command			;find and execute users command
 1E1 76  hlt
  
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
 1E2   54 58 54 45 44 49 54 0D 01 49 4E 46 4F 0D 02 00 (16 bytes)                progs: db 54h,58h,54h,45h,44h,49h,54h,0dh,01h, 49h,4eh,46h,4fh,0dh,02h,00h
 1F2 11 E2  1   command: lxi d, progs		;set mem location of cmd reference
 1F5 1A  compare_cmd: ldax d		;load current byte of progs ref into accumulator
 1F6 FE 0D  cpi 0dh				;Check for CR (meaning end reached & CMD matches)
 1F8 CA 21  2   jz found_cmd			;Match found
 1FB FE 00  cpi 00h				;Check for null termination
 1FD CA 18  2   jz invalid_cmd			;No command found
 200 BE  cmp m				;compares input at HL register location with accumulator
 201 C2 09 02   jnz next_cmd			;If input != ref jump to next CMD
 204 23  inx h				;A(DE) == HL increment HL input and...
 205 13  inx d				;increment DE refrence
 206 C3 F5  1   jmp compare_cmd
 209 13  next_cmd: inx d			;increment DE refrence
 20A 1A  ldax d				;load current byte of progs ref into accumulator
 20B FE 0D  cpi 0dh				;check if CR (0dh)
 20D C2 09 02   jnz next_cmd			;Keep seeking until CR
 210 13  inx d				;skip over CR
 211 13  inx d				;skip over associated # byte
 212 21 00 080   lxi h, input 			;set location back to cmd input start
 215 C3 F5  1   jmp compare_cmd			;check next command in list
 218 21 B6  1   invalid_cmd: lxi h, invalid_msg	;load message addr. in HL reg.
 21B CD 49  2   call print			;print not found message
 21E C3 D5  1   jmp run
 221 13  found_cmd: inx d		;set next byte, past CR, for refrence number
  ;IF TXTEDIT
 222 1A  ldax d
 223 FE 01  cpi 01h
 225 CA 82  2   jz txtedit
  ;IF INFO
 228 FE 02  cpi 02h
 22A CA E5  3   jz info			
  
  ;Waits for new data from UART when DLAB = 0
  ;Reads in data and stored at BC location until carrige return
 22D 3A 0D 0F0   stdin: lda uart_line_status	 
 230 E6 01  ani 01h				;logic AND checks if data available on first bit
 232 CA 2D  2   jz stdin			;loops until data is avaliable
 235 3A 08 0F0   lda 0f008h			;reads user input from reciver buffer
 238 02  stax b				;stores input at BC location
 239 32 08 0F0   sta 0f008h			;sends charecter back to terminal
 23C FE 0D  cpi 0dh				;check for carrige return
 23E CA 45  2   jz stdinret			;end if CR found
 241 03  inx  b
 242 C3 2D  2   jmp stdin
 245 3E 00  stdinret: mvi a, 00h
 247 02  stax b				;null terminate CR
 248 C9  ret
  
  ;writes data to UART when DLAB = 0
 249 3A 0D 0F0   print: lda uart_line_status
 24C E6 20  ani 20h				;checks line status to see if transmit buffer is full
 24E CA 49  2   jz print
 251 7E  mov a, m			;load acumulator with charecter 
 252 FE 00  cpi 00h				;check for null termination
 254 CA 5E  2   jz prntdone
 257 32 08 0F0   sta 0f008h			;store in UART output
 25A 23  inx h				;increments HL
 25B C3 49  2   jmp print
 25E C9  prntdone: ret
  
  ;Initialize 16C550 uart
 25F 3E 83  init_uart: mvi a, 83h
 261 32 0B 0F0   sta uart_line_control 		;set DLAB to 1 to access divider
 264 3E 14  mvi a, 14h
 266 32 08 0F0   sta uart_divisor_lsb 		;divides 3.072 MHz input for 9600 baud
 269 3E 00  mvi a, 00h
 26B 32 09 0F0   sta uart_divisor_msb
  
 26E 3E 07  mvi a, 07h
 270 32 0A 0F0   sta uart_fifo_control 		;init fifo and clear all buffers
 273 3E 03  mvi a, 03h
 275 32 0B 0F0   sta uart_line_control 		;clear DLAB back to 0
  
 278 C9  ret
  ;Main OS functions end here.
  
  
  ;**********************
  ; TEXT EDITOR PROGRAM *
  ;**********************
  
  ;DATA
 279   54 58 54 45 44 49 54 0D 00 (9 bytes)          te_welcome: db 54h,58h,54h,45h,44h,49h,54h,0dh,00h
  ;CODE
 282 21 79  2   txtedit: lxi h, te_welcome
 285 CD 49  2   call print
 288 C3 D5  1   jmp run
  
  ;***********************
  ; SYSTEM INFO PROGRAM  *
  ;***********************
  ;DATA
 28B   48 42 54 2D 38 35 20 4D 65 6D 6F 72 79 2F 49 4F 0D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 0D 45 45 50 52 4F 4D 3A 20 20 20 20 20 20 20 20 30 78 30 30 30 30 20 2D 20 30 78 37 46 46 46 20 20 28 33 32 6B 29 0D 4E 56 52 41 4D 3A 20 20 20 20 20 20 20 20 20 30 78 38 30 30 30 20 2D 20 30 78 45 46 46 46 20 20 28 32 38 6B 29 0D 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 30 78 38 30 30 30 20 74 6F 20 30 78 38 30 38 30 20 28 31 32 38 20 42 79 74 65 73 20 73 79 73 74 65 6D 20 72 65 73 65 72 76 65 64 29 0D 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 30 78 38 30 38 31 20 74 6F 20 30 78 45 46 46 46 20 28 32 38 2C 35 34 32 20 42 79 74 65 73 20 75 73 65 72 20 73 70 61 63 65 29 0D 38 32 35 35 20 49 2F 4F 3A 20 20 20 20 20 20 30 78 46 30 30 30 20 2D 20 30 78 46 30 30 33 0D 31 36 43 35 35 30 20 55 41 52 54 3A 20 20 20 30 78 46 30 30 38 20 2D 20 30 78 46 30 30 46 0D 00 (346 bytes)                                                                                                                                                                                                                                                                        info_string: db 48h,42h,54h,2dh,38h,35h,20h,4dh,65h,6dh,6fh,72h,79h,2fh,49h,4fh,0dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,2dh,0dh,45h,45h,50h,52h,4fh,4dh,3ah,20h,20h,20h,20h,20h,20h,20h,20h,30h,78h,30h,30h,30h,30h,20h,2dh,20h,30h,78h,37h,46h,46h,46h,20h,20h,28h,33h,32h,6bh,29h,0dh,4eh,56h,52h,41h,4dh,3ah,20h,20h,20h,20h,20h,20h,20h,20h,20h,30h,78h,38h,30h,30h,30h,20h,2dh,20h,30h,78h,45h,46h,46h,46h,20h,20h,28h,32h,38h,6bh,29h,0dh,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,30h,78h,38h,30h,30h,30h,20h,74h,6fh,20h,30h,78h,38h,30h,38h,30h,20h,28h,31h,32h,38h,20h,42h,79h,74h,65h,73h,20h,73h,79h,73h,74h,65h,6dh,20h,72h,65h,73h,65h,72h,76h,65h,64h,29h,0dh,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,20h,30h,78h,38h,30h,38h,31h,20h,74h,6fh,20h,30h,78h,45h,46h,46h,46h,20h,28h,32h,38h,2ch,35h,34h,32h,20h,42h,79h,74h,65h,73h,20h,75h,73h,65h,72h,20h,73h,70h,61h,63h,65h,29h,0dh,38h,32h,35h,35h,20h,49h,2fh,4fh,3ah,20h,20h,20h,20h,20h,20h,30h,78h,46h,30h,30h,30h,20h,2dh,20h,30h,78h,46h,30h,30h,33h,0dh,31h,36h,43h,35h,35h,30h,20h,55h,41h,52h,54h,3ah,20h,20h,20h,30h,78h,46h,30h,30h,38h,20h,2dh,20h,30h,78h,46h,30h,30h,46h,0dh,00h
  ;CODE
 3E5 21 8B  2   info: lxi h, info_string
 3E8 CD 49  2   call print
 3EB C3 D5  1   jmp run
