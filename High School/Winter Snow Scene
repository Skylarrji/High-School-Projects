#Title: Snow Scene With Animals

#Setting up tkinter library, random library, and canvas
from tkinter import *
from random import *
myInterface = Tk()
s = Canvas( myInterface, width=650, height=800, background = "#1d5999" )
s.pack()


#SkyGradient
x1 = 50
y1 = 0
x2 = 550
y2 = 300

r = 29
g = 89
b = 153

for skyGradient in range(15):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r + 2
    g = g + 2
    b = b + 6
    x1 = x1 + 10
    y1 = y1 + 10
    x2 = x2 - 10
    y2 = y2 - 10

#Moon    
moon = s.create_oval(275, 125, 325, 175, fill = "#f8fab6", outline = "#f8fab6")

#Background Trees (Random Pattern 1)
x = 25

for tree in range(25):
    y = randint(351, 363)
    colour = ["#074245", "#072e30", "#073024"]
    s.create_polygon(x, y, x - 25, y + 80, x + 25, y + 80, fill = choice(colour), outline = choice(colour))
    x = x + 30


#Smow Hills + Snow Hill Shadow Gradients
x1 = -100
y1 = 400
x2 = 250
y2 = 600

r = 255
g = 255
b = 255

for hill1 in range(20):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r - 6
    g = g - 6
    b = b - 6
    y1 = y1 + 6


x1 = 300
y1 = 400
x2 = 800
y2 = 565

r = 255
g = 255
b = 255

for hill2 in range(20):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r - 6
    g = g - 6
    b = b - 6
    y1 = y1 + 6


x1 = -50
y1 = 420
x2 = 450
y2 = 620

r = 255
g = 255
b = 255

for hill3 in range(20):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r - 6
    g = g - 6
    b = b - 6
    y1 = y1 + 6


x1 = -25
y1 = 500
x2 = 600
y2 = 685

r = 255
g = 255
b = 255

for hill4 in range(20):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r - 6
    g = g - 6
    b = b - 6
    y1 = y1 + 6


x1 = -80
y1 = 590
x2 = 360
y2 = 895

r = 255
g = 255
b = 255

for hill5 in range(20):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r - 6
    g = g - 6
    b = b - 6
    y1 = y1 + 6


x1 = -80
y1 = 690
x2 = 360
y2 = 915

r = 255
g = 255
b = 255

for hill6 in range(20):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r - 6
    g = g - 6
    b = b - 6
    y1 = y1 + 6

    
x1 = 400
y1 = 550
x2 = 1000
y2 = 690

r = 255
g = 255
b = 255

for hill7 in range(20):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r - 6
    g = g - 6
    b = b - 6
    y1 = y1 + 6



x1 = 450
y1 = 625
x2 = 800
y2 = 750

r = 255
g = 255
b = 255

for hill8 in range(20):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r - 6
    g = g - 6
    b = b - 6
    y1 = y1 + 6


x1 = 500
y1 = 700
x2 = 800
y2 = 800

r = 255
g = 255
b = 255

for hill9 in range(20):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_oval(x1, y1, x2, y2, fill = rgb, outline = rgb)
    r = r - 6
    g = g - 6
    b = b - 6
    y1 = y1 + 6


#River
x1 = 380
x2 = 340
x3 = 325
x4 = 323
x5 = 300

x6 = 750
x7 = 510
x8 = 500
x9 = 454

r = 66
g = 103
b = 133

for river in range(9):
    rgb = '#%02x%02x%02x' % (r, g, b)
    s.create_polygon(460, 570, x1, 615, x2, 675, x3, 720, x4, 790, x5, 810, x6, 810, x7, 740, x8, 720, x9, 660, 460, 570, 500, 570, fill = rgb, outline = rgb, smooth = True)
    r = r + 1
    g = g + 3
    b = b + 2
    x1 = x1 + 5
    x2 = x2 + 5
    x3 = x3 + 5
    x4 = x4 + 5
    x5 = x5 + 5
    x6 = x6 - 5
    x7 = x7 - 5
    x8 = x8 - 5
    x9 = x9 - 9

#Houses
#House1
s.create_rectangle(468, 370, 491, 403, fill = "#d4abab", outline = "#d4abab")
s.create_rectangle(491, 370, 496, 403, fill = "#b86a61", outline = "#b86a61")
s.create_polygon(482, 310, 462, 370, 497, 370, fill = "#faf7f7", outline = "#faf7f7")
s.create_polygon(482, 310, 492, 370, 500, 370, fill = "#c9d5d6", outline = "#c9d5d6")

