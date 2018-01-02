DECLARE FUNCTION rad! (n!)
CLS
SCREEN 12
r = 5
i = 1
FOR j = 1 TO 80
c = k
FOR i = 1 TO 360 STEP 5
x = 320 + r * COS(rad(i))
y = 240 + r * SIN(rad(i))
PSET (x, y), c
c = c + 1
IF c = 10 THEN c = 1
NEXT i
k = k + 1
IF k = 10 THEN k = 1
r = r + 3
NEXT j
SLEEP

FUNCTION rad (n)
rad = (3.4159265358979# / 180) * n
END FUNCTION

