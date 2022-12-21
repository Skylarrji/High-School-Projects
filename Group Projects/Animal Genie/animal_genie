// G4P gui setup
import g4p_controls.*;

// array that stores all of the possible animals in the game
ArrayList<Animal> allAnimals = new ArrayList<Animal>(); 

// array that tracks all of the animals that the game can guess from, which will change has the game narrows down more animals with each question
ArrayList<Animal> currentAnimals; 

// array that tracks all of the questions that the game can ask from
ArrayList<Question> currentQuestions; 

// initial variables
Question currQuestion; // current question that the game is asking
int numQuestions = 5; // max questions initially set to 5
int numAnimals; // number of animals shown on the display screen
int askedQuestions = 0; // number of questions that the game has currently asked
boolean userAnswer; // keeps track of the user's most recent answer (i.e. "yes" = true, "no" = false)

// true if the game has guessed the animal, else false
boolean hasGuessed = false;

// true if the game is finished, else false
boolean gameOver = false;

// true if the user has started the game by clicking on the start button, else false
boolean startGame = false;

// the game defaults to a random selection of 20 animals when it is opened
String category = "random";

// 5 animals per row and column in the animal display screen
int l = 5;
int w = 5;

// padding, size, spacing and x and y positions on the screen for the individual animal images on the display screen
int padding = 50;
int imagesize = (750-2*padding)/l;;
int imagespacing = 30;
int imgX, imgY;

// the initial background colour for the animal display screen is white
color colour = color(255);


// SETUP - RUNS IMMEDIATELY WHEN THE GAME OPENS
void setup() {
  // creates the control panel
  createGUI();
  
  //setting up canvas and text
  background(colour);
  size(750,750);
  PFont myFont = createFont("Comic Sans MS", 25);
  textFont(myFont);  
  textAlign(CENTER);
  
  //loading animals and questions into the database and categorizing the animals
  loadQuestions();
  loadAnimals();
  categorizeAnimals(category);
  noLoop();
}


// DRAW - DRAWS THE ANIMALS ON THE DISPLAY SCREEN
void draw() {
  // coloured background and black text for the display
  background(colour);
  fill(0);
  
  //TITLE FOR THE ANIMAL DISPLAY
  textSize(28);
  text("Think of one of these animals…", width/2, 50);
  textSize(18);
  
  // categorizes and draws the animals onto the screen (the same animals that were chosen before the draw function was called)
  categorizeAnimals("same");
  drawAnimals();


}


// RESET - GETS TRIGGERED WHENEVER THE GAME RESETS
void reset() {
  // resets the console 
  start.setText("Start");
  questiontext.setText("Click start to begin!");
  
  // asked questions get reset to 0
  askedQuestions = 0;
  
  //initial variables are reset to reflect the situation of the game 
  hasGuessed = false;  
  startGame = false;
  gameOver = true;  
  
  // recategorize the animals
  categorizeAnimals(category);
  
  // load all the questions back into the database
  loadQuestions();
}


// ASK QUESTION - GETS TRIGGERED THROUGHOUT THE GAME WHEN THE GAME IS GENERATING A NEW QUESTION FOR THE USER
void askQuestion() {

  // if the game has no more questions that it can ask, or the number of questions the game has asked matches the number of animals that the user can choose from, 
  // or the game has asked the same amount of questions than the number of questions set in the question slider, the game tells the user that it cannot guess the animal
  if (currentQuestions.size() == 0 || askedQuestions == numAnimals || askedQuestions == numQuestions) {
    questiontext.setText("Sorry! I'm unable to guess your animal! Click to play again!");  
    gameOver = true;
    startGame = false;
    
    // the user is then prompted to play again
    start.setText("Play Again");
  }
  
  // if the above cases did not happen, the game asks a question
  else {
    // finds next question
    currQuestion = findNextQuestion();
    
    // removes the next question being asked from the array of available questions
    currQuestion.removeQuestion();
    
    // display the chosen question to the user
    questiontext.setText(currQuestion.display);   
    
    // increments the number of questions the game has asked already
    askedQuestions++;
  }

}


