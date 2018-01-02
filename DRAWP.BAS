SCREEN 12
a = 1
FOR j = 1 TO 10
FOR i = 1 TO 360 STEP 7
PSET (320, 240)
DRAW "c" + STR$(a) + "bu" + STR$(r) + "r1" + "ta" + STR$(i)
a = a + 1
IF a = 10 THEN a = 1
NEXT i
r = r + 4
NEXT j