#House2
s.create_polygon(436, 390, 423, 412, 423, 423, 450, 423, 450, 412, fill = "#de453a", outline = "#de453a")
s.create_rectangle(450, 423, 476, 412, fill = "#ab3830", outline = "#ab3830")
s.create_line(436, 390, 423, 412, fill = "#949096", width = 5)
s.create_polygon(436, 390, 450, 412, 476, 412, 464, 390, fill = "#949096", outline = "#949096")
s.create_rectangle(439, 410, 443, 414, fill = "#d1b962", outline = "#913f3f")
s.create_rectangle(430, 410, 434, 414, fill = "#d1b962", outline = "#913f3f")
s.create_rectangle(434, 416, 439, 423, fill = "black", outline = "#913f3f")

#House3
s.create_polygon(390, 410, 375, 435, 375, 450, 405, 450, 405, 435, fill = "#de453a", outline = "#de453a")
s.create_rectangle(405, 435, 435, 450, fill = "#ab3830", outline = "#ab3830")
s.create_line(390, 410, 375, 435, fill = "#78572a", width = 5)
s.create_polygon(390, 410, 405, 435, 435, 435, 423, 410, fill = "#78572a", outline = "#78572a")
s.create_rectangle(381, 433, 385, 439, fill = "#d1b962", outline = "#913f3f")
s.create_rectangle(393, 433, 397, 439, fill = "#d1b962", outline = "#913f3f")
s.create_rectangle(386, 441, 391, 450, fill = "black", outline = "#913f3f")
s.create_rectangle(410, 440, 415, 445, fill = "#d1b962", outline = "#913f3f")
s.create_rectangle(425, 440, 430, 445, fill = "#d1b962", outline = "#913f3f")

#House4
s.create_polygon(513, 385, 495, 400, 495, 415, 525, 415, 525, 400, fill = "#de453a", outline = "#de453a")
s.create_line(525, 400, 513, 385, fill = "#949096", width = 4)
s.create_polygon(513, 385, 495, 405, 472, 405, 488, 385, fill = "#949096", outline = "#949096")
s.create_rectangle(505, 400, 509, 404, fill = "#d1b962", outline = "#913f3f")
s.create_rectangle(515, 400, 519, 404, fill = "#d1b962", outline = "#913f3f")
s.create_rectangle(509, 407, 515, 415, fill = "black", outline = "#913f3f")

#House5
s.create_polygon(495, 403, 505, 418, 505, 430, 483, 430, 483, 418, fill = "#95b8f0", outline = "#95b8f0")
s.create_line(495, 403, 505, 418, fill = "#78572a", width = 4)
s.create_rectangle(463, 418, 483, 430, fill = "#6c8aba", outline = "#6c8aba")
s.create_polygon(495, 403, 483, 420, 461, 420, 472, 403, fill = "#78572a", outline = "#78572a")
s.create_rectangle(488, 419, 492, 423, fill = "#d1b962", outline = "#405880")
s.create_rectangle(497, 419, 501, 423, fill = "#d1b962", outline = "#405880")
s.create_rectangle(492, 425, 497, 430, fill = "black", outline = "#405880")


