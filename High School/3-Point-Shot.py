########################################################
#Programmer: Skylar Ji
#Purpose: This program is a Python animation of a human throwing a basketball, with the basketball flying through the air and scoring a basket. 
########################################################

#Tkinter setup
from tkinter import*
from time import*
from random import*
myInterface = Tk()
s = Canvas( myInterface, width=800, height=600, background="light sky blue")
s.pack()

#Background scene

#Sky gradient (dark to light blue)
y1 = 0
r = 0
g = 91
b = 128

for skyGradient in range(43):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_rectangle(0, y1, 800, 600, fill = rgb, outline = rgb)
    r = r + 3
    g = g + 3
    b = b + 3
    y1 = y1 + 15

#Sun
sun = s.create_oval(50,50,150,150, fill = "gold", outline = "gold")

#Clouds
for cloud1 in range(12):
  x = randint(200,300)
  y = randint(50,75)
  size = randint(50,75)
  s.create_oval(x,y,x+size,y+size, fill = "snow", outline = "snow")

for cloud2 in range(12):
  x = randint(500,600)
  y = randint(100,125)
  size = randint(50,75)
  s.create_oval(x,y,x+size,y+size, fill = "snow", outline = "snow")

#Ground
s.create_rectangle(0,550,800,600, fill = "#C8C6D3")

#Asphalt
for particle in range(5000):
  x = randint(0,800)
  y = randint(550,600)
  size = randint(1,4)
  colours = ["gray21", "gray31", "gray41", "gray51"]
  colour = choice(colours)
  s.create_oval(x,y,x+size,y+size, fill = colour, outline = colour)

#Fence
x1 = 0
for fence1 in range(20):
  fence = s.create_line(x1,450,x1,550,fill = "salmon4", width = 25)
  x1 = x1 + 50
fence2 = s.create_rectangle(0, 475, 800, 525, fill = "salmon4")

#Goal Post
post1 = s.create_rectangle(145,300, 160, 550, fill = "#6E7F91",)
post2 = s.create_rectangle(145,300,200,315, fill = "#6E7F91")

#Backboard
backboard = s.create_rectangle(190,250,205,350,fill = "#E8E0CD")

#hoop
hoop = s.create_oval(205,300,275,310, outline = "gray20", width = 3)

#net
net1 = s.create_line(210,305,215,365,220,305,225,365,230,305,235,365,240,305,245,365,250,305,255,365,260,305,265,365,270,305,fill = "white", width = 2)
net2 = s.create_line(215,365,265,365,fill = "white", width = 2)

#Three point line
curvedline = s.create_line(300,552,1000,575,300,600, fill = "yellow", width = 5, smooth = True)
straightline = s.create_line(500,560,500,590, fill = "yellow", width = 5)


