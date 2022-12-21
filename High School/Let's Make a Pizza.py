##############################################
#Program Name: Let's Make a Pizza
#Programmer: Skylar Ji
#Purpose: This is an animation using arrays where a pizza is being created (with cheese/other toppings falling down). The pizza then gets put into an oven, gets cooked (the smoke and the pizza dough changes colour as it is being cooked), and gets taken out to be eaten. Arrays are used in the creation of the cheese particles, the pepperoni slices, as well as the smoke and the flames when cooking the pizza.
##############################################

#Setup
from tkinter import *
from time import*   
from random import*
from math import*
interface=Tk()
s = Canvas(interface, width=800, height=600, background = "#fce9c5")
s.pack()

#Background
#Wall texture
for particle in range(1000):
  x1particle = randint(0,800)
  y1particle = randint(0,600)
  size = randint(1,3)
  colours = choice(["#a3751c", "bisque3", "#b5a381"])

  s.create_oval(x1particle, y1particle, x1particle + size, y1particle + size, fill = colours, outline = colours)

#Pizza Hut logo
logo = PhotoImage(file = "pizzahut.png")
s.create_image(400,75,image = logo)

#Oven
s.create_rectangle(100,150,700,450, fill = "firebrick4", outline = "gray50")

#Oven bricks
y1brick = 150
for bricky in range(7):
  s.create_line(100,y1brick,700,y1brick,fill = "salmon4", width = 3)
  y1brick = y1brick + 50

x1brick = 100
for brickx in range(8):
  s.create_line(x1brick, 150, x1brick, 450,fill = "salmon4", width = 3)
  x1brick = x1brick + 100

#Oven interior
s.create_rectangle(200,200,600,500,fill = "#8bb8d6", outline = "gray25", width = 15)

#Temperature reading (defaulted at room temperature)
temp = 60
temptext = str(temp) + "°F"
s.create_rectangle(350,160,450,180,fill = "gray70", outline = "gray70")
temptextscreen = s.create_text(400,170,text = temptext, font = "Arial 12", fill = "black")

#On/off button
buttonsize = 25
onbutton = s.create_oval(215,160,215+buttonsize, 160 + buttonsize, fill = "#132e16", outline = "")
offbutton = s.create_oval(255,160,255+buttonsize, 160 + buttonsize, fill = "red", outline = "")

#Wire rack
s.create_line(225,350,600,350,fill = "gray20", width = 2.5)
s.create_line(200,400,575,400,fill = "gray20", width = 2.5)

x1rack = 200
for rack in range(16):
  s.create_line(x1rack, 400, x1rack + 25, 350, fill = "gray20", width = 1)
  x1rack = x1rack + 25

#Oven opening outline
s.create_line(200,200,200,450,fill = "gray25", width = 15)
s.create_line(600,200,600,450,fill = "gray25", width = 15)

#Table
s.create_rectangle(0,450,800,600, fill = "lightsalmon4", outline = "lightsalmon4")

#Pizza dough
dough = s.create_oval(200,475,600,575, fill = "burlywood3", outline = "burlywood3")

#Sauce animation (sauce spreading out over the dough)
x1sauce = 350
y1sauce = 493
xsizesauce = 100
ysizesauce = 50

saucewidthcount = 0
saucewidthcount2 = 0
for f in range(65):
  sauce = s.create_oval(x1sauce, y1sauce,350 + xsizesauce, 493 + ysizesauce, fill = "firebrick3", outline = "firebrick3")

  #Update, sleep, delete
  s.update()
  sleep(0.03)
  s.delete(sauce)

  #Sauce gets spread out oven the dough (sauce oval becomes wider and longer)
  x1sauce = x1sauce - 2
  y1sauce = y1sauce - 0.2
  saucewidthcount = saucewidthcount + 2
  saucewidthcount2 = saucewidthcount2 + 0.2
  xsizesauce = 100 + saucewidthcount
  ysizesauce = 50 + saucewidthcount2

#Sauce gets re-created after the animation ends
sauce = s.create_oval(x1sauce, y1sauce,350 + xsizesauce, 493 + ysizesauce, fill = "firebrick3", outline = "firebrick3")

#Cheese pieces arrays
xcheese = []
ycheese =[]
xcheesewidth = []
ycheesewidth = []
ycheesestart = []
ycheesestart2 = []
cheesecolours = []
cheesethicknesses = []
cheeseparticles = []
cheesespeeds = []
cheeses = 2000

