;rollno:l191316

ORG 0000H
LJMP MAIN
ORG 0X0003
INC A
MOV R0,A
DA A
CALL AGAIN
MOV P2,A
RETI

MAIN:
MOV TMOD,#10H
MOV IE,#81H
MOV P2,#00H
MOV P1,#00H
SJMP $


AGAIN:
MOV TL1,#17H
MOV TH1,#0FCH
SETB TR1


BACK:
JNB TF1,BACK
CLR TR1
CLR TF1

RET

END