SCREEN 13
FOR x = 0 TO 360
xx = (x / 360) * 100
rad = (x * .017453)
srad = (SIN(rad) + SIN(rad * 2.8)) / 2
NEXT x



