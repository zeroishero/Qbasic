DECLARE FUNCTION toa! (n!)
SCREEN 12
CLS
pi! = 22 / 7
r! = 40
FOR n = 1 TO 2880
x! = 320 + COS((pi! / 180) * i) * r!
y! = 240 + SIN((pi! / 180) * i) * r!
PSET (x!, y!)
r! = r! + .01
NEXT

FUNCTION toa! (n!)
IF n! > 360 THEN toa! = n! - 360
toa! = toa!(n!)
END FUNCTION

