DECLARE FUNCTION datd$ ()
DECLARE FUNCTION PassInA$ (row, col, lim, pass$)
DECLARE FUNCTION DataIn$ (row, col, lim)
DECLARE SUB fast1 (x!, y!, a!, B!)
DECLARE SUB rect3 ()
DECLARE SUB rect ()
DECLARE SUB rect2 ()
DECLARE FUNCTION outs$ (n!)
DECLARE SUB password ()
DECLARE SUB locchange (a!, B!)
DECLARE SUB Username ()
DECLARE SUB Admin ()
DECLARE SUB exdesign (x!, y!, a!, B!)
DECLARE SUB last ()
DECLARE SUB welcome2 ()
DECLARE SUB finalize ()
DECLARE SUB credit ()
DECLARE SUB lined ()
DECLARE SUB userchoice ()
DECLARE SUB search ()
DECLARE SUB exdesign (x, y, a, B)
DECLARE SUB design (x, y, a, B)
DECLARE SUB header1 ()
DECLARE SUB edit ()
DECLARE SUB choose ()
DECLARE SUB stopfor (pt)
DECLARE SUB Bill (sn)
DECLARE SUB add ()
DECLARE SUB display ()
DECLARE FUNCTION realcost (calltime$)
DECLARE FUNCTION Cost (calltime$)
DECLARE SUB welcome ()
DECLARE SUB header ()
DECLARE SUB delete ()
DIM SHARED choice$
DIM SHARED c
DECLARE SUB check ()
DIM SHARED pt
DIM SHARED dtd$
SCREEN 12
pt = 15000
CLS
'PLAY "l5<egbegbegbegbcegcegcegcegmb"
CALL welcome

CALL stopfor(2700)
'CLS
'PLAY "gb>d<gb>d<gb>d<gb>d<df#adf#adf#adf#l1amb"
CALL welcome2
CALL stopfor(2700)

CLS
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 2, B
CALL password

SUB add
CLOSE
OPEN "files.txt" FOR APPEND AS #2
OPEN "files.txt" FOR INPUT AS #3
OPEN choice$ FOR APPEND AS #1
COLOR 4
WHILE NOT EOF(3)
INPUT #3, a$
IF a$ = choice$ THEN GOTO yes
WEND
WRITE #2, choice$
yes:
20
CLS
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 3, B
COLOR 13: LOCATE 4 + 2, 24: PRINT "           Adding Record"
LINE (59, 105)-(571, 105), 3
COLOR 4: LOCATE 6 + 4, 11: PRINT "Name:"
LOCATE 9 + 4, 11: PRINT "Address:"
LOCATE 12 + 4, 11: PRINT "Destination No."
LOCATE 15 + 4, 11: PRINT "Call Time"
a = 6 + 4
B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 9 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 12 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 15 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


LOCATE 6 + 4, 28: INPUT "", name$
LOCATE 9 + 4, 28: INPUT "", address$
LOCATE 12 + 4, 28: INPUT "", dest$
10 COLOR 1: LOCATE 15 + 4, 28: INPUT "", calltime$
IF LEN(calltime$) <> 8 OR MID$(calltime$, 3, 1) <> ":" OR MID$(calltime$, 6, 1) <> ":" THEN
LOCATE 15 + 4, 40: PRINT "                    "
LOCATE 20 + 4, 30: COLOR 4: PRINT "Enter time correctly(hh:mm:ss)"
GOTO 10
END IF
IF VAL(MID$(calltime$, 4, 2)) > 60 OR VAL(MID$(calltime$, 7, 2)) > 60 THEN
LOCATE 15 + 4, 27: PRINT "                   "
LOCATE 20 + 4, 20: COLOR 4: PRINT "Enter the time correctly (hh:mm:ss)"
GOTO 10
END IF
cost1 = Cost(calltime$)
realcost1 = realcost(calltime$)
CLS

COLOR 1
CALL lined

CALL fast1(6, 24, 10, 67)
'LINE (76, 87)-(531, 375), 13, B

COLOR 4

LOCATE 7, 30: PRINT "Call Bill"
LOCATE 8, 46: PRINT "Date: "; DATE$
LOCATE 9, 46: PRINT "Day : "; datd$
LOCATE 10, 46: PRINT "Time: "; TIME$
LOCATE 11, 14: PRINT "Name            : "; name$
LOCATE 12, 14: PRINT "Address         : "; address$
LOCATE 13, 14: PRINT "Call time       : "; calltime$
LOCATE 14, 14: PRINT "Destination No. : "; dest$
LOCATE 15, 14: PRINT "Cost:           : "; "Rs."; cost1
WRITE #1, name$, address$, dest$, calltime$, cost1, realcost1
LOCATE 18, 14: PRINT "Do you want to add more(y/n)";
SLEEP
ans$ = INKEY$
IF UCASE$(ans$) = "Y" THEN
CLS
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 5, B
GOTO 20
ELSE
CLS
CLOSE
CALL choose
END IF
END SUB

SUB Admin
CLS
SCREEN 12
COLOR 4
LOCATE 3, 15: PRINT "        Administrator Window"
OPEN "company.dat" FOR INPUT AS #1
INPUT #1, a$, B$, c$, r
CLOSE #1
LINE (59, 71)-(571, 343), 3, B
LINE (420, 71)-(420, 343), 13
LINE (59, 130)-(571, 130), 13
SCREEN 12
COLOR 12
LOCATE 6, 15: PRINT "         Changing Information "
COLOR 1
LOCATE 6 + 4, 11: PRINT "Company Name"
LOCATE 8 + 4, 11: PRINT "Username"
LOCATE 10 + 4, 11: PRINT "Password"
LOCATE 12 + 4, 11: PRINT "Rate"
LOCATE 4 + 4, 55: PRINT "CURRENT"
LOCATE 6 + 4, 55: PRINT a$
LOCATE 8 + 4, 55: PRINT B$
LOCATE 10 + 4, 55: PRINT c$
LOCATE 12 + 4, 55: PRINT r
a = 6 + 4
B = 25
CALL locchange(a, B)
LINE (B, a)-(B + 230, a + 20), 4, B

a = 8 + 4: B = 25
CALL locchange(a, B)
LINE (B, a)-(B + 230, a + 20), 4, B

a = 10 + 4: B = 25
CALL locchange(a, B)
LINE (B, a)-(B + 230, a + 20), 4, B


a = 12 + 4: B = 25
CALL locchange(a, B)
LINE (B, a)-(B + 230, a + 20), 4, B

