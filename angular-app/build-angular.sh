#!/bin/bash
# build-angular.sh

# Installation des dépendances
echo "Installation des dépendances..."
npm install

# Exécuter les tests sans watch
echo "Lancement des tests unitaires..."
ng test --watch=false

# Construire le projet en mode production
echo "Build de l'application en production..."
ng build --configuration production

echo "Build terminé"
