/*
 * Code d'insertion des données de la bd pour Donjon Inc.
 *
 * Fichier : InsertionDonnees.sql
 * Auteur : Olivier Belrose et Antoine Ouellette
 * Langage : SQL
 * Date : mars 2022
 */
 
USE RessourcesMonstrueuses;

INSERT INTO Famille_monstre (id_famille, nom_famille, point_vie_maximal, degat_base) VALUES
	(1, 'Zombie', 12, 3),
	(2, 'Zombie de Troll', 36, 8),
	(3, 'Vampire', 42, 6),
	(4, 'Liche', 86, 9),
	(5, 'Liche ensorceleuse', 65, 15),
	(6, 'Djinn', 29, 9),
	(7, 'Efrit', 37, 6),
	(8, 'Efrit de Pandemonium', 55, 12),
	(9, 'Goblin', 7, 2),
	(10, 'Hobgobelin', 15, 4),
	(11, 'Orque', 12, 4),
	(12, 'Kobold', 6, 2);
    
INSERT INTO Humanoide (id_humanoide, famille, arme, intelligence) VALUES
	(1, 9, 'Dague emoussee', 9),
	(2, 10, 'Cimeterre incurvee', 10),
	(3, 11, 'Poigne de fer', 6),
	(4, 12, 'Lance', 13);
    
INSERT INTO Mort_vivant (id_mort_vivant, famille, vulnerable_soleil, infectieux) VALUES
	(1, 1, 0, 0),
	(2, 2, 0, 0),
	(3, 3, 1, 1),
	(4, 4, 1, 0),
	(5, 5, 1, 0);
    
INSERT INTO Elementaire (id_elementaire, famille, element, taille) VALUES
	(1, 6, 'air', 'moyen'),
	(2, 7, 'feu', 'rikiki'),
	(3, 8, 'feu', 'colossal');
    
INSERT INTO Monstre (id_monstre, nom, code_employe, point_vie, attaque, numero_ass_maladie, id_famille, experience) VALUES
	(1, 'Carl', 'C003', 12, 3, 'CARL 5606 3111', 1, 0),
	(2, 'Boris', 'B004', 12, 3, 'BORI 5875 3527', 1, 0),
	(3, 'Edward Cullen', 'E001', 36, 8, 'EDWA 4982 1003', 3, 12),
	(4, 'Morgoth', 'M007', 36, 8, 'MORG 8923 6524', 2, 15),
	(5, 'Syra', 'S024', 42, 6, 'SYRA 9791 7455', 4, 18),
	(6, 'Néphérite', 'N888', 86, 9, 'NÉPH 9879 6949', 5, 120),
	(7, 'Garry', 'G420', 7, 2, 'GARR 2687 2815', 9, 5),
	(8, 'Jerry', 'J420', 7, 2, 'JERR 9428 2918', 9, 5),
	(9, 'Terry', 'T420', 7, 2, 'TERR 7754 8029', 9, 5),
	(10, 'Larry', 'L420', 7, 2, 'LARR 3540 8390', 9, 5),
	(11, 'Molustus', 'M666', 55, 12, 'MOLU 5965 1164', 8, 25),
	(12, 'Combustus', 'C457', 55, 12, 'COMB 1235 5017', 8, 34),
	(13, 'Aero', 'A875', 29, 9, 'AERO 6682 1603', 6, 19),
	(14, 'Miro', 'M442', 29, 9, 'MIRO 8066 2007', 6, 0),
	(15, 'Nefustus', 'N410', 37, 6, 'NEFU 9123 3159', 7, 12),
	(16, 'Albertus', 'A002', 37, 6, 'ALBE 4055 3115', 7, 4),
	(17, 'Clyde', 'C876', 15, 4, 'CLYD 4232 5481', 10, 3),
	(18, 'Bonnie', 'B452', 15, 4, 'BONN 9211 5333', 10, 8),
	(19, 'Korg', 'K374', 12, 4, 'KORG 9518 8644', 11, 5),
	(20, 'Buld', 'B350', 12, 4, 'BULD 6936 3187', 11, 7),
	(21, 'Norm', 'N583', 12, 4, 'NORM 5410 5440', 11, 9),
	(22, 'Ywan', 'Y690', 12, 4, 'YWAN 6347 6248', 11, 15),
	(23, 'Molg', 'M256', 12, 4, 'MOLG 2696 5245', 11, 2),
	(24, 'Euld', 'E248', 12, 4, 'EULD 7169 3555', 11, 0),
	(25, 'Bizomo', 'B754', 6, 2, 'BIZO 3762 7149', 12, 0),
	(26, 'Kallioko', 'K475', 6, 2, 'KALL 8143 5343', 12, 3),
	(27, 'Ariama', 'A320', 6, 2, 'ZORI 2256 9932', 12, 2),
	(28, 'Burt', 'B867', 36, 8, 'BURT 7912 6165', 2, 21),
	(29, 'Larry', 'L920', 42, 6, 'LARR 6664 3021', 3, 14),
	(30, 'Zoriama', 'Z687', 86, 9, 'ZORI 9266 3075', 4, 2);
    
