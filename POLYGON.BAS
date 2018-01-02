DECLARE FUNCTION rad! (i!)
SCREEN 12
DIM x(50), y(50)
div = 360 / 5
n = 1
CIRCLE (320, 240), 200
FOR i = -90 TO 270 STEP div
x(n) = 320 + 200 * COS(rad(i))
y(n) = 240 + 200 * SIN(rad(i))
IF n > 1 THEN
LINE (x(n), y(n))-(x(n - 1), y(n - 1))
END IF
n = n + 1
NEXT

FUNCTION rad (i)
rad = 3.1415926# / 180 * i
END FUNCTION