LOCATE 6 + 4, 25: INPUT "", z$
LOCATE 8 + 4, 25: INPUT "", x$
LOCATE 10 + 4, 25: PRINT CHR$(8)
B$ = ""
SLEEP
c$ = INKEY$
WHILE c$ <> CHR$(13)
B$ = (B$ + c$)
LOCATE 10 + 4, 25 + i: PRINT CHR$(15);
LOCATE 10 + 4, 26 + i: PRINT CHR$(8)
SLEEP
c$ = INKEY$
i = i + 1
WEND
LOCATE 10 + 4, 25 + i: PRINT " "
LOCATE 12 + 4, 25: INPUT "", r
 OPEN "company.dat" FOR OUTPUT AS #1
  WRITE #1, z$, x$, B$, r
 CLOSE #1
                  
END SUB

SUB choose
CLS
cl:
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 3, B
hehe:
COLOR 1
LOCATE 7, 30
PRINT "Call Record Program"
COLOR 4
LOCATE 9, 25
PRINT "1. Add New Call";
LOCATE 10, 25
PRINT "2. Display All Calls"
LOCATE 11, 25
PRINT "3. Edit information"
LOCATE 12, 25
PRINT "4. Delete Record"
LOCATE 13, 25
PRINT "5. Search Record"
LOCATE 14, 25
PRINT "6. Finalize "
LOCATE 15, 25
PRINT "7. Exit"
LOCATE 17, 20: PRINT "Press the no. of your choice(1-7)"

a$ = INPUT$(1)
SELECT CASE a$
CASE "1": CALL add
CASE "2": CALL display
CASE "3": CALL edit
CASE "4": CALL delete
CASE "5": CALL search
CASE "6": CALL finalize
CASE "7": CLS : CALL last
CASE ELSE
CLS
GOTO cl
END SELECT


END SUB

FUNCTION Cost (calltime$)
DIM min
min = VAL(MID$(calltime$, 1, 2)) * 60 + VAL(MID$(calltime$, 4, 2))
IF MID$(calltime$, 7, 2) <> "00" THEN
min = min + 1
END IF
Cost = CINT(min * 3)
END FUNCTION

SUB credit
DIM abc(1 TO 1000)
CLS
FOR k = 25 TO 4 STEP -1
CLS
COLOR 1: LOCATE k - 3, 5: PRINT "Bijay Shrestha     Dikson Rajbanshi   Rakshya Kandel     Smriti Banjade"
COLOR 2: LOCATE k - 2, 5: PRINT "Dikson Rajbanshi   Rakshya Kandel     Smriti Banjade     Bijay Shrestha"
COLOR 3: LOCATE k - 1, 5: PRINT "Rakshya Kandel     Smriti Banjade     Bijay Shrestha     Dikson Rajbanshi"
COLOR 4: LOCATE k - 0, 5: PRINT "Smriti Banjade     Bijay Shrestha     Dikson Rajbanshi   Rakshya Kandel"
CALL stopfor(1000)
IF k = 4 THEN CALL stopfor(2000)
NEXT

SCREEN 7, 0, 1, 0
COLOR 4
FOR i = 1 TO 90
a = a + 2
d = d + 2
e = e + 3
f = f + 2

k:
LINE (0 + a, 0 + B)-(0 + a, 20 + B)
LINE (0 + a, 10 + B)-(10 + a, 0 + B)
LINE (0 + a, 10 + B)-(10 + a, 20 + B)
e:
COLOR 1
LINE (15 + a, 0 + B)-(15 + a, 20 + B)
LINE (15 + a, 0 + B)-(25 + a, 0 + B)
LINE (15 + a, 10 + B)-(25 + a, 10 + B)
LINE (15 + a, 20 + B)-(25 + a, 20 + B)
s:
COLOR 2
LINE (30 + a, 0 + B)-(40 + a, 0 + B)
LINE (30 + a, 0 + B)-(30 + a, 10 + B)
LINE (30 + a, 10 + B)-(40 + a, 10 + B)
LINE (40 + a, 10 + B)-(40 + a, 20 + B)
LINE (40 + a, 20 + B)-(30 + a, 20 + B)
a:
COLOR 3
LINE (45 + a, 0 + B)-(45 + a, 20 + B)
LINE (55 + a, 0 + B)-(55 + a, 20 + B)
LINE (45 + a, 10 + B)-(55 + a, 10 + B)
LINE (45 + a, 0 + B)-(55 + a, 0 + B)
r:
COLOR 5
LINE (60 + a, 0 + B)-(60 + a, 20 + B)
LINE (60 + a, 0 + B)-(70 + a, 0 + B)
LINE (70 + a, 0 + B)-(70 + a, 10 + B)
LINE (70 + a, 10 + B)-(60 + a, 10 + B)
LINE (60 + a, 10 + B)-(70 + a, 20 + B)
i:
COLOR 6
LINE (75 + a, 0 + B)-(90 + a, 0 + B)
LINE (82 + a, 0 + B)-(82 + a, 20 + B)
LINE (75 + a, 20 + B)-(90 + a, 20 + B)


LINE (0 + c, 0 + d)-(0 + c, 20 + d)
LINE (0 + c, 10 + d)-(10 + c, 0 + d)
LINE (0 + c, 10 + d)-(10 + c, 20 + d)
COLOR 8
LINE (15 + c, 0 + d)-(15 + c, 20 + d)
LINE (15 + c, 0 + d)-(25 + c, 0 + d)
LINE (15 + c, 10 + d)-(25 + c, 10 + d)
LINE (15 + c, 20 + d)-(25 + c, 20 + d)
COLOR 9
LINE (30 + c, 0 + d)-(40 + c, 0 + d)
LINE (30 + c, 0 + d)-(30 + c, 10 + d)
LINE (30 + c, 10 + d)-(40 + c, 10 + d)
LINE (40 + c, 10 + d)-(40 + c, 20 + d)
LINE (40 + c, 20 + d)-(30 + c, 20 + d)

LINE (45 + c, 0 + d)-(45 + c, 20 + d)
LINE (55 + c, 0 + d)-(55 + c, 20 + d)
LINE (45 + c, 10 + d)-(55 + c, 10 + d)
LINE (45 + c, 0 + d)-(55 + c, 0 + d)

LINE (60 + c, 0 + d)-(60 + c, 20 + d)
LINE (60 + c, 0 + d)-(70 + c, 0 + d)
LINE (70 + c, 0 + d)-(70 + c, 10 + d)
LINE (70 + c, 10 + d)-(60 + c, 10 + d)
LINE (60 + c, 10 + d)-(70 + c, 20 + d)

LINE (75 + c, 0 + d)-(90 + c, 0 + d)
LINE (82 + c, 0 + d)-(82 + c, 20 + d)
LINE (75 + c, 20 + d)-(90 + c, 20 + d)