INSERT INTO Responsabilite (id_responsabilite, titre, niveau_responsabilite) VALUES
	(1, 'chef d\'equipe', 10),
	(2, 'armurier', 6),
	(3, 'cuisinier', 5),
	(4, 'depouilleur de cadavres', 2),
	(5, 'garde du tresor', 4),
	(6, 'appat de guet-apens', 1),
	(7, 'commissionnaire', 5),
	(8, 'comptable', 3),
	(9, 'representant d\'assurance', 7),
	(10, 'representant syndical', 5),
	(11, 'garde de la porte', 5),
	(12, 'larbin', 2);
    
INSERT INTO Objet (id_objet, nom, valeur, masse) VALUES
	(1, 'arc du peureux', 2500, 1.5),
	(2, 'armure de nain', 50000, 8),
	(3, 'bandeau decoratif', 30, 0.5),
	(4, 'baton de magie mineure', 8000, 2),
	(5, 'casque aveuglant', 3500, 3.5),
	(6, 'chaudiere trouee', 125, 2),
	(7, 'cle rouillee sans etiquette', 50, 0.1),
	(8, 'constitution du mulet', 450, 0.25),
	(9, 'dague de la douleur', 175, 1.75),
	(10, 'endurance de la fourmis', 2000, 0.25),
	(11, 'epee vengeresse', 15000, 3.5),
	(12, 'epieux epnieux', 45000, 7),
	(13, 'force de l\'elephant', 2000, 0.25),
	(14, 'force du sanglier', 450, 0.25),
	(15, 'fourchette du paysan', 3, 0.25),
	(16, 'hache rouillee', 300, 4),
	(17, 'harnois glorieux', 125000, 19),
	(18, 'haume du prestige', 15000, 5),
	(19, 'livre humide', 1, 3),
	(20, 'main de singe', 1400, 0.25),
	(21, 'meule de fromage millenaire', 42, 1),
	(22, 'onesie du voleur', 18000, 3),
	(23, 'pierre à aiguisee', 3, 0.1),
	(24, 'plume d\'oiseau exotique', 250, 0.1),
	(25, 'potion de naturopathie', 25, 0.25),
	(26, 'potion de qi', 600, 0.25),
	(27, 'potion de qi over 9000', 50000, 0.25),
	(28, 'potion de soin intensifs', 875, 0.25),
	(29, 'sac de couchage usage', 12, 1.5),
	(30, 'tasse a cafe', 5, 0.25),
	(31, 'torche consummee', 1, 0.75),
	(32, 'veste rapiecee', 50, 1),
	(33, 'veston leopard', 2500, 1.5);
    
INSERT INTO Salle (id_salle, fonction, longueur, largeur) VALUES
	(1, 'salle des explosifs', 8, 6),
	(2, 'refectoire louche', 25, 20),
	(3, 'cachot humide', 3, 3),
	(4, 'caserne des goblins', 6, 6),
	(5, 'entree secrete - ouest', 2.5, 3),
	(6, 'salle de repos', 12, 10),
	(7, 'salle des coffres', 8, 5.5),
	(8, 'armurerie', 12.5, 15),
	(9, 'poste de garde', 4, 3.5),
	(10, 'bureaux administratifs', 6, 5.5),
	(11, 'dortoires', 15.5, 20),
	(12, 'salle des incantations demoniaques', 8, 8),
	(13, 'salle des incantations pas trop demoniaques', 7, 7);

