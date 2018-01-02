DECLARE SUB stopf ()
DECLARE SUB sec (d!)
DECLARE SUB inc (j!)
SCREEN 12
CLS
r = 20
FOR i = 1 TO 10
CIRCLE (320, 240), r, 4
r = r + 20
NEXT
COLOR 4
FOR k = 40 TO 360 STEP 40
PSET (320, 240)
DRAW "bu20" + "u180ta" + STR$(k)
FOR j = 1 TO 500
NEXT

NEXT
SLEEP
10
PAINT (340, 260), 1, 4
CALL stopf

20
PAINT (340, 245), 3, 4
CALL stopf

30
PAINT (350, 225), 2, 4
CALL stopf


40
PAINT (340, 210), 4, 4
CALL stopf

50
PAINT (310, 220), 6, 4
CALL stopf

60
PAINT (290, 220), 7, 4
CALL stopf

70
PAINT (290, 240), 8, 4
CALL stopf

80
PAINT (300, 260), 9, 4
CALL stopf


PAINT (325, 260), 10, 4
CALL stopf

PAINT (360, 280), 2, 4
CALL stopf
PAINT (380, 290), 3, 4
CALL stopf
PAINT (390, 310), 4, 4
CALL stopf
PAINT (391, 320), 5, 4
CALL stopf
PAINT (410, 330), 6, 4
CALL stopf
PAINT (420, 340), 7, 4
CALL stopf
PAINT (430, 360), 8, 4
CALL stopf
PAINT (440, 380), 9, 4
CALL stopf

2
PAINT (370, 245), 1, 4
CALL stopf
PAINT (390, 245), 2, 4
CALL stopf
PAINT (410, 245), 3, 4
CALL stopf
PAINT (430, 245), 4, 4
CALL stopf
PAINT (450, 245), 5, 4
CALL stopf
PAINT (470, 245), 6, 4
CALL stopf
PAINT (490, 245), 7, 4
CALL stopf
PAINT (510, 245), 8, 4
CALL stopf

3
PAINT (370, 220), 9, 4
CALL stopf
PAINT (390, 220), 1, 4
CALL stopf
PAINT (410, 220), 2, 4
CALL stopf
PAINT (430, 210), 3, 4
CALL stopf
PAINT (450, 210), 4, 4
CALL stopf
PAINT (470, 210), 5, 4
CALL stopf
PAINT (490, 200), 6, 4
CALL stopf
PAINT (510, 190), 7, 4
CALL stopf

4
PAINT (330, 190), 8, 4
CALL stopf
PAINT (330, 170), 9, 4
CALL stopf
PAINT (330, 150), 1, 4
CALL stopf
PAINT (330, 130), 2, 4
CALL stopf
PAINT (330, 110), 3, 4
CALL stopf
PAINT (330, 90), 4, 4
CALL stopf
PAINT (330, 70), 5, 4
CALL stopf
PAINT (330, 50), 6, 4
CALL stopf

5
PAINT (310, 190), 7, 4
CALL stopf
PAINT (310, 170), 8, 4
CALL stopf
PAINT (310, 150), 9, 4
CALL stopf
PAINT (310, 130), 1, 4
CALL stopf
PAINT (310, 110), 2, 4
CALL stopf
PAINT (310, 90), 3, 4
CALL stopf
PAINT (310, 70), 4, 4
CALL stopf
PAINT (310, 50), 5, 4
CALL stopf

6
PAINT (280, 205), 6, 4
CALL stopf
PAINT (260, 205), 7, 4
CALL stopf
PAINT (240, 205), 8, 4
CALL stopf
PAINT (220, 205), 9, 4
CALL stopf
PAINT (200, 205), 1, 4
CALL stopf
PAINT (180, 205), 2, 4
CALL stopf
PAINT (160, 205), 3, 4
CALL stopf
PAINT (140, 205), 4, 4
CALL stopf

7

PAINT (270, 240), 5, 4
CALL stopf
PAINT (250, 240), 6, 4
CALL stopf
PAINT (230, 240), 7, 4
CALL stopf
PAINT (210, 240), 8, 4
CALL stopf
PAINT (190, 240), 9, 4
CALL stopf
PAINT (170, 240), 1, 4
CALL stopf
PAINT (150, 240), 2, 4
CALL stopf
PAINT (130, 240), 3, 4
CALL stopf

8
PAINT (285, 275), 4, 4
CALL stopf
PAINT (280, 295), 5, 4
CALL stopf
PAINT (275, 315), 6, 4
CALL stopf
PAINT (270, 335), 7, 4
CALL stopf
PAINT (265, 355), 8, 4
CALL stopf
PAINT (260, 375), 9, 4
CALL stopf
PAINT (255, 395), 1, 4
CALL stopf
PAINT (250, 415), 2, 4
CALL stopf




9
PAINT (325, 290), 3, 4
CALL stopf
PAINT (325, 310), 4, 4
CALL stopf
PAINT (325, 330), 5, 4
CALL stopf
PAINT (325, 350), 6, 4
CALL stopf
PAINT (325, 370), 7, 4
CALL stopf
PAINT (325, 390), 8, 4
CALL stopf
PAINT (325, 410), 9, 4
CALL stopf
PAINT (325, 430), 1, 4
CALL stopf

SUB inc (j)
FOR a = 1 TO 360 STEP 10
PSET (320, 240)
DRAW "c7" + "u" + STR$(j) + "ta" + STR$(a)
NEXT

END SUB

SUB sec (d)
n = TIMER
'WHILE b < d
'b = TIMER - n
'WEND
END SUB

SUB stopf
FOR s = 1 TO 200
NEXT
END SUB

