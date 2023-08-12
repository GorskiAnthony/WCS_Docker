# Utilisation de l'image de base Node.js
FROM node:14

# Création d'un répertoire de travail dans le conteneur
WORKDIR /app

# Copie du package.json et du package-lock.json vers le répertoire de travail du conteneur
COPY package*.json ./

# Installation des dépendances du projet
RUN npm install

# Copie de tous les fichiers du répertoire local vers le répertoire de travail du conteneur
COPY . .

# Exposition du port sur lequel l'application écoute
EXPOSE 5500

# Commande à exécuter lorsque le conteneur démarre
CMD ["npm", "start"]