LINE (0 + e, 0 + f)-(0 + e, 20 + f)
LINE (0 + e, 10 + f)-(10 + e, 0 + f)
LINE (0 + e, 10 + f)-(10 + e, 20 + f)
COLOR 8
LINE (15 + e, 0 + f)-(15 + e, 20 + f)
LINE (15 + e, 0 + f)-(25 + e, 0 + f)
LINE (15 + e, 10 + f)-(25 + e, 10 + f)
LINE (15 + e, 20 + f)-(25 + e, 20 + f)
COLOR 9
LINE (30 + e, 0 + f)-(40 + e, 0 + f)
LINE (30 + e, 0 + f)-(30 + e, 10 + f)
LINE (30 + e, 10 + f)-(40 + e, 10 + f)
LINE (40 + e, 10 + f)-(40 + e, 20 + f)
LINE (40 + e, 20 + f)-(30 + e, 20 + f)

LINE (45 + e, 0 + f)-(45 + e, 20 + f)
LINE (55 + e, 0 + f)-(55 + e, 20 + f)
LINE (45 + e, 10 + f)-(55 + e, 10 + f)
LINE (45 + e, 0 + f)-(55 + e, 0 + f)

LINE (60 + e, 0 + f)-(60 + e, 20 + f)
LINE (60 + e, 0 + f)-(70 + e, 0 + f)
LINE (70 + e, 0 + f)-(70 + e, 10 + f)
LINE (70 + e, 10 + f)-(60 + e, 10 + f)
LINE (60 + e, 10 + f)-(70 + e, 20 + f)

LINE (75 + e, 0 + f)-(90 + e, 0 + f)
LINE (82 + e, 0 + f)-(82 + e, 20 + f)
LINE (75 + e, 20 + f)-(90 + e, 20 + f)


GET (0 + a, 0 + B)-(90 + a, 20 + B), abc

PCOPY 1, 0
CLS
NEXT
SCREEN 12
FOR t = 25 TO 6 STEP -1
COLOR 1: LOCATE t - 3, 25: PRINT "  Special thanks to  "
COLOR 2: LOCATE t - 2, 25: PRINT " Tril Prasad Banjade"
CALL stopfor(1000)
IF t = 2 THEN CALL stopfor(2000)
CLS
NEXT
FOR l = 25 TO 4 STEP -1
COLOR 4
LOCATE l - 3, 20: PRINT "             ZERO PVT. LTD.             "
COLOR 5: LOCATE l - 2, 20: PRINT "Shankhamul,New Baneshwor,Kathmandu    "
COLOR 6: LOCATE l - 1, 20: PRINT "           Phone.no:014782629            "
COLOR 7: LOCATE l - 0, 10: PRINT "Email address:shresthabijay26@yahoo.com;Dikanme@gmail.com"

CALL stopfor(1000)
IF l = 4 THEN CALL stopfor(2000)
CLS
NEXT
END SUB

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

FUNCTION datd$
y$ = DATE$
m = VAL(LEFT$(y$, 2))
d = VAL(MID$(y$, 4, 2))
y = VAL(RIGHT$(y$, 4))
n = (y - 1) * 365 + INT(y \ 4)
n = n + d
SELECT CASE m
CASE 2: n = n + 31
CASE 3: n = n + 59
CASE 4: n = n + 90
CASE 5: n = n + 120
CASE 6: n = n + 151
CASE 7: n = n + 181
CASE 8: n = n + 212
CASE 9: n = n + 243
CASE 10: n = n + 273
CASE 11: n = n + 304
CASE 12: n = n + 334
END SELECT
a = n MOD 7

SELECT CASE a
CASE 0: datd$ = "Saturday"
CASE 1: datd$ = "Sunday"
CASE 2: datd$ = "Monday"
CASE 3: datd$ = "Tuesday"
CASE 4: datd$ = "Wednesday"
CASE 5: datd$ = "Thursday"
CASE 6: datd$ = "Friday"
END SELECT

END FUNCTION

SUB delete
CLS
count = 1
CLOSE
OPEN choice$ FOR INPUT AS #1
OPEN "delete.txt" FOR OUTPUT AS #2
LOCATE 6, 9
INPUT "enter the S.N of the record"; sn1
WHILE NOT EOF(1)
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
IF count = sn1 THEN
        LOCATE 7, 9: PRINT name$, address$, dest$, calltime$
        LOCATE 8, 9: INPUT "Are you sure"; ans$
        IF UCASE$(ans$) <> "Y" THEN GOTO here1
ELSE
WRITE #2, name$, address$, dest$, calltime$, cost1, realcost1
END IF
count = count + 1
WEND
GOTO 50
here1:
PRINT "Record deleted"
50
CLOSE
KILL choice$
NAME "delete.txt" AS choice$
SLEEP 1
CALL choose

END SUB

SUB design (x, y, a, B)
CLS
COLOR 8
CALL rect3
COLOR 1
FOR i = y TO x STEP -1
LOCATE i, a
PRINT "*"
CALL stopfor(100)
NEXT
FOR i = a TO B STEP 2

LOCATE x, i
PRINT "*"
CALL stopfor(100)
NEXT
FOR i = x TO y
LOCATE i, B

PRINT "*"
CALL stopfor(100)
NEXT
FOR i = B TO a STEP -2
LOCATE y, i

PRINT "*"
CALL stopfor(100)
NEXT
END SUB

SUB display
CLOSE
CLS
DIM i, count, count1, look
i = 8
look = 0
count1 = 1
count = 1
OPEN choice$ FOR APPEND AS #1
CLOSE #1
OPEN choice$ FOR INPUT AS #1
CALL exdesign(5, 22, 8, 78)
LINE (59, 71)-(620, 343), 4, B: LINE (220, 71)-(220, 343), 4, B: LINE (340, 71)-(340, 343), 4, B: LINE (428, 71)-(428, 343), 4, B: LINE (508, 71)-(508, 343), 4, B: LINE (90, 71)-(90, 343), 4, B: LINE (59, 100)-(620, 100), 4, B
LOCATE 4, 17: PRINT "          Displaying Record"
CALL header
WHILE NOT EOF(1)
        look = 1
        IF count = 13 THEN
                SLEEP
                CLS
                CLOSE #1
                i = 7
                OPEN choice$ FOR INPUT AS #1
                FOR j = 1 TO 14
                        INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
                NEXT j
                CALL exdesign(5, 22, 8, 78)
                LINE (59, 71)-(620, 343), 4, B: LINE (220, 71)-(220, 343), 4, B: LINE (340, 71)-(340, 343), 4, B: LINE (428, 71)-(428, 343), 4, B: LINE (508, 71)-(508, 343), 4, B: LINE (90, 71)-(90, 343), 4, B: LINE (59, 100)-(620, 100), 4, B
                CALL header
                count1 = 1
                i = 8
        END IF
        IF count = 26 THEN
                SLEEP
                CLS
                CLOSE #1
                i = 7
                OPEN choice$ FOR INPUT AS #1
                FOR j = 1 TO 27
                        INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
                NEXT j
                CALL exdesign(5, 22, 8, 78)
                LINE (59, 71)-(620, 343), 4, B: LINE (220, 71)-(220, 343), 4, B: LINE (340, 71)-(340, 343), 4, B: LINE (428, 71)-(428, 343), 4, B: LINE (508, 71)-(508, 343), 4, B: LINE (90, 71)-(90, 343), 4, B: LINE (59, 100)-(620, 100), 4, B
                count1 = 1
                i = 8
        END IF
        INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
        LOCATE i, 9
        COLOR 4
        PRINT LTRIM$(RTRIM$(STR$(count))) + "."
        LOCATE i, 13: PRINT LEFT$(name$, 15)
        LOCATE i, 29: PRINT address$
        LOCATE i, 44: PRINT dest$
        LOCATE i, 55: PRINT calltime$
        LOCATE i, 66: PRINT "Rs."; cost1
        i = i + 1
        count = count + 1
        count1 = count1 + 1
        WEND
