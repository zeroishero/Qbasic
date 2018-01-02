DECLARE SUB psetchange (a!, B!)
DECLARE SUB findn (a!(), no)
DECLARE SUB surr (a!, B!, C!, d!)
DECLARE SUB in (title$, name$(), a())
DECLARE SUB locchange (a!, B!)
DECLARE FUNCTION rad! (n!)
DECLARE FUNCTION DataIn$ (row, col, lim)
SCREEN 12
DIM x(5)
DIM no
DIM y(5)
DIM a(5)
DIM B(5)
DIM dh(5)
DIM name$(5)
DIM title$

'title$ = DataIn$(10, 10, 10)
'PRINT title$
'SLEEP
'END

CALL in(title$, name$(), a())

CLS
REM finding total numbers
CALL findn(a(), no)


REM finding total
FOR i = 1 TO no
total = total + a(i)
NEXT



REM checking if any data is entered
IF total = 0 THEN
CLS
PRINT "Please Enter Data properly"
PRINT "Press any key to exit"
END
END IF

REM MAKING BAR
LINE (0, 0)-(640, 460), 4, B
LINE (10, 10)-(630, 450), 4, B
PAINT (8, 5), 13, 4
LINE (100, 60)-(100, 420), 14  'vertical
LINE (80, 400)-(600, 400), 14 'horizontal
'PALETTE 0, 5 + 4 * 256 + 20 * 65536
REM FINDING HIGHEST
h = a(1)
FOR i = 2 TO no
IF h < a(i) THEN
h = a(i)
END IF
NEXT



x.co = 100
y.co = 400

mult = 340 / h

scale = h \ 10
y.scale = scale
REM SIDE MARK
FOR ab = 1 TO 10
LINE (95, 400 - ab * 34)-(100, 400 - ab * 34)
NEXT

clr = 1
FOR i = 1 TO no
x.co = x.co + 21
LINE (x.co, 400)-(x.co + 21, 400 - a(i) * mult), 8, B
PAINT (x.co + 1, 399), clr, 8
x.co = x.co + 21
clr = clr + 1
NEXT

LOCATE 5, 55: PRINT "INDEX"
REM name boxes
C = 7
FOR i = 1 TO no
a = C
B = 50
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 7, B
C = C + 2
NEXT


REM value boxes
C = 7
FOR i = 1 TO no
a = C
B = 70
CALL locchange(a, B)
LINE (B, a)-(B + 50, a + 20), 7, B
PAINT (B + 1, a + 1), i, 7
C = C + 2
NEXT

j = 7
FOR i = 1 TO no
LOCATE j, 50: PRINT name$(i)
LOCATE j, 60: PRINT "-"; a(i)
j = j + 2
NEXT i

a = 3
B = 40
CALL locchange(a, B)
l = LEN(title$)
r = 10 * l + 20
LINE (B, a)-(B + r, a + 20), 4, B
CALL surr(B, a, B + r, a + 20)
LOCATE 3, 40: PRINT title$

REM REDRAWING LINE
LINE (100, 60)-(100, 420), 14  'vertical
LINE (80, 400)-(600, 400), 14 'horizontal


'this is end
END
REM converting values to angle
FOR i = 1 TO no
B(i) = rad((a(i) / total) * 360)
NEXT i

REM making angles half
dh(1) = B(1) / 2
dh(2) = B(1) + (B(2) / 2)
dh(3) = B(1) + B(2) + (B(3) / 2)
dh(4) = B(1) + B(2) + B(3) + (B(4) / 2)
dh(5) = B(1) + B(2) + B(3) + B(4) + (B(5) / 2)

REM converting angles from 0
FOR j = 2 TO no
B(j) = B(j) + B(j - 1)
NEXT

CLS


REM BOX FOR TITLE
a = 5
B = 20
CALL locchange(a, B)
l = LEN(title$)
r = 10 * l + 20
LINE (B, a)-(B + r, a + 20), 4, B
CALL surr(B, a, B + r, a + 20)
LOCATE 5, 20: PRINT title$


REM box for credit
a = 28
B = 70
CALL locchange(a, B)
LINE (B, a)-(B + 68, a + 20), 1, B
CALL surr(B, a, B + 68, a + 20)
LOCATE 28, 70: COLOR 4: PRINT "BY ZERO"

REM drawing circle and making line
CIRCLE (180, 240), 100, 7
'LINE (180, 240)-(240, 240), 7

REM finding points of required angle
FOR i = 1 TO no
x(i) = 180 + 100 * COS(B(i))
y(i) = 240 + 100 * SIN(B(i))
NEXT

