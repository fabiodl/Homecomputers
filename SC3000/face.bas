10 REM FACE
20 REM
30 REM
40 REM This program draws a face on the screen. But it's
50 REM a face worth seeing!
60 ----------------------------------
70 REM
80 SCREEN2,1:COLOR,1,,1:CLS
90 FORX=1TO45:READ A,B,C:LINE(A,B)-(C,B),15:NEXT
100DATA100,101,102,100,102,104,101,103,104,108,103,104,108,103,114,108,103,114,100,104,115,99,105,116,99,106,117,97,107,117,97,108,116,98,109,100
110 DATA103,109,107,104,110,106,111,110,112,105,111,106,105,112,106,109,112,110,115,112,118,99,113,102,104,113,106,109,113,111,113,113,117
120 DATA 98,114,106,108,114,117,97,115,117,97,116,117,98,117,117,98,118,116,98,119,106,109,119,116,99,120,104,109,120,104,109,120,116
130 DATA 99,121,104,110,121,115,99,122,105,108,122,116,99,123,105,112,123,105,112,123,116,100,124,107,109,124,115,100,125,105,109,125,114,102,126,112,103,127,112,104,128,110,105,129,109
140 PSET(100,100),15:PSET(110,102),15:PRESET(103,123),15
150 SCREEN2,2
160 GOTO 160
