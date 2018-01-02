DECLARE SUB rot (x!, y!, rot.x!, rot.y!, an!)
DECLARE FUNCTION rad! (n!)
SCREEN 12


REM DEFINING CENTER
h = 100
k = 300

REM COORDINATES OF B
a = 100
b = 100

REM COORDINATES OF C
c = 200
d = 100

REM SLOPE OF BC
m.bc = (d - b) / (c - a)
'm.bc = 0

REM FINDING SLOPE OF BA
m.an = SIN(rad(300)) / COS(rad(300))
m.ab = (m.an - m.bc) / (m.an * m.bc - 1)
'm.ab = SIN(60) / COS(60)

REM FINDING SLOPE OF BA
m.an = SIN(rad(240)) / COS(rad(240))
m.ac = (m.an - m.bc) / (m.an * m.bc - 1)

REM FINDING COORDINATES OF A
x = (d - b + m.ab * a - m.ac * c) / (m.ab - m.ac)
y = m.ab * (x - a) + b

REM JOINING POINTS OF TRIANGLE
LINE (h + a, k - b)-(h + c, k - d)
LINE (h + a, k - b)-(h + x, k - y)
LINE (h + x, k - y)-(h + c, k - d)



CIRCLE (h + a, k - b), 50
CIRCLE (h + c, k - d), 50
CIRCLE (h + x, k - y), 50

REM FOR FIRST CIRCLE
x1 = 50 * COS(rad(0))
y1 = 50 * SIN(rad(0))
CALL rot(x1, y1, rot.x1, rot.y1, 90)

REM FOR FIRST CIRCLE
x1 = a + 50 * COS(rad(-90))
y1 = b + 50 * SIN(rad(-90))

x2 = c + 50 * COS(rad(-90))
y2 = d + 50 * SIN(rad(-90))

LINE (h + x1, k - y1)-(h + x2, k - y2)

REM LEFT SIDE
mid.x = (a + x) / 2
mid.y = (b + y) / 2
CALL rot(mid.x - x, mid.y - y, rot.mid.x1, rot.mid.y1, 270)
rot.mid.x1 = rot.mid.x1 + x
rot.mid.y1 = rot.mid.y1 + y
'LINE (h + x, k - y)-(h + rot.mid.x1, k - rot.mid.y1)

mid.x = (a + x) / 2
mid.y = (b + y) / 2
CALL rot(mid.x - a, mid.y - b, rot.mid.a2, rot.mid.b2, 90)
rot.mid.a2 = rot.mid.a2 + a
rot.mid.b2 = rot.mid.b2 + b

REM SLOPE OF PQ
m.pq = (rot.mid.b2 - rot.mid.y1) / (rot.mid.a2 - rot.mid.x1)


LINE (h + rot.mid.x1, k - rot.mid.y1)-(h + rot.mid.a2, k - rot.mid.b2)

REM RIGHT SIDE
mid.x = (c + x) / 2
mid.y = (d + y) / 2
CALL rot(mid.x - x, mid.y - y, rot.mid.x3, rot.mid.y3, 90)
rot.mid.x3 = rot.mid.x3 + x
rot.mid.y3 = rot.mid.y3 + y
'LINE (h + x, k - y)-(h + rot.mid.x3, k - rot.mid.y3)

mid.x = (c + x) / 2
mid.y = (d + y) / 2
CALL rot(mid.x - x, mid.y - y, rot.mid.x4, rot.mid.y4, 90)
rot.mid.x4 = rot.mid.x4 + c
rot.mid.y4 = rot.mid.y4 + d
LINE (h + rot.mid.x3, k - rot.mid.y3)-(h + rot.mid.x4, k - rot.mid.y4)

REM SLOPE OF PR
m.pq = (rot.mid.y4 - rot.mid.y3) / (rot.mid.x4 - rot.mid.x3)

x.cor = (rot.mid.y1 - y1 - m.pq * rot.mid.x1) / (0 - m.pq)
y.cor = y1
LINE (h + x.cor, k - y.cor)-(h + x1, k - y1)
END


FUNCTION rad (n)
rad = 3.1415926# / 180 * n
END FUNCTION

SUB rot (x, y, rot.x, rot.y, an)
rot.x = x * COS(rad(an)) - y * SIN(rad(an))
rot.y = y * COS(rad(an)) + x * SIN(rad(an))
END SUB

