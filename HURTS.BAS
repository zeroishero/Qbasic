DECLARE FUNCTION rad! (i!)
SCREEN 12
PSET (320, 240)

d = .1
FOR k = 1 TO 20
r = 50
FOR i = 360 TO 0 STEP -1
j = i - 90
x = 320 + r * COS(rad(j))
y = 240 + r * SIN(rad(j))
PSET (x, y)
r = r + d
NEXT
d = d + .1
NEXT

FUNCTION rad (i)
rad = 3.1415926# / 180 * i
END FUNCTION

