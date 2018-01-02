CLS
SCREEN 12
CIRCLE (320, 240), 102, 4


'first triangle
LINE (320, 140)-(235, 290), 4
LINE (320, 140)-(405, 290), 4
LINE (235, 290)-(405, 290), 4

' rotated triangle
LINE (320, 340)-(235, 190), 4
LINE (320, 340)-(405, 190), 4
LINE (235, 190)-(405, 190), 4


' sun
pi = 22 / 7
CIRCLE (320, 190), 10, 4, INT(0), INT(pi), 1
PAINT (320, 188), 3, 4

FOR i = -87 TO 93 STEP 15
PSET (320, 190), 3
DRAW "bu10u3ta" + STR$(i)
NEXT


x = 263: y = 200 ' left "diyo"
CIRCLE (x, y), 8, 7
CIRCLE (x, y + 6), 8, 7
PAINT (x, y + 10), 9, 7
LINE (x - 8, y - 8)-(x + 8, y + 2), 0, BF
CIRCLE (x, y + 6), 2, 14
PAINT (x, y + 5), 14, 14

x = 377: y = 200 ' right "diyo"
CIRCLE (x, y), 8, 7
CIRCLE (x, y + 6), 8, 7
PAINT (x, y + 10), 9, 7
LINE (x - 8, y - 8)-(x + 8, y + 2), 0, BF
CIRCLE (x, y + 6), 2, 14
PAINT (x, y + 5), 14, 14

x = 263: y = 265 'left "A"

LINE (x, y)-(x + 9, y + 18)
LINE (x, y)-(x - 9, y + 18)
LINE (x - 6, y + 11)-(x + 6, y + 11)


x = 378: y = 265 ' right "A"
LINE (x, y)-(x + 9, y + 18)
LINE (x, y)-(x - 9, y + 18)
LINE (x - 6, y + 11)-(x + 6, y + 11)

' draw down "I"
x = 320: y = 300
DRAW "ta0"' reset angle to "zero"
PSET (x, y)
DRAW "nl7nr7d15nl7nr7"


'draw face
CONST cpi = 22 / 7
CIRCLE (320, 220), 20, 2, (335 * (cpi / 180)), cpi, 1.5
PSET (307, 220), 2
DRAW "g5r6d7bd7r6"
LINE (314, 240)-(307, 248), 2
PSET (333, 228), 2
DRAW "g3d10"
LINE (330, 241)-(307, 248), 2
CIRCLE (327, 235), 20, 2, (165 * (cpi / 180)), (195 * (cpi / 180)), .5
PAINT (325, 221), 5, 2
LINE (320, 210)-(320, 230)
LINE (310, 220)-(330, 220)
x = 308: y = 277
CIRCLE (x, y), 18, , (60 * (pi / 180)), (120 * (pi / 180)) ' up left circ
CIRCLE (x + 18, y), 18, , (60 * (pi / 180)), (120 * (pi / 180))' up right circ

CIRCLE (x, y + 18), 18, , (60 * (pi / 180)), (120 * (pi / 180)) ' down left circ
CIRCLE (x + 18, y + 18), 18, , (60 * (pi / 180)), (120 * (pi / 180))' down right circ

LINE (x - 10, y - 15)-(x - 10, y + 2)'left page line
LINE (x + 9, y - 15)-(x + 9, y + 2)'middle page line
LINE (x + 27, y - 15)-(x + 27, y + 2)'right page line

LINE (x - 10, y - 15)-(x - 14, y - 11)' up left slant line
LINE (x - 10, y + 2)-(x - 14, y + 6)' down left slant line
LINE (x + 9, y + 2)-(x + 5, y + 6)' down middle slant line
LINE (x + 27, y + 2)-(x + 23, y + 6)' down right slant line
LINE (x - 14, y - 11)-(x - 14, y + 6)' left bundle page line

CIRCLE (x - 5, y + 23), 18, , (60 * (pi / 180)), (120 * (pi / 180))
CIRCLE (x + 13, y + 23), 18, , (60 * (pi / 180)), (120 * (pi / 180))


PAINT (320, 139), 4, 4

CHAIN "C:\BC7\BIN\out.bas"

