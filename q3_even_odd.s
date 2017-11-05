	 PRESERVE8
     THUMB
     AREA    appcode , CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV r1, #19; Here r1 resister stores the given input number
	MOV r3, #2;
	udiv r2, r1, r3;
	mls r4, r2, r3, r1; Here r4 register stores remainder & if it zero Given number is even or else it is odd.
	
stop B stop ; stop program
	 ENDFUNC
	 END