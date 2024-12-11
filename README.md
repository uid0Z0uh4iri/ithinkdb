# Base de Données ITThink

Ce projet concerne la base de données utilisée pour la plateforme **ITThink**, une application permettant de connecter des freelances à des projets. La base de données est au cœur de cette application, gérant les utilisateurs, les projets, les offres, et les témoignages.

## 🗂️ Structure de la Base de Données

La base de données est structurée autour de plusieurs tables principales qui stockent les informations essentielles pour le bon fonctionnement de la plateforme.

### 1. **Users (Utilisateurs)**
Cette table contient les informations des utilisateurs de la plateforme (freelances et entreprises).

| **Champ**        | **Type**     | **Description**                            |
|------------------|--------------|--------------------------------------------|
| `id`             | INT          | Identifiant unique de l'utilisateur        |
| `username`       | VARCHAR(255) | Nom d'utilisateur (unique)                |
| `email`          | VARCHAR(255) | Adresse email (unique)                    |
| `password_hash`  | VARCHAR(255) | Mot de passe crypté                        |
| `role`           | ENUM         | Rôle de l'utilisateur (ex: freelance, entreprise) |
| `created_at`     | TIMESTAMP    | Date et heure de création du compte        |

### 2. **Projects (Projets)**
Cette table contient les informations sur les projets créés par les entreprises.

| **Champ**        | **Type**     | **Description**                            |
|------------------|--------------|--------------------------------------------|
| `id`             | INT          | Identifiant unique du projet               |
| `title`          | VARCHAR(255) | Titre du projet                           |
| `description`    | TEXT         | Description du projet                     |
| `category_id`    | INT          | Identifiant de la catégorie du projet      |
| `user_id`        | INT          | Identifiant de l'utilisateur ayant créé le projet (référence à la table `Users`) |


### 3. **Categories (Catégories)**
Cette table contient les différentes catégories de projets (ex : développement web, design graphique, etc.).

| **Champ**        | **Type**     | **Description**                            |
|------------------|--------------|--------------------------------------------|
| `id`             | INT          | Identifiant unique de la catégorie         |
| `name`           | VARCHAR(255) | Nom de la catégorie                        |

### 4. **Offers (Offres)**
Cette table contient les offres soumises par les freelances pour les projets.

| **Champ**        | **Type**     | **Description**                            |
|------------------|--------------|--------------------------------------------|
| `id`             | INT          | Identifiant unique de l'offre              |
| `project_id`     | INT          | Identifiant du projet associé (référence à la table `Projects`) |
| `freelancer_id`  | INT          | Identifiant du freelance soumettant l'offre (référence à la table `Users`) |
| `rate`           | DECIMAL(10, 2)| Tarif proposé pour le projet               |
| `description`    | TEXT         | Description de l'offre                     |


### 5. **Testimonials (Témoignages)**
Cette table contient les témoignages laissés par les utilisateurs concernant les projets ou freelances.

| **Champ**        | **Type**     | **Description**                            |
|------------------|--------------|--------------------------------------------|
| `id`             | INT          | Identifiant unique du témoignage           |
| `user_id`        | INT          | Identifiant de l'utilisateur qui laisse le témoignage (référence à la table `Users`) |
| `project_id`     | INT          | Identifiant du projet concerné (référence à la table `Projects`) |
| `content`        | TEXT         | Contenu du témoignage                      |


### 6. **Freelancers (Freelances)**
Cette table contient des informations supplémentaires sur les freelances (compétences, expérience, etc.).

| **Champ**        | **Type**     | **Description**                            |
|------------------|--------------|--------------------------------------------|
| `id`             | INT          | Identifiant unique du freelance            |
| `user_id`        | INT          | Identifiant de l'utilisateur (référence à la table `Users`) |
| `skills`         | TEXT         | Compétences du freelance                   |
| `experience`     | TEXT         | Expérience professionnelle du freelance    |

## 🛠️ Installation et Configuration

1. **Clonez le repository** contenant le fichier SQL de la base de données:
   ```bash
   git clone https://github.com/uid0Z0uh4iri/ithinkdb.git

   Créez la base de données: Créez une nouvelle base de données avec le nom que vous souhaitez (ex. itthink_db).

Importez le fichier SQL: Utilisez un outil comme phpMyAdmin, MySQL Workbench, ou la ligne de commande pour importer le fichier SQL. Par exemple :

bash
Copier le code
mysql -u root -p itthink_db < database.sql



Configurez la connexion à la base de données: Si nécessaire, configurez la connexion à la base de données dans votre application backend (fichier de configuration .env).

📊 Diagramme de la Base de Données
Un diagramme de la base de données est disponible pour vous aider à visualiser la structure. Vous pouvez le trouver dans le fichier db-diagram.png ou consulter le schéma UML.

🚀 Utilisation
La base de données peut être utilisée avec le backend de l'application ITThink pour gérer les utilisateurs, projets, freelances, offres et témoignages.

Ajoutez des utilisateurs pour enregistrer des freelances et des entreprises.
Créez des projets et assignez-les à des catégories.
Soumettez des offres par les freelances pour les projets.
Ajoutez des témoignages pour évaluer les freelances et les projets.
