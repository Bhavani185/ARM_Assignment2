	 PRESERVE8
     THUMB
     AREA    appcode , CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV r0, #8; r0 is 1st operand
	MOV r1, #20; r1 is 2nd operand
	MOV r2, #1; r2 to store the GCD result
LOOP
	CMP r0, r1;
	BEQ GCD;
	ITE GT
	SUBGT r0, r0, r1;
	SUBLE r1, r1, r0;
	B LOOP
	
GCD
	MOV r2, r0;
stop B stop ; stop program
	 ENDFUNC
	 END
		 