DECLARE FUNCTION rad! (an!)
RANDOMIZE TIMER
SCREEN 12
hrs.an = 270
min.an = 270
sec.an = 270
DO
CIRCLE (320, 200), 80
'a$ = TIME$
REM defining position of x and y for hands
'hrs = VAL(MID$(a$, 1, 2))
'min = VAL(MID$(a$, 4, 2))
'sec = VAL(MID$(a$, 7, 2))

'IF hrs > 12 THEN hrs = hrs - 12

'hrs.an = (hrs / 12) * 360 - 90
'min.an = (min / 60) * 360 - 90
'sec.an = (sec / 60) * 360 - 90

hrs.x = 320 + 50 * COS(rad(hrs.an)) 'min hand
hrs.y = 200 + 50 * SIN(rad(hrs.an)) 'min hand
min.x = 320 + 60 * COS(rad(min.an)) 'min hand
min.y = 200 + 60 * SIN(rad(min.an)) 'min hand
sec.x = 320 + 70 * COS(rad(sec.an)) 'sec hand
sec.y = 200 + 70 * SIN(rad(sec.an)) 'sec hand

REM drawing lines at 12:00
LINE (320, 200)-(sec.x, sec.y)
LINE (320, 200)-(min.x, min.y)
LINE (320, 200)-(hrs.x, hrs.y)

a = TIMER
DO
LOOP WHILE (TIMER - a) < 1

sec.an = sec.an + 6
min.an = min.an + (6 / 60)
hrs.an = hrs.an + ((6 / 60) / 60)

LINE (320, 200)-(sec.x, sec.y), 0
LINE (320, 200)-(min.x, min.y), 0
LINE (320, 200)-(hrs.x, hrs.y), 0
LOOP WHILE INKEY$ <> "q"

FUNCTION rad (an)
rad = ((22 / 7) / 180 * an)
END FUNCTION

