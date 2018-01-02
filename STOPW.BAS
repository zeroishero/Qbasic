DECLARE FUNCTION calltime$ (sec!)
DECLARE FUNCTION rad! (an!)
DECLARE FUNCTION caltime$ (sec)
RANDOMIZE TIMER
SCREEN 12
CIRCLE (320, 200), 80
sec.an = 270  'making hands point at 12 oclock
min.an = 270
hrs.an = 270
sec.t = 0
min.t = 0
hrs.t = 0
sec.cnt = 0
DO
a$ = INKEY$
REM defining position of x and y for hands
hrs.x = 320 + 50 * COS(rad(hrs.an)) 'min hand
hrs.y = 200 + 50 * SIN(rad(hrs.an)) 'min hand
min.x = 320 + 60 * COS(rad(min.an)) 'min hand
min.y = 200 + 60 * SIN(rad(min.an)) 'min hand
sec.x = 320 + 70 * COS(rad(sec.an)) 'sec hand
sec.y = 200 + 70 * SIN(rad(sec.an)) 'sec hand

REM drawing lines at 12:00
LINE (320, 200)-(sec.x, sec.y), 1
LINE (320, 200)-(min.x, min.y), 4
LINE (320, 200)-(hrs.x, hrs.y), 3

a = TIMER
DO
LOOP WHILE (TIMER - a) < 1
sec.an = sec.an + 6
min.an = min.an + (6 / 60)
hrs.an = hrs.an + ((6 / 60) / 60)
sec.cnt = sec.cnt + 1

IF a$ = "p" THEN
DO
LOOP UNTIL INKEY$ = "p"
END IF

LINE (320, 200)-(sec.x, sec.y), 0
LINE (320, 200)-(min.x, min.y), 0
LINE (320, 200)-(hrs.x, hrs.y), 0
LOCATE 5, 5: PRINT calltime$(sec.cnt)
LOOP WHILE a$ <> "q"

FUNCTION calltime$ (sec)
sec.t = sec MOD 60
min.t = sec \ 60
min.t = min.t MOD 60
hrs.t = min.t \ 60
sec.t$ = LTRIM$(RTRIM$(STR$(sec.t)))
min.t$ = LTRIM$(RTRIM$(STR$(min.t)))
hrs.t$ = LTRIM$(RTRIM$(STR$(hrs.t)))
IF LEN(sec.t$) < 2 THEN sec.t$ = "0" + sec.t$
IF LEN(min.t$) < 2 THEN min.t$ = "0" + min.t$
IF LEN(hrs.t$) < 2 THEN hrs.t$ = "0" + hrs.t$
calltime$ = hrs.t$ + ":" + min.t$ + ":" + sec.t$
END FUNCTION

FUNCTION rad (an)
rad = ((22 / 7) / 180 * an)
END FUNCTION

