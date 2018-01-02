DECLARE FUNCTION PassIn$ (row!, col!, lim!)
DECLARE FUNCTION outs$ (n!)
DECLARE SUB password ()
DECLARE SUB locchange (a!, B!)
DECLARE SUB username ()
DECLARE SUB admin ()
DECLARE SUB exdesign (x!, y!, a!, B!)
DECLARE SUB last ()
DECLARE SUB welcome2 ()
DECLARE SUB finalize ()
DECLARE SUB credit ()
DECLARE SUB lined ()
DECLARE SUB userchoice ()
DECLARE SUB search ()
DECLARE SUB fastdesign (x, y, a, B)
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
SCREEN 12
pt = 15000
CLS
'PLAY "l5<egbegbegbegbcegcegcegcegmb"
'CALL welcome

'CALL stopfor(2300)
'CLS
'PLAY "gb>d<gb>d<gb>d<gb>d<df#adf#adf#adf#l1amb"
'CALL welcome2
'CALL stopfor(2300)
CLS
CALL fastdesign(5, 22, 8, 72)
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
CALL fastdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 3, B
COLOR 13: LOCATE 4, 17: PRINT "           Adding Record"
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
IF LEN(calltime$) <> 8 THEN
LOCATE 12 + 4, 40: PRINT "                    "
LOCATE 14 + 4, 30: COLOR 4: PRINT "Error"
GOTO 10
END IF
IF VAL(MID$(calltime$, 4, 2)) > 60 OR VAL(MID$(calltime$, 7, 2)) > 60 THEN
LOCATE 12 + 4, 27: PRINT "                   "
LOCATE 14 + 4, 20: COLOR 4: PRINT "Please Enter the time correctly"
GOTO 10
END IF
cost1 = Cost(calltime$)
realcost1 = realcost(calltime$)
CLS
CALL fastdesign(5, 16, 8, 72)
COLOR 1
CALL lined
COLOR 4
LOCATE 8, 30: PRINT "Call Bill"
LOCATE 9, 56: PRINT "Date: "; DATE$
LOCATE 10, 56: PRINT "Time: "; TIME$
LOCATE 11, 10: PRINT "Name            : "; name$
LOCATE 12, 10: PRINT "Address         : "; address$
LOCATE 13, 10: PRINT "Call time       : "; calltime$
LOCATE , 10: PRINT "Destination No. : "; dest$
LOCATE 15, 10: PRINT "Cost:           : "; "Rs."; cost1
WRITE #1, name$, address$, dest$, calltime$, cost1, realcost1
LOCATE 18, 9: INPUT "Do you want to add more(y/n)"; ans$
IF UCASE$(ans$) = "Y" THEN
CLS
CALL fastdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 5, B
GOTO 20
ELSE
CLS
CLOSE
CALL choose
END IF
END SUB

SUB admin
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

CALL fastdesign(5, 22, 8, 72)
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
CASE "7": CLS : CALL userchoice
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
CLS
FOR k = 25 TO 4 STEP -1
COLOR 1: LOCATE k - 3, 5: PRINT "Bijay Shrestha     Dikson Rajbanshi   Rakshya Kandel     Smriti Banjade"
COLOR 2: LOCATE k - 2, 5: PRINT "Dikson Rajbanshi   Rakshya Kandel     Smriti Banjade     Bijay Shrestha"
COLOR 3: LOCATE k - 1, 5: PRINT "Rakshya Kandel     Smriti Banjade     Bijay Shrestha     Dikson Rajbanshi"
COLOR 4: LOCATE k - 0, 5: PRINT "Smriti Banjade     Bijay Shrestha     Dikson Rajbanshi   Rakshya Kandel"
CALL stopfor(2000)
IF k = 4 THEN CALL stopfor(5000)
CLS
NEXT
FOR t = 25 TO 6 STEP -1
COLOR 1: LOCATE t - 3, 25: PRINT "  Special thanks to  "
COLOR 2: LOCATE t - 2, 25: PRINT " Tril Prasad Banjade"
CALL stopfor(2000)
IF t = 2 THEN CALL stopfor(5000)
CLS
NEXT
FOR l = 25 TO 4 STEP -1
COLOR 4
LOCATE l - 3, 20: PRINT "             ZERO PVT. LTD.             "
COLOR 5: LOCATE l - 2, 20: PRINT "Shankhamul,New Baneshwor,Kathmandu    "
COLOR 6: LOCATE l - 1, 20: PRINT "           Phone.no:014782629            "
COLOR 7: LOCATE l - 0, 10: PRINT "Email address:shresthabijay26@yahoo.com;Dikanme@gmail.com"

CALL stopfor(2000)
IF l = 4 THEN CALL stopfor(5000)
CLS
NEXT
END SUB

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
here1:
PRINT "Record deleted"
CALL choose
CLOSE
KILL choice$
NAME "delete.txt" AS choice$
END SUB

