/*
 * Code de création de la bd du Planet Express et d'insertion des données de commandes. 
 * Utilisé pour l'atelier 6 et les suivants
 *
 * Fichier : planet_express.sql
 * Auteur : Olivier Belrose et Antoine Ouellette
 * Langage : SQL
 * Date : février 2022
 */

DROP DATABASE IF EXISTS RessourcesMonstrueuses;
CREATE DATABASE RessourcesMonstrueuses;
USE RessourcesMonstrueuses;

CREATE TABLE Salle (
	id_salle INTEGER PRIMARY KEY AUTO_INCREMENT,
    fonction VARCHAR(255),
    longueur FLOAT,
    largeur FLOAT,
    salle_suivante INTEGER,
    /* Contraintes */
    FOREIGN KEY (salle_suivante) REFERENCES Salle(id_salle) # fleche salle_suivante vers id_salle
);

CREATE TABLE Visite_salle (
	salle INTEGER,
    expedition INTEGER,
    moment_visite DATETIME,
    appreciation TEXT,
    /* Contraintes */
    PRIMARY KEY (salle, expedition),
    FOREIGN KEY (salle) REFERENCES Salle(id_salle) # fleche salle vers id_salle
);

CREATE TABLE Expedition (
	id_expedition INTEGER PRIMARY KEY AUTO_INCREMENT,
    nom_equipe VARCHAR(255),
    depart DATETIME,
    terminaison DATETIME
);

CREATE TABLE Aventurier (
	id_aventurier INTEGER PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255),
    classe VARCHAR(255),
    niveau TINYINT,
    point_vie INTEGER,
    attaque INTEGER
);

CREATE TABLE Expedition_aventurier (
	id_expedition INTEGER,
    id_aventurier INTEGER,
    /* Contraintes */
    PRIMARY KEY (id_expedition, id_aventurier),
    FOREIGN KEY (id_expedition) REFERENCES Expedition(id_expedition), # fleche id_expedition vers id_expedition
    FOREIGN KEY (id_aventurier) REFERENCES Aventurier(id_aventurier) # fleche id_aventurier vers id_aventurier
);

CREATE TABLE Coffre_tresor (
	id_coffre_tresor INTEGER PRIMARY KEY AUTO_INCREMENT,
	code_secret CHAR(64),
    salle INTEGER,
    /* Contraintes */
    FOREIGN KEY (salle) REFERENCES Salle(id_salle) # fleche salle vers id_salle
);

CREATE TABLE Ligne_coffre (
	coffre INTEGER,
	objet INTEGER,
    quantite INTEGER,
    /* Contraintes */
    PRIMARY KEY (coffre, objet),
    FOREIGN KEY (coffre) REFERENCES Coffre_tresor(id_coffre_tresor) # fleche coffre vers id_coffre_tresor
);

CREATE TABLE Objet (
	id_objet INTEGER PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255),
    valeur INT,
    masse FLOAT
);

CREATE TABLE Affectation_salle (
	monstre INTEGER,
    responsabilite INTEGER,
    salle INTEGER,
    debut_affectation DATETIME,
    fin_affectation DATETIME,
    /* Contraintes */
    PRIMARY KEY (monstre, salle),
    FOREIGN KEY (salle) REFERENCES Salle(id_salle), # fleche salle vers id_salle
    FOREIGN KEY (responsabilite) REFERENCES Responsabilite(id_responsabilite) # fleche responsabilite vers id_responsabilite
);






















