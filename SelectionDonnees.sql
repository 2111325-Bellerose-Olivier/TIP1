/*
 * Code de sélection des données de la bd pour Donjon Inc.
 *
 * Fichier : CreationDonnees.sql
 * Auteur : Olivier Belrose et Antoine Ouellette
 * Langage : SQL
 * Date : mars 2022
 */
 
USE RessourcesMonstrueuses;

# Question A
SELECT nom, numero_ass_maladie FROM Monstre
NATURAL JOIN Famille_monstre
INNER JOIN Humanoide ON id_famille = famille;

# Question B
SELECT id_salle, longueur*largeur AS aire FROM Salle
	ORDER by longueur*largeur DESC
	LIMIT 1;