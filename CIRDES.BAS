DECLARE SUB col (c!)
DECLARE FUNCTION rad! (n!)
SCREEN 12
COLOR 7
r = 100
FOR i = 1 TO 360 STEP .5
radian = rad(i)
x = 320 + r * COS(radian)
y = 240 + r * SIN(rad(360 - i))
PSET (x, y)
NEXT
FOR i = 1 TO 360
x = 320 + r * COS(rad(i))
y = 240 + r * SIN(rad(i))
IF i = 60 THEN
CIRCLE (x, y), r, , rad(60), rad(180)
ELSEIF i = 120 THEN
CIRCLE (x, y), r, , rad(0), rad(120)
ELSEIF i = 180 THEN
CIRCLE (x, y), r, , rad(300), rad(60)
ELSEIF i = 240 THEN
CIRCLE (x, y), r, , rad(240), rad(0)
ELSEIF i = 300 THEN
CIRCLE (x, y), r, , rad(180), rad(300)
ELSEIF i = 360 THEN
CIRCLE (x, y), r, , rad(120), rad(240)
END IF
NEXT
c = 1
d = 4
DO

1 PAINT (340, 240), c, 7
CALL col(500)
10 PAINT (360, 260), d, 7
CALL col(500)
'SLEEP
2 PAINT (340, 260), c, 7
CALL col(500)
20 PAINT (320, 280), d, 7
CALL col(500)
'SLEEP
3 PAINT (300, 260), c, 7
CALL col(500)
30 PAINT (280, 260), d, 7
CALL col(500)
'SLEEP
4 PAINT (300, 240), c, 7
CALL col(500)
40 PAINT (280, 220), d, 7
CALL col(500)
'SLEEP

5 PAINT (300, 220), c, 7
CALL col(500)
50 PAINT (320, 220), d, 7
CALL col(500)

'SLEEP
6 PAINT (340, 220), c, 7
CALL col(500)
60 PAINT (360, 220), d, 7
CALL col(500)
'SLEEP

11 PAINT (340, 240), d, 7
CALL col(500)
110 PAINT (360, 260), c, 7
CALL col(500)
'SLEEP
21 PAINT (340, 260), d, 7
CALL col(500)
210 PAINT (320, 280), c, 7
CALL col(500)
'SLEEP
31 PAINT (300, 260), d, 7
CALL col(500)
310 PAINT (280, 260), c, 7
CALL col(500)
'SLEEP
41 PAINT (300, 240), d, 7
CALL col(500)
410 PAINT (280, 220), c, 7
CALL col(500)
'SLEEP

51 PAINT (300, 220), d, 7
CALL col(500)
510 PAINT (320, 220), c, 7
CALL col(500)

'SLEEP
61 PAINT (340, 220), d, 7
CALL col(500)
610 PAINT (360, 220), c, 7
CALL col(500)
'SLEEP




LOOP WHILE INKEY$ <> "q"

SUB col (c)
FOR s = 1 TO c
NEXT
END SUB

FUNCTION rad (n)
rad = ((22 / 7) / 180) * n
END FUNCTION

