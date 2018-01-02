DECLARE FUNCTION rad! (n!)
SCREEN 12

FOR i = 0 TO (360 * 1) STEP .11
x = i
y = 40 * SIN(rad(x))
PSET (x / (360 * 1) * 620 + 20, 200 - y)
NEXT

FUNCTION rad (n)
rad = 3.14159265358964# / 180 * n
END FUNCTION

