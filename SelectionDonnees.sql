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
SELECT fonction, longueur*largeur AS aire FROM Salle
	ORDER by longueur*largeur DESC
	LIMIT 1;
    
# Question C
SELECT arme FROM Humanoide
INNER JOIN Famille_monstre ON famille = id_famille
NATURAL JOIN Monstre
	WHERE code_employe = 'A320';
    
# Question D
SELECT nom FROM Monstre
/* Join salle */
INNER JOIN Affectation_salle ON id_monstre = monstre
INNER JOIN Salle ON salle = id_salle
/* join responsabilite */
INNER JOIN Responsabilite ON responsabilite = id_responsabilite
WHERE Salle.fonction = 'salle des explosifs'
	ORDER by Responsabilite.niveau_responsabilite DESC
	LIMIT 1;
    
# Question E
SELECT nom FROM Affectation_salle
INNER JOIN Monstre ON id_monstre = monstre
INNER JOIN Salle ON salle = id_salle
	WHERE fonction = 'refectoire louche'
		AND month(debut_affectation)>=5 #Entre mai
        AND month(debut_affectation)<=7;#Et juillet

# Question F (erreur? group by? 4/3)
SELECT nom, fonction, nom_equipe FROM Monstre
INNER JOIN Affectation_salle ON id_monstre = monstre
INNER JOIN Salle ON Affectation_salle.salle = Salle.id_salle
INNER JOIN Visite_salle ON Salle.id_salle = Visite_salle.salle
INNER JOIN Expedition ON expedition = id_expedition
	WHERE fonction = 'cachot humide'
		AND nom_equipe = 'girafes triomphantes';

# Question G
SELECT nom_equipe, count(id_aventurier), avg(niveau) FROM Aventurier
NATURAL JOIN Expedition_aventurier
NATURAL JOIN Expedition
	GROUP BY Expedition.id_expedition;

# Question H
SELECT sum(masse*quantite) FROM Ligne_coffre
INNER JOIN Coffre_tresor ON coffre = id_coffre_tresor
INNER JOIN Salle ON salle = id_salle
INNER JOIN Objet ON objet = id_objet
	WHERE fonction = 'caserne des goblins'
GROUP BY coffre;









