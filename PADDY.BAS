DECLARE FUNCTION rad! (i!)
DECLARE SUB rot (x!, y!, rot.x!, rot.y!, an!)
SCREEN 12


REM rad of ellipse
r1 = 3
r2 = 8

REM right part right aligned
an = -50

FOR j = 1 TO 10
h = 324 + 150 * COS(rad(an))
k = 240 - 150 * SIN(rad(an))

FOR i = 0 TO 360

REM points of ellipse
x = r1 * COS(rad(i))
y = r2 * SIN(rad(i))


REM rotating the  points by theta angle
CALL rot(x, y, x1, y1, -330)

REM plotting rotated
PSET (h + x1, k - y1), 7

NEXT i

an = an + 10
NEXT



REM right part left aligned
an = -50

FOR j = 1 TO 10
h = 316 + 150 * COS(rad(an))
k = 240 - 150 * SIN(rad(an))

FOR i = 0 TO 360

REM points of ellipse
x = r1 * COS(rad(i))
y = r2 * SIN(rad(i))


REM rotating the  points by theta angle
CALL rot(x, y, x1, y1, 330)

REM plotting rotated
PSET (h + x1, k - y1), 7
NEXT i
an = an + 10
NEXT


REM left part right aligned
an = 140

FOR j = 1 TO 10
h = 324 + 150 * COS(rad(an))
k = 240 - 150 * SIN(rad(an))

FOR i = 0 TO 360

REM points of ellipse
x = r1 * COS(rad(i))
y = r2 * SIN(rad(i))


REM rotating the  points by theta angle
CALL rot(x, y, x1, y1, -330)

REM plotting rotated
PSET (h + x1, k - y1), 7

NEXT i

an = an + 10
NEXT



REM right part left aligned
an = 140

FOR j = 1 TO 10
h = 316 + 150 * COS(rad(an))
k = 240 - 150 * SIN(rad(an))

FOR i = 0 TO 360

REM points of ellipse
x = r1 * COS(rad(i))
y = r2 * SIN(rad(i))


REM rotating the  points by theta angle
CALL rot(x, y, x1, y1, 330)

REM plotting rotated
PSET (h + x1, k - y1), 7
NEXT i
an = an + 10
NEXT

FOR j = 140 TO 235 STEP .2
x = 150 * COS(rad(j))
y = 150 * SIN(rad(j))
PSET (320 + x, 240 - y)
NEXT

FOR j = -50 TO 45 STEP .2
x = 150 * COS(rad(j))
y = 150 * SIN(rad(j))
PSET (320 + x, 240 - y)
NEXT

FUNCTION rad (i)
rad = 3.1415926# / 180 * i
END FUNCTION

SUB rot (x, y, rot.x, rot.y, an)
rot.x = x * COS(rad(an)) + y * SIN(rad(an))
rot.y = y * COS(rad(an)) - x * SIN(rad(an))
END SUB

