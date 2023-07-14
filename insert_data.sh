#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "truncate games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $YEAR != "year" ]]
then
WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")
#if winner is not in the table, add winner to teams
if [[ -z $WINNER_ID ]]
then
INSERT_TEAM_RESULTS=$($PSQL "insert into teams(name) values('$WINNER')")
#if insertion has done, get id
if [[ $INSERT_TEAM_RESULTS == "INSERT 0 1" ]]
then
WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")
fi
fi
#echo $WINNER, $WINNER_ID

OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
#if winner is not in the table, add winner to teams
if [[ -z $OPPONENT_ID ]]
then
INSERT_TEAM_RESULTS=$($PSQL "insert into teams(name) values('$OPPONENT')")
#if insertion has done, get id
if [[ $INSERT_TEAM_RESULTS == "INSERT 0 1" ]]
then
OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
fi
fi
#echo $WINNER, $OPPONENT, $WINNER_ID, $OPPONENT_ID

INSERT_GAMES_RESULTS=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
echo $INSERT_GAMES_RESULTS
fi
done
