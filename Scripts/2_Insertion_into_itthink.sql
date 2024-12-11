USE itthink;

-- Insertion d’un utilisateur
INSERT INTO Utilisateurs (nom_utilisateur, mot_de_passe, email, autres_informations)
VALUES ('Mohamed Zouhairi', 'password_hashed', 'mohamed@zouhairi.com', 'Informations additionnelles');

-- Insertion d’une catégorie
INSERT INTO Categories (nom_categorie)
VALUES ('Développement Web');

-- Insertion d’une sous-catégorie
INSERT INTO SousCategories (nom_sous_categorie, id_categorie)
VALUES ('Frontend', 1);

-- Insertion d’un projet
INSERT INTO Projets (titre_projet, description, id_categorie, id_sous_categorie, id_utilisateur)
VALUES ('Site E-commerce', 'Création d’un site e-commerce complet', 1, 1, 1);

-- Insertion d’un freelance
INSERT INTO Freelances (nom_freelance, competences, id_utilisateur)
VALUES ('Jane Smith', 'HTML, CSS, JavaScript', 1);

-- Insertion d’une offre
INSERT INTO Offres (montant, delai, id_freelance, id_projet)
VALUES (500.00, 30, 1, 1);

-- Insertion d’un témoignage
INSERT INTO Temoignages (commentaire, id_utilisateur)
VALUES ('Service excellent!', 1);


SELECT * FROM offres