UPDATE Salle SET salle_suivante = 5 WHERE id_salle = 1;
UPDATE Salle SET salle_suivante = 9 WHERE id_salle = 2;
UPDATE Salle SET salle_suivante = 1 WHERE id_salle = 3;
UPDATE Salle SET salle_suivante = 3 WHERE id_salle = 4;
UPDATE Salle SET salle_suivante = 11 WHERE id_salle = 5;
UPDATE Salle SET salle_suivante = 4 WHERE id_salle = 6;
UPDATE Salle SET salle_suivante = 12 WHERE id_salle = 7;
UPDATE Salle SET salle_suivante = 7 WHERE id_salle = 8;
UPDATE Salle SET salle_suivante = 6 WHERE id_salle = 9;
UPDATE Salle SET salle_suivante = 13 WHERE id_salle = 10;
UPDATE Salle SET salle_suivante = 10 WHERE id_salle = 11;
UPDATE Salle SET salle_suivante = 8 WHERE id_salle = 13;

INSERT INTO Affectation_salle (id_affectation, monstre, responsabilite, salle, debut_affectation, fin_affectation) VALUES
	(1, 11, 1, 1, '1082-06-26 04:00:00', '1082-08-06 12:00:00'),
	(2, 15, 2, 1, '1082-06-07 04:45:00', '1082-08-22 00:45:00'),
	(3, 19, 1, 2, '1082-06-15 08:30:00', '1082-09-24 08:00:00'),
	(4, 20, 6, 2, '1082-04-03 20:30:00', '1082-08-24 16:00:00'),
	(5, 21, 4, 2, '1082-06-02 00:00:00', '1082-09-25 08:30:00'),
	(6, 22, 11, 2, '1082-06-02 08:30:00', '1082-08-05 00:00:00'),
	(7, 23, 11, 2, '1082-05-02 08:00:00', '1082-08-18 00:45:00'),
	(8, 24, 10, 2, '1082-05-15 00:45:00', '1082-09-04 08:15:00'),
	(9, 25, 11, 13, '1082-05-07 20:15:00', '1082-09-02 16:45:00'),
	(10, 26, 11, 13, '1082-06-14 12:45:00', '1082-08-27 08:30:00'),
	(11, 27, 11, 13, '1082-04-13 08:00:00', '1082-09-12 00:45:00'),
	(12, 7, 2, 4, '1082-04-29 12:15:00', '1082-08-20 04:30:00'),
	(13, 8, 2, 4, '1082-04-04 04:00:00', '1082-08-04 08:30:00'),
	(14, 9, 6, 6, '1082-04-19 04:15:00', '1082-09-02 20:30:00'),
	(15, 10, 6, 6, '1082-05-23 00:15:00', '1082-09-17 20:15:00'),
	(16, 17, 5, 7, '1082-05-01 04:15:00', '1082-09-25 12:15:00'),
	(17, 18, 5, 7, '1082-06-23 00:30:00', '1082-08-01 00:30:00'),
	(18, 6, 10, 10, '1082-04-10 04:00:00', '1082-09-10 04:45:00'),
	(19, 1, 6, 11, '1082-04-01 20:30:00', '1082-08-22 16:45:00'),
	(20, 2, 11, 11, '1082-04-19 12:00:00', '1082-09-30 08:15:00'),
	(21, 3, 11, 11, '1082-06-25 04:00:00', '1082-08-14 00:45:00'),
	(22, 12, 9, 10, '1082-04-30 20:15:00', '1082-08-04 20:30:00'),
	(23, 4, 11, 5, '1082-06-23 08:00:00', '1082-08-03 16:00:00'),
	(24, 28, 11, 5, '1082-06-27 20:00:00', '1082-08-18 16:45:00'),
	(25, 5, 1, 3, '1082-04-16 12:00:00', '1082-09-26 16:45:00'),
	(26, 13, 11, 9, '1082-06-18 16:15:00', '1082-09-16 16:30:00'),
	(27, 30, 1, 9, '1082-05-24 04:45:00', '1082-08-19 16:00:00'),
	(28, 29, 2, 8, '1082-06-19 00:15:00', '1082-09-09 08:30:00'),
	(29, 14, 1, 12, '1082-06-07 04:15:00', '1082-09-25 00:15:00'),
	(30, 16, 11, 12, '1082-04-07 08:00:00', '1082-09-25 04:30:00'),
	(31, 25, 1, 8, '1082-08-06 12:00:00', '1082-12-29 12:00:00'),
	(32, 26, 2, 8, '1082-08-22 00:45:00', '1082-11-15 04:30:00'),
	(33, 27, 2, 8, '1082-09-24 08:00:00', '1082-11-11 04:30:00'),
	(34, 29, 5, 7, '1082-08-24 16:00:00', '1082-12-01 04:30:00'),
	(35, 4, 1, 7, '1082-09-25 08:30:00', '1082-12-08 08:30:00'),
	(36, 12, 10, 10, '1082-08-05 00:00:00', '1082-12-11 12:30:00'),
	(37, 14, 7, 10, '1082-08-18 00:45:00', '1082-12-29 16:15:00'),
	(38, 30, 11, 5, '1082-09-04 08:15:00', '1082-11-04 00:15:00'),
	(39, 17, 11, 1, '1082-09-02 16:45:00', '1082-11-28 12:30:00'),
	(40, 18, 11, 1, '1082-08-27 08:30:00', '1082-11-20 20:00:00'),
	(41, 11, 12, 12, '1082-09-12 00:45:00', '1082-11-24 16:00:00'),
	(42, 15, 12, 12, '1082-08-20 04:30:00', '1082-12-29 20:00:00'),
	(43, 6, 1, 12, '1082-08-04 08:30:00', '1082-11-20 04:45:00'),
	(44, 19, 1, 6, '1082-09-02 20:30:00', '1082-12-23 00:30:00'),
	(45, 20, 4, 6, '1082-09-17 20:15:00', '1082-12-25 04:00:00'),
	(46, 21, 12, 6, '1082-09-25 12:15:00', '1082-12-28 20:30:00'),
	(47, 22, 6, 6, '1082-08-01 00:30:00', '1082-11-02 00:30:00'),
	(48, 23, 11, 6, '1082-09-10 04:45:00', '1082-12-12 04:15:00'),
	(49, 24, 11, 6, '1082-08-22 16:45:00', '1082-12-10 08:15:00'),
	(50, 28, 11, 9, '1082-09-30 08:15:00', '1082-11-26 20:15:00'),
	(51, 7, 12, 2, '1082-08-14 00:45:00', '1082-11-07 00:45:00'),
	(52, 8, 12, 2, '1082-08-04 20:30:00', '1082-11-30 00:30:00'),
	(53, 9, 12, 2, '1082-08-03 16:00:00', '1082-11-23 08:15:00'),
	(54, 10, 12, 2, '1082-08-18 16:45:00', '1082-11-30 08:00:00'),
	(55, 13, 1, 13, '1082-09-26 16:45:00', '1082-11-04 04:00:00'),
	(56, 16, 12, 13, '1082-09-16 16:30:00', '1082-12-25 04:00:00'),
	(57, 1, 11, 3, '1082-08-19 16:00:00', '1082-12-05 16:15:00'),
	(58, 2, 11, 3, '1082-09-09 08:30:00', '1082-12-17 12:00:00'),
	(59, 3, 11, 11, '1082-09-25 00:15:00', '1082-11-17 04:30:00'),
	(60, 5, 1, 3, '1082-09-25 04:30:00', '1082-12-16 12:30:00');
    
