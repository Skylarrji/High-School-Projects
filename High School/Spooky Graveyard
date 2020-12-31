##################################################
#Programmer: Skylar Ji
#Purpose: This is a drawing using Python's Tkinter of a spooky graveyard at night.
##################################################

#Tkinter setup
from tkinter import*
from random import*
myInterface = Tk()
s = Canvas( myInterface, width=800, height=600, background="#24425A")
s.pack()


#SkyGradient
x1 = -50
y1 = -150
x2 = 850
y2 = 550

r = 36
g = 66
b = 90

for skyGradient in range(25):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r + 2
    g = g + 4
    b = b + 6
    x1 = x1 + 15
    y1 = y1 + 15
    x2 = x2 - 15
    y2 = y2 - 15

#Stars
for star in range(100):
  x = randint(0,800)
  y = randint(0,600)
  size = randint(1,3)
  s.create_oval(x,y,x+size,y+size,fill = "snow", outline = "snow")

#Moon
moon1 = s.create_oval(300,100,500,300, fill = "#CAD7DA", outline = "#CAD7DA")
moon2 = s.create_oval(300,100,485,300, fill = "#8CADBE", outline = "#8CADBE")

#Ground Gradient
y1 = 520

r = 36
g = 66
b = 90

for groundGradient in range(10):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_rectangle(0, y1, 800, 600, fill = rgb, outline = rgb)
    r = r - 3
    g = g - 3
    b = b - 3
    y1 = y1 + 10

#Crosses on the ends of the canvas
s.create_line(640,470,640,575,fill = "#070100", width = 10)
s.create_line(632,480,648,480,fill = "#070100", width = 10)

s.create_line(145,470,145,575,fill = "#070100", width = 10)
s.create_line(137,480,153,480,fill = "#070100", width = 10)

#Fence on right side
x = 640
for fence1 in range(20):
  s.create_line(x,500,x,575,fill = "#070100", width = 5)
  x = x + 10

s.create_line(640,537.5,800,537.5,fill = "#070100", width = 5)

#Fence on left side
x = 145
for fence1 in range(20):
  s.create_line(x,500,x,575,fill = "#070100", width = 5)
  x = x - 10

s.create_line(145,537.5,0,537.5,fill = "#070100", width = 5)

#Owl
body = s.create_oval(275,70,295,100,fill = "gray10", outline = "gray10")
head = s.create_oval(275,55,295,75,fill = "gray10", outline = "gray10")
ear1 = s.create_polygon(290,55,293,60,299,50,fill = "gray10", outline = "gray10", smooth = True)
ear2 = s.create_polygon(280,55,277,60,271,50,fill = "gray10", outline = "gray10", smooth = True)
tail = s.create_polygon(275,70,285,120,295,100,fill = "gray10", outline = "gray10", smooth = True)


#Tree(Trunk, Branches) 
s.create_line(90, 575, 50, 300, 93, 0, fill = "#362b13", width = 20, smooth = True)
s.create_line(80, 250, 140, 197, 168, 195, 175, 157, 225, 145, 240, 104, 280, 100, fill = "#362b13", width = 7.25, smooth = True)
s.create_line(277, 100, 300, 100, 306, 90, fill = "#362b13", width = 5, smooth = True)
s.create_line(305, 92, 315, 80, 320, 85, fill = "#362b13", width = 2, smooth = True)
s.create_line(228, 140, 237, 148, 253, 140, 275, 130, 295, 137, 302, 130, fill = "#362b13", width = 1.5, smooth = True)
s.create_line(250, 103, 265, 95, 252, 75, fill = "#362b13", width = 1.5, smooth = True)
s.create_line(80, 100, 55, 75, 53, 0, fill = "#362b13", width = 7, smooth = True)
s.create_line(68, 198, 47, 160, 0, 160, fill = "#362b13", width = 8, smooth = True)
s.create_line(62, 310, 53, 298, 25, 288, 0, 250, fill = "#362b13", width = 2.75, smooth = True)
s.create_line(23, 280, 30, 270, 23, 250, fill = "#362b13", width = 1.5, smooth = True)

#Ground Texture
for particle in range(10000):
  x = randint(0,800)
  y = randint(575,600)
  size = randint(1,5)
  colour = choice(["#3d3838", "gray20", "#1a1a1a", "#1a1717"])
  s.create_oval(x,y,x+size,y+size,fill = colour, outline = colour)

