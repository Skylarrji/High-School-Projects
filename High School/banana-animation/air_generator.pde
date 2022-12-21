// function that generates air cells
void randomair(int oxygen, int carbondio, int ethylene1) {
  // leftover air cell values to prevent air types overlapping when they're on the screen
  int leftoverair1 = aircells - o2;
  int leftoverair2 = leftoverair1 - co2;
  
  //setup
  int chance;
  int count = 0;
  int aircount = 0;
  
  // clears all air status cells to white w/ new generation
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (bananaNow[i][j] == -1 || bananaNow[i][j] == -2 || bananaNow[i][j] == -3) {
        bananaNext[i][j] = 0;
      }

    }
  }

  //oxygen (only runs if o2 is not 0 to prevent division error)
  if (o2 != 0) {
    // size of each section that will contain 1 oxygen cell so that the cells are evenly distributed
    int section1 = int(aircells/oxygen);
    
    // stores position of oxygen cell
    int[] oxygencells = new int[oxygen];
  
    // assigns random values for the placement of oxygen cells on the screen to an array
    for (int i = 0; i < oxygencells.length; i++) {
      
      // generates a value between 0 and the size of the oxygen section
      chance = int(random(0, section1));
      
      // assigns the random value taking into consideration of the count variable 
      // the count variable goes up by the size of the oxygen section with each index
      oxygencells[i]  = count + chance;
      count += section1;
    }
    
    // places oxygen cells based on the values in the oxygencells array
    // the oxygencells array represents the nth air cell that would be an oxygen cell
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        if (bananaNow[i][j] == 0) {
          aircount ++;
          
          for (int k = 0; k < oxygencells.length; k++) {
            if (oxygencells[k] == aircount) {
              bananaNext[i][j] = -1;
            }
          
          }
          
        }
      }
    }
  }

  
 
  //co2 (only runs if co2 is not 0 to prevent division error)
  if (co2 != 0) {
    // size of each section that will contain 1 co2 cell so that the cells are evenly distributed
    int section2 = int(leftoverair1/carbondio);
    
    // stores position of co2 cell
    int[] co2cells = new int[carbondio];
  
    // assigns random values for the placement of co2 cells on the screen to an array
    count = 0;
    for (int i = 0; i < co2cells.length; i++) {
      // generates a value between 0 and the size of the co2 section
      chance = int(random(0, section2));
      
      // assigns the random value taking into consideration of the count variable 
      // the count variable goes up by the size of the co2 section with each index
      co2cells[i]  = count + chance;
      count += section2;
      
    }
    
     // places co2 cells based on the values in the co2cells array
    // the co2cells array represents the nth air cell that would be an co2 cell
    aircount = 0;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        if (bananaNow[i][j] == 0) {
          aircount ++;
          
          for (int k = 0; k < co2cells.length; k++) {
            if (co2cells[k] == aircount) {
              bananaNext[i][j] = -2;
            }
          
          }
          
        }
      }
    }  
  }

  
  
  //ethylene (only runs if ethylene is not 0 to prevent division error)
  if (ethylene != 0) {
    // size of each section that will contain 1 ethylene cell so that the cells are evenly distributed
    int section3 = int(leftoverair2/ethylene1);
    
    // stores position of ethylene cell
    int[] ethylenecells = new int[ethylene];
    
    // assigns random values for the placement of ethylene cells on the screen to an array
    count = 0;
    for (int i = 0; i < ethylenecells.length; i++) {
      // generates a value between 0 and the size of the ethylene section
      chance = int(random(0, section3));
      
      // assigns the random value taking into consideration of the count variable 
      // the count variable goes up by the size of the ethylene section with each index
      ethylenecells[i]  = count + chance;
      count += section3;
      
    }
  
    // places ethylene cells based on the values in the ethylenecells array
    // the ethylenecells array represents the nth air cell that would be an ethylene cell
    aircount = 0;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        if (bananaNow[i][j] == 0) {
          aircount ++;
          
          for (int k = 0; k < ethylenecells.length; k++) {
            if (ethylenecells[k] == aircount) {
              bananaNext[i][j] = -3;
            }
          
          }
          
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
