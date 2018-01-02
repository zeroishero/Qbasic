DECLARE FUNCTION rad! (n!)
SCREEN 12

'FOR i = 0 TO 360
'x = 102 * COS(rad(i))
'y = 102 * SIN(rad(i))
'PSET (320 + x, 240 + y)
'NEXT

CIRCLE (320, 240), 102, 4

REM making estd
CIRCLE (320, 240), 132, 4, rad(300), rad(240)
PSET (320 + 132 * COS(rad(60)), 240 + 132 * SIN(rad(60))), 4
DRAW "c4ta0d25r30d25"

PSET (320 + 132 * COS(rad(120)), 240 + 132 * SIN(rad(120)))
DRAW "c4ta0d25l30d25r192"
REM stand name
PSET (264, 383)
DRAW "nr8d6nr8d6r8" + "br5r4e1u4h1l4h1u4e1r4" + "br5r5nd12r5" + "br5nd12r7f1d10g1l7"
DRAW "br12r1d1l1u1"   'fullstop
DRAW "br8nr10u5e1r8e1u4h1l8" '2
DRAW "br13r8f2d8g2l6h2u8e2" '0
DRAW "br13r8f2d8g2l6h2u8e2" '0
DRAW "br15nr8g2d8f2r6e2u3h2l6g2"


REM e
PSET (320 + 102 * COS(rad(0)), 240 + 102 * SIN(rad(0)))
DRAW "br5r20d10u10l10d10u10l10d10"

REM m
PSET (320 + 102 * COS(rad(8)), 240 + 102 * SIN(rad(8)))
DRAW "ta350br5r20g5f5l20"

REM y
PSET (320 + 102 * COS(rad(16)), 240 + 102 * SIN(rad(16)))
DRAW "ta340br5bd5r10ne10nf10"

REM u
PSET (320 + 102 * COS(rad(32)), 240 + 102 * SIN(rad(32)))
DRAW "ta320br10r10d5l10"

REM d
PSET (320 + 102 * COS(rad(37)), 240 + 102 * SIN(rad(37)))
DRAW "ta310br10e3r5f3d3l10u5 "

CHAIN "C:\BC7\BIN\PADDY.BAS"

FUNCTION rad (n)
rad = 3.1415926# / 180 * n
END FUNCTION

