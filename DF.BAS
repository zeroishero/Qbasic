SCREEN 12
LINE (99, 99)-(301, 131), 1, B
LINE (100, 100)-(300, 130), 1, B



FOR i = 101 TO 298 STEP 3
LINE (i, 101)-(i, 129), 8
LINE (i + 1, 101)-(i + 1, 129), 8
LINE (i + 2, 101)-(i + 2, 129), 8
t = TIMER
DO
LOOP WHILE TIMER - t <= .0008
NEXT

