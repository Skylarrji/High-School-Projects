#########################################
#Programmers: Skylar, Nethara, Xiang
#Bot Name: ezClap
#Purpose: This is a bot that is designed to compete against other humans/bots against each other in a snowball fight game. The bot's first two moves are pre-determined, and the other moves are carried out based on certain situations during each round (e.g. loops in terms of moves, scores, number of ducks and snowballs each player had, etc.).
#########################################
#PROGRAM COMMENTED BY SKYLAR AND NETHARA

#Importing random module
from random import *


#Main function
def getMove(myScore, mySnowballs, myDucksUsed, myMovesSoFar, oppScore, oppSnowballs, oppDucksUsed, oppMovesSoFar):
  #Tracking the number of rounds
  rounds = len(myMovesSoFar)

  #FIRST MOVE
  #ezClap always throws or ducks as the first move.
  if rounds == 0:
      return choice(["DUCK", "THROW"])

  #SECOND MOVE
  #Next move (second move) is determined based on our bot's last move (either throw or duck) and the opponent's last move.
  elif rounds == 1:

    #If ezClap's first move was throw, it will either duck or reload depending on the opponent's last move.
    if myMovesSoFar[-1] == "THROW":

      if oppMovesSoFar[-1] == "DUCK":

        result =  "DUCK"

      elif oppMovesSoFar[-1] == "THROW":

        result =  "RELOAD"

      else:

        result =  "DUCK"

    #If ezClap's first move was duck, it will either throw or reload depending on the opponent's last move.
    else:

      if oppMovesSoFar[-1] == "DUCK":

        result =  "THROW"

      elif oppMovesSoFar[-1] == "THROW":

        result =  "RELOAD"

      else:
          
        result =  "THROW"

  #MOVES FROM ROUND 3 ONWARDS
  else:


#FIRST IF-ELIF-ELSE STATEMENT BLOCK: This block has all of the strategies that we came up with when testing the sample bots but they are not 100% guaranteed to help our bot win. Therefore, they are placed above the second if-statement block so that the variable that holds return statement can override itself when necessary.

    #If the opponent's last 2 moves were reload or duck, ezClap throws if it has snowballs left. If not, ezClap reloads.
    if oppMovesSoFar[-2:] == ["RELOAD", "RELOAD"] or oppMovesSoFar[-2:] == ["DUCK", "DUCK"]:
      if mySnowballs > 0:
        result = "THROW"
      
      else:
        result = "RELOAD"
    

    #If ezClap has more snowballs than the opponent and ezClap's score is greater than the opponent's score, ezClap reloads.
    elif oppSnowballs < mySnowballs and myScore > oppScore:
      result = "RELOAD"
    

    #If the opponent has more snowballs than ezClap and ezClap still has ducks left:
    elif oppSnowballs > mySnowballs and myDucksUsed < 5:
      #If the opponent has 1 snowball and ezClap has 0 snowballs, ezClap reloads.
      if oppSnowballs == 1 and mySnowballs == 0:
        result = "RELOAD"
      
      #Else, ezClap ducks.
      else:
        result = "DUCK"
    

    #If ezClap and the opponent each have 1 snowball, ezClap ducks if both ezClap and the opponent still have ducks left.
    elif mySnowballs == 1 and oppSnowballs == 1:
      if myDucksUsed < 5 and oppDucksUsed < 5:
        result = "DUCK"
      
      #Else, if the opponent's score is 0 or 1, ezClap reloads to sacrifice one point. If the opponent's score is 2, ezClap throws since reloading will give the opponent a win.
      elif oppScore == 0 or oppScore == 1:
        result = "RELOAD"            

      else:
        result = "THROW"
    

    #If ezClap's snowballs are equal to the opponent's snowballs and the opponent has no more ducks left, ezClap throws.
    elif mySnowballs == oppSnowballs and oppDucksUsed == 5:
      result = "THROW"
    
    
    #If the opponent has one snowball and ezClap has more than 1 snowball, ezClap throws.
    elif oppSnowballs == 1 and mySnowballs > 1:
      result = "THROW"
    

        
