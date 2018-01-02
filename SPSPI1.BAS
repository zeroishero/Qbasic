SCREEN 12
r = 5
i = 1
a = 1
FOR j = 1 TO 100
FOR i = 1 TO 182 STEP 5
PSET (320, 240), a
DRAW "bu" + STR$(r) + "r1bd" + STR$((2 * r)) + "r1ta" + STR$(i)
a = a + 1
IF a = 10 THEN
a = 0
r = r + 1
END IF
NEXT
b = b + 1
IF b = 10 THEN b = 0
a = b
IF INKEY$ = CHR$(27) THEN GOTO ll:
NEXT
ll:

