// function that turns brown or black banana cells to white air cells
void makedecompose() {
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        int airNeighbours = countAirNeighbours(i, j);

        if (bananaNow[i][j] == 4 || bananaNow[i][j] == 3) {
            float chance = random(0,1);
            
            // probability that the cell will turn into a white air cell
            float percent = airNeighbours*(o2*0.000012 + ethylene*0.000025);
            
            if (chance < percent) {
              bananaNext[i][j] = 0;
              aircells ++;
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


// checks number of air (not limited to air colour) neighbours
int countAirNeighbours (int i, int j) {
  
  int count = 0;
  
  for (int a = -1; a <= 1; a++) {
    
    // note that the air neighbours that are in the bottom row are disregarded
    for (int b = -1; b<= 0; b++) {
      
      try {
        if ((bananaNow[i+a][j+b] == 0 || bananaNow[i+a][j+b] == -1 || bananaNow[i+a][j+b] == -2 || bananaNow[i+a][j+b] == -3) && (b!=0 || a!=0)) {
          count++;
        }
      }
      
      catch (Exception e) {
      
      }
    }
  }
  return count;
}
