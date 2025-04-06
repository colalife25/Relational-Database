#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# ask for username
echo "Enter your username:"
read USERNAME

# check the existence of username
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

if [[ -z $USER_ID ]] 
then
  # new user
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # old user
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $USER_ID")
  echo Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi

# generate random number
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
NUMBER_OF_GUESSES=0

# prompt guess number
echo "Guess the secret number between 1 and 1000:"
while true
do
  read GUESS
  (( NUMBER_OF_GUESS++ ))

  # check input validility
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  if [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  else
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, number_of_guesses, secret_number) VALUES($USER_ID, $NUMBER_OF_GUESS, $SECRET_NUMBER)")
    echo You guessed it in $NUMBER_OF_GUESS tries. The secret number was $SECRET_NUMBER. Nice job!
    break
  fi
done