// CHECK IF GUESSED FUNCTION - WILL RETURN TRUE IF THE PROGRAM HAS FOUND THE ANIMAL THE USER IS THINKING OF
boolean checkifGuessed() {
  // sets to true if there's only one animal in the currentAnimals array, hence guessing the animal
  if (currentAnimals.size() == 1) {
    hasGuessed = true;
  } 
  
  return hasGuessed;
}


// GUESS MESSAGE - PRINTS OUT THE ANIMAL THAT THE USER IS THINKING OF
void guessMessage() {
  String question;
  
  // the word "question(s)" is matched with the number of questions the program has guessed
  if (askedQuestions == 1) {
    question = "question";
  }
  
  else {
    question = "questions";
  }
  
  // displays the text to the user with the only animal that's left in the currentAnimals array
  questiontext.setText("I guessed your animal in " + askedQuestions + " " + question + "! It is a " + currentAnimals.get(0).name + "!");       
  
  // sets gameOver to true, startGame to false and prompts the user to play again
  gameOver = true;
  startGame = false;
  start.setText("Play Again");
}


//FIND NEXT QUESTION FUNCTION - MAIN ALGORITHM FOR GENERATING THE NEXT QUESTION TO ASK
Question findNextQuestion() {
  // min value is defaulted to the true/false difference of the first index of currentQuestions
  int min = currentQuestions.get(0).calculateTFdiff();
  int tempmin; // temporary min value for the first for-loop
  int value1, value2; // true/false difference variables for the two questions
  Question q1, q2; // question variables for the two questions
  
  // next question is defaulted to the first index of currentQuestions
  Question nextQuestion = currentQuestions.get(0);

  // loops through every question that is available to be asked
  for (int i = 0; i < currentQuestions.size() - 1; i++) {
    
    // calculates the difference between the number of animals that hold true for a certain question and 
    // the number of animals that hold false for a certain question (the absolute value of trueAnimals - falseAnimals)
    q1 = currentQuestions.get(i);
    value1 = q1.calculateTFdiff();
    
    // calculates the difference for the next question in the array to be compared with to the first question
    q2 = currentQuestions.get(i+1);
    value2 = q2.calculateTFdiff();
    
    // finds the value that is closest to 0 (i.e. the number of true and false animals for the question are relatively equal)
    tempmin = min(value1, value2);
    
    // replaces the existing min value with the appropriate question above if it is smaller
    if (tempmin < min) {
      min = value1;
    }       
    
  }
  
  // loops through all of the available question to find which question belongs to the min value that is stored in the function
  for (int i = 0; i < currentQuestions.size(); i++) {
    Question q = currentQuestions.get(i);
    
    if (q.calculateTFdiff() == min) {
      // if the appropriate question is found, the for-loop breaks
      nextQuestion = q;
      break;
    }
    
  }
  
  // returns the appropriate question
  return nextQuestion;
 
}



// DRAW ANIMALS - DRAWS ANIMALS TO THE DISPLAY SCREEN
void drawAnimals() {
  
  // calculates the number of extra animals if the number of animals displayed is not divisible by 5
  int rem = currentAnimals.size() % 5;
  
  // calculates the number of rows for the animals
  int rows = (currentAnimals.size() / 5) + 1;
  
  // loops through the rows and columns for the animal display
  for (int i = 0; i < rows; i++) {
    
    // if the loop is not on the last row, loop through 5 animals per row
    if (i != rows-1) {
      for (int j = 0; j < 5; j++) {
        // calculates the x and y positions of the animal image
        imgX = padding + j*imagesize;
        imgY = 100 + i*(imagesize + imagespacing);
        
        // finds the appropriate animal in the currentAnimals array to display
        Animal animal = currentAnimals.get(5*i + j);
        
        // sets text for the name of the animal and creates the animal image
        text(animal.name, imgX-imagespacing+20 + float(imagesize)/2, imgY -10);
        image(animal.img, imgX, imgY);  
      }
    }
    
    // if the loop is on the last row, do the same thing as the contents under the if-statement above but only iterate it through
    // the remainder number of animals determined in the rem variable
    else {
      for (int j = 0; j < rem; j++) {
        // calculates the x and y positions of the animal image
        imgX = padding + j*imagesize;
        imgY = 100 + i*(imagesize + imagespacing);

        // finds the appropriate animal in the currentAnimals array to display
        Animal animal = currentAnimals.get(5*i + j);
        
        // sets text for the name of the animal and creates the animal image
        text(animal.name, imgX-imagespacing+20 + float(imagesize)/2, imgY -10);
        image(animal.img, imgX, imgY);        
      }   
    }
  }
  

}