#SECOND IF-ELIF-ELSE STATEMENT BLOCK: This block has all of the strategies that we have came up with when testing the sample bots that are 100% guaranteed to help our bot win. Therefore, they are prioritized moves that are placed below the first if-statement block so that the variable that holds the result can override itself if necessary.

    #If the opponent has no ducks and snowballs left, ezClap throws if they have snowballs. If not, ezClap reloads.
    if oppDucksUsed == 5 and oppSnowballs == 0:
      if mySnowballs > 0:
        result = "THROW"
      
      else:
        result = "RELOAD"
    

    #If the amount of ducks left that the opponent has added to the opponent's snowballs is smaller than ezClap's snowballs and ezClap has a higher score than the opponent, ezClap throws all the snowballs that they have.
    elif  5 - oppDucksUsed + oppSnowballs < mySnowballs and myScore == 2 and oppScore <= 1:
      #Instead of a result variable statement, a targetlimit variable is created where it adds ezClap's current snowballs to the current round since there is a final if-statement at the bottom that takes this variable into consideration.
      targetlimit = rounds + mySnowballs
    

    #If the opponent has no snowballs, ezClap throws if it has 2 or more snowballs, else, ezClap reloads.
    elif oppSnowballs == 0:
      if mySnowballs >= 2:
        result = "THROW"
      
      else:
        result = "RELOAD"
    

    #If ezClap has one snowball, the opponent has a score of 2, and both ezClap and the opponent have no more ducks left, ezClap would throw.
    elif mySnowballs == 1 and oppScore == 2 and myDucksUsed == 5 and oppDucksUsed == 5:
      result = "THROW"
    

    #If the opponent has a score of 2 and more than 0 snowballs, ezClap would duck if they have ducks left, throw if they have snowballs left, and only reload as a last resort.
    elif oppScore == 2 and oppSnowballs > 0:
      if myDucksUsed < 5:
        result = "DUCK"
      
      elif mySnowballs > 1:
        result = "THROW"
      
      else:
        result = "RELOAD"


  #LOOP/MOVE PATTERN DETECTORS
    #If the opponent's last two moves were duck and reload (or vice-versa), ezClap tries to break the loop with a throw if they have snowballs. If ezClap has no snowballs, ezClap reloads.
    elif oppMovesSoFar[-2:] == ["DUCK", "RELOAD"] or oppMovesSoFar[-2:] == ["RELOAD", "DUCK"]:
      if mySnowballs > 1:
        result = "THROW"
      
      else:
        result = "RELOAD"

    #The next loop check checks the last three moves, which means that the restriction has been set so that it only gets considered if the game is at round 4 or later so that there is no "index out of range error." 
    elif rounds >= 3:
      #If the opponent's last three moves were reload-throw-reload, ezClap tries to break the loop with a duck. If ezClap doesn't have any ducks, ezClap throws as the next best option and reloads only as a last resort if it has no snowballs as well.
      if oppMovesSoFar[-3:] == ["RELOAD", "THROW", "RELOAD"]:
        if myDucksUsed < 5:
          result = "DUCK"
        else:
          if mySnowballs>0:
            result = "THROW"
          else:
            result = "RELOAD"

      #If the opponent's last three moves were throw-reload-throw, ezClap tries to break the loop with a throw if it has snowballs. If ezClap has no snowballs, ezClap reloads as the next best option. 
      elif oppMovesSoFar[-3:] == ["THROW", "RELOAD", "THROW"]:
        if mySnowballs>0:
          result = "THROW"
        else:
          result = "RELOAD"


      #Final else statements to catch all other situations so that ezClap doesn't return an empty value. In this situation, ezClap throws if it has snowballs and reloads if it doesn not. Since ducks are more valuable than snowballs, they are not listed.
      else:
        if mySnowballs>0:
          result = "THROW"

        else:
          result = "RELOAD"
    
    else:
      if mySnowballs>0:
        result = "THROW"

      else:
        result = "RELOAD"

                  

  #If the strategy that involves throwing all remaining snowballs that ezClap has gets initiated, this code checks to see if ezClap can change their move to throw at the last moment based on the variable targetlimit.

  # checks if the variable targetlimit is undefined
  try:
    targetlimit
    
  #if it is undefined, it gets initialized to 0 so no errors occur
  except NameError:
    targetlimit = 0

  #If the targetlimit is bigger or equal to the current round, ezClap changes their move to throw.
  if targetlimit >= rounds:
    result = "THROW"
  
  #Else, targetlimit gets reset to 0
  else:
    targetlimit = 0
  
  #The final move that ezClap comes up with gets returned here.
  return result
