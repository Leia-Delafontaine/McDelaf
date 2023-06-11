#!/bin/bash

#Functions to display sandwiches and drinks

display(){
    echo $1;
}

displayDishes(){
    echo 'Bonjour ! Bienvenue chez McDelaf, le service de sandwicherie à emporter';
    echo 'Voici nos sandwiches :';
    display '1: jambon beurre'
    display '2: poulet crudités'
    display '3: oeufs mayonnaise'

}

displayDrinks(){
    echo 'Voici nos boissons :'
    display '1: soda'
    display '2: eau gazeuse'
    display '3: eau minérale'
}


#Loop to choose a sandwich

while true
do
    clear;
    displayDishes;

    read -p "Veuillez choisir votre sandwich:  " dish

    if [ $dish -le 3 ]
    then
        echo 'Merci';
        sleep 1;
        break;
    fi

    echo 'Veuillez choisir parmi le choix 1, 2 ou 3';
    sleep 1;
done


#Loop to choose a drink

while true
do
    clear;
    displayDrinks;

    read -p "Veuillez choisir votre boisson : " drink

    if [ $drink -le 3 ]
    #mémo perso : solution pour un nombre compris dans une fourchette   [ $drink -lt 7 ] && [ $drink -gt 3 ]
    then
        echo 'Merci';
        sleep 1;
        break;
    fi

    echo 'veuillez choisir parmi le choix 1, 2 ou 3';
    sleep 1;
done

clear

#To give a recap of the order

display "Voici le récapitulatif de votre menu :"

case $dish in
    1)
        display 'Jambon beurre'
        ;;
    2)
        display 'poulet crudités'
        ;;
    3)
        display 'oeufs mayonnaise'
        ;;
esac

case $drink in
    1)
        display 'soda'
        ;;
    2)
        display 'eau gazeuse'
        ;;
    3)
        display 'eau minérale'
        ;;
esac
