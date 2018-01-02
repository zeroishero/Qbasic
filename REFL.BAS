DECLARE SUB inpdata ()
DECLARE FUNCTION DataIn$ (row!, col!, lim!)
DECLARE SUB ref (a!, B!, c!, d!, e!, f!, g!, h!)
SCREEN 12

CALL inpdata

SLEEP
CLS

DIM x(5), y(5), g(5), h(5)
WINDOW (0, 0)-(640, 480)
FOR i = 0 TO 40
LINE (i * 16, 0)-(i * 16, 480), 8
NEXT
FOR i = 0 TO 40
LINE (0, i * 16)-(640, i * 16), 8
NEXT
LINE (0, 16)-(640, 480), 1, B

LINE (320, 0)-(320, 480), 1
LINE (0, 240)-(640, 240), 1
'INPUT "Enter point of a"; x(1), y(1)
'INPUT "Enter point of b"; x(2), y(2)
'INPUT "Enter point of c"; x(3), y(3)
INPUT "enter mx+c ", m, c
y1 = m * 1 + c
y2 = m * 640 + c
x(1) = 1: y(1) = 2
x(2) = 3: y(2) = 5
x(3) = 5: y(3) = 3
x(1) = x(1) * 16
x(2) = x(2) * 16
x(3) = x(3) * 16
y(1) = y(1) * 16
y(2) = y(2) * 16
y(3) = y(3) * 16

LINE (320 + x(1), 240 + y(1))-(320 + x(2), 240 + y(2)), 7
LINE (320 + x(2), 240 + y(2))-(320 + x(3), 240 + y(3)), 7
LINE (320 + x(3), 240 + y(3))-(320 + x(1), 240 + y(1)), 7
PAINT (320 + (x(1) + x(2) + x(3)) / 3, 240 + (y(1) + y(2) + y(3)) / 3), 4, 7
SLEEP
FOR i = 1 TO 3
CALL ref(1, y1, 640, y2, x(i), y(i), g(i), h(i))
NEXT

y1 = m * -320 + c
LINE (320 + 1 * (-320), 240 + y1)-(320 + 640, 240 + y2)
LINE (320 + g(1), 240 + h(1))-(320 + g(2), 240 + h(2)), 7
LINE (320 + g(2), 240 + h(2))-(320 + g(3), 240 + h(3)), 7
LINE (320 + g(3), 240 + h(3))-(320 + g(1), 240 + h(1)), 7
PAINT (320 + (g(1) + g(2) + g(3)) / 3, 240 + (h(1) + h(2) + h(3)) / 3), 6, 7

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

SUB inpdata
REM for border
LINE (140, 90)-(510, 410), 1, B
LINE (150, 100)-(500, 400), 1, B
PAINT (149, 99), 4, 1

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
a$(i) = DataIn$(j, 48, 8)
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

SUB ref (a, B, c, d, e, f, g, h)
m.1 = (d - B) / (c - a)
m.2 = -1 / m.1
x = (f - B + (a * m.1) - (e * m.2)) / (m.1 - m.2)
y = m.1 * x - m.1 * a + B
g = 2 * x - e
h = 2 * y - f
END SUB

SUB ref1 (a, B, c, d, e, f, g, h)
m.1 = (-d + B) / (c - a)
m.2 = -1 / m.1
x = (-f + B + (a * m.1) - (e * m.2)) / (m.1 - m.2)
y = -1 * (m.1 * x - m.1 * a - B)
g = 2 * x - e
h = 2 * y - f
END SUB

