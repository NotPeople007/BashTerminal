#! /usr/bin/bash

SMMenu(){
  echo -e "1. Install\n2. Search\n3. Remove\n4. Update\n5. Repolist\n0. Exit"
  read choice
}

Install(){
  read -p "Enter packet to install ===> " packetname 
  yum install $packetname
}

smExit=true

while [ $smExit == true ]
do
  clear
  SMMenu;
  case $choice in
    1) Install; ;;
    0) echo "Back to main menu."; let smExit=false; ;;
    *) echo "Wrong choice!"; ;;
  esac
done