#Trees
#Tree1(Trunk, Branches)
s.create_line(577, 555, 579, 450, 590, 350, 578, 150, 600, 0, fill = "#362b13", width = 10, smooth = True)
s.create_line(581, 205, 610, 160, 652, 135, fill = "#362b13", width = 7, smooth = True)
s.create_line(572, 555, 570, 470, 578, 430, 578, 375, 580, 375, 579, 350, 549, 250, 552, 227, 535, 180, 500, 160, fill = "#362b13", width = 9, smooth = True)
s.create_line(505, 162, 490, 125, 450, 100, 420, 120, 400, 105, fill = "#362b13", width = 3, smooth = True)
s.create_line(504, 162, 460, 150, 445, 163, 430, 170, 400, 160, 375, 180, fill = "#362b13", width = 2.5, smooth = True)
s.create_line(400, 105, 379, 127, 365, 127, fill = "#362b13", width = 2, smooth = True)
s.create_line(365, 127, 367, 133, 360, 140, 357, 150, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(365, 127, 344, 151, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(365, 127, 350, 122, 345, 126, 335, 120, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(456, 107, 453, 93, 456, 70, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(420, 115, 417, 130, 400, 140, 396, 150, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(456, 107, 400, 91, 350, 95, 345, 105, 320, 110, fill = "#362b13", width = 2, smooth = True)
s.create_line(349, 99, 337, 88, fill = "#362b13", width = 0.5)
s.create_line(360, 95, 358, 70, 363, 63, 350, 50, fill = "#362b13", width = 0.7, smooth = True)
s.create_line(363, 65, 350, 60, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(375, 93, 378, 75, 374, 60, 376, 50, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(376, 63, 388, 60, 386, 55, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(376, 180, 363, 190, 357, 200, fill = "#362b13", width = 2, smooth = True)    
s.create_line(420, 168, 400, 177, 397, 183, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(475, 153, 468, 157, 463, 174, 443, 175, 443, 183, 435, 203, fill = "#362b13", width = 1.5, smooth = True)
s.create_line(512, 163, 516, 135, 510, 100, 520, 80, 512, 70, 520, 50, fill = "#362b13", width = 1.5, smooth = True)
s.create_line(513, 97, 490, 80, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(542, 194, 557, 165, 580, 155, 613, 160, fill = "#362b13", width = 3, smooth = True)
s.create_line(560, 165, 553, 145, 548, 144, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(588, 260, 600, 250, 623, 240, 620, 220, 650, 205, fill = "#362b13", width = 4, smooth = True)
s.create_line(600, 250, 635, 244, 650, 250, fill = "#362b13", width = 0.8)
s.create_line(605, 248, 612, 215, 603, 197, 610, 175, fill = "#362b13", width = 0.75, smooth = True)
s.create_line(609, 214, 625, 194, 623, 170, 630, 163, fill = "#362b13", width = 0.5, smooth = True)
s.create_line(625, 185, 640, 175, fill = "#362b13", width = 0.5)
s.create_line(635, 150, 625, 100, 640, 70, 650, 60, fill = "#362b13", width = 1.6, smooth = True)
s.create_line(629, 100, 650, 93, fill = "#362b13", width = 0.5)
s.create_line(634, 85, 620, 57, fill = "#362b13", width = 0.5)
s.create_line(590, 143, 605, 105, 650, 118, fill = "#362b13", width = 1.75, smooth = True)
s.create_line(600, 130, 603, 100, fill = "#362b13", width = 0.5)
s.create_line(593, 140, 620, 137, fill = "#362b13", width = 0.5)
s.create_line(580, 150, 550, 120, 560, 100, 552, 75, fill = "#362b13", width = 2, smooth = True)
s.create_line(552, 112, 529, 100, 530, 75, fill = "#362b13", width = 1, smooth = True)
s.create_line(595, 50, 615, 25, 630, 24, 650, 20, fill = "#362b13", width = 2.5, smooth = True)
s.create_line(593, 43, 563, 33, 550, 10, fill = "#362b13", width = 1.5, smooth = True)
s.create_line(596, 20, 580, 0, fill = "#362b13", width = 1, smooth = True)
s.create_line(590, 75, 553, 45, 520, 20, 475, 18, fill = "#362b13", width = 4, smooth = True)
s.create_line(475, 18, 457, 20, fill = "#362b13", width = 3, smooth = True)
s.create_line(515, 22, 520, 17, 515, 0, fill = "#362b13", width = 1.5, smooth = True)
s.create_line(500, 19, 478, 23, 460, 26, 458, 40, fill = "#362b13", width = 1.5, smooth = True)

#Tree2(Trunk, Branches)
s.create_line(90, 520, 50, 250, 93, 0, fill = "#362b13", width = 20, smooth = True)
s.create_line(80, 200, 140, 147, 168, 145, 175, 107, 225, 95, 240, 54, 280, 50, fill = "#362b13", width = 7.25, smooth = True)
s.create_line(277, 50, 300, 50, 306, 40, fill = "#362b13", width = 5, smooth = True)
s.create_line(305, 42, 315, 30, 320, 35, fill = "#362b13", width = 2, smooth = True)
s.create_line(228, 90, 237, 98, 253, 90, 275, 80, 295, 87, 302, 80, fill = "#362b13", width = 1.5, smooth = True)
s.create_line(250, 53, 265, 45, 252, 25, fill = "#362b13", width = 1.5, smooth = True)
s.create_line(80, 50, 55, 25, 53, 0, fill = "#362b13", width = 7, smooth = True)
s.create_line(68, 148, 47, 120, 0, 110, fill = "#362b13", width = 8, smooth = True)
s.create_line(62, 260, 53, 248, 25, 238, 0, 200, fill = "#362b13", width = 2.75, smooth = True)
s.create_line(23, 230, 30, 220, 23, 200, fill = "#362b13", width = 1.5, smooth = True)


#Big Pine Tree (Random Pattern 2)
#Layer1
x1 = 155
colour = ["#0d1c0e", "#27632b", "#347d39", "#549e59"]

for branch in range(100, 251, 2):
    y1 = randint(505, 518)
    s.create_line(250, 465, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer2 (snow)
x1 = 160

for branch in range(100, 250, 2):
    y1 = randint(495, 508)
    s.create_line(250, 450, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2

#Layer3
x1 = 165

for branch in range(100, 241, 2):
    y1 = randint(485, 498)
    s.create_line(250, 435, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer4 (snow)
x1 = 170

for branch in range(100, 236, 2):
    y1 = randint(475, 488)
    s.create_line(250, 420, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2

#Layer5
x1 = 175

for branch in range(100, 231, 2):
    y1 = randint(465, 478)
    s.create_line(250, 405, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer6 (snow)
x1 = 180

for branch in range(100, 226, 2):
    y1 = randint(455, 468)
    s.create_line(250, 390, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2

#Layer7
x1 = 185

for branch in range(100, 221, 2):
    y1 = randint(445, 458)
    s.create_line(250, 375, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer8 (snow)
x1 = 190

for branch in range(100, 216, 2):
    y1 = randint(435, 448)
    s.create_line(250, 360, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2

#Layer9 
x1 = 195

for branch in range(100, 211, 2):
    y1 = randint(425, 438)
    s.create_line(250, 345, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer10 (snow)
x1 = 200

for branch in range(100, 206, 2):
    y1 = randint(415, 428)
    s.create_line(250, 330, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2

#Layer11
x1 = 205

for branch in range(100, 201, 2):
    y1 = randint(405, 418)
    s.create_line(250, 315, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer12 (snow)
x1 = 210

for branch in range(100, 196, 2):
    y1 = randint(395, 408)
    s.create_line(250, 300, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2   

#Layer13
x1 = 215

for branch in range(100, 191, 2):
    y1 = randint(385, 398)
    s.create_line(250, 285, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer14 (snow)
x1 = 220

for branch in range(100, 186, 2):
    y1 = randint(375, 388)
    s.create_line(250, 270, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2

#Layer15
x1 = 225

for branch in range(100, 181, 2):
    y1 = randint(365, 378)
    s.create_line(250, 255, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer16 (snow)
x1 = 230

for branch in range(100, 176, 2):
    y1 = randint(355, 368)
    s.create_line(250, 250, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2

#Layer17
x1 = 235

for branch in range(100, 171, 2):
    y1 = randint(345, 358)
    s.create_line(250, 250, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer18 (snow)
x1 = 240

for branch in range(100, 166, 2):
    y1 = randint(335, 348)
    s.create_line(250, 250, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2

#Layer19
x1 = 245

for branch in range(100, 161, 2):
    y1 = randint(325, 338)
    s.create_line(250, 250, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer20 (snow)
x1 = 250

for branch in range(100, 156, 2):
    y1 = randint(315, 328)
    s.create_line(250, 250, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2

#Layer21
x1 = 255

for branch in range(100, 151, 2):
    y1 = randint(305, 318)
    s.create_line(250, 250, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Layer22 (snow)
x1 = 260

for branch in range(100, 146, 2):
    y1 = randint(295, 308)
    s.create_line(250, 250, x1, y1, fill = "white", width = 2)
    x1 = x1 + 2

#Layer23
x1 = 265

for branch in range(100, 141, 2):
    y1 = randint(285, 298)
    s.create_line(250, 250, x1, y1, fill = choice(colour), width = 2)
    x1 = x1 + 2

#Holiday Message
message = s.create_text(160, 775, text = "Happy Holidays!", fill = "#5e7bcc", font = "Algerian 20")


#Snow
for snowflake in range(500):
    x = randint(0, 650)
    y = randint(0, 800)
    size = randint (1, 3)
    
    s.create_oval(x, y, x + size, y + size, fill = "snow", outline = "snow")


#GRID LINES
spacing = 50 
for x in range(0, 1000, spacing): 
    s.create_line(x, 25, x, 1000, fill="blue")
    s.create_text(x, 5, text=str(x), font="Times 9", anchor = N)

for y in range(0, 1000, spacing):
    s.create_line(25, y, 1000, y, fill="blue")
    s.create_text(5, y, text=str(y), font="Times 9", anchor = W)          
    
          
    
s.update()