#Adding values to cheese arrays
for i in range(cheeses):
  xcheesevalue = randint(225,575)
  xcheese.append(xcheesevalue)

  #Specific limitations on the y-values based on where the cheese particles' x-values are on the pizza (for the circular shape)
  if 300<=xcheesevalue<=500:
    ycheese.append(randint(480,550))   

  elif 250<= xcheesevalue<300 or 500<xcheesevalue<=550:
    ycheese.append(randint(490,540))
  
  else:
    ycheese.append(randint(505,525))
  
  xcheesewidth.append(randint(-5,5))
  ycheesewidth.append(randint(3,6))

  cheesecolours.append(choice(["gold", "#de9b00", "#fcdc58"]))
  cheesethicknesses.append(randint(3,5))
  cheesespeeds.append(uniform(3,5))
  cheeseparticles.append(0)
  ycheesestart.append(randint(-50,0))

#Where the cheese values begin on the y-axis is stored in a seprate variable to be used later
for i in range(cheeses):
  ycheesestart2.append(ycheesestart[i])


#Cheese particle animation
for f in range(200):
  for i in range(cheeses):
    cheeseparticles[i] = s.create_line(xcheese[i], ycheesestart[i], xcheese[i] + xcheesewidth[i], ycheesestart[i] + ycheesewidth[i], fill = cheesecolours[i], width = cheesethicknesses[i])

    #Cheeses stop once they reach their final position, else, they fall under the influence of gravity
    if ycheesestart[i] >= ycheese[i]:
      ycheesestart[i] = ycheesestart[i] + 0
    else:
      ycheesestart[i] = 0.0001*f**2 + cheesespeeds[i]*f + ycheesestart2[i]
  
  #Update, sleep, delete
  s.update()
  sleep(0.01)

  for i in range(cheeses):
    s.delete(cheeseparticles[i])

#Cheeses in final position after the animation is finished
for i in range(cheeses):
  cheeseparticles[i] = s.create_line(xcheese[i], ycheese[i], xcheese[i] + xcheesewidth[i], ycheese[i] + ycheesewidth[i], fill = cheesecolours[i], width = cheesethicknesses[i])

#Pepperoni arrays (all pepperoni positions are predetermined)
pepperonisizex = 25
pepperonisizey = 10
xpepperonis = [255,325, 400,475,530,510,460,395,350,290,360,445]
ypepperonis = [510,495,490,495,510,530,535,540,535,530,515,515]
pepperonis = []

#Adding values to "pepperonis" array
for i in range(len(xpepperonis)):
  pepperonis.append(0)

#Pepperoni animation (one pepperoni slice appears every 0.5 seconds)
for i in range(len(xpepperonis)):
  sleep(0.5)
  pepperonis[i] = s.create_oval(xpepperonis[i],ypepperonis[i],xpepperonis[i] + pepperonisizex, ypepperonis[i] + pepperonisizey, fill = "#911c07", outline = "#911c07")
  s.update()


#Pizza moving up animation
#All pizza items get deleted initially
s.delete(dough, sauce)
for i in range(cheeses):
  s.delete(cheeseparticles[i])
for i in range(len(pepperonis)):
  s.delete(pepperonis[i])

#Initial values for dough and sauce get assigned to variables so that they can be moved
doughy1 = 475
saucey2 = 493

#Actual animation of pizza moving up into the oven
for f in range(35):
  #Re-creating the pizza items
  dough = s.create_oval(200,doughy1,600,doughy1 + 100, fill = "burlywood3", outline = "burlywood3")
  sauce = s.create_oval(x1sauce, y1sauce,350 + xsizesauce, saucey2 + ysizesauce, fill = "firebrick3", outline = "firebrick3")

  for i in range(cheeses):
    cheeseparticles[i] = s.create_line(xcheese[i], ycheesestart[i], xcheese[i] + xcheesewidth[i], ycheesestart[i] + ycheesewidth[i], fill = cheesecolours[i], width = cheesethicknesses[i])

    #Cheese gets moved up by 5 pixels
    ycheesestart[i] = ycheesestart[i] - 5
  
  for i in range(len(pepperonis)):
    pepperonis[i] = s.create_oval(xpepperonis[i],ypepperonis[i],xpepperonis[i] + pepperonisizex, ypepperonis[i] + pepperonisizey, fill = "#911c07", outline = "#911c07")

    #Pepperonis get moved up by 5 pixels
    ypepperonis[i] = ypepperonis[i] - 5


  #Re-creating the oven frame (so that it overlaps on top of the pizza and that it looks like the pizza is being put into the oven)
  s.create_line(200,200,200,450,fill = "gray25", width = 15)
  s.create_line(600,200,600,450,fill = "gray25", width = 15)

  #Dough and sauce get moved up by 5 pixels
  doughy1 = doughy1 - 5
  y1sauce = y1sauce - 5
  saucey2 = saucey2 - 5

  #Update, sleep, delete
  s.update()
  sleep(0.03)
  s.delete(dough, sauce)

  for i in range(cheeses):
    s.delete(cheeseparticles[i])

  for i in range(len(pepperonis)):
    s.delete(pepperonis[i])

