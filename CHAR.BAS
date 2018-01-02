
DECLARE SUB surr (a!, B!, c!, d!)
DECLARE SUB in ()
DECLARE SUB locchange (a!, B!)
DECLARE FUNCTION rad! (n!)
SCREEN 12
DIM x(5)
DIM y(5)
DIM SHARED a(5)
DIM B(5)
DIM dh(5)
DIM SHARED name$(5)
DIM SHARED title$

CALL in
REM finding total
FOR i = 1 TO 5
total = total + a(i)
NEXT

REM converting values to angle
FOR i = 1 TO 5
IF total = 0 THEN
CLS
PRINT "Please enter data properly"
END
END IF
B(i) = rad((a(i) / total) * 360)
NEXT i

REM making angles half
dh(1) = B(1) / 2
dh(2) = B(1) + (B(2) / 2)
dh(3) = B(1) + B(2) + (B(3) / 2)
dh(4) = B(1) + B(2) + B(3) + (B(4) / 2)
dh(5) = B(1) + B(2) + B(3) + B(4) + (B(5) / 2)

REM converting angles from 0
FOR j = 2 TO 5
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
B = 65
CALL locchange(a, B)
LINE (B, a)-(B + 80, a + 20), 1, B
CALL surr(B, a, B + 80, a + 20)
LOCATE 28, 65: COLOR 4: PRINT "BY ZERO"

REM drawing circle and making line
CIRCLE (180, 240), 100, 7
LINE (180, 240)-(240, 240), 7

REM finding points of required angle
FOR i = 1 TO 5
x(i) = 180 + 100 * COS(B(i))
y(i) = 240 + 100 * SIN(B(i))
NEXT

REM joining to points of angles
FOR i = 1 TO 5
LINE (180, 240)-(x(i), y(i)), 7
NEXT

DIM dhpx(5)
DIM dhpy(5)
DIM mx(5)
DIM my(5)
col = 1
FOR i = 1 TO 5
dhpx(i) = 180 + 100 * COS(dh(i))
dhpy(i) = 240 + 100 * SIN(dh(i))
NEXT

FOR i = 1 TO 5
mx(i) = (180 + dhpx(i)) / 2
my(i) = (240 + dhpy(i)) / 2
PAINT (mx(i), my(i)), col, 7
col = col + 1
NEXT

LOCATE 9, 45: PRINT "INDEX"

REM name boxes
REM first box
a = 11
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 7, B

REM 2nd box
a = 14
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 7, B

REM 3rd box
a = 17
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 7, B


REM 4th box
a = 20
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 7, B


REM 5th box
a = 23
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 7, B


REM value boxes
REM first box
a = 11
B = 65
CALL locchange(a, B)
LINE (B, a)-(B + 50, a + 20), 7, B
PAINT (B + 10, a + 5), 1, 7

REM 2nd box
a = 14
B = 65
CALL locchange(a, B)
LINE (B, a)-(B + 50, a + 20), 7, B
PAINT (B + 10, a + 5), 2, 7

REM 3rd box
a = 17
B = 65
CALL locchange(a, B)
LINE (B, a)-(B + 50, a + 20), 7, B
PAINT (B + 10, a + 5), 3, 7

REM 4th box
a = 20
B = 65
CALL locchange(a, B)
LINE (B, a)-(B + 50, a + 20), 7, B
PAINT (B + 10, a + 5), 4, 7

REM 5th box
a = 23
B = 65
CALL locchange(a, B)
LINE (B, a)-(B + 50, a + 20), 7, B
PAINT (B + 10, a + 5), 5, 7

j = 11
FOR i = 1 TO 5
LOCATE j, 45: PRINT name$(i)
LOCATE j, 55: PRINT "-"; a(i)
j = j + 3
NEXT i

LINE (70, 120)-(330, 370), 6, B
CALL surr(70, 120, 330, 370)

SUB in
SCREEN 12
DIM a$(5)
LINE (140, 90)-(510, 410), 1, B
LINE (150, 100)-(500, 400), 1, B
PAINT (149, 99), 4, 1


a = 8
B = 35
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM box for credit
a = 28
B = 65
CALL locchange(a, B)
LINE (B, a)-(B + 80, a + 20), 1, B
CALL surr(B, a, B + 80, a + 20)
LOCATE 28, 65: COLOR 4: PRINT "BY ZERO"

LOCATE 10, 22: PRINT "        NAME                 VALUE"


REM name boxes
REM first box
a = 12
B = 22
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM 2nd box
a = 15
B = 22
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM 3rd box
a = 18
B = 22
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM 4th box
a = 21
B = 22
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM 5th box
a = 24
B = 22
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM value boxes
REM first box
a = 12
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM 2nd box
a = 15
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM 3rd box
a = 18
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM 4th box
a = 21
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM 5th box
a = 24
B = 45
CALL locchange(a, B)
LINE (B, a)-(B + 150, a + 20), 1, B
CALL surr(B, a, B + 150, a + 20)

REM inputting datas
LOCATE 8, 37: INPUT "", title$
j = 12
FOR i = 1 TO 5
LOCATE j, 24: INPUT "", name$(i)
LOCATE j, 48: INPUT "", a$(i)
j = j + 3
NEXT

FOR i = 1 TO 5
a(i) = VAL(a$(i))
NEXT
END SUB

SUB locchange (a, B)
a = (a / 30 * 480) - 20
B = (B / 80 * 640) - 18


END SUB

FUNCTION rad (n)
rad = (3.141592652538979# / 180) * n
END FUNCTION

SUB surr (a, B, c, d)
LINE (a - 5, B - 5)-(c + 5, d + 5), 1, B
END SUB

