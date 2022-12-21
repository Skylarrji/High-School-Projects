class Animal {
  // fields
  String name; // name of animal, e.g. "DOG"
  PImage img; // image associated with the animal that is shown on the display screen
  String category; // the category of the animal, e.g. "mammal"
  boolean isAvailable; // whether or not the animal is available for guessing
  boolean[] answers = new boolean[numQuestionsData]; // array that stores all of the animal's individual answers to all of the available questions
  
  
  //contructor
  Animal (String n, PImage im, String c, boolean[] a) {
    this.name = n;
    this.img = im;
    this.category = c;
    this.answers = a;
    this.isAvailable = false;
  }
  
  //methods
  
  //adds an animal to the database
  void addAnimal() {
    allAnimals.add(this);
  }
  
  
  //adds an animal to the array of animals (currentAnimals) that the user can choose from
  void addParticipant() {
    currentAnimals.add(this);
  }
  
}
