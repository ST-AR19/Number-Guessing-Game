#! /bin/bash

#connect to SQL
PSQL="psql --username=freecodecamp --dbname=postgres -t --no-align -c"

#generate a random number
RANDOM_NUM=$(( RANDOM % 1000 + 1 ))

#initial game
GAME_INIT() {
  echo -n "Enter your username:"	
  read USERNAME
  USER_ID=$($PSQL "select user_id from users where username = '$USERNAME'")
  
  #first using
  if [[ -z $USER_ID ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERT_USER=$($PSQL "insert into users(username) values('$USERNAME')")
    USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")   
  
  #old user login
  else
    GAMES_PLAYED=$($PSQL "select count(*) from games where user_id=$USER_ID")
    BEST_GAME=$($PSQL "select min(attempt_times) from games where user_id=$USER_ID")
    if [[ -z $BEST_GAME ]]
    then
      BEST_GAME=0
    fi
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi
  echo "Guess the secret number between 1 and 1000:"
  GAME 0
}

#GAME
GAME() {
  NUM_OF_ATTEMPT=$1  
  read GUESS_NUM
  NUM_OF_ATTEMPT=$(( $NUM_OF_ATTEMPT + 1 ))
  
  #entry is not valid 
  if [[ ! $GUESS_NUM =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    GAME $NUM_OF_ATTEMPT
  fi

  #entry is valid
  if [[ $GUESS_NUM -lt $RANDOM_NUM ]] 
  then
    echo "It's higher than that, guess again:"
    GAME $NUM_OF_ATTEMPT
  elif [[ $GUESS_NUM -gt $RANDOM_NUM ]]
  then
    echo "It's lower than that, guess again:"
    GAME $NUM_OF_ATTEMPT
  
  #Insert data into the database after the guess is correct
  elif [[ $GUESS_NUM -eq $RANDOM_NUM ]]
  then
    echo "You guessed it in $NUM_OF_ATTEMPT tries. The secret number was $RANDOM_NUM. Nice job!"
    INSERT=$($PSQL "insert into games(user_id,number,attempt_times) values($USER_ID,$RANDOM_NUM,$NUM_OF_ATTEMPT)")
  fi
}

GAME_INIT