IF look = 0 THEN
CLS
CALL exdesign(5, 22, 8, 78)
LINE (59, 71)-(620, 343), 4, B: LINE (220, 71)-(220, 343), 4, B: LINE (340, 71)-(340, 343), 4, B: LINE (428, 71)-(428, 343), 4, B: LINE (508, 71)-(508, 343), 4, B: LINE (90, 71)-(90, 343), 4, B: LINE (59, 100)-(620, 100), 4, B
LOCATE 14, 20: PRINT "Record doesn't exist";
END IF
CLOSE
SLEEP
CALL stopfor(10)
CLS
CALL choose
END SUB

SUB edit
CLS
count = 1
OPEN choice$ FOR INPUT AS #1
OPEN "edit.txt" FOR OUTPUT AS #2
LOCATE 6, 10: PRINT "1.Symbol No"
LOCATE 7, 10: PRINT "2.Name"
LOCATE 8, 10: PRINT "3.Address"
LOCATE 9, 10: INPUT "Enter your choice"; ch

SELECT CASE ch
CASE 1
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 2, B
LOCATE 6, 10: INPUT "Enter the S.N of the customer"; sn

WHILE NOT EOF(1)
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
IF count = sn THEN
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 3, B
COLOR 13: LOCATE 4 + 2, 24: PRINT "           Editing Record"
LINE (59, 105)-(571, 105), 3
COLOR 4: LOCATE 6 + 4, 11: PRINT "Name:"
LOCATE 9 + 4, 11: PRINT "Address:"
LOCATE 12 + 4, 11: PRINT "Destination No."
LOCATE 15 + 4, 11: PRINT "Call Time"
a = 6 + 4
B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 9 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 12 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 15 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


LOCATE 6 + 4, 28: INPUT "", name$
LOCATE 9 + 4, 28: INPUT "", address$
LOCATE 12 + 4, 28: INPUT "", dest$
17 COLOR 1: LOCATE 15 + 4, 28: INPUT "", calltime$
        IF LEN(calltime$) <> 8 OR MID$(calltime$, 3, 1) <> ":" OR MID$(calltime$, 6, 1) <> ":" THEN
        LOCATE 15 + 4, 40: PRINT "                    "
        LOCATE 20 + 4, 30: COLOR 4: PRINT "Enter time correctly(hh:mm:ss)"
        GOTO 17
        END IF
        IF VAL(MID$(calltime$, 4, 2)) > 60 OR VAL(MID$(calltime$, 7, 2)) > 60 THEN
        LOCATE 15 + 4, 27: PRINT "                   "
        LOCATE 20 + 4, 20: COLOR 4: PRINT "Enter the time correctly (hh:mm:ss)"
        GOTO 17
        END IF
        cost1 = Cost(calltime$)
        realcost1 = realcost(calltime$)
        WRITE #2, name$, address$, dest$, calltime$, cost1, realcost1
ELSE
WRITE #2, name$, address$, dest$, calltime$, cost1, realcost1
END IF
count = count + 1
WEND
here:
CLOSE
KILL choice$
NAME "edit.txt" AS choice$

CASE 2:
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 2, B
LOCATE 6, 10: INPUT "Enter the name of the customer"; naam$

WHILE NOT EOF(1)
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
IF UCASE$(name$) = UCASE$(naam$) THEN
        CLS
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 3, B
COLOR 13: LOCATE 4 + 2, 24: PRINT "          Editing Record"
LINE (59, 105)-(571, 105), 3
COLOR 4: LOCATE 6 + 4, 11: PRINT "Name:"
LOCATE 9 + 4, 11: PRINT "Address:"
LOCATE 12 + 4, 11: PRINT "Destination No."
LOCATE 15 + 4, 11: PRINT "Call Time"
a = 6 + 4
B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 9 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 12 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 15 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


LOCATE 6 + 4, 28: INPUT "", name$
LOCATE 9 + 4, 28: INPUT "", address$
LOCATE 12 + 4, 28: INPUT "", dest$
170 COLOR 1: LOCATE 15 + 4, 28: INPUT "", calltime$
        IF LEN(calltime$) <> 8 OR MID$(calltime$, 3, 1) <> ":" OR MID$(calltime$, 6, 1) <> ":" THEN
        LOCATE 15 + 4, 40: PRINT "                    "
        LOCATE 20 + 4, 30: COLOR 4: PRINT "Enter time correctly(hh:mm:ss)"
        GOTO 170
        END IF
        IF VAL(MID$(calltime$, 4, 2)) > 60 OR VAL(MID$(calltime$, 7, 2)) > 60 THEN
        LOCATE 15 + 4, 27: PRINT "                "
        LOCATE 20 + 4, 20: COLOR 4: PRINT "Enter the time correctly (hh:mm:ss)"
        GOTO 170
        END IF
        cost1 = Cost(calltime$)
        realcost1 = realcost(calltime$)
        WRITE #2, name$, address$, dest$, calltime$, cost1, realcost1
ELSE
WRITE #2, name$, address$, dest$, calltime$, cost1, realcost1
END IF
count = count + 1
WEND
here10:
CLOSE
KILL choice$
NAME "edit.txt" AS choice$

CASE ELSE
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 2, B
LOCATE 6, 10: INPUT "Enter the address of the customer"; addr$

WHILE NOT EOF(1)
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
IF UCASE$(addr$) = UCASE$(address$) THEN
        CLS
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 3, B
COLOR 13: LOCATE 4 + 2, 24: PRINT "          Editing Record"
LINE (59, 105)-(571, 105), 3
COLOR 4: LOCATE 6 + 4, 11: PRINT "Name:"
LOCATE 9 + 4, 11: PRINT "Address:"
LOCATE 12 + 4, 11: PRINT "Destination No."
LOCATE 15 + 4, 11: PRINT "Call Time"
a = 6 + 4
B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 9 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 12 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