// RANDOMIZE ANIMALS - GENERATES A RANDOM ASSORTMENT OF 20 ANIMALS
void randomizeAnimals() {

  
  // while loop that keeps running if there are less than 20 animals chosen
  while (currentAnimals.size() != 20) {
    
    // goes through all of the animals in the database
    for (int i = 0; i < allAnimals.size(); i++) {
      Animal a = allAnimals.get(i); // animal that's being analyzed
      
      // randomizes a number that's either 0 or 1
      int chance = int(round(random(0, 1)));
      
      // animal will have the opportunity to get added if the random number is 1
      if (chance == 1) {
        boolean duplicate = false; // true = the animal is already in the currentAnimals array and can't be added again
        
        // loop through the currentAnimals array to find any duplicates
        for (int j = 0; j < currentAnimals.size(); j++) {
           Animal a2 = currentAnimals.get(j); // animal that's being analyzed
           
           // if the animal has already been added, the duplicate variable is set to true and the loop breaks
           if (a2 == a) {
             duplicate = true;
             break;
           }
        }
        
        // the animal gets added if it is not a duplicate
        if (duplicate == false) {
          a.addParticipant();
          a.isAvailable = true;
        }
      }
      
      // if there are 20 animals, the while loop breaks
      if (currentAnimals.size() == 20) {
        break;
      }
    }
    
  }
}


// CLEAR ANIMALS - SETS ALL OF THE isAvailable VALUES OF EACH ANIMAL TO FALSE
void clearAnimals() {
  // loop through all of the animals in the allAnimals array and set their isAvailable value to false
  for (int i = 0; i < allAnimals.size(); i++) {
    Animal a = allAnimals.get(i);   
    a.isAvailable = false;
  }
}


// CATEGORIZE ANIMALS - SETS THE CURRENT ANIMALS ARRAY TO REFLECT THE CATEGORY THE USER HAS CHOSEN
void categorizeAnimals (String category) {
  
  // clear the currentAnimals array
  currentAnimals = new ArrayList<Animal>(); 
  
  
  // if the category chosen is "same", the animals that were in the currentAnimals array before it was cleared get readded
  if (category == "same") {
    
    // loop through all animals
    for (int i = 0; i < allAnimals.size(); i++) {
      Animal a = allAnimals.get(i);
      
      // the animal gets added if their isAvailable value is true
      if (a.isAvailable == true) {
        a.addParticipant();
      }
    }
  }
  
  else {
    // all isAvailable values of the animals get set to false
    clearAnimals();
    // loop through all available animals
    for (int i = 0; i < allAnimals.size(); i++) {
      Animal a = allAnimals.get(i);
      
      // add a random assortment of 20 animals if the category the user has chosen is "random"
      if (category == "random") {
        randomizeAnimals();
        break;
      }
      
      // else, only add animals whose category matches the category the user has chosen
      else {
        if (a.category == category) {
          a.isAvailable = true;
          a.addParticipant();      
        }
      }
    }
    
  }
  
  // calculates the number of animals available for guessing and re-displays the animals
  numAnimals = currentAnimals.size();
  redraw();
}


// IMAGE SETUP FUNCTION - SETS UP THE IMAGE FOR EACH ANIMAL
PImage imageSetup(String imageName) {
  // loads the image into the system
  PImage newImage = loadImage(imageName);
  
  // resizes the image so that it fits the display screen nicely
  newImage.resize(imagesize-imagespacing,imagesize-imagespacing);
  
  // returns the generated image
  return newImage;
}
