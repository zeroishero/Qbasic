SCREEN 7, 0, 0, 1
RANDOMIZE TIMER
DIM a AS INTEGER
DIM b AS INTEGER
DIM c AS INTEGER
DIM d AS INTEGER
DIM dis AS INTEGER
REM defining centers

a = RND * 100 + 20
b = RND * 100 + 20
c = RND * 50 + 120
d = RND * 50 + 120

REM defining change position
v.a = 1
v.b = 1
v.c = -1
v.d = 1

REM beginning circle
DO
REM first circle
CIRCLE (a, b), 10, 4
'paint (a, b), 1, 4
REM second circle
CIRCLE (c, d), 10, 4
'paint (c, d), 1, 4
'LINE (a, b)-(c, d)
dis = ((a - c) ^ 2 + (b - d) ^ 2) ^ .5
PCOPY 0, 1


FOR count = 1 TO 500
NEXT count

't = TIMER
'DO
'LOOP WHILE TIMER - t < .08

'paint (a, b), 0, 4
'paint (c, d), 0, 4
CIRCLE (a, b), 10, 0
CIRCLE (c, d), 10, 0
LINE (a, b)-(c, d), 0
a = a + v.a
b = b + v.b
c = c + v.c
d = d + v.d

REM bouncing off for first ball
IF a + 10 >= 321 THEN v.a = -1 * v.a
IF a - 10 <= 0 THEN v.a = -1 * v.a
IF b - 10 <= 0 THEN v.b = -1 * v.b
IF b + 10 >= 201 THEN v.b = -1 * v.b

REM bouncing off for second ball
IF c - 10 < 0 THEN v.c = -1 * v.c
IF c + 10 > 320 THEN v.c = -1 * v.c
IF d + 10 > 200 THEN v.d = -1 * v.d
IF d - 10 < 0 THEN v.d = -1 * v.d


REM if two balls meet each other
IF done <> 0 THEN
done = done + 1
END IF

IF dis <= 21 AND done = 0 THEN
check = 1
v.a = -1 * v.a
v.c = -1 * v.a
done = 1
END IF
here:
IF done > 4 THEN done = 0
LOOP WHILE INKEY$ <> "q"