REM joining to points of angles
FOR i = 1 TO no
LINE (180, 240)-(x(i), y(i)), 7
NEXT


DIM dhpx(5)
DIM dhpy(5)
DIM mx(5)
DIM my(5)

REM finding degree halfs
col = 1
FOR i = 1 TO no
dhpx(i) = 180 + 100 * COS(dh(i))
dhpy(i) = 240 + 100 * SIN(dh(i))
NEXT

REM finding midpoint of center to degree half
FOR i = 1 TO no
mx(i) = (180 + dhpx(i)) / 2
my(i) = (240 + dhpy(i)) / 2
PAINT (mx(i), my(i)), col, 7
col = col + 1
NEXT

LOCATE 9, 45: PRINT "INDEX"

REM name boxes
C = 11
FOR i = 1 TO no
a = C
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 7, B
C = C + 3
NEXT


REM value boxes
C = 11
FOR i = 1 TO no
a = C
B = 65
CALL locchange(a, B)
LINE (B, a)-(B + 50, a + 20), 7, B
PAINT (B + 10, a + 5), i, 7
C = C + 3
NEXT

j = 11
FOR i = 1 TO no
LOCATE j, 45: PRINT name$(i)
LOCATE j, 55: PRINT "-"; a(i)
j = j + 3
NEXT i

LINE (70, 120)-(330, 370), 6, B
CALL surr(70, 120, 330, 370)

FUNCTION DataIn$ (row, col, lim)
j = col
LOCATE row, col: PRINT "_";

DO
REM waiting for keypress
    
        DO
        r$ = INKEY$
        LOOP UNTIL r$ <> ""


REM checking if backspace
IF r$ = CHR$(8) THEN
        IF LEN(B$) >= 1 THEN
        B$ = LEFT$(B$, LEN(B$) - 1)
        LOCATE row, j - 1: PRINT " ";
        limit = limit - 1
        j = j - 1
        END IF

REM if valid chars

ELSEIF ((r$ >= "A" AND r$ <= "Z") OR (r$ >= "a" AND r$ <= "z") OR (VAL(r$) >= 1 AND VAL(r$) <= 9) OR r$ = "0" OR r$ = "_") AND limit < lim THEN
B$ = B$ + r$
limit = limit + 1
LOCATE row, j: PRINT r$;
j = j + 1

ELSEIF r$ = CHR$(32) THEN
B$ = B$ + " "
limit = limit + 1
LOCATE row, j: PRINT " ";
j = j + 1
END IF

DataIn$ = LTRIM$(RTRIM$(B$))
LOOP WHILE r$ <> CHR$(13)


END FUNCTION

SUB findn (a(), no)

FOR j = 1 TO UBOUND(a)
IF a(j) = 0 THEN
EXIT FOR
END IF
NEXT
no = j - 1
END SUB

SUB in (title$, name$(), a())
SCREEN 12
DIM a$(5)

REM for border
LINE (130, 80)-(520, 420), 1, B
LINE (140, 90)-(510, 410), 1, B
PAINT (138, 91), 4, 1

REM box for title
a = 8
B = 35
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM box for credit
a = 28
B = 70
CALL locchange(a, B)
LINE (B, a)-(B + 68, a + 20), 1, B
CALL surr(B, a, B + 68, a + 20)
LOCATE 28, 70: COLOR 4: PRINT "BY ZERO"

REM title
LOCATE 10, 22: PRINT "        NAME                 VALUE"


REM name boxes
count = 12
FOR i = 1 TO 5
a = count
B = 22
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)
count = count + 3
NEXT i

REM value boxes
count = 12
FOR i = 1 TO 5
a = count
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)
count = count + 3
NEXT

REM inputting datas
title$ = DataIn$(8, 37, 15)

j = 12
FOR i = 1 TO 5
name$(i) = DataIn$(j, 24, 12)
a$(i) = DataIn$(j, 48, 5)
j = j + 3

REM discontinuing if name or value is left blank
IF name$(i) = "" OR VAL(a$(i)) = 0 THEN
name$(i) = ""
a$(i) = ""
EXIT FOR
END IF
NEXT

FOR i = 1 TO 5
a(i) = VAL(a$(i))
NEXT
END SUB

SUB locchange (a, B)
a = (a / 30 * 480) - 20
B = (B / 80 * 640) - 18


END SUB

SUB psetchange (a, B)
a = (a / 640 * 80) + 1
B = (B / 480 * 25) + 2
END SUB

FUNCTION rad (n)
rad = (3.14159265253898# / 180) * n
END FUNCTION

SUB surr (a, B, C, d)
LINE (a - 5, B - 5)-(C + 5, d + 5), 1, B
END SUB

