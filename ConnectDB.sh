#!/usr/bin/bash
#description for this script: Connect DB

#Connect DB 
#two approach 1)select DB 2)input user

#create array name DB to connect 
# arrDB = `((ls -F ./DB |  grep / | cut -f1 /))`
# echo $arrDB
# echo "Select Which Database need to connect"
# if [ -d ./DB ] 
# then 
#  arrDB="$(ls -F ./DB |  grep / | cut -d '/' -f1)"
#      if [ ${#arrDB} -ne 0 ] 
#      then   
#         select DB in $arrDB Exit
#             do
#              case $DB in 

#             done
#      else 
#       echo "Not Exist any DataBases"
#      fi
# else 
#  echo "Not Exist any DataBases"
# fi 

read -p "Please,Write Name Database need to connect " ConDBName
#check $ConDBName and check DB is exist or no 
#valid nanme 
if [ -d ./DB ] 
then
    if [ -d ./DB/$ConDBName ] 
    then
        #don't work source with cd 
        cd ./DB/$ConDBName
        
        #echo $ConDBName
    else
       echo "Not Exist this DataBase"
    fi
else 
  echo "Not Exist any DataBases"
fi 
# if exist DB change directory or no 
# because access DB
# if true exit DB 
# operation :
# - Create Table
# - List Tables
# - Drop Table
# - Insert into Table
# - Select From Table
# - Delete From Table
# - Update Table


#menu Operation
# echo "Select what do you do on Database "
# select operation in "Create Table" "List Tables" "Drop Table" "Insert into Table" "Select From Table" "Delete From Table" "Update Table"
# do
# echo $operation
# done