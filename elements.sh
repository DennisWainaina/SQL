#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"


# if no argument is entered
if [[ -z $1 ]]
then
echo -e "Please provide an element as an argument."
exit
fi


# if argument is a number
if [[ ! $1 =~ ^[0-9]+$ ]]
then
ELEMENT_NAME=$($PSQL "SELECT name FROM elements WHERE name='$1'")
ELEMENT_DIGIT=$($PSQL "SELECT atomic_number FROM elements WHERE name='$1'")
ELEMENT_SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE name='$1'")
ELEMENT_TYPE=$($PSQL "SELECT type FROM types FULL JOIN properties USING (type_id) FULL JOIN elements USING (atomic_number) WHERE name='$1'")
ATOMIC_MASS=$($PSQL "SELECT atomic_mass FROM properties FULL JOIN elements USING (atomic_number) WHERE name='$1'")
BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties FULL JOIN elements USING (atomic_number) WHERE name='$1'")
MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties FULL JOIN elements USING (atomic_number) WHERE name='$1'")

  # if the query is not empty
  if [[ ! -z $ELEMENT_NAME ]];
  then
  echo $ELEMENT_NAME $ELEMENT_DIGIT $ELEMENT_SYMBOL $ELEMENT_TYPE $ATOMIC_MASS $BOILING_POINT $MELTING_POINT | while IFS=" |" read ELEMENT_NAME ELEMENT_DIGIT ELEMENT_SYMBOL ELEMENT_TYPE ATOMIC_MASS BOILING_POINT MELTING_POINT; do
  echo  "The element with atomic number $ELEMENT_DIGIT is $ELEMENT_NAME ($ELEMENT_SYMBOL). It's a $ELEMENT_TYPE, with a mass of $ATOMIC_MASS amu. $ELEMENT_NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
  done
  
  else 

  # if the query is empty
  if [[ -z $ELEMENT_NAME ]];
  then

  ELEMENT_NAME=$($PSQL "SELECT name FROM elements WHERE symbol='$1' AND SYMBOL IS NOT NULL")
  ELEMENT_DIGIT=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$1'")
  ELEMENT_SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE symbol='$1'")
  ELEMENT_TYPE=$($PSQL "SELECT type FROM types FULL JOIN properties USING (type_id) FULL JOIN elements USING (atomic_number) WHERE symbol='$1'")
  ATOMIC_MASS=$($PSQL "SELECT atomic_mass FROM properties FULL JOIN elements USING (atomic_number) WHERE symbol='$1'")
  BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties FULL JOIN elements USING (atomic_number) WHERE symbol='$1'")
  MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties FULL JOIN elements USING (atomic_number) WHERE symbol='$1'")

  echo $ELEMENT_NAME $ELEMENT_DIGIT $ELEMENT_SYMBOL $ELEMENT_TYPE $ATOMIC_MASS $BOILING_POINT $MELTING_POINT | while IFS=" |" read ELEMENT_NAME ELEMENT_DIGIT ELEMENT_SYMBOL ELEMENT_TYPE ATOMIC_MASS BOILING_POINT MELTING_POINT; do
 echo  "The element with atomic number $ELEMENT_DIGIT is $ELEMENT_NAME ($ELEMENT_SYMBOL). It's a $ELEMENT_TYPE, with a mass of $ATOMIC_MASS amu. $ELEMENT_NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
 done
 
  fi
 fi
fi


# If argument is not a number
if [[ $1 =~ ^[0-9]+$ ]]
then
ATOMIC_NUMBER=$($PSQL "SELECT name FROM elements WHERE atomic_number=$1")
ATOMIC_DIGIT=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$1")
ATOMIC_SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$1")
ATOMIC_TYPE=$($PSQL "SELECT type FROM types FULL JOIN properties USING (type_id) FULL JOIN elements USING (atomic_number) WHERE atomic_number=$1")
ATOMIC_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$1")
BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$1")
MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$1")
echo $ATOMIC_NUMBER $ATOMIC_DIGIT $ATOMIC_SYMBOL $ATOMIC_TYPE $ATOMIC_MASS $BOILING_POINT $MELTING_POINT | while IFS=" |" read ATOMIC_NAME ATOMIC_DIGIT ATOMIC_SYMBOL ATOMIC_TYPE ATOMIC_MASS BOILING_POINT MELTING_POINT; do
 echo  "The element with atomic number $ATOMIC_DIGIT is$ATOMIC_NUMBER ($ATOMIC_SYMBOL). It's a $ATOMIC_TYPE, with a mass of $ATOMIC_MASS amu. $ATOMIC_NUMBER has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
 done
fi