SUB design (x, y, a, B)
CLS
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
CALL fastdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 2, B
LOCATE 6, 10: INPUT "Enter the S.N of the customer"; sn

WHILE NOT EOF(1)
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
IF count = sn THEN
        CLS
        CALL fastdesign(5, 22, 8, 72)
        LINE (59, 71)-(571, 343), 2, B
        LOCATE 7, 9: PRINT name$, address$, dest$, calltime$
        LOCATE 8, 9: INPUT "Are you sure"; ans$
        IF UCASE$(ans$) <> "Y" THEN GOTO here
        CLS
        CALL fastdesign(5, 22, 8, 72)
        LINE (59, 71)-(571, 343), 11, B
        COLOR 4: LOCATE 6 + 4, 11: PRINT "Name:"
        LOCATE 8 + 4, 11: PRINT "Address:"
        LOCATE 10 + 4, 11: PRINT "Destination No."
        LOCATE 12 + 4, 11: PRINT "Call Time"
        a = 6 + 4
        B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B


        a = 8 + 4: B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B

        a = 10 + 4: B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B

        a = 12 + 4: B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B

        LOCATE 6 + 4, 28: INPUT "", name$
        LOCATE 8 + 4, 28: INPUT "", address$
        LOCATE 10 + 4, 28: INPUT "", dest$
17      COLOR 1: LOCATE 12 + 4, 28: INPUT "", calltime$
        IF LEN(calltime$) <> 8 THEN
        LOCATE 12 + 4, 40: PRINT "                    "
        LOCATE 14 + 4, 30: COLOR 4: PRINT "Error"
        GOTO 17
        END IF
        IF VAL(MID$(calltime$, 4, 2)) > 60 OR VAL(MID$(calltime$, 7, 2)) > 60 THEN
        LOCATE 12 + 4, 27: PRINT "                   "
        LOCATE 14 + 4, 20: COLOR 4: PRINT "Please Enter the time correctly"
        GOTO 17
        END IF
        WRITE #2, nameedit$, addressedit$, destedit$, calltimeedit$, cost1edit, realcost1edit
ELSE
WRITE #2, name$, address$, dest$, calltime$, cost1, realcost1
END IF
count = count + 1
WEND
here:
CLOSE
KILL choice$
NAME "edit.txt" AS choice$

CASE 2
CLOSE
OPEN choice$ FOR INPUT AS #1
OPEN "edit.txt" FOR OUTPUT AS #2

CALL fastdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 2, B
LOCATE 6, 10: INPUT "Enter the Name of the customer"; naam$
WHILE NOT EOF(1)
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
IF name$ = naam$ THEN
        CLS
        CALL fastdesign(5, 22, 8, 72)
        LINE (59, 71)-(571, 343), 2, B
        LOCATE 7, 9: PRINT name$, address$, dest$, calltime$
        LOCATE 8, 9: INPUT "Are you sure"; ans$
        IF UCASE$(ans$) <> "Y" THEN GOTO here
        CLS
        CALL fastdesign(5, 22, 8, 72)
        LINE (59, 71)-(571, 343), 11, B
        COLOR 4: LOCATE 6 + 4, 11: PRINT "Name:"
        LOCATE 8 + 4, 11: PRINT "Address:"
        LOCATE 10 + 4, 11: PRINT "Destination No."
        LOCATE 12 + 4, 11: PRINT "Call Time"
        a = 6 + 4
        B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B


        a = 8 + 4: B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B

        a = 10 + 4: B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B

        a = 12 + 4: B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B

        LOCATE 6 + 4, 28: INPUT "", name$
        LOCATE 8 + 4, 28: INPUT "", address$
        LOCATE 10 + 4, 28: INPUT "", dest$
18      COLOR 1: LOCATE 12 + 4, 28: INPUT "", calltime$
        IF LEN(calltime$) <> 8 THEN
        LOCATE 12 + 4, 40: PRINT "                    "
        LOCATE 14 + 4, 30: COLOR 4: PRINT "Error"
        GOTO 18
        END IF
        IF VAL(MID$(calltime$, 4, 2)) > 60 OR VAL(MID$(calltime$, 7, 2)) > 60 THEN
        LOCATE 12 + 4, 27: PRINT "                   "
        LOCATE 14 + 4, 20: COLOR 4: PRINT "Please Enter the time correctly"
        GOTO 17
        END IF
        WRITE #2, nameedit$, addressedit$, destedit$, calltimeedit$, cost1edit, realcost1edit
ELSE
WRITE #2, name$, address$, dest$, calltime$, cost1, realcost1
END IF
count = count + 1
WEND
CLOSE
KILL choice$
NAME "edit.txt" AS choice$

