	 PRESERVE8
     THUMB
     AREA    appcode , CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	 MOV r1, #11;Input1
	 MOV r2, #25;Input2
	 MOV r3, #43;Input3
	 MOV r4, #0; r4 register is used to store the largest number
	 
	 CMP r1, r2;
	 BGT ifcase
	 BLE elsecase
	 
ifcase
	 CMP r1, r3;
	 ITE GT
	 MOVGT r4, r1;
	 MOVLE r4, r3;
	 B stop

elsecase
	 CMP r2, r3;
	 ITE GT
	 MOVGT r4, r2;
	 MOVLE r4, r3;
	  
	 
stop B stop ; stop program
	 ENDFUNC
	 END