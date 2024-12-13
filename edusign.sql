-- Etape 2 : Structuration de la base de données

-- Création de la table USERS : 
-- CREATE TABLE users (
-- id INTEGER PRIMARY KEY AUTOINCREMENT,
-- firstname TEXT NOT NULL,
-- lastname TEXT NOT NULL,
-- email TEXT NOT NULL UNIQUE 
-- );

-- Création des apprenantes dans la table users
-- INSERT INTO users (firstname, lastname, email) VALUES ('Ada', 'Lovelace', 'ada@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Paul', 'Martin', 'paul@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Celine', 'Pierre', 'celine@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Awaleh', 'Samatar', 'awaleh@test.fr');


-- Création d'une nouvelle table edusign avec un FOREIGN KEY (user_id)
--  CREATE TABLE edusign (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     user_id INTEGER NOT NULL,
--     created_at DATETIME NOT NULL,
--     FOREIGN KEY (user_id) REFERENCES users(id)
-- );

 -- Mise à jour des apprenantes de la table user afin de suivre l'énonce de l'excercice
 -- UPDATE users SET firstname='Beatrice' WHERE id=2;
-- UPDATE users SET lastname='Worsley' WHERE id=2;
-- UPDATE users SET email='bea@test.fr' WHERE id=2;
-- UPDATE users SET firstname='Bella' WHERE id=3;
-- UPDATE users SET lastname='Guerin' WHERE id=3;
-- UPDATE users SET email='bella@test.fr' WHERE id=3;
-- UPDATE users SET firstname='Barbara' WHERE id=4;
-- UPDATE users SET lastname='Chase' WHERE id=4;
-- UPDATE users SET email='barbara@test.fr' WHERE id=4;


 -- 1. Sélectionner toutes les lignes de la table users
 -- SELECT * FROM users;

 -- 2. Sélectionner uniquement la ligne où le prénom est Ada dans la table users
-- SELECT * FROM users WHERE firstname = 'Ada';

-- 3. Sélectionner les lignes dont la première lettre du prénom est un B dans la table users
 -- SELECT * FROM users WHERE firstname LIKE 'B%';

-- 4. Compter le nombre de ligne qu’il y a dans la table users
-- SELECT COUNT(*) AS [nombre des lignes] FROM users;

-- 5. Compter le nombre de ligne dont la première lettre du prénom est un B dans la table users
     -- SELECT COUNT(firstname) FROM users WHERE firstname LIKE 'B%';
-- 6. Afficher uniquement la colonne contenant le prénom de la table users.
     -- SELECT firstname FROM users;
 -- Niveau moyen
-- 1. Insérer une ligne dans la table edusign qui correspond à la user Ada avec comme date de signature le 2024-05-30 09:30:00
     -- INSERT INTO edusign (user_id, created_at) VALUES (1, DATETIME('2024-05-30 09:30:00'));

-- 2. Insérer une ligne dans la table edusign qui correspond à la user Bella avec comme date de signature le 2024-05-30 09:30:00
         -- INSERT INTO edusign (user_id, created_at) VALUES (3, DATETIME('2024-05-30 09:30:00'));

-- 3. Insérer toutes les lignes de la table users dans la table edusign avec pour date de signature le 2024-09-01 09:30:00
    -- INSERT INTO edusign (user_id, created_at) VALUES (1, DATETIME('2024-09-01 09:30:00'));
    -- INSERT INTO edusign (user_id, created_at) VALUES (4, DATETIME('2024-09-01 09:30:00'));
    -- INSERT INTO edusign (user_id, created_at) VALUES (2, DATETIME('2024-09-01 09:30:00'));
    -- INSERT INTO edusign (user_id, created_at) VALUES (3, DATETIME('2024-05-30 09:30:00'));

-- 4. Sélectionner toutes les lignes de la table edusign ordonnées par date de signature de la plus récente à la plus ancienne et par user_id ascendant
      -- SELECT * FROM edusign ORDER BY created_at DESC, user_id ASC;

 -- 5. Sélectionner toutes les lignes de la table edusign dont la date est 2024-05-30 09:30:00
       --  SELECT * FROM edusign WHERE created_at = '2024-05-30 09:30:00';

-- Niveau moyen+ (bonus)

-- 1. Dans la table edusign, afficher le nombre d’apprenantes par date
    --  SELECT created_at, COUNT(*) AS [Nombre d’apprenantes] FROM edusign GROUP BY created_at;

 -- 2. Compter le nombre de ligne au sein de la table edusign dont le prénom est Bella, le nom de la colonne finale doit être volume
     -- SELECT COUNT (*) AS [Volume] FROM edusign JOIN users ON edusign.user_id = users.id WHERE firstname='Bella';