a = 15 + 4: B = 28
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1


LOCATE 6 + 4, 28: INPUT "", name$
LOCATE 9 + 4, 28: INPUT "", address$
LOCATE 12 + 4, 28: INPUT "", dest$
171 COLOR 1: LOCATE 15 + 4, 28: INPUT "", calltime$
        IF LEN(calltime$) <> 8 OR MID$(calltime$, 3, 1) <> ":" OR MID$(calltime$, 6, 1) <> ":" THEN
        LOCATE 12 + 4, 40: PRINT "                    "
        LOCATE 20 + 4, 30: COLOR 4: PRINT "Enter time correctly(hh:mm:ss)"
        GOTO 171
        END IF
        IF VAL(MID$(calltime$, 4, 2)) > 60 OR VAL(MID$(calltime$, 7, 2)) > 60 THEN
        LOCATE 15 + 4, 27: PRINT "                   "
        LOCATE 20 + 4, 20: COLOR 4: PRINT "Enter the time correctly (hh:mm:ss)"
        GOTO 17
        END IF
        cost1 = Cost(calltime$)
        realcost1 = realcost(calltime$)
        WRITE #2, name$, address$, dest$, calltime$, cost1, realcost1
ELSE
WRITE #2, name$, address$, dest$, calltime$, cost1, realcost1
END IF
count = count + 1
WEND
here20:
CLOSE
KILL choice$
NAME "edit.txt" AS choice$


END SELECT



CALL choose
END SUB

SUB exdesign (x, y, a, B)
COLOR 1
FOR i = y TO x STEP -1
LOCATE i, a
PRINT "*"
NEXT
FOR i = a TO B STEP 2
LOCATE x, i
PRINT "*"
NEXT
FOR i = x TO y
LOCATE i, B
PRINT "*"
NEXT
FOR i = B TO a STEP -2
LOCATE y, i
PRINT "*"
NEXT
FOR i = x TO y
LOCATE i, 28: PRINT "*"
IF i <> x AND i <> y THEN LOCATE i, 43: PRINT "*"
LOCATE i, 54: PRINT "*"
LOCATE i, 64: PRINT "*"
NEXT

END SUB

SUB fast1 (x, y, a, B)
CALL rect3
COLOR 1
FOR i = y TO x STEP -1
LOCATE i, a
PRINT "*"
NEXT
FOR i = a TO B STEP 2
LOCATE x, i
PRINT "*"
NEXT
FOR i = x TO y
LOCATE i, B
PRINT "*"
NEXT
FOR i = B TO a STEP -2
LOCATE y, i
PRINT "*"
NEXT
'FOR i = a TO b
'LOCATE i, 28: PRINT "*"
'LOCATE i, 43: PRINT "*"
'LOCATE i, 54: PRINT "*"
'LOCATE i, 64: PRINT "*"
'NEXT

END SUB

