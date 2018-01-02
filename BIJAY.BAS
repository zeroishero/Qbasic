SCREEN 7, 0, 1, o
FOR i = 1 TO 600
b:
LINE (0 + a, 0 + b)-(0 + a, 20 + b)
LINE (0 + a, 0 + b)-(10 + a, 0 + b)
LINE (10 + a, 0 + b)-(10 + a, 10 + b)
LINE (10 + a, 10 + b)-(0 + a, 10 + b)
LINE (10 + a, 10 + b)-(10 + a, 20 + b)
LINE (10 + a, 20 + b)-(0 + a, 20 + b)

i:
LINE (15 + a, 0 + b)-(25 + a, 0 + b)
LINE (20 + a, 0 + b)-(20 + a, 20 + b)
LINE (15 + a, 20 + b)-(25 + a, 20 + b)

j:
LINE (40 + a, 0 + b)-(40 + a, 20 + b)
LINE (40 + a, 20 + b)-(30 + a, 20 + b)
LINE (30 + a, 20 + b)-(30 + a, 15 + b)

a:
LINE (45 + a, 0 + b)-(55 + a, 0 + b)
LINE (45 + a, 0 + b)-(45 + a, 20 + b)
LINE (55 + a, 0 + b)-(55 + a, 20 + b)
LINE (45 + a, 10 + b)-(55 + a, 10 + b)

y:
LINE (60 + a, 0 + b)-(65 + a, 10 + b)
LINE (65 + a, 10 + b)-(70 + a, 0 + b)
LINE (65 + a, 10 + b)-(65 + a, 20 + b)

PCOPY 1, 0
a = a + 2
b = b + 2
CLS
NEXT

