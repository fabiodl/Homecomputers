90 DIM X=(32,21)
100 RANDOMIZE
110 CALL CLEAR
120 CALL CHAR(96,"00FF999999FFFFFF")
130 CALL CHAR(112,"0000000000B6CFFE")
140 CALL CHAR(104,"FFFFFF")
150 CALL CHAR(42,"000000607806")
160 CALL CHRCOL(9,5,16)
170 CALL CHRCOL(11,2,1)
180 CALL CHRCOL(10,15,1)
190 REM Start neues Spiel
200 PZ=0
210 REM HAEUSER AUFBAUEN
220 HOME
230 I=2
240 J=RND(BI+3)
250 FOR B=1 TO RND(5)
260 CALL VCHAR(J,I,96,24-J)
261 FOR X=JTO24-J:X$(I,X)=CHR$(96):NEXT X
276 I-I+1
286 IF I >31 THEN GOTO 320
290 NEXT B
300 I=I+1
310 IF I <32 THEN GOTO 240
320 CALL HCHAR(24,0,104,32):FOR X=1 TO 32:X$(X,24)=CHR$(104):NEXT X
330 REM START BOMBER
340 FX=1
350 FY=1
360 LX=0
370 LY=1
380 LX=LX+1
390 IF LX<32 THEN GOTO 420
400 LY=LY+1
410 LX=1
420 MUSIC 0,15,"C"
430 FX=FX+1
440 IF FX<32 THEN GOTO 470
450 FX=1
460 FY=FY+1
470 T=ASC(X$(FX,FY);
480 IF T=96 THEN GOTO 800
490 T=ASC(X$(FX+1,FY+1)
500 IF T=96 THEN GOTO 510 ELSE GOTO 520
510 IF BZ<0 THEN GOTO 888
520 CALL HCHAR(FY,FX,112):X$(FX,FY)=CHR$(112)
530 CALL HChAR((LY,LX,32):X$(LX.LY)=CHR$(32)
540 PZ=PZ+1
550 KEY=ASC(INKEY$)
560 IF KEY=255 THEN GOTO 610
570 IF BZ>0 THEN GOTO 620
580 BY=FY
590 BX=FX
600 BZ=1
610 IF BZ=0 THEN GOTO 730
620 CALL HCHAR(BY,BX,32);X$(BX,BY)=CHR$(32)
630 BX=BX+1
640 BY=BY+1
650 IF BX<32 THEN GOTO 680
660 BX=1
670 BY=BY+1
680 IF BY>22 THEN GOTO 760
690 X=ASC(X$(BX,BY)
700 IF X=96 THEN GOTO 760
710 CALL HCHAR(BY,BX,42):X$(BX,BY)=CHR$(42)
720 BZ=BZ+1
730 IF FY<23 THEN GOTO 380
740 IF FX<31 THEN GOTO 380
750 GOTO 210
760 CALL VCHAR(1,BX,32,BY):FOR X=1 TO BY:X$(BX,X)=CHR$(32):NEXT X
770 MUSÌC 1,15,"E"
780 BZ=0
790 GOTO 730
800 DRUCK$="PUNKTZAHL = "&STR$(PZ)
810 VTAB=1
820 HTAB=2
830 GOSUB 960
840 IF HS>PZ THEN GOTO 870
850 HS=PZ
860 GOSUB 1140
870 DRUCK$=HIGHSCORE = "&STR$(HS)
880 GOSUB 960
890 DRUCK$="NOCH EIN SPIEL" <J> <N> "
900 GOSUB 960
910 KEY=ASC(INKEY$)
920 IF KEY=255 THEN GOTO 910
930 IF KEY=74 THEN GOTO 190
940 IF KEY<>78 THEN GOTO 910
950 END
960 REM PRINTROUTINE
970 FOR DRI=1 TO LEN(DRUCK$)
980 CODE=ASC(MID$(DRUCK$,DRI,1))
990 GOSUB 1030
1000 NEXT DRI
1010 GOSUB 1080
1020 RETURN
1030 REM COUT
1040 CALL HCHAR(VTAB,HTAB,CODE)
1050 HTAB=HTAB+1
1060 IF HTAB(32 THEN GOTO 1130
1070 REM CROUT
1080 VTAB=VTAB+1
1090 HTAB=2
1100 IF VTAB<25 THEN GOTO 1130
1110 VTAB=24
1120 PRINT
1130 RETURN
1140 MUSIC 0,15,"CEG"
1150 PLAY