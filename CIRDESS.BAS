DECLARE FUNCTION rad! (n!)
SCREEN 12
r = 100
COLOR 7
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
FOR j = 180 TO 300 STEP .5
a = x + r * COS(rad(j))
b = y + r * SIN(rad(j))
PSET (a, b)
NEXT

ELSEIF i = 120 THEN
FOR j = 240 TO 360 STEP .5
a = x + r * COS(rad(j))
b = y + r * SIN(rad(j))
PSET (a, b)
NEXT

ELSEIF i = 180 THEN
FOR j = 300 TO 360
a = x + r * COS(rad(j))
b = y + r * SIN(rad(j))
PSET (a, b)
NEXT

FOR j = 1 TO 60 STEP .5
a = x + r * COS(rad(j))
b = y + r * SIN(rad(j))
PSET (a, b)
NEXT

ELSEIF i = 240 THEN
FOR j = 1 TO 120 STEP .5
a = x + r * COS(rad(j))
b = y + r * SIN(rad(j))
PSET (a, b)
NEXT


ELSEIF i = 300 THEN
FOR j = 60 TO 180 STEP .5
a = x + r * COS(rad(j))
b = y + r * SIN(rad(j))
PSET (a, b)
NEXT

ELSEIF i = 360 THEN
FOR j = 120 TO 240 STEP .5
a = x + r * COS(rad(j))
b = y + r * SIN(rad(j))
PSET (a, b)
NEXT
END IF
NEXT
PAINT (340, 220), 1, 7
PAINT (300, 220), 1, 7
PAINT (340, 240), 1, 7


FUNCTION rad (n)
rad = ((22 / 7) / 180) * n
END FUNCTION