#For loop that controls the ball and the person jumping
#The variable f2 tracks the frames of the person jumping while the variable f tracks the ball as it goes into the hoop and the hoop/net overlapping the ball
f2 = 0
for f in range(45):
  #If statement so that the human stops after landing on the ground (and doesn't fall out of the screen)
  if f2 <= 25:
    #Features of the human, the x-values stay the same (specified when creating the human features), while the y-values rise up and fall down due to the gravitational acceleration
    y1head = 0.5*f2**2 - 12 *f2 + 425  
    y2head = y1head + 50
    y1body = 0.5*f2**2 - 12 *f2 + 475 
    y2body = y1body + 50
    y1leg = 0.5*f2**2 - 12 *f2 + 525
    y2leg = y1leg + 25 
    y1arm = 0.5*f2**2 - 12 *f2 + 470
    y2arm = y1arm + 30
    y1hair = 0.5*f2**2 - 12 *f2 + 425
    y2hair = y1hair + 30  
    y1eye = 0.5*f2**2 - 12 *f2 + 450
    y2eye = y1eye + 5
    y1mouth = 0.5*f2**2 - 12 *f2 + 465
    y2mouth = y1mouth + 5
    y1shoe = 0.5*f2**2 - 12 *f2 + 550
    y2shoe = y1shoe + 6

    #Creating the human features on the canvas
    head = s.create_oval(625, y1head, 675, y2head, fill="tan1")
    body = s.create_polygon(650, y1body, 625, y2body, 675, y2body, fill = "MediumPurple1", outline = "black")
    leg1 = s.create_line(660,y1leg, 660, y2leg, fill = "khaki2",width = 5)
    leg2 = s.create_line(640,y1leg, 640, y2leg, fill = "khaki2",width = 5)
    arm1 = s.create_line(600,y1arm, 640, y2arm, fill = "tan2",width = 4)
    arm2 = s.create_line(615,y1arm, 655, y2arm, fill = "tan2",width = 4)
    hair1 = s.create_line(645, y1hair, 620, y2hair, fill = "black", width = 10)
    hair2 = s.create_line(643, y1hair+2, 658, y1hair+2, fill = "black", width = 10)
    hair3 = s.create_line(655, y1hair, 680, y2hair, fill = "black", width = 10)
    eye1 = s.create_oval(640, y1eye, 645, y2eye, fill = "saddle brown")
    eye2 = s.create_oval(655, y1eye, 660, y2eye, fill = "saddle brown")
    mouth = s.create_line(640,y1mouth, 650, y2mouth, 660, y1mouth, fill = "tomato", width = 3, smooth = True)
    shoe1 = s.create_oval(637, y1shoe, 643, y2shoe, fill = "lavender")
    shoe2 = s.create_oval(657, y1shoe, 663, y2shoe, fill = "lavender")
  
  #Once the if-statement ends (the human finishes jumping), the human features get redrawn in their end position (so that they don't dissapear)
  else:
    head = s.create_oval(625, y1head, 675, y2head, fill="tan1")
    body = s.create_polygon(650, y1body, 625, y2body, 675, y2body, fill = "MediumPurple1", outline = "black")
    leg1 = s.create_line(660,y1leg, 660, y2leg, fill = "khaki2",width = 5)
    leg2 = s.create_line(640,y1leg, 640, y2leg, fill = "khaki2",width = 5)
    arm1 = s.create_line(600,y1arm, 640, y2arm, fill = "tan2",width = 4)
    arm2 = s.create_line(615,y1arm, 655, y2arm, fill = "tan2",width = 4)
    hair1 = s.create_line(645, y1hair, 620, y2hair, fill = "black", width = 10)
    hair2 = s.create_line(643, y1hair+2, 658, y1hair+2, fill = "black", width = 10)
    hair3 = s.create_line(655, y1hair, 680, y2hair, fill = "black", width = 10)
    eye1 = s.create_oval(640, y1eye, 645, y2eye, fill = "saddle brown")
    eye2 = s.create_oval(655, y1eye, 660, y2eye, fill = "saddle brown")
    mouth = s.create_line(640,y1mouth, 650, y2mouth, 660, y1mouth, fill = "tomato", width = 3, smooth = True)
    shoe1 = s.create_oval(637, y1shoe, 643, y2shoe, fill = "lavender")
    shoe2 = s.create_oval(657, y1shoe, 663, y2shoe, fill = "lavender")

  #x and y values of the ball flying into the hoop. The ball has the same gravitational acceleration as the human but rises higher than the human due to its faster initial upward speed
  x1ball = -13*f + 590     
  x2ball = x1ball + 30

  y1ball = 0.5*f**2 - 20*f + 460  
  y2ball = y1ball + 30

  #Creating the ball on the canvas. Part of the hoop ring and the net get redrawn each frame so it looks like the ball is flying into the hoop and not in front of it
  ball = s.create_oval(x1ball, y1ball, x2ball, y2ball, fill="#D35700")
  hoopRing = s.create_line(205,305,242.5,300,275,305, fill = "gray20", width = 3, smooth = True)
  net1 = s.create_line(210,305,215,365,220,305,225,365,230,305,235,365,240,305,245,365,250,305,255,365,260,305,265,365,270,305,fill = "white", width = 2)
  net2 = s.create_line(215,365,265,365,fill = "white", width = 2)

  #Each frame gets updated and all features of the human and the ball get deleted each frame after a sleep time
  s.update()
  sleep(.03)
  s.delete(ball, head, body, leg1, leg2, arm1, arm2, hair1, hair2, hair3, eye1, eye2, mouth, shoe1, shoe2)

  #Human frame variable gets updated
  f2 = f2 + 1


#The human features are redrawn in their end position after the for-loop ends so that they don't disappear once the loop finishes and the animation ends
head = s.create_oval(625, y1head, 675, y2head, fill="tan1")
body = s.create_polygon(650, y1body, 625, y2body, 675, y2body, fill = "MediumPurple1", outline = "black")
leg1 = s.create_line(660,y1leg, 660, y2leg, fill = "khaki2",width = 5)
leg2 = s.create_line(640,y1leg, 640, y2leg, fill = "khaki2",width = 5)
arm1 = s.create_line(600,y1arm, 640, y2arm, fill = "tan2",width = 4)
arm2 = s.create_line(615,y1arm, 655, y2arm, fill = "tan2",width = 4)
hair1 = s.create_line(645, y1hair, 620, y2hair, fill = "black", width = 10)
hair2 = s.create_line(643, y1hair+2, 658, y1hair+2, fill = "black", width = 10)
hair3 = s.create_line(655, y1hair, 680, y2hair, fill = "black", width = 10)
eye1 = s.create_oval(640, y1eye, 645, y2eye, fill = "saddle brown")
eye2 = s.create_oval(655, y1eye, 660, y2eye, fill = "saddle brown")
mouth = s.create_line(640,y1mouth, 650, y2mouth, 660, y1mouth, fill = "tomato", width = 3, smooth = True)
shoe1 = s.create_oval(637, y1shoe, 643, y2shoe, fill = "lavender")
shoe2 = s.create_oval(657, y1shoe, 663, y2shoe, fill = "lavender")
s.update()

#A new for-loop that allows the ball to bounce off of its final position and out of the canvas after the last for-loop
for f3 in range(20):
  #Same equations as the first for-loop when the ball goes into the net but with new variables. Some variables from the last for-loop are used to track the ball's last position as it hits the ground
  x1ball2 = -13*f3 + x1ball     
  x2ball2 = x1ball2 + 30

  y1ball2 = 0.5*f3**2 - 20*f3 + y1ball
  y2ball2 = y1ball2 + 30

  ball2 = s.create_oval(x1ball2, y1ball2, x2ball2, y2ball2, fill="#D35700")

  #Each frame gets updated and the ball get deleted each frame after a sleep time
  s.update()
  sleep(.03)
  s.delete(ball2)