SUB finalize
CLOSE
CLS
OPEN choice$ FOR INPUT AS #1
customer = 1
COLOR 4
WHILE NOT EOF(1)
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
customer = customer + 1
callinsec = VAL(MID$(calltime$, 1, 2)) * 60 * 60 + VAL(MID$(calltime$, 4, 2)) * 60 + VAL(MID$(calltime$, 7, 2))
totalcost = totalcost + cost1
totalrealcost = totalrealcost + realcost1
totalcallinsec = callinsec + totalcallinsec
WEND
CALL fast1(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 12, B
sec = totalcallinsec MOD 60
abc = totalcallinsec \ 60
min = abc MOD 60
hour = abc \ 60
sec$ = STR$(sec): IF LEN(sec$) = 1 THEN sec$ = "0" + sec$
min$ = STR$(min): IF LEN(min$) = 1 THEN min$ = "0" + min$
hour$ = STR$(hour): IF LEN(hour$) = 1 THEN hour$ = "0" + hour$
tcalltime$ = hour$ + ":" + min$ + ":" + sec$
COLOR 4
LOCATE 6, 30: PRINT "Final data"
LOCATE 7, 20: PRINT "Total Call TIme    :", tcalltime$
LOCATE 8, 20: PRINT "Total money (SP)   :", "Rs."; totalcost
LOCATE 9, 20: PRINT "Total money(CP)    :", "Rs."; totalrealcost
LOCATE 10, 20: PRINT "Total Profit       :", -totalrealcost + totalcost
SLEEP
CALL choose
END SUB

SUB header
LOCATE 6, 9
PRINT "S.N"
LOCATE 6, 14
PRINT "Name"
LOCATE 6, 29
PRINT "Address"
LOCATE 6, 44
PRINT "Dest.No"
LOCATE 6, 55
PRINT "Call Time"
LOCATE 6, 66
PRINT "Cost"
END SUB

SUB header1
LOCATE 7, 10
PRINT "S.N"
LOCATE 7, 14
PRINT "Name"
LOCATE 7, 29
PRINT "Address"
LOCATE 7, 44
PRINT "Dest.No"
LOCATE 7, 56
PRINT "Call Time"
LOCATE 7, 66
PRINT "Cost"

END SUB

SUB heading
OPEN "Company.dat" FOR INPUT AS #1
INPUT #1, c$, u$, p$, r
CLOSE #1
LOCATE 2, 33: PRINT "Call Billing System"
LOCATE 4, 33: PRINT c$
END SUB

SUB last
   SCREEN 13
   PSET (150, 100)
   FOR j = 5 TO 25 STEP 5
   FOR i = 1 TO 360 STEP 4
   PSET (150, 100)
   DRAW "bu" + STR$(j) + "u20ta" + STR$(i)
   NEXT
   CLS
   COLOR j
   NEXT
   j = 0
   FOR i = 50 TO 200 STEP 5
   CIRCLE (50 + i, 200 - i), i, j
  PAINT (50 + i, 200 - i), i, j
    j = j + 1
    NEXT
   CLS
   FOR i = 200 TO 0 STEP -5
   CIRCLE (50 + i, 200 - i), i, j
  PAINT (50 + i, 200 - i), i, j
    j = j + 1
    NEXT
    END
END SUB

SUB lined
FOR i = 8 TO 72 STEP 2
LOCATE 7, i: PRINT "*"
NEXT
END SUB

SUB locchange (a, B)
a = (a / 30 * 480) - 20
B = (B / 80 * 640) - 18
LINE (B, a)-(B + 230, a + 25), 7, B
END SUB

FUNCTION outs$ (n)
i = 1
DO
SLEEP
r$ = INKEY$
B$ = B$ + r$
PRINT r$;
i = i + 1
IF i = n THEN GOTO 40
LOOP UNTIL r$ = CHR$(13)
40 outs$ = B$
END FUNCTION

FUNCTION PassInA$ (row, col, lim, pass$)
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
LOCATE row, j: PRINT "*";
j = j + 1
IF B$ = pass$ THEN
PassInA$ = B$
EXIT DO
END IF

END IF

PassInA$ = B$
LOOP WHILE r$ <> CHR$(13)

END FUNCTION

SUB password
z$ = "Zero"
y$ = z$
x$ = z$
r = 3
'n: OPEN "company.dat" FOR INPUT AS #1
'INPUT #1, z$, y$, x$, r
'CLOSE #1
CLS
39
LINE (59, 71)-(571, 343), 2, B
PAINT (61 + 4, 303), 2
LINE (59, 150)-(571, 250), 8, BF
CALL exdesign(5, 22, 8, 72)
COLOR 14
CALL rect
LINE (70, 80)-(572, 343), 8, BF
LINE (70, 80)-(572, 155), 4, BF
LINE (70, 156)-(170, 343), 3, BF
LINE (171, 260)-(572, 343), 2, BF
COLOR 6
LOCATE 12, 11: PRINT "Username:"
LOCATE 15, 11: PRINT "Password:"
a = 8 + 4: B = 25
CALL locchange(a, B)
   LINE (B, a)-(B + 230, a + 25), 0, BF
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1

a = 11 + 4: B = 25
CALL locchange(a, B)
     LINE (B, a)-(B + 230, a + 25), 0, BF
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1

COLOR 5:
a = 8: B = 23
CALL locchange(a, B)
LINE (B, a)-(B + 230, a + 25), 6, BF
LOCATE 8, 26: PRINT "Authentiation Required"
 
  COLOR 1
user$ = DataIn$(8 + 4, 25, 15)
B$ = PassInA$(15, 25, 15, "Zero")
IF user$ = "Zero" AND B$ = "Zero" THEN
CLS
CALL userchoice
GOTO 12
ELSE
LOCATE 15, 25: PRINT "                                   "
COLOR 4: LOCATE 18, 28: PRINT "Error: Wrong Password or Username"
LOCATE 19, 35: PRINT "Retry(y/n)??"
END IF

12
CLS
CALL choose
11 END SUB

FUNCTION realcost (calltime$)
hour = VAL(MID$(calltime$, 1, 2))
minute = VAL(MID$(calltime$, 4, 2))
second = VAL(MID$(calltime$, 7, 2))
totalsecond = second + minute * 60 + hour * 3600
realcost = CINT(totalsecond / 60 * 3)
END FUNCTION

SUB rect
CLS
SCREEN 12
PSET (13, 45)
DRAW "r22d15l10u5r5u5l10d15r20u45l20d15r10u5l5u5r10d15l22u25r60d25l22u15r10d5l5d5r10u15l20d45r20u15l10d5r5d5l10u15r22u5d30l60u30"
PSET (13, 430)
DRAW "r22d15l10u5r5u5l10d15r20u45l20d15r10u5l5u5r10d15l22u25r60d25l22u15r10d5l5d5r10u15l20d45r20u15l10d5r5d5l10u15r22u5d30l60u30"
PSET (555, 45)
DRAW "r22d15l10u5r5u5l10d15r20u45l20d15r10u5l5u5r10d15l22u25r60d25l22u15r10d5l5d5r10u15l20d45r20u15l10d5r5d5l10u15r22u5d30l60u30"
PSET (555, 430)
DRAW "r22d15l10u5r5u5l10d15r20u45l20d15r10u5l5u5r10d15l22u25r60d25l22u15r10d5l5d5r10u15l20d45r20u15l10d5r5d5l10u15r22u5d30l60u30"

x = 70: FOR i = 1 TO 11
PSET (60, x)
DRAW "d25l22u15r10d5l5d5r10u15l20d25r27"
x = x + 30
NEXT
x = 70: FOR i = 1 TO 11
PSET (605, x)
DRAW "d25l22u15r10d5l5d5r10u15l20d25r27"
x = x + 30
NEXT
x = 75: FOR i = 1 TO 11
PSET (x, 410)
DRAW "r33d25l22u15r10d5l5d5r10u15l20d25r33u30"
x = x + 40
NEXT
DRAW "r33d25l22u15r10d5l5d5r10u15l20d25r33"
x = 75: FOR i = 1 TO 11
PSET (x, 30)
DRAW "r33d25l22u15r10d5l5d5r10u15l20d25r33u30"
x = x + 40
NEXT
DRAW "r33d25l22u15r10d5l5d5r10u15l20d25r33"

END SUB

SUB rect2
CLS
SCREEN 12
PSET (75, 60), 2
DRAW "A" + "0" + "bh20d20g15f15g15bl10h15e15h15u60r60f15e15f15bd10g15h15g15l20p1,2"
PSET (180, 60), 3
DRAW "A" + "0" + "bu20l45h15bu10e15r80f15e15f15bd10g15h15g15l45"
PSET (321, 60), 4
DRAW "A" + "0" + "bu20l45h15bu10e15r80f15e15f15bd10g15h15g15l45"
PSET (558, 60), 2
DRAW "A" + "3" + "bh20d20g15f15g15bl10h15e15h15u60r60f15e15f15bd10g15h15g15l20"
PSET (462, 60), 6
 DRAW "A" + "0" + "bu20l45h15bu10e15r80f15bd10g15l45"
PSET (558, 403), 2
DRAW "A" + "2" + "bh20d20g15f15g15bl10h15e15h15u60r60f15e15f15bd10g15h15g15l20"
PSET (75, 403), 2
DRAW "A" + "1" + "bh20d20g15f15g15bl10h15e15h15u60r60f15e15f15bd10g15h15g15l20"
PSET (180, 483), 3
DRAW "A" + "0" + "bu20l45h15bu10e15r80f15e15f15bd10g15h15g15l45"
PSET (321, 483), 3
DRAW "A" + "0" + "bu20l45h15bu10e15r80f15e15f15bd10g15h15g15l45"
PSET (462, 483), 6
 DRAW "A" + "0" + "bu20l45h15bu10e15r80f15bd10g15l45"
PSET (-5, 166), 3
DRAW "A" + "3" + "bu20l45h15bu10e15r80f15e15f15bd10g15h15g15l45"
PSET (-5, 307), 6
 DRAW "A" + "3" + "bu20l45h15bu10e15r80f15bd10g15l45"
PSET (557, 166), 3
DRAW "A" + "3" + "bu20l45h15bu10e15r80f15e15f15bd10g15h15g15l45"
PSET (557, 307), 6
 DRAW "A" + "3" + "bu20l45h15bu10e15r80f15bd10g15l45"
END SUB

SUB rect3
CLS
SCREEN 12
x = 30: y = 30
PSET (x, y)
DRAW "a" + STR$(0) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x + 31, y - 30)
DRAW "a" + STR$(1) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x + 1, y)
DRAW "a" + STR$(2) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x - 30, y + 30)
DRAW "a" + STR$(3) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"