INSERT INTO Aventurier (id_aventurier, nom, classe, niveau, point_vie, attaque) VALUES
	(1, 'Sir Perceval', 'Paladin', 14, 87, 14),
	(2, 'Golkurth', 'Barabare', 3, 24, 11),
	(3, 'Rastafilou', 'Voleur', 6, 31, 8),
	(4, 'Ithanlite', 'Mage', 9, 40, 13),
	(5, 'Assuranssautix', 'Barde', 1, 8, 4),
	(6, 'Voltrek', 'Druide', 10, 43, 7),
	(7, 'Leonidas', 'Guerrier', 15, 94, 13),
	(8, 'Thamec', 'Moine', 6, 45, 9),
	(9, 'Multork', 'Necromancien', 2, 12, 3),
	(10, 'Lydianne', 'Enchenteuse', 7, 52, 12),
	(11, 'Grand-Pas', 'Rôdeur', 9, 46, 10),
	(12, 'Milva', 'Amazone', 16, 89, 18),
	(13, 'Piletra', 'Pretresse', 8, 37, 9),
	(14, 'Marriely', 'Spadassin', 4, 24, 8),
	(15, 'Fankesca', 'Sorcière', 1, 7, 4);
    
INSERT INTO Expedition (id_expedition, nom_equipe, depart, terminaison) VALUES
	(1, 'les aventuriers de la cause perdue', '1082-10-05 08:00:00', '1082-10-05 08:15:00'),
	(2, 'les lutteurs du desespoire', '1082-10-08 12:00:00', '1082-10-08 16:00:00'),
	(3, 'la communauté du collier ', '1082-10-09 10:30:00', '1082-10-10 02:15:00'),
	(4, 'la compagnie de la gloire', '1082-10-14 19:45:00', '1082-10-15 12:35:00'),
	(5, 'girafes triomphantes ', '1082-10-21 09:00:00', '1082-10-23 15:15:00');
    
