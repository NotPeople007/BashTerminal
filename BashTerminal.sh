#! /usr/bin/bash
clear
MainMenu(){
  echo -e "1. Software manager\n0. Exit";
  read choice
}


exit=true

while [ $exit == true ]
do
  MainMenu;
  case $choice in
    1) source lib/SoftwareManager.sh; ;;
    0) echo "Bye!"; let exit=false; ;;
    *) echo "Wring choice!"; ;;
  esac

done