#Spider Web Top Right Corner
webcentrex = 777
webcentrey = 39
s.create_line(webcentrex, webcentrey, 682, 0, fill = "white", width = 1)
s.create_line(webcentrex, webcentrey, 720, 0, fill = "white", width = 1)
s.create_line(webcentrex, webcentrey, 750, 0, fill = "white", width = 1)
s.create_line(webcentrex, webcentrey, 783, 0, fill = "white", width = 1)
s.create_line(webcentrex, webcentrey, 800, 12, fill = "white", width = 1)
s.create_line(webcentrex, webcentrey, 800, 30, fill = "white", width = 1)
s.create_line(webcentrex, webcentrey, 800, 45, fill = "white", width = 1)
s.create_line(webcentrex, webcentrey, 800, 67.5, fill = "white", width = 1)
s.create_line(webcentrex, webcentrey, 800, 97.5, fill = "white", width = 1)
s.create_line(webcentrex, webcentrey, 800, 135, fill = "white", width = 1)
s.create_line(751,30,781,22.5,783,45, fill = "white", width = 1, smooth = True)
s.create_line(736,25.5,803,9,789,90, fill = "white", width = 1, smooth = True)
s.create_line(725,20,830,-25,800,150, fill = "white", width = 1, smooth = True)

#Spider body hanging off of spiderweb
s.create_line(710,10,710,100, fill = "white", width = 1)
spiderbody = s.create_oval(707,100,713,108,fill = "gray2",outline = "gray2")
spiderhead = s.create_oval(707.5,108,712.5,113,fill = "gray2",outline = "gray2")
spidercentrex = 710
spidercentrey = 108

#Spider legs (right side)
s.create_line(spidercentrex, spidercentrey, 725, 92, fill = "gray2", width = 2)
s.create_line(spidercentrex, spidercentrey, 725, 100, fill = "gray2", width = 2)
s.create_line(spidercentrex, spidercentrey, 725, 108, fill = "gray2", width = 2)
s.create_line(spidercentrex, spidercentrey, 725, 116, fill = "gray2", width = 2)

#Spider legs (left side)
s.create_line(spidercentrex, spidercentrey, 695, 92, fill = "gray2", width = 2)
s.create_line(spidercentrex, spidercentrey, 695, 100, fill = "gray2", width = 2)
s.create_line(spidercentrex, spidercentrey, 695, 108, fill = "gray2", width = 2)
s.create_line(spidercentrex, spidercentrey, 695, 116, fill = "gray2", width = 2)


#Light brown crosses + gravestones in the background
s.create_line(375,550,370,575, fill = "#7a361f", width = 5)
s.create_line(367,555.5,384,560, fill = "#7a361f", width = 5)

s.create_line(302,535.5,302,575, fill = "#7a361f", width = 5)
s.create_line(295,547.5,309,547.5, fill = "#7a361f", width = 5)

s.create_line(334,520.5,334,553.5, fill = "#7a361f", width = 5)
s.create_line(325,529.5,343,529.5, fill = "#7a361f", width = 5)
s.create_arc(323,550,345,598,start = 0, extent = 180, fill = "#7a361f", outline = "#7a361f")

s.create_line(503,492,503,534, fill = "#7a361f", width = 5)
s.create_line(490,505.5,516,505.5, fill = "#7a361f", width = 5)
s.create_arc(480,534,526,616,start = 0, extent = 180, fill = "#7a361f", outline = "#7a361f")


#Medium brown crosses + gravestones in the middleground (between background and foreground)
s.create_line(276,480,276,530, fill = "#2E0700", width = 8)
s.create_line(280,480,280,530, fill = "ghost white", width = 1)
s.create_line(261,495,293,495, fill = "ghost white", width = 8)
s.create_line(260,495,292,495, fill = "#2E0700", width = 8)
s.create_arc(261,530,293,562,start = 0, extent = 180, fill = "ghost white", outline = "ghost white")
s.create_arc(260,530,292,562,start = 0, extent = 180, fill = "#2E0700", outline = "#2E0700")
s.create_rectangle(261,546,293,575, fill = "ghost white", outline = "ghost white")
s.create_rectangle(260,546,292,575, fill = "#2E0700", outline = "#2E0700")


s.create_line(322,525,322,575, fill = "ghost white", width = 8)
s.create_line(321,525,321,575, fill = "#2E0700", width = 8)
s.create_line(307,537,337,537, fill = "ghost white", width = 8)
s.create_line(306,537,336,537, fill = "#2E0700", width = 8)

s.create_arc(348,540,368,560,start = 0, extent = 180, fill = "ghost white", outline = "ghost white")
s.create_arc(347,540,367,560,start = 0, extent = 180, fill = "#2E0700", outline = "#2E0700")
s.create_rectangle(348,550,368,575, fill = "ghost white", outline = "ghost white")
s.create_rectangle(347,550,367,575, fill = "#2E0700", outline = "#2E0700")

