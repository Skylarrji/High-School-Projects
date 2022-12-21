/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:Game_Controls:641787:
  appc.background(230);
} //_CODE_:Game_Controls:641787:

public void mammal_click(GButton source, GEvent event) { //_CODE_:mammal:298104:
  category = "mammal"; // if the mammal button gets clicked, the game resets with the mammal option
  reset();
  gameOver = false;
} //_CODE_:mammal:298104:

public void bird_click(GButton source, GEvent event) { //_CODE_:bird:422349:
  category = "bird"; // if the bird button gets clicked, the game resets with the bird option
  reset();
  gameOver = false;
} //_CODE_:bird:422349:

public void insect_click(GButton source, GEvent event) { //_CODE_:insect:884580:
  category = "insect"; // if the insect button gets clicked, the game resets with the insect option
  reset();
  gameOver = false;
} //_CODE_:insect:884580:

public void fish_click(GButton source, GEvent event) { //_CODE_:fish:653052:
  category = "fish"; // if the fish button gets clicked, the game resets with the fish option
  reset();
  gameOver = false;
} //_CODE_:fish:653052:

public void random_click(GButton source, GEvent event) { //_CODE_:random1:593301:
  category = "random"; // if the random button gets clicked, the game resets with the random option
  reset();
  gameOver = false;
} //_CODE_:random1:593301:

public void question_slide(GCustomSlider source, GEvent event) { //_CODE_:question_slider:572147:
  // the number of maximum questions that the game can guess gets re-adjusted from the slider to the numQuestions variable
  numQuestions = question_slider.getValueI();
  
  // the game will then reset with the same animals that were selected before
  category = "same";
  reset();
  gameOver = false;
} //_CODE_:question_slider:572147:

public void yes_click(GButton source, GEvent event) { //_CODE_:yes:448112:
  // if the game has started, the userAnswer variable is set to true 
  // also, all animals that do not correspond to the user's answer for the specific question will get removed
  if (gameOver == false && startGame == true) {
    userAnswer = true;
    currQuestion.removeAnimals(userAnswer);  
    
    // if the game has not guessed the animal, ask another question
    if (checkifGuessed() == false) {
      askQuestion();
    }
    
    // if the game has guessed the animal, display the appropriate message to the user
    else {
      guessMessage();
    }
  }
  
  // if the user accidentally clicks the button when the game is over or hasn't started yet, the appropriate message appears
  else {
    println("This button can't be used right now.");
  }
} //_CODE_:yes:448112:

public void no_click(GButton source, GEvent event) { //_CODE_:no:328135:
  // if the game has started, the userAnswer variable is set to false
  // also, all animals that do not correspond to the user's answer for the specific question will get removed
  if (gameOver == false && startGame == true) {
    userAnswer = false;
    currQuestion.removeAnimals(userAnswer);  
    
    // if the game has not guessed the animal, ask another question
    if (checkifGuessed() == false) {
      askQuestion();
    }
    
    // if the game has guessed the animal, display the appropriate message to the user
    else {
      guessMessage();
    }
  }
  
  // if the user accidentally clicks the button when the game is over or hasn't started yet, the appropriate message appears
  else {
    println("This button can't be used right now.");
  }
} //_CODE_:no:328135:

public void start_click(GButton source, GEvent event) { //_CODE_:start:444122:
  // if the game has already started, the game restarts with the same animals that were displayed before
  if (startGame == true) {
    category = "same";
    reset();
    gameOver = false;    
  }  
  
  // runs if the game has started
  else {
    // if the game is not over (ie. the game hasn't guessed the animal), the game asks a question and starts the game
    if (gameOver == false) {
      askQuestion();  
      startGame = true;
      start.setText("Restart"); // the text also gets set to restart to provide the user with the option to restart the game
    }
    
    // if the game is over, the game resets and the gameOver variable is reset to false
    else {
      category = "same";
      reset();
      gameOver = false;
  
    }
  }

} //_CODE_:start:444122:

public void custom_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:custom_slider1:237422:
  println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:custom_slider1:237422:

public void power_click(GButton source, GEvent event) { //_CODE_:Power:719034:
  exit(); // if the power putton is clicked, the game closes
} //_CODE_:Power:719034:

public void background_click(GDropList source, GEvent event) { //_CODE_:background_colour:636511:
  if (background_colour.getSelectedIndex() == 0) { // if the user selects white
    colour = color(255); // the background colour gets set to white and the animals get redrawn
    redraw();
  }
  
  else if (background_colour.getSelectedIndex() == 1) { // if the user selects purple
    colour = color(210, 184, 255); // the background colour gets set to purple and the animals get redrawn
    redraw(); 
  }
  
  else if (background_colour.getSelectedIndex() == 2) { // if the user selects blue
    colour = color(171, 220, 255); // the background colour gets set to blue and the animals get redrawn
    redraw();
  }
} //_CODE_:background_colour:636511:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  Game_Controls = GWindow.getWindow(this, "Controls", 0, 0, 600, 500, JAVA2D);
  Game_Controls.noLoop();
  Game_Controls.setActionOnClose(G4P.KEEP_OPEN);
  Game_Controls.addDrawHandler(this, "win_draw1");
  mammal = new GButton(Game_Controls, 66, 303, 66, 35);
  mammal.setText("Mammals");
  mammal.addEventHandler(this, "mammal_click");
  bird = new GButton(Game_Controls, 66, 375, 65, 32);
  bird.setText("Birds");
  bird.addEventHandler(this, "bird_click");
  insect = new GButton(Game_Controls, 6, 339, 59, 33);
  insect.setText("Insects");
  insect.addEventHandler(this, "insect_click");
  fish = new GButton(Game_Controls, 133, 340, 57, 32);
  fish.setText("Fishes");
  fish.addEventHandler(this, "fish_click");
  random1 = new GButton(Game_Controls, 68, 341, 63, 31);
  random1.setText("Random");
  random1.addEventHandler(this, "random_click");
  question_slider = new GCustomSlider(Game_Controls, 202, 259, 216, 43, "grey_blue");
  question_slider.setShowValue(true);
  question_slider.setLimits(5, 1, 10);
  question_slider.setShowTicks(true);
  question_slider.setNumberFormat(G4P.INTEGER, 0);
  question_slider.setOpaque(false);
  question_slider.addEventHandler(this, "question_slide");
  questiontext = new GLabel(Game_Controls, 137, 26, 329, 144);
  questiontext.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  questiontext.setText("Click start to begin!");
  questiontext.setOpaque(true);
  yes = new GButton(Game_Controls, 437, 301, 73, 30);
  yes.setText("Yes");
  yes.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  yes.addEventHandler(this, "yes_click");
  no = new GButton(Game_Controls, 514, 301, 73, 30);
  no.setText("No");
  no.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  no.addEventHandler(this, "no_click");
  start = new GButton(Game_Controls, 458, 337, 112, 44);
  start.setText("Start");
  start.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  start.addEventHandler(this, "start_click");
  custom_slider1 = new GCustomSlider(Game_Controls, -656, 182, 1285, 40, "grey_blue");
  custom_slider1.setLimits(0.5, 0.0, 1.0);
  custom_slider1.setNumberFormat(G4P.DECIMAL, 2);
  custom_slider1.setOpaque(false);
  custom_slider1.addEventHandler(this, "custom_slider1_change1");
  ChooseNumbQuestion = new GLabel(Game_Controls, 199, 220, 219, 33);
  ChooseNumbQuestion.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  ChooseNumbQuestion.setText("Choose the maximum number of questions the program will ask!");
  ChooseNumbQuestion.setOpaque(false);
  Power = new GButton(Game_Controls, 515, 216, 80, 30);
  Power.setText("Power");
  Power.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Power.addEventHandler(this, "power_click");
  BottomScreen = new GLabel(Game_Controls, 196, 299, 234, 108);
  BottomScreen.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  BottomScreen.setText("Animal Genie by: Calvin, Skylar, and Jiro ");
  BottomScreen.setOpaque(true);
  Soundtick1 = new GLabel(Game_Controls, 54, 71, 80, 20);
  Soundtick1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick1.setText("-");
  Soundtick1.setOpaque(false);
  Soundtick2 = new GLabel(Game_Controls, 67, 71, 80, 20);
  Soundtick2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick2.setText("-");
  Soundtick2.setOpaque(false);
  Soundtick3 = new GLabel(Game_Controls, 41, 71, 80, 20);
  Soundtick3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick3.setText("-");
  Soundtick3.setOpaque(false);
  Soundtick4 = new GLabel(Game_Controls, 41, 79, 80, 20);
  Soundtick4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick4.setText("-");
  Soundtick4.setOpaque(false);
  Soundtick5 = new GLabel(Game_Controls, 54, 79, 80, 20);
  Soundtick5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick5.setText("-");
  Soundtick5.setOpaque(false);
  Soundtick6 = new GLabel(Game_Controls, 67, 79, 80, 20);
  Soundtick6.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick6.setText("-");
  Soundtick6.setOpaque(false);
  Soundtick8 = new GLabel(Game_Controls, 54, 88, 80, 20);
  Soundtick8.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick8.setText("-");
  Soundtick8.setOpaque(false);
  Soundtick7 = new GLabel(Game_Controls, 41, 88, 80, 20);
  Soundtick7.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick7.setText("-");
  Soundtick7.setOpaque(false);
  Soundtick9 = new GLabel(Game_Controls, 67, 88, 80, 20);
  Soundtick9.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick9.setText("-");
  Soundtick9.setOpaque(false);
  Soundtick10 = new GLabel(Game_Controls, 447, 72, 80, 20);
  Soundtick10.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick10.setText("-");
  Soundtick10.setOpaque(false);
  Soundtick11 = new GLabel(Game_Controls, 459, 72, 80, 20);
  Soundtick11.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick11.setText("-");
  Soundtick11.setOpaque(false);
  Soundtick12 = new GLabel(Game_Controls, 472, 72, 80, 20);
  Soundtick12.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick12.setText("-");
  Soundtick12.setOpaque(false);
  Soundtick13 = new GLabel(Game_Controls, 447, 80, 80, 20);
  Soundtick13.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick13.setText("-");
  Soundtick13.setOpaque(false);
  Soundtick14 = new GLabel(Game_Controls, 459, 80, 80, 20);
  Soundtick14.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick14.setText("-");
  Soundtick14.setOpaque(false);
  Soundtick15 = new GLabel(Game_Controls, 472, 80, 80, 20);
  Soundtick15.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick15.setText("-");
  Soundtick15.setOpaque(false);
  Soundtick16 = new GLabel(Game_Controls, 447, 88, 80, 20);
  Soundtick16.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick16.setText("-");
  Soundtick16.setOpaque(false);
  Soundtick17 = new GLabel(Game_Controls, 460, 88, 80, 20);
  Soundtick17.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick17.setText("-");
  Soundtick17.setOpaque(false);
  Soundtick18 = new GLabel(Game_Controls, 472, 88, 80, 20);
  Soundtick18.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  Soundtick18.setText("-");
  Soundtick18.setOpaque(false);
  background_colour = new GDropList(Game_Controls, 465, 414, 90, 80, 3, 10);
  background_colour.setItems(loadStrings("list_636511"), 0);
  background_colour.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  background_colour.addEventHandler(this, "background_click");
  background1 = new GLabel(Game_Controls, 446, 391, 129, 20);
  background1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  background1.setText("Background Colour");
  background1.setOpaque(false);
  Game_Controls.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow Game_Controls;
GButton mammal; 
GButton bird; 
GButton insect; 
GButton fish; 
GButton random1; 
GCustomSlider question_slider; 
GLabel questiontext; 
GButton yes; 
GButton no; 
GButton start; 
GCustomSlider custom_slider1; 
GLabel ChooseNumbQuestion; 
GButton Power; 
GLabel BottomScreen; 
GLabel Soundtick1; 
GLabel Soundtick2; 
GLabel Soundtick3; 
GLabel Soundtick4; 
GLabel Soundtick5; 
GLabel Soundtick6; 
GLabel Soundtick8; 
GLabel Soundtick7; 
GLabel Soundtick9; 
GLabel Soundtick10; 
GLabel Soundtick11; 
GLabel Soundtick12; 
GLabel Soundtick13; 
GLabel Soundtick14; 
GLabel Soundtick15; 
GLabel Soundtick16; 
GLabel Soundtick17; 
GLabel Soundtick18; 
GDropList background_colour; 
GLabel background1; 
