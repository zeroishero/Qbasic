DIM abc(1 TO 1000)
SCREEN 7, 0, 1, 0
COLOR 4
FOR i = 1 TO 90
a = a + 2.5
d = d + 2
e = e + 3
f = f + 2

k:
LINE (0 + a, 0 + b)-(0 + a, 20 + b)
LINE (0 + a, 10 + b)-(10 + a, 0 + b)
LINE (0 + a, 10 + b)-(10 + a, 20 + b)
e:
COLOR 1
LINE (15 + a, 0 + b)-(15 + a, 20 + b)
LINE (15 + a, 0 + b)-(25 + a, 0 + b)
LINE (15 + a, 10 + b)-(25 + a, 10 + b)
LINE (15 + a, 20 + b)-(25 + a, 20 + b)
s:
COLOR 2
LINE (30 + a, 0 + b)-(40 + a, 0 + b)
LINE (30 + a, 0 + b)-(30 + a, 10 + b)
LINE (30 + a, 10 + b)-(40 + a, 10 + b)
LINE (40 + a, 10 + b)-(40 + a, 20 + b)
LINE (40 + a, 20 + b)-(30 + a, 20 + b)
a:
COLOR 3
LINE (45 + a, 0 + b)-(45 + a, 20 + b)
LINE (55 + a, 0 + b)-(55 + a, 20 + b)
LINE (45 + a, 10 + b)-(55 + a, 10 + b)
LINE (45 + a, 0 + b)-(55 + a, 0 + b)
r:
COLOR 5
LINE (60 + a, 0 + b)-(60 + a, 20 + b)
LINE (60 + a, 0 + b)-(70 + a, 0 + b)
LINE (70 + a, 0 + b)-(70 + a, 10 + b)
LINE (70 + a, 10 + b)-(60 + a, 10 + b)
LINE (60 + a, 10 + b)-(70 + a, 20 + b)
i:
COLOR 6
LINE (75 + a, 0 + b)-(90 + a, 0 + b)
LINE (82 + a, 0 + b)-(82 + a, 20 + b)
LINE (75 + a, 20 + b)-(90 + a, 20 + b)


LINE (0 + c, 0 + d)-(0 + c, 20 + d)
LINE (0 + c, 10 + d)-(10 + c, 0 + d)
LINE (0 + c, 10 + d)-(10 + c, 20 + d)
COLOR 8
LINE (15 + c, 0 + d)-(15 + c, 20 + d)
LINE (15 + c, 0 + d)-(25 + c, 0 + d)
LINE (15 + c, 10 + d)-(25 + c, 10 + d)
LINE (15 + c, 20 + d)-(25 + c, 20 + d)
COLOR 9
LINE (30 + c, 0 + d)-(40 + c, 0 + d)
LINE (30 + c, 0 + d)-(30 + c, 10 + d)
LINE (30 + c, 10 + d)-(40 + c, 10 + d)
LINE (40 + c, 10 + d)-(40 + c, 20 + d)
LINE (40 + c, 20 + d)-(30 + c, 20 + d)

LINE (45 + c, 0 + d)-(45 + c, 20 + d)
LINE (55 + c, 0 + d)-(55 + c, 20 + d)
LINE (45 + c, 10 + d)-(55 + c, 10 + d)
LINE (45 + c, 0 + d)-(55 + c, 0 + d)

LINE (60 + c, 0 + d)-(60 + c, 20 + d)
LINE (60 + c, 0 + d)-(70 + c, 0 + d)
LINE (70 + c, 0 + d)-(70 + c, 10 + d)
LINE (70 + c, 10 + d)-(60 + c, 10 + d)
LINE (60 + c, 10 + d)-(70 + c, 20 + d)

LINE (75 + c, 0 + d)-(90 + c, 0 + d)
LINE (82 + c, 0 + d)-(82 + c, 20 + d)
LINE (75 + c, 20 + d)-(90 + c, 20 + d)

LINE (0 + e, 0 + f)-(0 + e, 20 + f)
LINE (0 + e, 10 + f)-(10 + e, 0 + f)
LINE (0 + e, 10 + f)-(10 + e, 20 + f)
COLOR 8
LINE (15 + e, 0 + f)-(15 + e, 20 + f)
LINE (15 + e, 0 + f)-(25 + e, 0 + f)
LINE (15 + e, 10 + f)-(25 + e, 10 + f)
LINE (15 + e, 20 + f)-(25 + e, 20 + f)
COLOR 9
LINE (30 + e, 0 + f)-(40 + e, 0 + f)
LINE (30 + e, 0 + f)-(30 + e, 10 + f)
LINE (30 + e, 10 + f)-(40 + e, 10 + f)
LINE (40 + e, 10 + f)-(40 + e, 20 + f)
LINE (40 + e, 20 + f)-(30 + e, 20 + f)

LINE (45 + e, 0 + f)-(45 + e, 20 + f)
LINE (55 + e, 0 + f)-(55 + e, 20 + f)
LINE (45 + e, 10 + f)-(55 + e, 10 + f)
LINE (45 + e, 0 + f)-(55 + e, 0 + f)

LINE (60 + e, 0 + f)-(60 + e, 20 + f)
LINE (60 + e, 0 + f)-(70 + e, 0 + f)
LINE (70 + e, 0 + f)-(70 + e, 10 + f)
LINE (70 + e, 10 + f)-(60 + e, 10 + f)
LINE (60 + e, 10 + f)-(70 + e, 20 + f)

LINE (75 + e, 0 + f)-(90 + e, 0 + f)
LINE (82 + e, 0 + f)-(82 + e, 20 + f)
LINE (75 + e, 20 + f)-(90 + e, 20 + f)


'GET (0 + a, 0 + b)-(90 + a, 20 + b), abc

PCOPY 1, 0
CLS
NEXT