#All pizza items get re-created once the animation ends and that they are in the oven
dough = s.create_oval(200,doughy1,600,doughy1 + 100, fill = "burlywood3", outline = "burlywood3")
sauce = s.create_oval(x1sauce, y1sauce,350 + xsizesauce, saucey2 + ysizesauce, fill = "firebrick3", outline = "firebrick3")

for i in range(cheeses):
  cheeseparticles[i] = s.create_line(xcheese[i], ycheesestart[i], xcheese[i] + xcheesewidth[i], ycheesestart[i] + ycheesewidth[i], fill = cheesecolours[i], width = cheesethicknesses[i])

for i in range(len(xpepperonis)):
  pepperonis[i] = s.create_oval(xpepperonis[i],ypepperonis[i],xpepperonis[i] + pepperonisizex, ypepperonis[i] + pepperonisizey, fill = "#911c07", outline = "#911c07")


#Oven frame overlapping the pizza also gets re-created
s.create_line(200,200,200,450,fill = "gray25", width = 15)
s.create_line(600,200,600,450,fill = "gray25", width = 15)

#Fire arrays
flamenumber = 250
flameystart = 450
flamex = []
flamelengths = []
flamewidths = []
flamecolours = []
flamemiddle = []
flamedirection = []
flames = []

#Adding values to fire arrays
for i in range(flamenumber):
  flamex.append(randint(175,625))
  flamelengths.append(randint(25,65))
  flamewidths.append(uniform(7,10))
  flamecolours.append(choice(["red2", "darkorange2", "orangered2", "orange2"]))
  flamedirection.append(randint(0,1))
  flames.append(0)

#Flame middle values (the top centre value of each flame triangle) gets added seprately since they need to use the already determined flamex and flamey values
for i in range(flamenumber):
  flamemiddle.append((flamex[i] + flamex[i] + flamewidths[i])/2)

#Smoke arrays
smokenumber = 150
smokex = []
smokey = []
smokeyinitial = []
smokesize = []
smokespeed = []
smokeparticles = []

#Adding values to smoke arrays
for i in range(smokenumber):
  smokex.append(randint(225,550))
  smokey.append(randint(325,375))
  smokesize.append(uniform(15,25))
  smokespeed.append(uniform(1, 3))
  smokeparticles.append(0)

#Smoke initial y position array gets added seprately since it needs the smokey array values
for i in range(smokenumber):
  smokeyinitial.append(smokey[i])

#Setting up initial smoke colours (the colour becomes darker as the pizza bakes)
smokecolournumber = 85
smokecolour = "gray" + str(smokecolournumber)

#Delay before turning the oven on
s.update()
sleep(0.5)

#Turning the oven on
s.delete(onbutton, offbutton)
onbutton = s.create_oval(215,160,215+buttonsize, 160 + buttonsize, fill = "#00ff1c", outline = "")
offbutton = s.create_oval(255,160,255+buttonsize, 160 + buttonsize, fill = "#450100", outline = "")
s.update()
sleep(0.5)

#Deleting the temperature text and the pizza since they will be constantly changing
s.delete(temptextscreen, dough, sauce)
for i in range(cheeses):
  s.delete(cheeseparticles[i])
for i in range(len(pepperonis)):
  s.delete(pepperonis[i])

#Setting up default colour of dough using rgb values
r = 205
g = 170
b = 125
doughcolour  = '#%02x%02x%02x' % (r, g, b)

#Setting up default time left for the oven to bake (set to 16 so that it will display 15 minutes at the beginning of the animation)
timeleft = 16



