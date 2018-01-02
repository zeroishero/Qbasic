DECLARE FUNCTION rad! (n!)
DECLARE SUB rot (x!, y!, rot.x!, rot.y!, an!)
SCREEN 12
LINE (320 + 0, 480)-(320 + 100, 380)
SLEEP

PSET (100, 480 - 100)
CALL rot(100, 100, rot.x, rot.y, 90)
LINE (320 + 0, 480 - 0)-(320 + rot.x, 480 - rot.y)

FUNCTION rad (n)
rad = 3.1415926# / 180 * n
END FUNCTION

SUB rot (x, y, rot.x, rot.y, an)
rot.x = x * COS(rad(an)) - y * SIN(rad(an))
rot.y = y * COS(rad(an)) + x * SIN(rad(an))
END SUB

