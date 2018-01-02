DECLARE FUNCTION rad! (I!)
SCREEN 12
AN = 360 * 16
FOR I = -90 TO AN STEP .2

X = I
y = 10 * SIN(rad(X))
X = X / AN * 640
REM transforming to 60,240
x1 = X + 60
y1 = 240 - y

PSET (x1 * 1.5, y1)
NEXT I

FUNCTION rad (I)
rad = 3.1415926# / 180 * I
END FUNCTION

