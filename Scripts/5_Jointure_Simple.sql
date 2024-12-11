-- Récupérer les détails des projets liés à une catégorie spécifique
SELECT Projets.titre_projet, Projets.description, Categories.nom_categorie
FROM Projets
INNER JOIN Categories ON Projets.id_categorie = Categories.id_categorie
WHERE Categories.nom_categorie = 'Développement Web';

-- Récupérer les offres et les freelances associés à un projet
SELECT Offres.montant, Offres.delai, Freelances.nom_freelance
FROM Offres
INNER JOIN Freelances ON Offres.id_freelance = Freelances.id_freelance
WHERE Offres.id_projet = 1;