CASE ELSE
CLOSE
OPEN choice$ FOR INPUT AS #1
OPEN "edit.txt" FOR OUTPUT AS #2

CALL fastdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 2, B
LOCATE 6, 10: INPUT "Enter the address$ of the customer"; ad$
WHILE NOT EOF(1)
INPUT #1, name$, address$, dest$, calltime$, cost1, realcost1
IF ad$ = address$ THEN
        CLS
        CALL fastdesign(5, 22, 8, 72)
        LINE (59, 71)-(571, 343), 2, B
        LOCATE 7, 9: PRINT name$, address$, dest$, calltime$
        LOCATE 8, 9: INPUT "Are you sure"; ans$
        IF UCASE$(ans$) <> "Y" THEN GOTO here
        CLS
        CALL fastdesign(5, 22, 8, 72)
        LINE (59, 71)-(571, 343), 11, B
        COLOR 4: LOCATE 6 + 4, 11: PRINT "Name:"
        LOCATE 8 + 4, 11: PRINT "Address:"
        LOCATE 10 + 4, 11: PRINT "Destination No."
        LOCATE 12 + 4, 11: PRINT "Call Time"
        a = 6 + 4
        B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B


        a = 8 + 4: B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B

        a = 10 + 4: B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B

        a = 12 + 4: B = 28
        CALL locchange(a, B)
        LINE (B, a)-(B + 230, a + 20), 4, B

        LOCATE 6 + 4, 28: INPUT "", name$
        LOCATE 8 + 4, 28: INPUT "", address$
        LOCATE 10 + 4, 28: INPUT "", dest$
170      COLOR 1: LOCATE 12 + 4, 28: INPUT "", calltime$
        IF LEN(calltime$) <> 8 THEN
        LOCATE 12 + 4, 40: PRINT "                    "
        LOCATE 14 + 4, 30: COLOR 4: PRINT "Error"
        GOTO 170
        END IF
        IF VAL(MID$(calltime$, 4, 2)) > 60 OR VAL(MID$(calltime$, 7, 2)) > 60 THEN
        LOCATE 12 + 4, 27: PRINT "                   "
        LOCATE 14 + 4, 20: COLOR 4: PRINT "Please Enter the time correctly"
        GOTO 17
        END IF
        WRITE #2, nameedit$, addressedit$, destedit$, calltimeedit$, cost1edit, realcost1edit
ELSE
WRITE #2, name$, address$, dest$, calltime$, cost1, realcost1
END IF
count = count + 1
WEND

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

SUB fastdesign (x, y, a, B)
CLS
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
CALL fastdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 12, B
sec = totalcallinsec MOD 60
min = totalcallinsec \ 60: IF min > 59 THEN min = min MOD 60
hour = min \ 60
sec$ = STR$(sec): IF LEN(sec$) = 1 THEN sec$ = "0" + sec$
min$ = STR$(min): IF LEN(min$) = 1 THEN min$ = "0" + min$
hour$ = STR$(min): IF LEN(min$) = 1 THEN hour$ = "0" + hour$
tcalltime$ = hour$ + ":" + min$ + ":" + sec$
COLOR 4
LOCATE 6, 30: PRINT "Final data"
LOCATE 7, 20: PRINT "Total Call TIme    :", tcalltime$
LOCATE 8, 20: PRINT "Total money (SP)   :", "Rs."; totalcost
LOCATE 9, 20: PRINT "Total money(CP)    :", "Rs."; totalrealcost
LOCATE 10, 20: PRINT "Total Profit       :", -totalrealcost + totalcost
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
   FOR i = 1 TO 360 STEP 5
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
END SUB

SUB lined
FOR i = 8 TO 72 STEP 2
LOCATE 7, i: PRINT "*"
NEXT
END SUB

SUB locchange (a, B)
a = (a / 30 * 480) - 20
B = (B / 80 * 640) - 18
LINE (B, a)-(B + 230, a + 25), 0, BF
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

FUNCTION PassIn$ (row, col, lim)
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
END IF

PassIn$ = B$
LOOP WHILE r$ <> CHR$(13)

END FUNCTION

SUB password
n: OPEN "company.dat" FOR INPUT AS #1
INPUT #1, z$, y$, x$, r
CLOSE #1
CLS

LINE (59, 71)-(571, 343), 2, B
PAINT (61 + 4, 303), 2
LINE (59, 150)-(571, 250), 8, BF
CALL fastdesign(5, 22, 8, 72)
LINE (60, 71)-(572, 343), 8, BF
LINE (60, 71)-(572, 155), 4, BF
LOCATE 12, 11: PRINT "Username:"
LOCATE 15, 11: PRINT "Password:"
a = 8 + 4: B = 25
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1

