USE itthink;
-- Mise à jour des détails d’un projet
UPDATE Projets
SET titre_projet = 'Site E-commerce Pro', description = 'Site complet avec système de paiement'
WHERE id_projet = 1;


SELECT * FROM projets;