x = 90: y = 30
FOR i = 1 TO 9
PSET (x, y)
DRAW "a" + STR$(0) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x + 31, y - 30)
DRAW "a" + STR$(1) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x + 1, y)
DRAW "a" + STR$(2) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x - 30, y + 30)
DRAW "a" + STR$(3) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
x = x + 60: y = 30
NEXT

x = 30: y = 30
FOR i = 1 TO 7
PSET (x, y)
DRAW "a" + STR$(0) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x + 31, y - 30)
DRAW "a" + STR$(1) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x + 1, y)
DRAW "a" + STR$(2) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x - 30, y + 30)
DRAW "a" + STR$(3) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
 y = y + 60

NEXT
x = 30: y = 420
FOR i = 1 TO 10
PSET (x, y)
DRAW "a" + STR$(0) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x + 31, y - 30)
DRAW "a" + STR$(1) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x + 1, y)
DRAW "a" + STR$(2) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x - 30, y + 30)
DRAW "a" + STR$(3) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
x = x + 60
NEXT

x = 570: y = 30
FOR i = 1 TO 7
PSET (x, y)
DRAW "a" + STR$(0) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x + 31, y - 30)
DRAW "a" + STR$(1) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x + 1, y)
DRAW "a" + STR$(2) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
PSET (x - 30, y + 30)
DRAW "a" + STR$(3) + "l30u30r30d30l30r21u9r9l9h12u9d9l9d21e30"
y = y + 60
NEXT

END SUB

SUB search
CLS
DIM row
count = 1
count1 = 1
row = 8
LOCATE 6, 9: PRINT "1.Name"
LOCATE 7, 9: PRINT "2.Address"
LOCATE 8, 9: PRINT "3.Destination Number"
LOCATE 9, 9: INPUT "Enter your choice"; ch
CLS
SELECT CASE ch
CASE 1
csn = 1
OPEN choice$ FOR INPUT AS #1
CLS
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 3, B
LOCATE 6, 9: INPUT "Enter the Name"; namese$
CLS
LOCATE row, 9: CALL header1

WHILE NOT EOF(1)
IF count = 15 THEN
SLEEP
CLS
CLOSE #1
i = 7
OPEN choice$ FOR INPUT AS #1

FOR j = 1 TO 14     'after 14th  print
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
NEXT j
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 5, B
count1 = 1
i = 7
END IF

INPUT #1, namesea$, addresssea$, destsea$, calltimesea$, cost1sea, realcost1sea
IF LCASE$(namese$) = LCASE$(namesea$) THEN
LOCATE row, 9
COLOR 4
PRINT LTRIM$(RTRIM$(STR$(csn))) + "."
LOCATE row, 13
PRINT namesea$
LOCATE row, 29
PRINT addresssea$
LOCATE row, 44
PRINT destsea$
LOCATE row, 55
PRINT calltimesea$
LOCATE row, 66
PRINT cost1sea
row = row + 1
END IF
csn = csn + 1
count = count + 1
count1 = count1 + 1
WEND
SLEEP
CALL stopfor(10)
CLOSE
CASE 2
csn = 1
OPEN choice$ FOR INPUT AS #1
CLS
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 3, B
LOCATE 6, 9: INPUT "Enter the address"; addressse$
CLS
LOCATE row, 9: CALL header1

WHILE NOT EOF(1)

IF count = 15 THEN
SLEEP
CLS
CLOSE #1
i = 7
OPEN choice$ FOR INPUT AS #1

FOR j = 1 TO 14     'after 14th  print
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
NEXT j
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 5, B
count1 = 1
i = 7
END IF

INPUT #1, namesea$, addresssea$, destsea$, calltimesea$, cost1sea, realcost1sea
IF LCASE$(addressse$) = LCASE$(addresssea$) THEN
LOCATE row, 9
COLOR 4
PRINT LTRIM$(RTRIM$(STR$(csn))) + "."
LOCATE row, 13
PRINT namesea$
LOCATE row, 29
PRINT addresssea$
LOCATE row, 44
PRINT destsea$
LOCATE row, 55
PRINT calltimesea$
LOCATE row, 66
PRINT cost1sea
row = row + 1
END IF
csn = csn + 1
count = count + 1
count1 = count1 + 1
WEND
SLEEP
CALL stopfor(10)
CLOSE


CASE ELSE
csn = 1
OPEN choice$ FOR INPUT AS #1
CLS
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 3, B
LOCATE 6, 9: INPUT "Enter the Destination. No"; destse$
CLS
LOCATE row, 9: CALL header1

WHILE NOT EOF(1)

IF count = 15 THEN
SLEEP
CLS
CLOSE #1
i = 7
OPEN choice$ FOR INPUT AS #1

FOR j = 1 TO 14     'after 14th  print
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
NEXT j
CALL exdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 5, B
count1 = 1
i = 7
END IF

INPUT #1, namesea$, addresssea$, destsea$, calltimesea$, cost1sea, realcost1sea
IF LCASE$(destse$) = LCASE$(destsea$) THEN
LOCATE row, 9
COLOR 4
PRINT LTRIM$(RTRIM$(STR$(csn))) + "."
LOCATE row, 13
PRINT namesea$
LOCATE row, 29
PRINT addresssea$
LOCATE row, 44
PRINT destsea$
LOCATE row, 55
PRINT calltimesea$
LOCATE row, 66
PRINT cost1sea
row = row + 1
END IF
csn = csn + 1
count = count + 1
count1 = count1 + 1
WEND
SLEEP
CALL stopfor(10)
CLOSE



END SELECT
CLOSE
CALL choose


     END SUB

SUB stopfor (pt)
FOR i = 1 TO pt
NEXT
END SUB

SUB userchoice
ll:
COLOR 1
co = 1
COLOR 4
CALL exdesign(5, 22, 8, 72)
SLEEP
CALL rect2
LINE (59, 71)-(571, 343), 3, B
PAINT (61 + 4, 303), 3
a = 7: B = 26
CALL locchange(a, B)
LINE (B, a)-(B + 230, a + 25), 4, BF
LINE (59, 142)-(571, 210), 0, BF
LOCATE 4 + 3, 11 + 22: PRINT "Main Menu"
COLOR 12
LOCATE 7 + 3, 11 + 20: PRINT "1. Create New file   "
LOCATE 8 + 3, 11 + 20: PRINT "2. Open existing file"
LOCATE 9 + 3, 11 + 20: PRINT "3. Credit            "
LOCATE 10 + 3, 11 + 20: PRINT "4. Exit              "
COLOR 5

