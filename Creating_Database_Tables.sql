-- Création de la base de données
CREATE DATABASE ITThink;

-- Utilisation de la base de données
USE ITThink;

-- Table : Utilisateurs
CREATE TABLE Utilisateurs (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom_utilisateur VARCHAR(255) NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    autres_informations TEXT
);

-- Table : Catégories
CREATE TABLE Categories (
    id_categorie INT AUTO_INCREMENT PRIMARY KEY,
    nom_categorie VARCHAR(255) NOT NULL
);

-- Table : Sous-Catégories
CREATE TABLE SousCategories (
    id_sous_categorie INT AUTO_INCREMENT PRIMARY KEY,
    nom_sous_categorie VARCHAR(255) NOT NULL,
    id_categorie INT NOT NULL,
    FOREIGN KEY (id_categorie) REFERENCES Categories(id_categorie)
);

-- Table : Projets
CREATE TABLE Projets (
    id_projet INT AUTO_INCREMENT PRIMARY KEY,
    titre_projet VARCHAR(255) NOT NULL,
    description TEXT,
    id_categorie INT NOT NULL,
    id_sous_categorie INT NOT NULL,
    id_utilisateur INT NOT NULL,
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_categorie) REFERENCES Categories(id_categorie),
    FOREIGN KEY (id_sous_categorie) REFERENCES SousCategories(id_sous_categorie),
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateurs(id_utilisateur)
);

-- Table : Freelances
CREATE TABLE Freelances (
    id_freelance INT AUTO_INCREMENT PRIMARY KEY,
    nom_freelance VARCHAR(255) NOT NULL,
    competences TEXT,
    id_utilisateur INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateurs(id_utilisateur)
);

-- Table : Offres
CREATE TABLE Offres (
    id_offre INT AUTO_INCREMENT PRIMARY KEY,
    montant DECIMAL(10, 2) NOT NULL,
    delai INT NOT NULL,
    id_freelance INT NOT NULL,
    id_projet INT NOT NULL,
    FOREIGN KEY (id_freelance) REFERENCES Freelances(id_freelance),
    FOREIGN KEY (id_projet) REFERENCES Projets(id_projet)
);

-- Table : Témoignages
CREATE TABLE Temoignages (
    id_temoignage INT AUTO_INCREMENT PRIMARY KEY,
    commentaire TEXT NOT NULL,
    id_utilisateur INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateurs(id_utilisateur)
);


SHOW TABLES;