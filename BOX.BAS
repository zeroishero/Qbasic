DECLARE SUB locchange (a!, B!)
SCREEN 12
LOCATE 6, 11: PRINT "Name:"
LOCATE 8, 11: PRINT "Address:"
LOCATE 10, 11: PRINT "Date:"
a = 6
B = 25
CALL locchange(a, B)
LINE (B, a)-(B + 170, a + 20), 4, B


a = 8: B = 25
CALL locchange(a, B)
LINE (B, a)-(B + 170, a + 20), 4, B

a = 10: B = 25
CALL locchange(a, B)
LINE (B, a)-(B + 170, a + 20), 4, B

LOCATE 6, 25: INPUT "", a$
LOCATE 8, 25: INPUT "", B$
LOCATE 10, 25: INPUT "", c$

 SUB locchange (a, B)
a = (a / 30 * 480) - 20
B = (B / 80 * 640) - 18


END SUB