a = 11 + 4: B = 25
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
   LINE (B - 5, a + 10)-(B - 5, a + 35), 1
   LINE (B - 5, a + 35)-(B, a + 25), 1
   LINE (B - 5, a + 35)-(B + 220, a + 35), 1
   LINE (B + 220, a + 35)-(B + 230, a + 25), 1

COLOR 5:
a = 8: B = 23
CALL locchange(a, B)
   LINE (B, a)-(B - 5, a + 10), 1
LOCATE 8, 26: PRINT "Authentiation Required"
 
  COLOR 1
LOCATE 8 + 4, 25: INPUT "", user$
LOCATE 15, 25: PRINT CHR$(8)
i = 0
c$ = INPUT$(1)
WHILE c$ <> CHR$(13)
 B$ = LTRIM$(B$ + c$)
IF user$ = y$ AND B$ = x$ THEN CLS : CALL userchoice: GOTO 12
IF user$ = "Admin" AND B$ = "abcd" THEN CLS : CALL admin: GOTO 12
LOCATE 15, 25 + i: PRINT CHR$(15);
LOCATE 15, 26 + i: PRINT CHR$(8)
c$ = INPUT$(1)
i = i + 1
WEND
13
LOCATE 15, 25: PRINT "                        "
COLOR 4: LOCATE 18, 28: PRINT "Error:Wrong Password or Username"
LOCATE 19, 35: PRINT "Retry(y/n)??"

SELECT CASE UCASE$(INPUT$(1))
CASE "Y"
CLS : GOTO n:
CASE "N"
GOTO 11
CASE ELSE
CLS : GOTO 13
END SELECT
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
CALL fastdesign(5, 22, 8, 72)
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
CALL fastdesign(5, 22, 8, 72)
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
row = 7
OPEN choice$ FOR INPUT AS #1
CLS
CALL fastdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 11, B
LOCATE 6, 9: INPUT "Enter the Adress"; adressse$
LOCATE row, 9: CALL header1
WHILE NOT EOF(1)
INPUT #1, namesea$, addresssea$, destsea$, calltimesea$, cost1sea, realcost1sea
row = row + 1
IF LCASE$(addressse$) = LCASE$(addresssea$) THEN
LOCATE row, 9: PRINT csn, namesea$, addresssea$, destsea$, calltimesea$, cost1sea
END IF
WEND
CLOSE
CASE ELSE
row = 7
OPEN choice$ FOR INPUT AS #1
CLS
CALL fastdesign(5, 22, 8, 72)
LINE (59, 71)-(571, 343), 12, B
LOCATE 6, 9: INPUT "Enter the Destination Number"; destse$
LOCATE row, 9: CALL header1
WHILE NOT EOF(1)
INPUT #1, csn, namesea$, addresssea$, destsea$, calltimesea$, cost1sea, realcost1sea
row = row + 1
IF LCASE$(destse$) = LCASE$(destsea$) THEN
LOCATE row, 9: PRINT namesea$, addresssea$, destsea$, calltimesea$, cost1sea
END IF
WEND
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
CLEAR , , 2000
ll:
COLOR 1
co = 1
COLOR 4
CALL fastdesign(5, 22, 8, 72)
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

opt = VAL(INPUT$(1))
IF opt = 1 THEN
     choice$ = MID$(DATE$, 9, 4) + MID$(DATE$, 1, 2) + MID$(DATE$, 4, 2) + ".txt"
ELSEIF opt = 2 THEN
        OPEN "files.txt" FOR INPUT AS #4
        CLS
        COLOR 1
        CALL fastdesign(5, 22, 8, 72)
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
ELSEIF opt = 3 THEN CALL credit: CALL last
ELSEIF opt = 4 THEN END
ELSEIF opt > 4 OR opt < 1 THEN
  CLS
  GOTO ll:
  END IF
CLOSE #7
END SUB

SUB welcome
CLS
CALL design(5, 22, 6, 76)
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
CALL design(5, 22, 6, 76)
COLOR 12
LOCATE 8, 7:  PRINT "               "
LOCATE 9, 7:  PRINT "||        || ||===== ||     //====\\  //====\\  ||\\    //|| ||===== "
LOCATE 10, 7: PRINT "||        || ||      ||    ||        ||      || || \\  // || ||       "
LOCATE 11, 7: PRINT "||        || ||_____ ||    ||        ||      || ||  \\//  || ||_____ "
LOCATE 12, 7: PRINT "||  //\\  || ||----- ||    ||        ||      || ||        || ||----- "
LOCATE 13, 7: PRINT "|| //  \\ || ||      ||    ||        ||      || ||        || ||       "
LOCATE 14, 7: PRINT "||//    \\|| ||===== ||==== \\====//  \\====//  ||        || ||===== "

END SUB

