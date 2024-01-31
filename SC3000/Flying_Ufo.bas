10 REM **** UFO GAME *****
20 SCREEN 2,2:MAG 1
30 GOSUB 130
40 IF MN=0 THEN 530
50 K$=INKEY$
60 IF K$=CHR$(28) AND MH+16<215 THEN MA=MH+8:GOSUB 610
70 IF K$=CHR$(29) AND MH-1>43 THEN MH=MH-8:GOSUB 610
80 GOSUB 320
90 FX=FX+SP:GOSUB 640
100 IF FX>235 THEN FX=0
110 IF K$=CHR$(30) THEN GOSUB 350
120 GOTO 40
130 REM INITIALIZE
140 CLS
150 SC=0:MN=30:SX=210:SY=85
160 PATTERN S#0,"0303030303030303"
170 PATTERN S#1,"070F1F3F7FFF3C3C"
180 PATTERN S#2,"8080808080808080"
190 PATTERN S#3,"C0E0F0F8FCFE7878"
200 PATTERN S#4,"0000000000000307"
210 PATTERN S#5,"0F0F7FFF9999FF38"
220 PATTERN S#6,"000000000000C0E0"
230 PATTERN S#7,"F0F0FEFF9999FF1C"
240 LINE(43,70)-(43,189),4
250 LINE(215,70)-(215-189)
260 MH=101:GOSUB 610
270 COLOR6:CURSOR 218,75:PRINT"SCORE"
280 CURSOR 12,75:PRINT"POWER"
290 LINE(25,93)-(27,93+MN*3),,BF
300 RETURN
310 REM START POSITION UFO
320 FY=INT(RND(1)*55)
330 SP=INT(RND(1)*15)+5
340 RETURN
350 REM FIRING
360 MN=MN-1
370 BLINE(25,93+(MN+1)*3)-27,93+MN*3),,BF
380 LINE(MH+7,170)-(MH+7,0),6
390 BEEP:FOR I=1 TO 300:NEXT I
400 BLINE(MH+7,170)-(MH+7,0)
410 IF MH+7<FX OR MH+7>FX+15 THEN RETURN
420 BEEP
430 LINE(FX,FY+5)-(FX+15,FY+20)
440 LINE(FX,FY+20)-(FX+15,FY+5)
450 FOR I=1 TO 300:NEXT I
460 BLINE(FX,FY+5)-(FX+15,FY+20)
470 BLINE(FX,FY+20)-(FX+15,FY+5)
480 GOSUB 670
490 SX=SX+10:IF SX=250 THEN SX=220:SY=SY+10
500 COLOR1:CURSOR SX,SY:PRINT"  "
510 SC=SC+10:FX=0
520 RETURN
530 REM GAME OVER
540 CURSOR 70,80:PRINT"*** GAME OVER ***"
550 CURSOR 75,100:PRINT"YOUR SCORE : ";SC
560 CURSOR 75,110:PRINT"HIGH SCORE : ";HS
570 CURSOR 10,130:PRINT"PRESS THE SPACE BAR TO PLAY AGAIN !!"
580 IF INKEY$<>" " THEN 580
590 IS SC>HS THEN HS=SC
600 FX=0:GOTO 30
610 REM MOVE
620 SPRITE 0,(MH,172),0,11
630 RETURN
640 REM MOVE (UFO)
650 SPRITE 1,(FX,FY),4,0
660 RETURN
670 REM UFO
680 SPRITE 1,(FX,FY),4,0
690 RETURN