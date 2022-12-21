// variable for number of questions in the database
int numQuestionsData = 0;

void loadQuestions() { // Generates all possible questions to ask
  currentQuestions = new ArrayList<Question>(); // Arraylist for possible questions
  
  Question canfly = new Question(1, "Does it fly?"); // Sets the question object for a specific question
  canfly.addQuestion(); // Add question to the Array list
  
  // the format described above repeats for all of the possible questions
  Question hasfur = new Question (2, "Does it have fur?");
  hasfur.addQuestion(); 
  
  Question hasblowbole = new Question (3, "Does it have a blowhole?");
  hasblowbole.addQuestion(); 
  
  Question hasfeathers = new Question (4, "Does it have feathers?");
  hasfeathers.addQuestion(); 
  
  Question haseggs = new Question (5, "Does it lay eggs?");
  haseggs.addQuestion();
  
  Question onland = new Question (6, "Does it live on land?");
  onland.addQuestion();
  
  Question ispet = new Question (7, "Is it typically owned as a pet?");
  ispet.addQuestion();
  
  Question isbigger = new Question (8, "Is it bigger than a human?");
  isbigger.addQuestion();
  
  Question hastail = new Question (9, "Does it have a tail?");
  hastail.addQuestion();
  
  Question hasteeth = new Question (10, "Does it have teeth?");
  hasteeth.addQuestion();
  
  Question haswings = new Question (11, "Does it have wings?");
  haswings.addQuestion();
  
  Question iscarnivore = new Question (12, "Is it a carnivore?");
  iscarnivore.addQuestion();
  
  Question iswild = new Question (13, "Can it be typically found in the wild?");
  iswild.addQuestion();
  
  Question hasgills = new Question (14, "Does it have gills?");
  hasgills.addQuestion();
  
  Question inpetstore = new Question (15, "Can your animal be found in pet stores?");
  inpetstore.addQuestion();
  
  Question standtwo = new Question (16, "Can your animal stand on two legs?");
  standtwo.addQuestion();
  
  Question isloud = new Question (17, "Does your animal make a loud noise?");
  isloud.addQuestion();
  
  Question isherbivore = new Question (18, "Is it a herbivore?");
  isherbivore.addQuestion();
  
  Question hasclaw = new Question (19, "Does it have claws?");
  hasclaw.addQuestion();
  
  Question isdog = new Question (20, "Does it bark?");
  isdog.addQuestion();
  
  Question iscat = new Question (21, "Does it meow?");
  iscat.addQuestion();
  
  Question ispig = new Question (22, "Can it be used for bacon?");
  ispig.addQuestion();
  
  Question ischicken = new Question (23, "Do you typically eat this type of egg?");
  ischicken.addQuestion();
  
  Question isbear = new Question (24, "Does this animal like honey?");
  isbear.addQuestion();
  
  Question islion = new Question (25, "Is this animal the king of the jungle?");
  islion.addQuestion();
  
  Question ishorse = new Question (26, "Does it neigh?");
  ishorse.addQuestion();
  
  Question issalmon = new Question (27, "Do fishermen catch this animal?");
  issalmon.addQuestion();
  
  Question ispanda = new Question (28, "Does this animal like bamboo?");
  ispanda.addQuestion();
  
  Question isshark = new Question (29, "Is this the scariest animal in the water?");
  isshark.addQuestion();
  
  Question isdolphin = new Question (30, "Does this animal have the highest IQ of any animal?");
  isdolphin.addQuestion();
  
  Question isturkey = new Question (31, "Is this animal typically eaten for Thanksgiving?");
  isturkey.addQuestion();
  
  Question ismonkey = new Question (32, "Does this animal like to eat bananas?");
  ismonkey.addQuestion();
  
  Question isduck = new Question (33, "Does this animal quack?");
  isduck.addQuestion();
  
  Question isbutterfly = new Question (34, "Is this animal known for their wings?");
  isbutterfly.addQuestion();
  
  Question iswhale = new Question (35, "Does this animal have the biggest mouth?");
  iswhale.addQuestion();
  
  Question issnake = new Question (36, "Does this animal have a long tongue?");
  issnake.addQuestion();
  
  Question iscow = new Question (37, "Is this animal known for its delectable burgers?");
  iscow.addQuestion();
  
  Question israbbit = new Question (38, "Does this animal eat carrots?");
  israbbit.addQuestion();
  
  Question iseagle = new Question (39, "Is the word 'bald' typically related with this animal?");
  iseagle.addQuestion();

  Question isseahorse = new Question (40, "Does the father of this animal give birth?");
  isseahorse.addQuestion();
  
  Question isjellyfish = new Question (41, "Is this animal transparent?");
  isjellyfish.addQuestion();

  Question iselephant = new Question (42, "Is this animal known for its large trunk?");
  iselephant.addQuestion();

  Question ishippo = new Question (43, "Was this animal in the movie ‘Madagascar’?");
  ishippo.addQuestion();

  Question isrhino = new Question (44, "Is this animal known for its large horn?");
  isrhino.addQuestion();

  Question isbat = new Question (45, "Is there a DC superhero based off this animal?");
  isbat.addQuestion();

  Question isstingray = new Question (46, "Does this animal have a pancake-like body?");
  isstingray.addQuestion();

  Question isgoldfish = new Question (47, "Is your animal the snack that smiles back?");
  isgoldfish.addQuestion();

  Question ishamster = new Question (48, "Does your hamster use a wheel?");
  ishamster.addQuestion();

  Question israt = new Question (49, "Is your animal the basis of the movie Ratatouille?");
  israt.addQuestion();

  Question isant = new Question (50, "Can your animal lift 10 times its bodyweight?");
  isant.addQuestion();
  
  Question isfly = new Question (51, "Is your animal commonly associated with fruit?");
  isfly.addQuestion();
  
  Question isbee = new Question (52, "Does your animal make honey?");
  isbee.addQuestion();
  
  Question ismosquito = new Question (53, "Does your animal suck blood?");
  ismosquito.addQuestion();
  
  Question isladybug = new Question (54, "Is your animal red with black spots?");
  isladybug.addQuestion();
  
  Question isowl = new Question (55, "Does your animal hoot?");
  isowl.addQuestion();
  
}