a = 15: B = 24
CALL locchange(a, B): LINE (B, a)-(B + 280, a + 25), 6, BF
LOCATE 12 + 3, 11 + 13: PRINT "Press the no. of your choice(1-4)"

COLOR 7
SLEEP
opt$ = INKEY$
SELECT CASE opt$
CASE "1"
     choice$ = MID$(DATE$, 9, 4) + MID$(DATE$, 1, 2) + MID$(DATE$, 4, 2) + ".txt"
CASE "2"
        OPEN "files.txt" FOR INPUT AS #4
        CLS
        COLOR 1
        CALL exdesign(5, 22, 8, 72)
        LINE (59, 71)-(571, 343), 5, B
        COLOR 4
        WHILE NOT EOF(4)
                INPUT #4, abcd$
                LOCATE 6 + co, 25: PRINT co; ". "; "20" + MID$(abcd$, 1, 2) + "-" + MID$(abcd$, 3, 2) + "-" + MID$(abcd$, 5, 2)
                co = co + 1
        WEND
        CLOSE #4
4       LOCATE co + 7, 25: PRINT "Enter your choice(1-"; co - 1; ")": choicea = VAL(INPUT$(1))
        IF choicea > co - 1 OR choicea < 1 THEN GOTO 4
        OPEN "files.txt" FOR INPUT AS #7
        cou = 1
        WHILE NOT EOF(7)
                INPUT #7, az$
                IF choicea = cou THEN
                        choice$ = az$
                END IF
        cou = cou + 1
        WEND
CASE "3"
CALL credit
CASE "4"
CALL last
END
 CASE ELSE
  CLS
  GOTO ll:
  END SELECT
CLOSE #7
END SUB

SUB welcome
CLS
CALL rect
COLOR 4
 LOCATE 8, 7: PRINT "_______________________ "
 LOCATE 9, 7: PRINT "  //   \\         || || "
LOCATE 10, 7: PRINT " ||     ||        || || "
LOCATE 11, 7: PRINT "        ||    ___ || || "
LOCATE 12, 7: PRINT "       //    //-\\|| || "
LOCATE 13, 7: PRINT "   __//-----||    || || "
LOCATE 14, 7: PRINT "   |/\\----- \\__/|| || "
LOCATE 15, 7: PRINT "      \\       -- || || "
LOCATE 16, 7: PRINT "       \\         || || "
LOCATE 17, 7: PRINT "        \\//      || || "
 CALL stopfor(1000)
 LOCATE 8, 29: PRINT "_________________ "
 LOCATE 9, 29: PRINT "        ||     ||  "
LOCATE 10, 29: PRINT "        ||     ||  "
LOCATE 11, 29: PRINT "        ||     ||  "
LOCATE 12, 29: PRINT "        ||     ||  "
LOCATE 13, 29: PRINT "        ||     ||  "
LOCATE 14, 29: PRINT "        ||     ||  "
LOCATE 15, 29: PRINT "        ||     ||  "
LOCATE 16, 29: PRINT " \\     //     ||  "
LOCATE 17, 29: PRINT "  \\__ //      ||  "
LOCATE 18, 29: PRINT "    __             "
     CALL stopfor(1000)
 LOCATE 8, 46: PRINT "____________ "
 LOCATE 9, 46: PRINT "         ||  "
LOCATE 10, 46: PRINT "         ||  "
LOCATE 11, 46: PRINT "   ------||  "
LOCATE 12, 46: PRINT " //------||  "
LOCATE 13, 46: PRINT "||       ||  "
LOCATE 14, 46: PRINT "||       ||  "
LOCATE 15, 46: PRINT "||       ||  "
LOCATE 16, 46: PRINT "||       ||  "
LOCATE 17, 46: PRINT " \\      ||  "
     CALL stopfor(1000)


 LOCATE 8, 58: PRINT "__________________"
 LOCATE 9, 58: PRINT "    ||       ||   "
LOCATE 10, 58: PRINT "    ||       ||   "
LOCATE 11, 58: PRINT "    ||       ||   "
LOCATE 12, 58: PRINT "    ||       ||   "
LOCATE 13, 58: PRINT "    ||       ||   "
LOCATE 14, 58: PRINT " ___||_______||   "
LOCATE 15, 58: PRINT " \\-||-------||   "
LOCATE 16, 58: PRINT "  \\||       ||   "
LOCATE 17, 58: PRINT "    ||       ||   "
LOCATE 18, 58: PRINT "             \\   "
LOCATE 19, 58: PRINT "              \\  "

END SUB

SUB welcome1
CALL design(5, 22, 6, 76)
COLOR 20
LOCATE 8, 7:  PRINT "  _______________________________________________________________"
LOCATE 9, 7:  PRINT "    //  \\       || ||      ||     ||         ||      ||      || "
LOCATE 10, 7: PRINT "   ||    ||      || ||      ||     ||         ||      ||      || "
LOCATE 11, 7: PRINT "         ||      || ||      ||     ||         ||      ||      || "
LOCATE 12, 7: PRINT "        //  //=\\|| ||      ||     ||         ||      ||      || "
LOCATE 13, 7: PRINT "     _//---||    || ||      ||     ||  //-----||      ||      || "
LOCATE 14, 7: PRINT "    |/\\--- \\=//|| ||      ||     || || -----||   ___||______|| "
LOCATE 15, 7: PRINT "       \\        || ||      ||     || ||      ||   \\-||------|| "
LOCATE 16, 7: PRINT "        \\       || || ||   ||     || ||      ||    \\||      || "
LOCATE 17, 7: PRINT "         \\//    || ||  \\ //      ||  \\     ||              || "
LOCATE 18, 7: PRINT "                                                             \\  "
LOCATE 19, 7: PRINT "                                                              \\ "
COLOR 7

END SUB

SUB welcome2
CALL rect2
COLOR 12
LOCATE 8, 7:  PRINT "               "
LOCATE 9, 7:  PRINT "||        || ||===== ||     //====\\  //====\\  ||\\    //|| ||===== "
LOCATE 10, 7: PRINT "||        || ||      ||    ||        ||      || || \\  // || ||       "
LOCATE 11, 7: PRINT "||        || ||_____ ||    ||        ||      || ||  \\//  || ||_____ "
LOCATE 12, 7: PRINT "||  //\\  || ||----- ||    ||        ||      || ||        || ||----- "
LOCATE 13, 7: PRINT "|| //  \\ || ||      ||    ||        ||      || ||        || ||       "
LOCATE 14, 7: PRINT "||//    \\|| ||===== ||==== \\====//  \\====//  ||        || ||===== "

END SUB

