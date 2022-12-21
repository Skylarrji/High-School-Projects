// function that turns green cells yellow
void makeyellow() {
  float percent;
  
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        
        int yellowNeighbours = countYellowNeighbours(i, j);
        int brownNeighbours = countBrownNeighbours(i, j);
        
        // green banana cell only turns yellow if it has at least 1 yellow neighbour
        // this means that the yellow cells won't sprawn randomly all over the banana
        if (bananaNow[i][j] == 1 && yellowNeighbours >= 1) {
            float chance = random(0,1);
            
            // if the banana consists of more than 90% of yellow cells 
            // the probability of the green banana cell turning yellow increases
            if (percentcheck(2) >= 0.9) {
              percent = yellowNeighbours*0.005 + o2*0.0012 + ethylene*0.0025;
            }
            
            else {
              percent = yellowNeighbours*0.0005 + o2*0.00012 + ethylene*0.00025;             
            }
            
            // the green cell also turns yellow if it's surrounded by brown cells           
            if (chance <= percent || brownNeighbours == 8) {
              bananaNext[i][j] = 2;
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


// counts cell's yellow neighbours
int countYellowNeighbours (int i, int j) {
  
  int count = 0;
  
  for (int a = -1; a <= 1; a++) {
    for (int b = -1; b<= 1; b++) {
      
      try {
        if (bananaNow[i+a][j+b] == 2 && (b!=0 || a!=0)) {
          count++;
        }
      }
      
      catch (Exception e) {
      
      }
    }
  }
  return count;
}
