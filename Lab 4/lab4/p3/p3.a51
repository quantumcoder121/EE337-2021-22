ORG 0H
MOV 50H, #02H
MOV 51H, #05H
MOV 52H, #00H
MOV 53H, #08H
MOV 54H, #01H
MOV 55H, #09H
MOV 56H, #08H
MOV 57H, #03H
MAINLOOP: MOV B, #10H
MOV A, 50H
MUL AB
MOV P1, A
CALL DELAY_1S
MOV B, #10H
MOV A, 51H
MUL AB
MOV P1, A
CALL DELAY_1S
MOV B, #10H
MOV A, #0FH
MUL AB
MOV P1, A
CALL DELAY_1S
MOV B, #10H
MOV A, 52H
MUL AB
MOV P1, A
CALL DELAY_1S
MOV B, #10H
MOV A, 53H
MUL AB
MOV P1, A
CALL DELAY_1S
MOV B, #10H
MOV A, #0FH
MUL AB
MOV P1, A
CALL DELAY_1S
MOV B, #10H
MOV A, 54H
MUL AB
MOV P1, A
CALL DELAY_1S
MOV B, #10H
MOV A, 55H
MUL AB
MOV P1, A
CALL DELAY_1S
MOV B, #10H
MOV A, 56H
MUL AB
MOV P1, A
CALL DELAY_1S
MOV B, #10H
MOV A, 57H
MUL AB
MOV P1, A
CALL DELAY_1S
MOV B, #10H
MOV A, #0FH
MUL AB
MOV P1, A
CALL DELAY_1S
LJMP MAINLOOP
DELAY_1S:
PUSH 00H
MOV R0, #5
H4: ACALL DELAY_200MS
DJNZ R0, H4
POP 00H
RET
DELAY_200MS:
PUSH 00H
MOV R0, #200
H3: ACALL DELAY_1MS
DJNZ R0, H3
POP 00H
RET
DELAY_1MS:
PUSH 00H
MOV R0, #4
H2: ACALL DELAY_250US
DJNZ R0, H2
POP 00H
RET
DELAY_250US:
PUSH 00H
MOV R0, #244
H1: DJNZ R0, H1
POP 00H
RET
END