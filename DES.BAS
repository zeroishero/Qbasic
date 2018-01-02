DECLARE FUNCTION rad! (i!)
DECLARE FUNCTION PassIn$ (row, col, lim)
DECLARE FUNCTION PassInA$ (row, col, lim, pass$)
DECLARE FUNCTION DataIn$ (row, col, lim)
DECLARE SUB locchange (a, B)
DECLARE SUB des (h!, k!, an!, amp)
DECLARE SUB ref (a, B, c, d, e, f, g, h)
SCREEN 12

REM making outline
CALL des(170, 400, 360, 50)
CALL des(170 - 20 * .75, 420, 400, 50)
LINE (125, 45)-(540, 450), 4, B
PAINT (172, 410), 1, 4
PAINT (130, 50), 13, 4

REM preparing for authentication
LOCATE 9, 30: PRINT "Authentication Required"
REM for border of Authent
a = 8
B = 29
c = a + 3
d = B + 27
CALL locchange(a, B)
CALL locchange(c, d)
LINE (B, a)-(d, c), 1, B 'out box
LINE (B + 7, a + 7)-(d - 7, c - 7), 1, B 'in box
LINE (B, a)-(B + 7, a + 7), 1  'left top
LINE (B, c)-(B + 7, c - 7), 1  'left down
LINE (d, c)-(d - 7, c - 7), 1  'right down
LINE (d, a)-(d - 7, a + 7), 1  'left down
PAINT (B + 4, a + 2), 4, 1     'up
PAINT (B + 2, a + 5), 4, 1     'left
PAINT (B + 10, c - 2), 4, 1    'down
PAINT (d - 2, a + 4), 4, 1     'right

REM for username
LOCATE 14, 24: PRINT "Username:"
a = 13
B = 35
c = a + 2
d = B + 22
CALL locchange(a, B)
CALL locchange(c, d)
a = a + 13
c = c + 13
LINE (B, a)-(d, c), 1, B 'out box
LINE (B + 4, a + 4)-(d - 4, c - 4), 1, B 'in box
LINE (B, a)-(B + 4, a + 4), 1  'left top
LINE (B, c)-(B + 4, c - 4), 1  'left down
LINE (d, c)-(d - 4, c - 4), 1  'right down
LINE (d, a)-(d - 4, a + 4), 1  'left down
PAINT (B + 4, a + 2), 4, 1     'up
PAINT (B + 2, a + 5), 4, 1     'left
PAINT (B + 10, c - 2), 4, 1    'down
PAINT (d - 2, a + 4), 4, 1     'right


REM for password
LOCATE 18, 24: PRINT "Password:"
a = 17
B = 35
c = a + 2
d = B + 22
CALL locchange(a, B)
CALL locchange(c, d)
a = a + 13
c = c + 13
LINE (B, a)-(d, c), 1, B 'out box
LINE (B + 4, a + 4)-(d - 4, c - 4), 1, B 'in box
LINE (B, a)-(B + 4, a + 4), 1  'left top
LINE (B, c)-(B + 4, c - 4), 1  'left down
LINE (d, c)-(d - 4, c - 4), 1  'right down
LINE (d, a)-(d - 4, a + 4), 1  'left down
PAINT (B + 4, a + 2), 4, 1     'up
PAINT (B + 2, a + 5), 4, 1     'left
PAINT (B + 10, c - 2), 4, 1    'down
PAINT (d - 2, a + 4), 4, 1     'right

REM inputting username AND password
user$ = DataIn$(14, 36, 17)
pass$ = PassInA$(18, 36, 17, "Zero")
IF user$ = "zero" AND pass$ = "Zero" THEN
LOCATE 22, 25: PRINT "You are authenticated"
ELSE
LOCATE 22, 25: COLOR 4: PRINT "Username or password incorrect"
END IF

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

SUB des (h, k, an, amp)
c = h + 50 * rad(an)
d = k + 10 * SIN(rad(an))
a = d - k + h
B = h - c + k

FOR i = 0 TO an
x = h + amp * rad(i)
y = k + 10 * SIN(rad(i))
PSET (x, y), 4
PSET (y - k + h, h - x + k), 4
CALL ref(a, B, c, d, x, y, rx, ry)
CALL ref(a, B, c, d, y - k + h, h - x + k, rx1, ry1)
PSET (rx, ry), 4
PSET (rx1, ry1), 4
NEXT

'h.1 = y - k + h
'k.1 = h - x + k
'h.2 = h.1 + 50 * rad(360)
'k.2 = k
'FOR i = 0 TO an
'x = h.1 + 50 * rad(i)
'y = k.1 + 10 * SIN(rad(i))
'x.2 = h.2 + 50 * rad(i)
'y.2 = k.2 + 10 * SIN(rad(i))
'PSET (x, y)
'PSET (y.2 - k.2 + h.2, h.2 - x.2 + k.2)
'IF i = 360 THEN PRINT y - k + h, h - x + k
'NEXT

END SUB

SUB locchange (a, B)
a = (a / 30 * 480) - 20
B = (B / 80 * 640) - 18

END SUB

FUNCTION PassIn$ (row, col, lim)
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
LOCATE row, j: PRINT "*";
j = j + 1
END IF

PassIn$ = B$
LOOP WHILE r$ <> CHR$(13)

END FUNCTION

FUNCTION PassInA$ (row, col, lim, pass$)
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
LOCATE row, j: PRINT "*";
j = j + 1
IF B$ = pass$ THEN
PassInA$ = B$
EXIT DO
END IF

END IF

PassInA$ = B$
LOOP WHILE r$ <> CHR$(13)

END FUNCTION

FUNCTION rad (i)
rad = (3.1415936# / 180) * i
END FUNCTION

SUB ref (a, B, c, d, e, f, g, h)
m.1 = (-d + B) / (c - a)
m.2 = -1 / m.1
x = (-f + B + (a * m.1) - (e * m.2)) / (m.1 - m.2)
y = -1 * (m.1 * x - m.1 * a - B)
g = 2 * x - e
h = 2 * y - f

END SUB

