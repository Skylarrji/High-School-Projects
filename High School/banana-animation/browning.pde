// function that turns yellow cells brown
void makebrown() {
  float percent;
  
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        int brownNeighbours = countBrownNeighbours(i, j);
        int blackNeighbours = countBlackNeighbours(i, j);
        
        // if the cell is yellow
        if (bananaNow[i][j] == 2) {
            float chance = random(0,1);
            
            // if the banana consists of more than 40% of black cells,
            // the probability of the yellow cell turning brown increases
            if (percentcheck(4) >= 0.4) {
              percent = brownNeighbours*0.05 + o2*0.00012 + ethylene*0.00025;
            }
            
            else {
              percent = brownNeighbours*0.005 + o2*0.000012 + ethylene*0.000025;
            }
            
            // the yellow cell also turns black if it's surrounded by black cells
            if (chance <= percent || blackNeighbours == 8) {
              bananaNext[i][j] = 3;
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


// checks brown neighbours
int countBrownNeighbours (int i, int j) {
  
  int count = 0;
  
  for (int a = -1; a <= 1; a++) {
    for (int b = -1; b<= 1; b++) {
      
      try {
        if (bananaNow[i+a][j+b] == 3 && (b!=0 || a!=0)) {
          count++;
        }
      }
      
      catch (Exception e) {
      
      }
    }
  }
  return count;
}