#Animation of smoke and flames as well as the dough/smoke changing colour as it is being cooked and temperature/time left updates
for f in range(320):

  #Pizza dough and sauce
  dough = s.create_oval(200,doughy1,600,doughy1 + 100, fill = doughcolour, outline = doughcolour)
  sauce = s.create_oval(x1sauce, y1sauce,350 + xsizesauce, saucey2 + ysizesauce, fill = "firebrick3", outline = "firebrick3")

  #Dough changing colour (becomes slightly darker) every 20 frames
  if f%20 == 0:
    r = r - 2
    g = g -2
    b = b -1
    doughcolour  = '#%02x%02x%02x' % (r, g, b)


  #Cheese
  for i in range(cheeses):
    cheeseparticles[i] = s.create_line(xcheese[i], ycheesestart[i], xcheese[i] + xcheesewidth[i], ycheesestart[i] + ycheesewidth[i], fill = cheesecolours[i], width = cheesethicknesses[i])

  
  #Pepperonis 
  for i in range(len(pepperonis)):
    pepperonis[i] = s.create_oval(xpepperonis[i],ypepperonis[i],xpepperonis[i] + pepperonisizex, ypepperonis[i] + pepperonisizey, fill = "#911c07", outline = "#911c07")


  #Flames
  for i in range(flamenumber):
    flamemiddle2 = flamemiddle[i]

    flames[i] = s.create_polygon(flamex[i], flameystart, flamex[i] + flamewidths[i], flameystart, flamemiddle[i], flameystart - flamelengths[i], fill = flamecolours[i], smooth = True)

    #Flames oscillate in opposite directions depending on their flame direction values
    if flamedirection[i] == 1:
      flamemiddle[i] = 5*cos(0.25*f) + flamemiddle2

    else:
      flamemiddle[i] = -5*cos(0.25*f) + flamemiddle2    

  #Smoke
  for i in range(smokenumber):
    smokeparticles[i] = s.create_oval(smokex[i], smokey[i], smokex[i] + smokesize[i], smokey[i] - smokesize[i], fill = smokecolour, outline = "", stipple = "gray50")

    smokey[i] = smokey[i] - smokespeed[i]
    smokex[i] = 0.5*sin(0.3*f) + smokex[i]

    #Smoke particles get reused and loop throughout the oven
    if smokey[i] <= 220:
      smokey[i] = smokeyinitial[i]

  #Smoke becomes darker every 10 frames
  if f%10 == 0:
    smokecolournumber = smokecolournumber - 1
    smokecolour = "gray" + str(smokecolournumber)

  #Creating the oven frame and parts of the oven that will be on top of the flames/smoke
  s.create_rectangle(600, 401.5, 700,450, fill = "firebrick4", outline = "firebrick4")
  s.create_rectangle(100, 401.5, 200,450, fill = "firebrick4", outline = "firebrick4")
  s.create_line(200,200,600,200,fill = "gray25", width = 15)
  s.create_line(200,200,200,450,fill = "gray25", width = 15)
  s.create_line(600,200,600,450,fill = "gray25", width = 15)

  #Temperature reading update until it reaches 500 degrees F
  if temp < 500:
    temp = temp + 5

  temptext = str(temp) + "°F"
  temptextscreen = s.create_text(400,170,text = temptext, font = "Arial 12", fill = "black")


  #Table gets recreated on top of the flames
  s.create_rectangle(0,450,800,600, fill = "lightsalmon4", outline = "lightsalmon4")

  #Time left indicator
  timertext = str(timeleft) + " Minutes Left"
  timelefttext = s.create_text(400,525, text = timertext, font = "Arial 35 bold", fill = "black")

  #Time left update (decreases by 1 minute every 20 frames)
  if f%20 == 0:
    timeleft = timeleft-1

  #If there is one minute left, the text changes to "minute" instead of "minutes"
  elif timeleft == 1:
    timertext = str(timeleft) + " Minute Left"
    s.delete(timelefttext)
    timelefttext = s.create_text(400,525, text = timertext, font = "Arial 35 bold", fill = "black")
  
  #Once minutes left is 0, the text changes to "Done!"
  if timeleft <= 0:
    timertext = "Done!"
    s.delete(timelefttext)
    timelefttext = s.create_text(400,525, text = timertext, font = "Arial 35 bold", fill = "black")
  
  #Update, sleep, delete
  s.update()
  sleep(0.03)

  for i in range(flamenumber):
    s.delete(flames[i])
  
  for i in range(smokenumber):
    s.delete(smokeparticles[i])

  s.delete(temptextscreen, dough, sauce, timelefttext)

  for i in range(cheeses):
    s.delete(cheeseparticles[i])

  for i in range(len(pepperonis)):
    s.delete(pepperonis[i])



#All pizza items get re-created once the animation ends and that the pizza is cooked
dough = s.create_oval(200,doughy1,600,doughy1 + 100, fill = doughcolour, outline = doughcolour)
sauce = s.create_oval(x1sauce, y1sauce,350 + xsizesauce, saucey2 + ysizesauce, fill = "firebrick3", outline = "firebrick3")

for i in range(cheeses):
  cheeseparticles[i] = s.create_line(xcheese[i], ycheesestart[i], xcheese[i] + xcheesewidth[i], ycheesestart[i] + ycheesewidth[i], fill = cheesecolours[i], width = cheesethicknesses[i])

