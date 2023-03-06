-- Créer un utilisateur avec des privilèges d'administrateur
CREATE USER 'ben'@'%' IDENTIFIED BY '1313';
GRANT ALL PRIVILEGES ON *.* TO 'ben'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '1313';
