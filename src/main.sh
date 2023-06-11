#!/bin/bash

echo 'Bonjour ! Bienvenue chez McDelaf, service de sandwicherie à emporter ! Voici nos sandwiches :

jambon beurre
jambon fromage
poulet crudités
thon oeuf

'
read -p "Veuillez choisir votre sandwich:  " sandwich

echo 'Voici nos boissons :

eau
soda
jus de fruits

'

read -p "Veullez choisir une boisson:   " boisson

echo 'Récapitulatif de votre commande:  '
echo "sandwich $sandwich et $boisson"

