// function that displays the appropriate text on the screen depending on
// whether the user has clicked on the banana or not
void clicktext() {
  // text colour is pink
  fill(250, 222, 241);
  
  // if the user has not clicked on the banana, display the appropriate message
  if (isclicked == false) {
    text("Click anywhere on the banana to start", width/2, height*.95);
  }
  
  // if the user has clicked on the banana, display the time elapsed
  else {
    if (min >= 60) {
      hours ++;
      min = 0;
    }
    
    if (hours >= 24) {
      days ++;
      hours = 0;
    }
    
    text("Time elapsed: " + days + " days, " + hours + " hours and " + min + " minutes", width/2, height*.95);
    
    // 15 minutes are elapsed in each frame
    min+=15;
  }
}


// function that detects whether the user has clicked on the banana or not
void mouseClicked() {
  
  // sets variable isclicked to true and turns the user's clicked banana cell to yellow if 
  //the user has clicked on a green banana cell and the banana is in the yellowing stage
  if (isyellow == true && bananaNow[roundto(mouseX)][roundto(mouseY)] == 1 && isclicked == false) {
    bananaNext[roundto(mouseX)][roundto(mouseY)] = 2;
    isclicked = true;
  }
  
}

// rounds user's mouse click position to the nearest cell index position in the array
int roundto(float num) {
  int numround = int(round(num/cellSize));
  return numround;
}
