SCREEN 7, 0, 1, 0
CLS
DIM a(1000)
COLOR 4
c = 250
d = 200
FOR i = 1 TO 100
PSET (0 + a, 0 + b)
DRAW "c1nr10d10r10d10l10" + "c2br15bu20nd20f10e10d20" + "c3br5u20r10d10l10f10" + "c4br10u20nl5nr5bd20nr5nl5" + "c5br15u20nl5nr5br10" + "bd20" + "c6br10u20nl5nr5bd20nr5nl5"
PSET (0 + c, 0 + d)
DRAW "c1nr10d10r10d10l10" + "c2br15bu20nd20f10e10d20" + "c3br5u20r10d10l10f10" + "c4br10u20nl5nr5bd20nr5nl5" + "c5br15u20nl5nr5br10" + "bd20" + "c6br10u20nl5nr5bd20nr5nl5"
a = a + 3
b = b + 2
c = c - 3
d = d - 2
PCOPY 1, 0
CLS

NEXT

