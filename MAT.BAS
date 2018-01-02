RANDOMIZE TIMER
CLS

INPUT "Enter rows and column of a"; row.a, col.a
INPUT "Enter rows and column of b"; row.b, col.b

DIM a(row.a, col.a)
DIM b(row.b, col.b)
IF col.a = row.b THEN
DIM c(row.a, col.b)

CLS
FOR i = 1 TO row.a
FOR j = 1 TO col.a
a(i, j) = INT(RND * 10)
NEXT
NEXT

FOR i = 1 TO row.b
FOR j = 1 TO col.b
b(i, j) = INT(RND * 10)
NEXT
NEXT

CLS
FOR i = 1 TO row.a
FOR j = 1 TO col.b
s = 0
FOR k = 1 TO 2
s = s + a(i, k) * b(k, j)
NEXT
c(i, j) = s
NEXT
NEXT
END IF


FOR i = 1 TO row.a
FOR j = 1 TO col.a
LOCATE i: PRINT a(i, j); "  ";
NEXT
PRINT
NEXT

FOR i = 1 TO row.b
FOR j = 1 TO col.b
 PRINT b(i, j); "   ";
NEXT
PRINT
NEXT

FOR i = 1 TO row.a
FOR j = 1 TO col.b
PRINT c(i, j); "   ";
NEXT
PRINT
NEXT

