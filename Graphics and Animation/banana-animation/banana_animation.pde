// grid setup
int n = 200;

// num of aircells and bananacells are determined by the banana array in the banana tab
int aircells = 30609;
int bananacells = 6191;

// initial values for time elapsed
int min = 0;
int hours = 0;
int days = 0;

// user has not clicked on the banana yet when the program opens
boolean isclicked = false;

// banana is initially set to yellow
boolean isyellow = true;

// variables for the other ripening stages
boolean isbrown, isblack, decompose;

//colour library
color green = color(156,201,96), yellow = color(255, 225, 53), brown = color(118, 74, 17),
black = color(0), ground = color(113, 119, 243),  white = color(255), oxy = color(90, 166, 242),
carb = color(255, 147, 61), ethy = color(230, 41, 160);

// sets bananaNext
int[][] bananaNext = new int[n][n];


// user can change these values //
// values must be <= 1000, note that the animation will run slower if the values are extremely high
int o2 = 1000;
int co2 = 500;
int ethylene = 1000;






// Cell Statuses
// -3 = ethylene cell
// -2 = carbon dioxide cell
// -1 = oxygen cell
// 0 = white air cell
// 1 = green (unripe banana cell)
// 2 = yellow (ripe banana cell)
// 3 = brown (overly ripe banana cell)
// 4 = black (decomposing banana cell)
// 5 = ground

// CANVAS SIZING - ADJUST BOTH CELLSIZE AND CANVAS SIZE (FIRST LINE IN SETUP)
// Very small: cellSize = 1, canvas size = (200,200)
// Small: cellSize = 2, canvas size = (400,400)
// Medium: cellSize = 3, canvas size = (600,600)
// Large: cellSize = 4, canvas size = (800,800)
// Very large: cellSize = 5, canvas size = (1000,1000)

int cellSize = 5;


void setup() {
  // canvas size - CAN CHANGE: SEE CANVAS SIZING ABOVE
  size(1000,1000);  

  // setting up banana and ground cells
  for (int i=0; i<n; i++) {
    for (int j = 0; j < n; j++) {
    // initially sets the empty values in bananaNext to the existing values of bananaNow 
    // bananaNow is defaulted to the banana shape template array in the banana tab
      bananaNext[i][j] = bananaNow[i][j];
      
      // sets ground cells
      if (j >= 185) {
        bananaNext[i][j] = 5;
        bananaNow[i][j] = 5;
      }
    }
  
  }
  

  
  // background is initially set to white
  background(255);
  
  //creates banana, ground and aircells right away
  makecells();
  
  //checks to see if the user has clicked on the banana
  clicktext();
  
  // generates air cells
  randomair(o2, co2, ethylene);
  
  // initial values for text on the screen
  textSize(5*cellSize);
  textAlign(CENTER, CENTER);
  
  // frame rate
  frameRate(100);
  
  
}

void draw() {
  //no outlines
  noStroke();
  
  //draws banana, ground and air cells
  makecells(); 
  
  //checks whether user has clicked on the banana
  clicktext();
  
  //checks to see if the banana has qualified for the next stage of ripening
  checkstatuses();
  
  //executes each ripening stage depending on the boolean values for isyellow, isbrown, etc.
  bananatype();
  
  // generates air cells
  randomair(o2, co2, ethylene);
}

// function that executes each ripening stage depending on the boolean values for isyellow, isbrown, etc.
void bananatype() {
  if (isyellow == true) {
    makeyellow();
  }
  
  if (isbrown == true) {
    makebrown();
  }
  
  if (isblack == true) {
    makeblack();
  }
  
  if (decompose == true) {
    makedecompose();
  }
  
  // if the banana is at/past the browning stage, the banana will produce ethylene cells
  if (isbrown == true || isblack == true || decompose == true) {
    float chance = random(0,1);
    
    // each existing oxygen and ethylene cell will contribute to the probability that 
    // an ethylene cell will be produced
    float percentage = o2*0.0012 + ethylene*0.0025;
    
    if (chance <= percentage) {
      ethylene++;
      aircells++;
    }
    
  }
}


// function that checks to see if the banana has qualified for the next stage of ripening
void checkstatuses() {
  // checks the percentage of yellow, brown and black cells that make up the banana
  float yellowstat = percentcheck(2);
  float brownstat = percentcheck(3);  
  float blackstat = percentcheck(4);

  //checks yellowing stage
  if (isyellow == true) {
    
    // if the banana is at least 90% yellow
    if (yellowstat >= 0.9) {
      // turns off yellowing process if there are no more green cells
      if (numcolour(1) == 0) {
        isyellow = false;
      }
      
      // turns on the browning process
      isbrown = true;
 
    }
  }
  
  
  // checks browning stage
  if (isbrown == true) {
    
    // turns off browning process if there's no more yellow cells
    if (numcolour(2) == 0) {
      isbrown = false;
    }
    
    // turns on blacking process if the banana is at least 60% brown
    if (brownstat >= 0.6) {
      isblack = true;
      
    }
  }
  
  
  // checks blacking stage
  if (isblack == true) {
    
    // turns off blacking process when there's no more brown cells
    if (numcolour(3) == 0) {
      isblack = false;
    }
    
    // turns on decomposing process if the banana is at least 60% black
    if (blackstat >= 0.6) {
      decompose = true;
    }
   
  }
 
 
 // turns off decomposing process if there's no more black cells
 if (decompose == true && numcolour(4) == 0) {
   decompose = false;

 }
  
  
}



// function that draws the banana, ground and air cells
void makecells() {
  // makes sure that there's no black outlines around the cells
  noStroke(); 
  
  // goes through each cell in the canvas
  for (int i=0; i<n; i++) {
    for (int j = 0; j < n; j++) {
      float x = i*cellSize;
      float y = j*cellSize;      

      // makes banana green
      if (bananaNow[i][j] == 1){
        fill(green);
      }
      
      // makes banana yellow
      else if (bananaNow[i][j] == 2) {    
        fill(yellow);     
      }
      
      // makes banana brown
      else if (bananaNow[i][j] == 3) {    
        fill(brown);     
      }
      
      // makes banana black
      else if (bananaNow[i][j] == 4) {    
        fill(black);     
      }
      
      // makes ground cells
      else if (bananaNow[i][j] == 5){
        fill(ground);
      }
      
      // makes oxygen cells
      else if (bananaNow[i][j] == -1){
        fill(oxy);
      }

      // makes co2 cells
      else if (bananaNow[i][j] == -2){
        fill(carb);
      }
      
      // makes ethylene cells
      else if (bananaNow[i][j] == -3){
        fill(ethy);
      }
      
      
      // sets leftover white air cells
      else {
        fill(white);
      }
      
      // makes cell
      square(x, y, cellSize);
    }
    
  } 
}
