DECLARE FUNCTION rad! (n!)
CLS
SCREEN 12
CIRCLE (320, 240), 100
DO
a$ = TIME$
LOCATE 2, 10: PRINT a$
sec = VAL(MID$(a$, 7, 2))
'IF sec >= 15 THEN
'sec = sec - 15
'ELSE
'sec = 60 - 15 + sec
'END IF
min = VAL(MID$(a$, 4, 2))
'IF min >= 15 THEN
'min = min - 15
'ELSE
'min = 60 - 15 + min
'END IF
hr = VAL(MID$(a$, 1, 2))
'IF hr >= 3 THEN
'hr = hr - 3
'ELSE
'hr = 12 - 3 + hr
'END IF

IF hr > 12 THEN hr = hr - 12
sang = ((sec / 60) * 360) - 90
mang = ((min / 60) * 360) - 90
hang = ((hr / 12) * 360) - 90
xsec = 320 + 100 * COS(rad(sang))
ysec = 240 + 100 * SIN(rad(sang))
xmin = 320 + 90 * COS(rad(mang))
ymin = 240 + 90 * SIN(rad(mang))
xhr = 320 + 80 * COS(rad(hang))
yhr = 240 + 80 * SIN(rad(hang))
LINE (320, 240)-(xsec, ysec), 7
LINE (320, 240)-(xmin, ymin), 7
LINE (320, 240)-(xhr, yhr), 7
SLEEP 1
LINE (320, 240)-(xsec, ysec), 0
LINE (320, 240)-(xmin, ymin), 0
LINE (320, 240)-(xhr, yhr), 0
LOOP WHILE INKEY$ <> "q"

FUNCTION rad (n)
rad = ((22 / 7) / 180) * n
END FUNCTION

