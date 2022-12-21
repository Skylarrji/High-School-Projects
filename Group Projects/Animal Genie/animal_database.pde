void loadAnimals() { // generates all possible animals that are available
  currentAnimals = new ArrayList<Animal>(); // Array list for animal options the user can choose from 
  
  // FORMAT APPLIES FOR ALL ANIMALS BELOW
  PImage lionImage = imageSetup("lion.png"); // Variable to insert the appropriate image (e.g. Lion)
  // Boolean array for if animal is either true or false of the question asked  
  boolean[] lionAns = {false, true, false, false, false, true, false, true, true, true, false, true, true, false, false, false, true, false, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false}; 
  Animal lion = new Animal ("LION", lionImage, "mammal", lionAns); // Sets the animal object
  lion.addAnimal(); // Adds an animal to the database
  lion.addParticipant(); // Adds an animal to the array of animals that the user can choose from


  PImage dogImage = imageSetup("dog.png");
  boolean[] dogAns = {false, true, false, false, false, true, true, false, true, true, false, false, false, false, true, false, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal dog = new Animal ("DOG", dogImage, "mammal", dogAns);
  dog.addAnimal();
  dog.addParticipant();

  PImage catImage = imageSetup("cat.png");
  boolean[] catAns = {false, true, false, false, false, true, true, false, true, true, false, true, false, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal cat = new Animal ("CAT", catImage, "mammal", catAns);
  cat.addAnimal();
  cat.addParticipant();
  
  PImage horseImage = imageSetup("horse.png");
  boolean[] horseAns = {false, false, false, false, false, true, false, true, true, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal horse = new Animal ("HORSE", horseImage, "mammal", horseAns);
  horse.addAnimal();
  horse.addParticipant();

  PImage chickenImage = imageSetup("chicken.png");
  boolean[] chickenAns = {false, false, false, true, true, true, false, false, true, false, true, false, false, false, false, true, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal chicken = new Animal ("CHICKEN", chickenImage, "bird", chickenAns);
  chicken.addAnimal();
  chicken.addParticipant();
  
  PImage salmonImage = imageSetup("salmon.png");
  boolean[] salmonAns = {false, false, false, false, true, false, false, false, true, true, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal salmon = new Animal ("SALMON", salmonImage, "fish", salmonAns);
  salmon.addAnimal();
  salmon.addParticipant();

  PImage whaleImage = imageSetup("whale.png");
  boolean[] whaleAns = {false, false, true, false, false, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal whale = new Animal ("WHALE", whaleImage, "mammal", whaleAns);
  whale.addAnimal();
  whale.addParticipant();

  PImage cowImage = imageSetup("cow.png");
  boolean[] cowAns = {false, false, false, false, false, true, false, true, true, true, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal cow = new Animal ("COW", cowImage, "mammal", cowAns);
  cow.addAnimal();
  cow.addParticipant();
  
  PImage butterflyImage = imageSetup("butterfly.png");
  boolean[] butterflyAns = {true, false, false, false, true, true, false, false, false, false, true, false, true, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal butterfly = new Animal ("BUTTERFLY", butterflyImage, "insect", butterflyAns);
  butterfly.addAnimal();
  butterfly.addParticipant();

  PImage pigImage = imageSetup("pig.png");
  boolean[] pigAns = {false, false, false, false, false, true, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal pig = new Animal ("PIG", pigImage, "mammal", pigAns);
  pig.addAnimal();
  pig.addParticipant();
  
  PImage bearImage = imageSetup("bear.png");
  boolean[] bearAns = {false, true, false, false, false, true, false, true, true, true, false, false, true, false, false, false, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal bear = new Animal ("BEAR", bearImage, "mammal", bearAns);
  bear.addAnimal();
  bear.addParticipant();

  PImage eagleImage = imageSetup("eagle.png");
  boolean[] eagleAns = {true, false, false, true, true, true, false, false, true, false, true, true, true, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal eagle = new Animal ("EAGLE", eagleImage, "bird", eagleAns);
  eagle.addAnimal();
  eagle.addParticipant();

  PImage monkeyImage = imageSetup("monkey.png");
  boolean[] monkeyAns = {false, true, false, false, false, true, false, false, true, true, false, false, true, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal monkey = new Animal ("MONKEY", monkeyImage, "mammal", monkeyAns);
  monkey.addAnimal();
  monkey.addParticipant();
 
  
  PImage rabbitImage = imageSetup("rabbit.png");
  boolean[] rabbitAns = {false, true, false, false, false, true, true, false, true, true, false, false, true, false, true, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal rabbit = new Animal ("RABBIT", rabbitImage, "mammal", rabbitAns);
  rabbit.addAnimal();
  rabbit.addParticipant();

  PImage turkeyImage = imageSetup("turkey.png");
  boolean[] turkeyAns = {false, false, false, true, true, true, false, false, true, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal turkey = new Animal ("TURKEY", turkeyImage, "bird", turkeyAns);
  turkey.addAnimal();
  turkey.addParticipant();

  PImage snakeImage = imageSetup("snake.png");
  boolean[] snakeAns = {false, false, false, false, true, true, true, false, true, true, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal snake = new Animal ("SNAKE", snakeImage, "reptile", snakeAns);
  snake.addAnimal();
  snake.addParticipant();
  
  PImage dolphinImage = imageSetup("dolphin.png");
  boolean[] dolphinAns = {false, false, true, false, false, false, false, true, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal dolphin = new Animal ("DOLPHIN", dolphinImage, "mammal", dolphinAns);
  dolphin.addAnimal();
  dolphin.addParticipant();

  PImage pandaImage = imageSetup("panda.png");
  boolean[] pandaAns = {false, true, false, false, false, true, false, true, true, true, false, false, true, false, false, false, false, true, true, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal panda = new Animal ("PANDA", pandaImage, "mammal", pandaAns);
  panda.addAnimal();
  panda.addParticipant();

  PImage duckImage = imageSetup("duck.png");
  boolean[] duckAns = {true, false, false, true, true, true, false, false, true, false, true, false, true, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal duck = new Animal ("DUCK", duckImage, "bird", duckAns);
  duck.addAnimal();
  duck.addParticipant();
  
  PImage sharkImage = imageSetup("shark.png");
  boolean[] sharkAns = {false, false, false, false, false, false, false, true, true, true, false, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal shark = new Animal ("SHARK", sharkImage, "fish", sharkAns);
  shark.addAnimal();
  shark.addParticipant();
  
  PImage seahorseImage = imageSetup("seahorse.png");
  boolean[] seahorseAns = {false, false, false, false, true, false, false, false, true, false, false, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal seahorse = new Animal ("SEAHORSE", seahorseImage, "fish", seahorseAns);
  seahorse.addAnimal();
  seahorse.addParticipant();
  
  PImage jellyfishImage = imageSetup("jellyfish.png");
  boolean[] jellyfishAns = {false, false, false, false, true, false, false, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal jellyfish = new Animal("JELLYFISH", jellyfishImage, "fish", jellyfishAns);
  jellyfish.addAnimal();
  jellyfish.addParticipant();
  
  PImage elephantImage = imageSetup("elephant.png");
  boolean[] elephantAns = {false, false, false, false, false, true, false, true, true, true, false, false, true, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal elephant = new Animal("ELEPHANT", elephantImage, "mammal", elephantAns);
  elephant.addAnimal();
  elephant.addParticipant();
  
  PImage hippoImage = imageSetup("hippo.png");
  boolean[] hippoAns = {false, false, false, false, false, true, false, true, true, true, false, false, true, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false};
  Animal hippo = new Animal("HIPPO", hippoImage, "mammal", hippoAns);
  hippo.addAnimal();
  hippo.addParticipant();
  
  PImage rhinoImage = imageSetup("rhino.png");
  boolean[] rhinoAns = {false, false, false, false, false, true, false, true, true, true, false, false, true, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false};
  Animal rhino = new Animal("RHINO", rhinoImage, "mammal", rhinoAns);
  rhino.addAnimal();
  rhino.addParticipant();
  
  PImage batImage = imageSetup("bat.png");
  boolean[] batAns = {true, true, false, false, false, true, false, false, true, true, true, false, true, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false};
  Animal bat = new Animal("BAT", batImage, "mammal", batAns);
  bat.addAnimal();
  bat.addParticipant();
  
  PImage stingrayImage = imageSetup("stingray.png");
  boolean[] stingrayAns = {false, false, false, false, false, false, false, true, true, true, false, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false};
  Animal stingray = new Animal("STINGRAY", stingrayImage, "fish", stingrayAns);
  stingray.addAnimal();
  stingray.addParticipant();
  
  PImage goldfishImage = imageSetup("goldfish.png");
  boolean[] goldfishAns = {false, false, false, false, true, false, true, false, true, false, false, false, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false};
  Animal goldfish = new Animal("GOLDFISH", goldfishImage, "fish", goldfishAns);
  goldfish.addAnimal();
  goldfish.addParticipant();
  
  PImage hamsterImage = imageSetup("hamster.png");
  boolean[] hamsterAns = {false, true, false, false, false, true, true, false, true, true, false, false, false, false, true, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false};
  Animal hamster = new Animal("HAMSTER", hamsterImage, "mammal", hamsterAns);
  hamster.addAnimal();
  hamster.addParticipant();
  
  PImage ratImage = imageSetup("rat.png");
  boolean[] ratAns = {false, true, false, false, false, true, false, false, true, true, false, false, true, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false};
  Animal rat = new Animal("RAT", ratImage, "mammal", ratAns);
  rat.addAnimal();
  rat.addParticipant();
  
  PImage antImage = imageSetup("ant.png");
  boolean[] antAns = {false, false, false, false, true, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false};
  Animal ant = new Animal("ANT", antImage, "insect", antAns);
  ant.addAnimal();
  ant.addParticipant();
  
  PImage flyImage = imageSetup("fly.png");
  boolean[] flyAns = {true, false, false, false, true, true, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false};
  Animal fly = new Animal("FLY", flyImage, "insect", flyAns);
  fly.addAnimal();
  fly.addParticipant();
  
  PImage beeImage = imageSetup("bee.png");
  boolean[] beeAns = {true, false, false, false, true, true, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false};
  Animal bee = new Animal("BEE", beeImage, "insect", beeAns);
  bee.addAnimal();
  bee.addParticipant();
    
  PImage mosquitoImage = imageSetup("mosquito.png");
  boolean[] mosquitoAns = {true, false, false, false, true, true, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false};
  Animal mosquito = new Animal("MOSQUITO", mosquitoImage, "insect", mosquitoAns);
  mosquito.addAnimal();
  mosquito.addParticipant();
  
  PImage ladybugImage = imageSetup("ladybug.png");
  boolean[] ladybugAns = {true, false, false, false, true, true, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false};
  Animal ladybug = new Animal("LADYBUG", ladybugImage, "insect", ladybugAns);
  ladybug.addAnimal();
  ladybug.addParticipant();
  
  PImage owlImage = imageSetup("owl.png");
  boolean[] owlAns = {true, false, false, true, true, true, false, false, true, false, true, true, true, false, false, true, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true};
  Animal owl = new Animal("OWL", owlImage, "bird", owlAns);
  owl.addAnimal();
  owl.addParticipant();
  
  
  // sets the number of Animals in the currentAnimals array
  numAnimals = currentAnimals.size();
  

}
