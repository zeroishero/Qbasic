DECLARE FUNCTION rad! (i!)
SCREEN 12
DIM x(3), y(3)
h = 100
k = 340

LINE (h + 100, k - 100)-(h + 200, k - 100)
m1 = 3 ^ (1 / 3)
m2 = -1 * (3 ^ (1 / 3))
x = (200 * m2 - 100 * m1) / (m2 - m1)
y = m1 * (x - 100) + 100

PRINT ((x - 100) ^ 2 + (y - 100) ^ 2) ^ .5
LINE (h + x, k - y)-(h + 200, k - 100)
LINE (h + 100, k - 100)-(h + x, k - y)

CIRCLE (h + 100, k - 100), 50
CIRCLE (h + 200, k - 100), 50
CIRCLE (h + x, k - y), 50
END

x1 = (COS(0) - COS(120)) ^ 2
y1 = (SIN(0) - SIN(120)) ^ 2
r = 25 / (x1 * x1 + y1 * y1) ^ .5

an = 120
FOR i = 1 TO 3
x(i) = r * COS(rad(an))
y(i) = r * SIN(rad(an))
CIRCLE (320 + x(i), 240 + y(i)), 50
an = an + 120
NEXT
'FOR i = 1 TO 3

FUNCTION rad (i)
rad = 3.1415926# / 180 * i
END FUNCTION

