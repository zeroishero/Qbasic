DECLARE FUNCTION rad! (n!)
DIM x(5)
DIM y(5)
DIM a(5)
DIM b(5)
DIM dh(5)
DIM name$(5)
LOCATE 1, 10: INPUT "Enter title"; title$

REM inputting values
FOR i = 1 TO 5
'LOCATE 1, 5: INPUT "Enter name and value(name,value)"; name$(i), a(i)
'CLS
READ a(i)
NEXT

REM finding total
FOR i = 1 TO 5
total = total + a(i)
NEXT

REM converting values to angle
FOR i = 1 TO 5
b(i) = rad((a(i) / total) * 360)
NEXT i

REM making angles half
dh(1) = b(1) / 2
dh(2) = b(1) + (b(2) / 2)
dh(3) = b(1) + b(2) + (b(3) / 2)
dh(4) = b(1) + b(2) + b(3) + (b(4) / 2)
dh(5) = b(1) + b(2) + b(3) + b(4) + (b(5) / 2)

REM converting angles from 0
FOR j = 2 TO 5
b(j) = b(j) + b(j - 1)
NEXT

CLS
LOCATE 5, 40: PRINT title$

SCREEN 7, 0, 0, 1
REM drawing circle and making line
CIRCLE (160, 100), 60, 7
LINE (160, 100)-(220, 100), 7

REM finding points of required angle
FOR i = 1 TO 5
x(i) = 160 + 60 * COS(b(i))
y(i) = 100 + 60 * SIN(b(i))
NEXT

REM joining to points of angles
FOR i = 1 TO 5
LINE (160, 100)-(x(i), y(i)), 7
NEXT

DIM dhpx(5)
DIM dhpy(5)
DIM mx(5)
DIM my(5)
col = 1
FOR i = 1 TO 5
dhpx(i) = 160 + 60 * COS(dh(i))
dhpy(i) = 100 + 60 * SIN(dh(i))
NEXT

FOR i = 1 TO 5
mx(i) = (160 + dhpx(i)) / 2
my(i) = (100 + dhpy(i)) / 2
PAINT (mx(i), my(i)), col, 7
col = col + 1
NEXT
PCOPY 0, 1
DATA 120,200,300,50,400

FUNCTION rad (n)
rad = (3.141592652538979# / 180) * n
END FUNCTION

