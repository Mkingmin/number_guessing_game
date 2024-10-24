#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
# define a function for guessing game
GUESS_GAME() {
  # random number between 1 and 1000
  RANDOM=123456
  SECRET_NUMBER=$(( $RANDOM % 1001 ))
  # insert new game
  NEW_GAME=$($PSQL "INSERT INTO games(user_id, secret_number) VALUES($USER_ID, $SECRET_NUMBER)")
  NEW_GAME_ID=$($PSQL "SELECT MAX(game_id) FROM games")
  # declare guess variable
  NUM_GUESS=""
  # declare tries variable
  TRIES=0
  # request input
  echo "Guess the secret number between 1 and 1000:"
}