DECLARE SUB findn (a!())
DECLARE SUB surr (a!, b!, c!, d!)
DECLARE SUB in ()
DECLARE SUB locchange (a!, b!)
DECLARE FUNCTION rad! (n!)
DECLARE FUNCTION DataIn$ (row, col, lim)

SCREEN 12
DIM x(5)
DIM SHARED no
DIM y(5)
DIM SHARED a(5)
DIM b(5)
DIM dh(5)
DIM SHARED name$(5)
DIM SHARED title$

'title$ = DataIn$(10, 10, 10)
'PRINT title$
'SLEEP
'END

CALL in
CALL findn(a())
REM finding total
FOR i = 1 TO no
total = total + a(i)
NEXT

REM converting values to angle
FOR i = 1 TO no
IF total = 0 THEN
CLS
LOCATE 4, 20: PRINT "Please enter data properly"
CHAIN "d:\chain.bas"
END
END IF
b(i) = rad((a(i) / total) * 360)
NEXT i

REM making angles half
dh(1) = b(1) / 2
dh(2) = b(1) + (b(2) / 2)
dh(3) = b(1) + b(2) + (b(3) / 2)
dh(4) = b(1) + b(2) + b(3) + (b(4) / 2)
dh(5) = b(1) + b(2) + b(3) + b(4) + (b(5) / 2)

REM converting angles from 0
FOR j = 2 TO no
b(j) = b(j) + b(j - 1)
NEXT

CLS


REM BOX FOR TITLE
a = 5
b = 20
CALL locchange(a, b)
l = LEN(title$)
r = 10 * l + 20
LINE (b, a)-(b + r, a + 20), 4, B
CALL surr(b, a, b + r, a + 20)
LOCATE 5, 20: PRINT title$


REM box for credit
a = 28
b = 70
CALL locchange(a, b)
LINE (b, a)-(b + 80, a + 20), 1, B
CALL surr(b, a, b + 80, a + 20)
LOCATE 28, 70: COLOR 4: PRINT "BY ZERO"

REM drawing circle and making line
CIRCLE (180, 240), 100, 7
LINE (180, 240)-(240, 240), 7

REM finding points of required angle
FOR i = 1 TO no
x(i) = 180 + 100 * COS(b(i))
y(i) = 240 + 100 * SIN(b(i))
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
c = 11
FOR i = 1 TO no
a = c
b = 45
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 7, B
c = c + 3
NEXT


REM value boxes
c = 11
FOR i = 1 TO no
a = c
b = 65
CALL locchange(a, b)
LINE (b, a)-(b + 50, a + 20), 7, B
PAINT (b + 10, a + 5), i, 7
c = c + 3
NEXT

j = 11
FOR i = 1 TO no
LOCATE j, 45: PRINT name$(i)
LOCATE j, 55: PRINT "-"; a(i)
j = j + 3
NEXT i

LINE (70, 120)-(330, 370), 6, B
CALL surr(70, 120, 330, 370)
SLEEP

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
        IF LEN(b$) >= 1 THEN
        b$ = LEFT$(b$, LEN(b$) - 1)
        LOCATE row, j - 1: PRINT " ";
        limit = limit - 1
        j = j - 1
        END IF

REM if valid chars

ELSEIF ((r$ >= "A" AND r$ <= "Z") OR (r$ >= "a" AND r$ <= "z") OR (VAL(r$) >= 1 AND VAL(r$) <= 9) OR r$ = "0") AND limit < lim THEN
b$ = b$ + r$
limit = limit + 1
LOCATE row, j: PRINT r$;
j = j + 1

ELSEIF r$ = CHR$(32) THEN
b$ = b$ + " "
limit = limit + 1
LOCATE row, j: PRINT " ";
j = j + 1
END IF

DataIn$ = b$
LOOP WHILE r$ <> CHR$(13)


END FUNCTION

SUB findn (a())
i = UBOUND(a)
FOR j = 1 TO i
IF a(j) = 0 THEN
no = j - 1
EXIT FOR
END IF
NEXT
END SUB

SUB in
SCREEN 12
DIM a$(5)

REM for border
LINE (140, 90)-(510, 410), 1, B
LINE (150, 100)-(500, 400), 1, B
PAINT (149, 99), 4, 1


a = 8
b = 35
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM box for credit
a = 28
b = 70
CALL locchange(a, b)
LINE (b, a)-(b + 80, a + 20), 1, B
CALL surr(b, a, b + 80, a + 20)
LOCATE 28, 70: COLOR 4: PRINT "BY ZERO"

LOCATE 10, 22: PRINT "        NAME                 VALUE"


REM name boxes
REM first box
a = 12
b = 22
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM 2nd box
a = 15
b = 22
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM 3rd box
a = 18
b = 22
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM 4th box
a = 21
b = 22
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM 5th box
a = 24
b = 22
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM value boxes
REM first box
a = 12
b = 45
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM 2nd box
a = 15
b = 45
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM 3rd box
a = 18
b = 45
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM 4th box
a = 21
b = 45
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM 5th box
a = 24
b = 45
CALL locchange(a, b)
LINE (b, a)-(b + 150, a + 20), 1, B
CALL surr(b, a, b + 150, a + 20)

REM inputting datas
title$ = DataIn$(8, 37, 15)
j = 12
FOR i = 1 TO 5
name$(i) = DataIn$(j, 24, 12)
a$(i) = DataIn$(j, 48, 6)
j = j + 3
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

SUB locchange (a, b)
a = (a / 30 * 480) - 20
b = (b / 80 * 640) - 18


END SUB

FUNCTION rad (n)
rad = (3.141592652538979# / 180) * n
END FUNCTION

SUB surr (a, b, c, d)
LINE (a - 5, b - 5)-(c + 5, d + 5), 1, B
END SUB

