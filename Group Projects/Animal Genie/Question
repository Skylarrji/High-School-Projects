class Question {
  // fields
  
  // question that is displayed to the user, e.g. "Does it have fur?"
  String display;
  
  // number of the question in the currentQuestions array when the questions are being loaded 
  // i.e. the index of the question in the array + 1
  // the number gets referred when finding an animal's appropriate answer for the specific question
  int questionnum;
  
  //constructor
  Question (int qnum, String d) {
    this.display = d;
    this.questionnum = qnum;
  }
  
  //methods
  
  // DETECT TRUE FUNCTION - RETURNS HOW MANY ANIMALS HOLD TRUE FOR A CERTAIN FUNCTION
  int detectTrue() {
    int numanimals = 0; // number of animals that hold true
    Animal a;
    
    // finds the index of the question
    int num = this.questionnum - 1;
    
    // loops through all of the animals to find the number of animals that hold true for a certain question
    for (int i = 0; i < currentAnimals.size(); i++) {
      a = currentAnimals.get(i);
      
      // if an animal holds true, increment the numanimals variable
      if (a.answers[num] == true) {
        numanimals++;
      }

    }
    
    // returns that number
    return numanimals;
  }
  
  // TRUE FALSE DIFFERENCE FUNCTION - CALCULATES THE DIFFERENCE BETWEEN THE NUMBER OF ANIMALS THAT HOLD TRUE AND FALSE FOR A CERTAIN QUESTION
  int calculateTFdiff() {
    // finds true and false animals (false animals = total number of available animals for guessing - true animals)
    int trueAnimals = this.detectTrue(); // number of true animals
    int falseAnimals = currentAnimals.size() - trueAnimals; // number of false animals
    
    // calculates and returns the absolute value of the difference between them
    int difference = abs(trueAnimals - falseAnimals);
    return difference;
  }
  
  // ADD AND REMOVE QUESTION - ADDS OR REMOVES A QUESTION TO OR FROM THE DATABASE
  void addQuestion() {
    currentQuestions.add(this);
    numQuestionsData++;
  }
  
  void removeQuestion() {
    currentQuestions.remove(this);
  }
  
  // REMOVE ANIMALS - REMOVES ALL ANIMALS IN THE CURRENTANIMALS ARRAY THAT DON'T APPLY TO THE YES OR NO ANSWER THE USER PROVIDED
  void removeAnimals(boolean answer) {
    // finds the appropriate question number that the user has answered
    int questionnum = this.questionnum;
    
    // initializes the animal and animal answer
    Animal a;
    boolean animalans;
    
    // initializes an arraylist of animals to remove
    ArrayList<Animal> removeAnimals = new ArrayList<Animal>();   
    
    // loops through all animals
    for (int i = 0; i < currentAnimals.size(); i++) {
      
      // finds current animal and its appropriate true/false value for the correponding question
      a = currentAnimals.get(i);
      animalans = a.answers[questionnum-1];
      
      // if the animal's true/false value does not match what the user entered, it will be added to the removeAnimals array
      if (animalans != answer) {
        removeAnimals.add(a);
      }
      
    }
    
    // loops through the animals in the removeAnimals array to remove them from the currentAnimals array
    for (int i = 0; i < removeAnimals.size(); i++) {
      Animal victim = removeAnimals.get(i);
      currentAnimals.remove(victim);
    }
    
  }
  
}