s.create_arc(395,547.5,422,577.5,start = 0, extent = 180, fill = "ghost white", outline = "ghost white")
s.create_arc(396,547.5,423,577.5,start = 0, extent = 180, fill = "#2E0700", outline = "#2E0700")
s.create_rectangle(395,562.5,422,575, fill = "ghost white", outline = "ghost white")
s.create_rectangle(396,562.5,423,575, fill = "#2E0700", outline = "#2E0700")

s.create_line(437,540,444,575, fill = "ghost white", width = 8)
s.create_line(438,540,445,575, fill = "#2E0700", width = 8)
s.create_line(430,554,448,550.5, fill = "ghost white", width = 8)
s.create_line(431,554,449,550.5, fill = "#2E0700", width = 8)

s.create_line(481,510,481,547.5, fill = "ghost white", width = 8)
s.create_line(482,510,482,547.5, fill = "#2E0700", width = 8)
s.create_line(469,522,493,522, fill = "ghost white", width = 8)
s.create_line(470,522,494,522, fill = "#2E0700", width = 8)
s.create_arc(469,547.5,493,571.5,start = 0, extent = 180, fill = "ghost white", outline = "ghost white")
s.create_arc(470,547.5,494,571.5,start = 0, extent = 180, fill = "#2E0700", outline = "#2E0700")
s.create_rectangle(469,559.5,493,575, fill = "ghost white", outline = "ghost white")
s.create_rectangle(470,559.5,494,575, fill = "#2E0700", outline = "#2E0700")

s.create_line(519,543,519,575, fill = "ghost white", width = 8)
s.create_line(520,543,520,575, fill = "#2E0700", width = 8)
s.create_line(504,552,534,552, fill = "ghost white", width = 8)
s.create_line(505,552,535,552, fill = "#2E0700", width = 8)


#Dark brown crosses + gravestones in the foreground
s.create_line(201,467.5,201,535, fill = "ghost white", width = 10)
s.create_line(200,467.5,200,535, fill = "#150300", width = 10)
s.create_line(178,490,222,490, fill = "#150300", width = 10)
s.create_arc(179,534,223,573,start = 0, extent = 180, fill = "ghost white", outline = "ghost white")
s.create_arc(178,534,222,573,start = 0, extent = 180, fill = "#150300", outline = "#150300")
s.create_rectangle(179,553.5,223,575,fill = "ghost white", outline = "ghost white")
s.create_rectangle(178,553.5,222,575,fill = "#150300", outline = "#150300")
s.create_text(200,553.5,text= "RIP", font = "Arial 12", fill = "gray25")

s.create_line(244,510,244,575, fill = "ghost white", width = 10)
s.create_line(243,510,243,575, fill = "#150300", width = 10)
s.create_line(229,528,259,528, fill = "ghost white", width = 10)
s.create_line(228,528,258,528, fill = "#150300", width = 10)

s.create_arc(332,560,362,590,start = 0, extent = 180, fill = "ghost white", outline = "ghost white")
s.create_arc(331,560,361,590,start = 0, extent = 180, fill = "#150300", outline = "#150300")

s.create_arc(448,555,478,598,start = 0, extent = 180, fill = "ghost white", outline = "ghost white")
s.create_arc(449,555,479,598,start = 0, extent = 180, fill = "#150300", outline = "#150300")

s.create_line(525,520.5,525,575, fill = "ghost white", width = 8)
s.create_line(526,520.5,526,575, fill = "#150300", width = 8)
s.create_line(509,540,541,540, fill = "ghost white", width = 8)
s.create_line(510,540,542,540, fill = "#150300", width = 8)

s.create_line(566,467.5,566,535, fill = "ghost white", width = 10)
s.create_line(567,467.5,567,535, fill = "#150300", width = 10)
s.create_line(545,490,589,490, fill = "#150300", width = 10)
s.create_arc(544,534,590,573,start = 0, extent = 180, fill = "ghost white", outline = "ghost white")
s.create_arc(545,534,591,573,start = 0, extent = 180, fill = "#150300", outline = "#150300")
s.create_rectangle(544,553.5,590,575,fill = "ghost white", outline = "ghost white")
s.create_rectangle(545,553.5,591,575,fill = "#150300", outline = "#150300")
s.create_text(567,553.5,text= "RIP", font = "Arial 12", fill = "gray25")

#Updating canvas
s.update()
