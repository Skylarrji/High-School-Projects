// function that turns brown cells black
void makeblack() {
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        int blackNeighbours = countBlackNeighbours(i, j);
        
        // if the cell is brown, the chance that it will turn black is the formula after the percent variable
        if (bananaNow[i][j] == 3) {
            float chance = random(0,1);
            float percent = blackNeighbours*0.0005 + o2*0.000012 + ethylene*0.000025;
            
            if (chance <= percent) {
              bananaNext[i][j] = 4;
            }
        }
          
     }
        
    }

  //cell update
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        bananaNow[i][j] = bananaNext[i][j];
      }
    }
}


// counts cells black neighbours
int countBlackNeighbours (int i, int j) {
  
  int count = 0;
  
  for (int a = -1; a <= 1; a++) {
    for (int b = -1; b<= 1; b++) {
      
      try {
        if (bananaNow[i+a][j+b] == 4 && (b!=0 || a!=0)) {
          count++;
        }
      }
      
      catch (Exception e) {
      
      }
    }
  }
  return count;
}
