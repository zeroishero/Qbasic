screen 12
do
for i=(1 +p) to (360+p) step .5
x=50*cos(i*3.141592/180)
y=50*sin(i*3.1415926/180)

x1=60*cos(i*3.141592/180)
y1=60*sin(i*3.1415926/180)

pset (300+x1,300+y1),2
pset (300+x,300+y),2
next

for i=(1 +p) to (360+p) step 120
x=50*cos(i*3.141592/180)
y=50*sin(i*3.1415926/180)

x1=60*cos(i*3.141592/180)
y1=60*sin(i*3.1415926/180)

line (300+x,300+y)-(300+x1,300+y1),2

next
c=3
for i=(1 +p) to (360+p) step 120
x=55*cos((i+5)*3.141592/180)
y=55*sin((i+5)*3.1415926/180)

paint (301+x,301+y),c,2
c=c+1
next

t=timer
do
loop while (timer-t)<=.1
cls
p=p+10
loop while inkey$ <>"q"








