-- Création de la table USERS : 
-- CREATE TABLE users (
-- id INTEGER PRIMARY KEY AUTOINCREMENT,
-- firstname TEXT NOT NULL,
-- lastname TEXT NOT NULL,
-- email TEXT NOT NULL UNIQUE 
-- );

-- CREATE TABLE edusign (
-- id INTEGER PRIMARY KEY AUTOINCREMENT,
-- firstname TEXT NOT NULL,
-- email TEXT NOT NULL UNIQUE,
-- created_at DATETIME NOT NULL
-- );

-- INSERT INTO users (firstname, lastname, email) VALUES ('Ada', 'Lovelace', 'ada@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Paul', 'Martin', 'paul@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Celine', 'Pierre', 'celine@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Awaleh', 'Samatar', 'awaleh@test.fr');

-- SELECT * FROM users;
-- SELECT * FROM edusign;
--DROP TABLE edusign;
 -- SELECT * FROM edusign;
--  CREATE TABLE edusign (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     user_id INTEGER NOT NULL,
--     created_at DATETIME NOT NULL,
--     FOREIGN KEY (user_id) REFERENCES users(id)
-- );

-- INSERT INTO edusign (user_id, created_at) VALUES (1, DATETIME('2024-05-30 09:30:00'));
 -- INSERT INTO edusign (user_id, created_at) VALUES (2, DATETIME('2024-05-30 09:30:00'));
--  INSERT INTO edusign (user_id, created_at) VALUES (3, DATETIME('2024-09-01 09:30:00'));
-- INSERT INTO edusign (user_id, created_at) VALUES (4, DATETIME('2024-09-01 09:30:00'));

 SELECT * FROM edusign;

