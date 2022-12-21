// function that checks the number of each kind of cell in the frame given a colour index
int numcolour(int colour) {
  // checks num of cells w/ index colour in the frame
  int count = 0;
  
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (bananaNow[i][j] == colour) {
        count ++;
      }
    }
  }
  
  return count;
}

// function that checks the percentage that each kind of banana cell makes up in the banana
// in the frame given a colour index
float percentcheck(int colour) {
  
  // checks num of cells w/ index colour in the frame
  int count = 0;
  
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (bananaNow[i][j] == colour) {
        count ++;
      }
    }
  }
  
  // checks banana colour percentage compared to the rest of the banana cells
  float percent = float(count)/float(bananacells);

  return percent;
  
}
