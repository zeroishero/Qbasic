DECLARE SUB getxy ()
DECLARE FUNCTION DataIn$ (row!, col!, lim!)
SCREEN 12
CALL getxy

FUNCTION DataIn$ (row, col, lim)
j = col
LOCATE row, col: PRINT "_";

DO
REM waiting for keypress

        DO
        r$ = INKEY$
        LOOP UNTIL r$ <> ""


REM checking if backspace
IF r$ = CHR$(8) THEN
        IF LEN(B$) >= 1 THEN
        B$ = LEFT$(B$, LEN(B$) - 1)
        LOCATE row, j - 1: PRINT " ";
        limit = limit - 1
        j = j - 1
        END IF

REM if valid chars

ELSEIF ((r$ >= "A" AND r$ <= "Z") OR (r$ >= "a" AND r$ <= "z") OR (VAL(r$) >= 1 AND VAL(r$) <= 9) OR r$ = "0" OR r$ = "_") AND limit < lim THEN
B$ = B$ + r$
limit = limit + 1
LOCATE row, j: PRINT r$;
j = j + 1

ELSEIF r$ = CHR$(32) THEN
B$ = B$ + " "
limit = limit + 1
LOCATE row, j: PRINT " ";
j = j + 1
END IF

DataIn$ = LTRIM$(RTRIM$(B$))
LOOP WHILE r$ <> CHR$(13)

END FUNCTION

SUB getxy

FOR i = 1 TO 25
LOCATE i, 15: PRINT "hello"
NEXT

no = 3 + 1
LINE (200, 100)-(400, 20 * no + 100), 1, B
LINE (300, 100)-(300, 20 * no + 100), 1, B
LINE (350, 100)-(350, 20 * no + 100), 1, B
FOR i = 1 TO no - 1
LINE (200, 100 + 20 * i)-(400, 100 + 20 * i), 8
NEXT

END SUB

SUB locchange (a, B)
a = (a / 30 * 480) - 20
B = (B / 80 * 640) - 18
END SUB