for i in range(len(xpepperonis)):
  pepperonis[i] = s.create_oval(xpepperonis[i],ypepperonis[i],xpepperonis[i] + pepperonisizex, ypepperonis[i] + pepperonisizey, fill = "#911c07", outline = "#911c07")


#Oven frame overlapping the pizza (to look like the pizza is still in the oven)
s.create_line(200,200,200,450,fill = "gray25", width = 15)
s.create_line(600,200,600,450,fill = "gray25", width = 15)

#Oven gets turned off and the oven temperature digits gets redrawn
s.delete(onbutton, offbutton)
onbutton = s.create_oval(215,160,215+buttonsize, 160 + buttonsize, fill = "#132e16", outline = "")
offbutton = s.create_oval(255,160,255+buttonsize, 160 + buttonsize, fill = "red", outline = "")
temptextscreen = s.create_text(400,170,text = temptext, font = "Arial 12", fill = "black")
s.update()
sleep(0.5)



#Pizza moving down animation
#All pizza items and temperature get deleted initially
s.delete(dough, sauce, temptextscreen)
for i in range(cheeses):
  s.delete(cheeseparticles[i])
for i in range(len(pepperonis)):
  s.delete(pepperonis[i])

#Actual pizza moving down animation
for f in range(35):
  #Re-creating the pizza items
  dough = s.create_oval(200,doughy1,600,doughy1 + 100, fill = doughcolour, outline = doughcolour)
  sauce = s.create_oval(x1sauce, y1sauce,350 + xsizesauce, saucey2 + ysizesauce, fill = "firebrick3", outline = "firebrick3")

  for i in range(cheeses):
    cheeseparticles[i] = s.create_line(xcheese[i], ycheesestart[i], xcheese[i] + xcheesewidth[i], ycheesestart[i] + ycheesewidth[i], fill = cheesecolours[i], width = cheesethicknesses[i])

    #Cheese gets moved down by 5 pixels
    ycheesestart[i] = ycheesestart[i] + 5
  
  for i in range(len(pepperonis)):
    pepperonis[i] = s.create_oval(xpepperonis[i],ypepperonis[i],xpepperonis[i] + pepperonisizex, ypepperonis[i] + pepperonisizey, fill = "#911c07", outline = "#911c07")

    #Pepperonis get moved down by 5 pixels
    ypepperonis[i] = ypepperonis[i] + 5

  #Temperature reading update (temperature goes down until it reaches 60 degrees F which is room temperature)
  if temp > 60:
    temp = temp - 13
  
  else: 
    temp = 60

  temptext = str(temp) + "°F"
  temptextscreen = s.create_text(400,170,text = temptext, font = "Arial 12", fill = "black")


  #Re-creating the oven frame (so that it looks like the pizza is being taken out of the oven)
  s.create_line(200,200,200,450,fill = "gray25", width = 15)
  s.create_line(600,200,600,450,fill = "gray25", width = 15)

  #Dough and sauce get moved down by 5 pixels
  doughy1 = doughy1 + 5
  y1sauce = y1sauce + 5
  saucey2 = saucey2 + 5

  #Update, sleep, delete
  s.update()
  sleep(0.03)
  s.delete(dough, sauce, temptextscreen)

  for i in range(cheeses):
    s.delete(cheeseparticles[i])

  for i in range(len(pepperonis)):
    s.delete(pepperonis[i])

#All pizza items get re-created once the animation ends and that they are on the table
dough = s.create_oval(200,doughy1,600,doughy1 + 100, fill = doughcolour, outline = doughcolour)
sauce = s.create_oval(x1sauce, y1sauce,350 + xsizesauce, saucey2 + ysizesauce, fill = "firebrick3", outline = "firebrick3")

for i in range(cheeses):
  cheeseparticles[i] = s.create_line(xcheese[i], ycheesestart[i], xcheese[i] + xcheesewidth[i], ycheesestart[i] + ycheesewidth[i], fill = cheesecolours[i], width = cheesethicknesses[i])

for i in range(len(xpepperonis)):
  pepperonis[i] = s.create_oval(xpepperonis[i],ypepperonis[i],xpepperonis[i] + pepperonisizex, ypepperonis[i] + pepperonisizey, fill = "#911c07", outline = "#911c07")

#Temperature gets redrawn
temptextscreen = s.create_text(400,170,text = temptext, font = "Arial 12", fill = "black")


#Final enjoy message appears
s.create_text(400,325,text = "Enjoy!", font = "Arial 20 bold", fill = "brown4")

#End of animation
