DECLARE SUB ref (a!, b!, c!, d!, e!, f!, g!, h!)
SCREEN 12
DIM x(5), y(5), g(5), h(5)
WINDOW (0, 0)-(640, 480)


INPUT "Enter point of a"; x(1), y(1)
INPUT "Enter point of b"; x(2), y(2)
INPUT "Enter point of c"; x(3), y(3)
INPUT "enter mx+c ", a, b, con

IF b <> 0 AND a <> 0 THEN
m = -a / b
c = -con / b
c = c * 16
y1 = m * 1 + c
y2 = m * 640 + c
x1 = 1
x2 = 640
ELSEIF a = 0 THEN
y1 = -con / b
y2 = y1
x1 = 1
x2 = 640
ELSEIF b = 0 THEN
x1 = -con / a
x2 = x1
END IF

CLS
x(1) = x(1) * 16
x(2) = x(2) * 16
x(3) = x(3) * 16
y(1) = y(1) * 16
y(2) = y(2) * 16
y(3) = y(3) * 16

FOR i = 0 TO 40
LINE (i * 16, 0)-(i * 16, 480), 8
NEXT

FOR i = 0 TO 40
LINE (0, i * 16)-(640, i * 16), 8
NEXT

LINE (0, 0)-(640, 480), 1, B

LINE (320, 0)-(320, 480), 1
LINE (0, 240)-(640, 240), 1


LINE (320 + x(1), 240 + y(1))-(320 + x(2), 240 + y(2)), 7
LINE (320 + x(2), 240 + y(2))-(320 + x(3), 240 + y(3)), 7
LINE (320 + x(3), 240 + y(3))-(320 + x(1), 240 + y(1)), 7
PAINT (320 + (x(1) + x(2) + x(3)) / 3, 240 + (y(1) + y(2) + y(3)) / 3), 4, 7
FOR i = 1 TO 3
CALL ref(x1, y1, x2, y2, x(i), y(i), g(i), h(i))
NEXT

y1 = m * -320 + c
LINE (320 + x1 * (-320), 240 + y1)-(320 + x2, 240 + y2)
LINE (320 + g(1), 240 + h(1))-(320 + g(2), 240 + h(2)), 3
LINE (320 + g(2), 240 + h(2))-(320 + g(3), 240 + h(3)), 3
LINE (320 + g(3), 240 + h(3))-(320 + g(1), 240 + h(1)), 3
PAINT (320 + (g(1) + g(2) + g(3)) / 3, 240 + (h(1) + h(2) + h(3)) / 3), 6, 3


LINE (320 + g(1), 240 + h(1))-(320 + x(1), 240 + y(1)), 14
LINE (320 + g(2), 240 + h(2))-(320 + x(2), 240 + y(2)), 14
LINE (320 + g(3), 240 + h(3))-(320 + x(3), 240 + y(3)), 14

SLEEP
CLS

SUB ref (a, b, c, d, e, f, g, h)
m.1 = (d - b) / (c - a)
m.2 = -1 / m.1
x = (f - b + (a * m.1) - (e * m.2)) / (m.1 - m.2)
y = m.1 * x - m.1 * a + b
g = 2 * x - e
h = 2 * y - f
END SUB

SUB ref1 (a, b, c, d, e, f, g, h)
m.1 = (-d + b) / (c - a)
m.2 = -1 / m.1
x = (-f + b + (a * m.1) - (e * m.2)) / (m.1 - m.2)
y = -1 * (m.1 * x - m.1 * a - b)
g = 2 * x - e
h = 2 * y - f
END SUB

