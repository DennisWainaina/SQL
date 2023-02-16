#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"


echo -e "\n~~~~~ MY SALON ~~~~~\n"

MAIN_MENU(){
  SERVICE_INFO=$($PSQL "SELECT service_id, name FROM services") # give services info
  echo -e "\nHere are the services we have available:"
  echo "$SERVICE_INFO" | while read SERVICE_ID BAR NAME
  do
    echo "$SERVICE_ID) $NAME"
  done
  echo -e "\nPick number of service what do you want?"
  read SERVICE_ID_SELECTED
  if [[ ! $SERVICE_ID_SELECTED == [1-5] ]]
  then
    echo "That is not a valid service number."
    
  else
    SERVICE_NAME_TO_SELECT=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED") 
  fi
  
  case $SERVICE_ID_SELECTED in
  1) CUT_MENU ;;
  2) COLOR_MENU ;;
  3) PERM_MENU ;;
  4) STYLE_MENU ;;
  5) TRIM_MENU ;;
  *) MAIN_MENU "I could not find that service. What would you like today?"
  esac
}
CUT_MENU(){
echo -e "\nWhat's your phone number?"

# Entering phone number
read CUSTOMER_PHONE

# if phone number not there
if [[ -z $CUSTOMER_PHONE ]]
then
MAIN_MENU "PLEASE ENTER A VALID PHONE NUMBER (xxx-xxx-xxxx)"

else
CHECKED_PHONE=$($PSQL "SELECT phone FROM customers WHERE phone='$CUSTOMER_PHONE'")

# if number is not in database
 if [[ -z $CHECKED_PHONE ]]
 then
 echo -e  "\nSorry I can't find your phone number what is your name? " 
 read CUSTOMER_NAME
 INSERT_CUSTOMER_INFO=$($PSQL "INSERT INTO customers(phone, name) VALUES ('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
 echo $INSERT_CUSTOMER_INFO
  echo -e "\nWhat time would you like your $SERVICE_NAME_TO_SELECT, '$CUSTOMER_NAME'\n"
 read SERVICE_TIME
 CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CHECKED_PHONE'")
 INSERT_APPOINTMENT_TIME=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED '$SERVICE_TIME'")
  else
  # if number is in database
  if [[ ! -z $CHECKED_PHONE ]]
  then
  CHECKED_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  echo -e "\nHello '$CHECKED_NAME'\n"
  echo -e "\nWhat time would you like your $SERVICE_NAME_TO_SELECT, '$CHECKED_NAME'\n"
  read SERVICE_TIME
  
  INSERT_APPOINTMENT_TIME=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_ITME')")
  fi

 fi
fi
}

COLOR_MENU(){
echo -e "\nWhat's your phone number?"

# Entering phone number
read CUSTOMER_PHONE

# if phone number not there
if [[ -z $CUSTOMER_PHONE ]]
then
MAIN_MENU "PLEASE ENTER A VALID PHONE NUMBER (xxx-xxx-xxxx)"

else
CHECKED_PHONE=$($PSQL "SELECT phone FROM customers WHERE phone='$CUSTOMER_PHONE'")

# if number is not in database
 if [[ -z $CHECKED_PHONE ]]
 then
 echo -e  "\nSorry I can't find your phone number what is your name? " 
 read CUSTOMER_NAME
 INSERT_CUSTOMER_INFO=$($PSQL "INSERT INTO customers(phone, name) VALUES ('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
 echo $INSERT_CUSTOMER_INFO
 echo -e "\nWhat time would you like your $SERVICE_NAME_TO_SELECT,$CUSTOMER_NAME\n"
 read SERVICE_TIME
 CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
 INSERT_APPOINTMENT_TIME=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID, '$SERVICE_TIME'")
 echo $INSERT_APPOINTMENT_TIME

  else
  # if number is in database
  if [[ ! -z $CHECKED_PHONE ]]
  then
  CHECKED_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  echo -e "\nHello '$CHECKED_NAME'\n"
  echo -e "\nWhat time would you like your $SERVICE_NAME_TO_SELECT, '$CHECKED_NAME'\n"
  read SERVICE_TIME
  
  INSERTED_APPOINTMENT_TIME=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  echo $INSERTED_APPOINTMENT_TIME
  fi

 fi
fi
}
PERM_MENU(){
echo -e "\nWhat's your phone number?"

# Entering phone number
read CUSTOMER_PHONE

# if phone number not there
if [[ -z $CUSTOMER_PHONE ]]
then
MAIN_MENU "PLEASE ENTER A VALID PHONE NUMBER (xxx-xxx-xxxx)"

else
CHECKED_PHONE=$($PSQL "SELECT phone FROM customers WHERE phone='$CUSTOMER_PHONE'")

# if number is not in database
 if [[ -z $CHECKED_PHONE ]]
 then
 echo -e  "\nSorry I can't find your phone number what is your name? " 
 read CUSTOMER_NAME
 INSERT_CUSTOMER_INFO=$($PSQL "INSERT INTO customers(phone, name) VALUES ('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
 echo $INSERT_CUSTOMER_INFO
 echo "\nWhat time would you like your $SERVICE_ID_SELECTED, '$CUSTOMER_NAME'\n"

  else
  # if number is in database
  if [[ ! -z $CHECKED_PHONE ]]
  then
  CHECKED_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  echo -e "\nHello '$CHECKED_NAME'\n"
  echo -e "\nWhat time would you like your $SERVICE_NAME_TO_SELECT, '$CHECKED_NAME'\n"
  read SERVICE_TIME
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CHECKED_NAME'")
  INSERTED_APPOINTMENT_TIME=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  fi

 fi
fi
}
STYLE_MENU(){
echo -e "\nWhat's your phone number?"

# Entering phone number
read CUSTOMER_PHONE

# if phone number not there
if [[ -z $CUSTOMER_PHONE ]]
then
MAIN_MENU "PLEASE ENTER A VALID PHONE NUMBER (xxx-xxx-xxxx)"

else
CHECKED_PHONE=$($PSQL "SELECT phone FROM customers WHERE phone='$CUSTOMER_PHONE'")

# if number is not in database
 if [[ -z $CHECKED_PHONE ]]
 then
 echo -e  "\nSorry I can't find your phone number what is your name? " 
 read CUSTOMER_NAME
 INSERT_CUSTOMER_INFO=$($PSQL "INSERT INTO customers(phone, name) VALUES ('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
 echo $INSERT_CUSTOMER_INFO
 echo "\nWhat time would you like your $SERVICE_ID_SELECTED, '$CUSTOMER_NAME'\n"

  else
  # if number is in database
  if [[ ! -z $CHECKED_PHONE ]]
  then
  CHECKED_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  echo -e "\nHello '$CHECKED_NAME'\n"
  echo -e "\nWhat time would you like your$SERVICE_NAME_TO_SELECT,'$CHECKED_NAME'\n"
  read SERVICE_TIME
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CHECKED_NAME'")
  INSERTED_APPOINTMENT_TIME=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  fi

 fi
fi
}
TRIM_MENU(){
echo -e "\nWhat's your phone number?"

# Entering phone number
read CUSTOMER_PHONE

# if phone number not there
if [[ -z $CUSTOMER_PHONE ]]
then
MAIN_MENU "PLEASE ENTER A VALID PHONE NUMBER (xxx-xxx-xxxx)"

else
CHECKED_PHONE=$($PSQL "SELECT phone FROM customers WHERE phone='$CUSTOMER_PHONE'")

# if number is not in database
 if [[ -z $CHECKED_PHONE ]]
 then
 echo -e  "\nSorry I can't find your phone number what is your name? " 
 read CUSTOMER_NAME
 INSERT_CUSTOMER_INFO=$($PSQL "INSERT INTO customers(phone, name) VALUES ('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
 echo $INSERT_CUSTOMER_INFO
 echo "\nWhat time would you like your $SERVICE_ID_SELECTED, '$CUSTOMER_NAME'\n"

  else
  # if number is in database
  if [[ ! -z $CHECKED_PHONE ]]
  then
  CHECKED_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
  echo -e "\nHello '$CHECKED_NAME'\n"
  echo -e "\nWhat time would you like your $SERVICE_NAME_TO_SELECT, '$CHECKED_NAME'\n"
  read SERVICE_TIME
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CHECKED_NAME'")
  INSERTED_APPOINTMENT_TIME=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  fi

 fi
fi
}

MAIN_MENU