INSERT INTO Expedition_aventurier (id_expedition, id_aventurier) VALUES
	(1, 5),
	(1, 15),
	(1, 9),
	(2, 2),
	(2, 14),
	(3, 3),
	(3, 8),
	(3, 10),
	(3, 13),
	(4, 4),
	(4, 11),
	(5, 1),
	(5, 7),
	(5, 12);
    
INSERT INTO Visite_salle (expedition, salle, moment_visite, appreciation) VALUES
	(3, 3, '1082-10-05 08:00:00', 'Entree secrete tres evidente et les gardes dormaient, on a pu se faufiller. Belles tapisseries.'),
	(3, 5, '1082-10-05 08:10:00', 'Salle tres encombree, en faisant tomber des objets on a reveille des monstres'),
	(3, 1, '1082-10-05 08:15:00', 'Donjon BEAUCOUP TROP DIFFICILE. Rendre les combats plus facile MERCI,,, FACHE !!!'),
	(5, 2, '1082-10-21 09:00:00', 'On ne mangerait pas dans ces gamelles.'),
	(5, 9, '1082-10-21 09:10:00', 'Les gens du poste de garde ont été surpris… N\'ont-ils pas des pierres de surveillance ?! Quel donjon de paume…'),
	(5, 6, '1082-10-21 09:25:00', 'Les gardes dormaient, ils n\'ont meme pas dit bonjour avant qu\'on les massacres.'),
	(5, 4, '1082-10-21 10:00:00', 'Bofff'),
	(5, 3, '1082-10-21 10:30:00', 'Une drole d\'odeur emanait d\'une cellule, il faudrait engager plus de concierges.'),
	(5, 1, '1082-10-21 11:00:00', 'Une pancarte avertissant d\'eteindre les torches avant d\'entrer serait apprecie'),
	(5, 5, '1082-10-21 14:00:00', 'Avoir su on serait entre par ici.'),
	(5, 11, '1082-10-21 14:30:00', 'NULL'),
	(5, 10, '1082-10-21 15:15:00', 'Representants d\'assurance et syndical n\'arretaient pas de jaser plutot que de se battre…'),
	(5, 13, '1082-10-21 18:00:00', 'Enfin un peu de defi.'),
	(5, 8, '1082-10-22 08:45:00', 'NULL'),
	(5, 7, '1082-10-22 09:45:00', 'Trop de richesse à transporter, ils devraient offrir un service de valet pour quand ils sont pilles.'),
	(5, 12, '1082-10-23 15:10:00', 'Porte tres resistante, combat decent… GGEZ');

INSERT INTO Coffre_tresor (id_coffre_tresor, code_secret, salle) VALUES
	(1, '1234', 2),
	(2, '657894201', 3),
	(3, 'salle 4', 4),
	(4, 'mdp secret', 6),
	(5, '$rsdg5T', 7),
	(6, 'allo', 8),
	(7, 'Un mot de passe si long', 10),
	(8, 'FGRT%78E', 11),
	(9, '(FBVD6', 12),
	(10, '%GSALLE5', 13);

INSERT INTO Ligne_coffre (coffre, objet, quantite) VALUES
	(1, 2, 3),
	(1, 6, 1),
	(2, 22, 1),
	(2, 26, 2),
	(2, 29, 8),
	(2, 33, 3),
	(3, 9, 4),
	(3, 7, 3),
	(3, 13, 2),
	(3, 15, 1),
	(4, 3, 1),
	(4, 23, 3),
	(5, 18, 1),
	(5, 2, 1),
	(5, 1, 2),
	(5, 24, 3),
	(5, 26, 3),
	(5, 25, 4),
	(6, 11, 2),
	(6, 12, 1),
	(6, 4, 1),
	(6, 17, 1),
	(7, 19, 3),
	(7, 5, 1),
	(8, 32, 2),
	(8, 31, 3),
	(8, 29, 6),
	(9, 25, 3),
	(9, 20, 2),
	(10, 24, 3),
	(10, 27, 4),
	(10, 21, 1);