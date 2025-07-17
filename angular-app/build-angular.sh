#!/bin/bash
# build-angular.sh

# Étape 1 : Installer les dépendances
echo "Installation des dépendances..."
npm install

# Étape 2 : Exécuter les tests sans watch
echo "Lancement des tests unitaires..."
ng test --watch=false

# Étape 3 : Construire le projet en mode production
echo "Build de l'application en production..."
ng build --configuration production

echo "✅ Build terminé."
