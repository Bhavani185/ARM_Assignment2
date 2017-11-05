	 PRESERVE8
     THUMB
     AREA    appcode , CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV r0, #0;
	MOV r1, #1;
	MOV r2, #0;
	MOV r4, #12;
	MOV r6, #0x20000000;Starting memory location to store fibonacci series
	MOV r3, #1;
LOOP
	CMP r3, r4;
	BGT stop
	STR r0, [r6];
	ADD r6, r6, #1;
	ADD r2, r0, r1;
	MOV r0, r1;
	MOV r1, r2;
	ADD r3, r3, #1;
	B LOOP

	
stop B stop ; stop program
	 ENDFUNC
	 END
		 