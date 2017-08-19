---------------------------------INSERT INTO---------------------------------
INSERT ALL 
	INTO Univers (nom_univers, salle_de_depart, image_url) VALUES ('Egypte',1,'pharaon.jpg')
	INTO Univers (nom_univers, salle_de_depart, image_url) VALUES ('Kingkong',1,'planetedessinges.jpg')
	INTO Univers (nom_univers, salle_de_depart, image_url) VALUES ('Grèce', 4,'acropole.jpg')
	INTO Univers (nom_univers, salle_de_depart, image_url) VALUES ('Harry Potter', 1,'Griffondor.jpg')
	INTO Parcours (nom_parcours, nombre_de_salle, temps_necessaire, est_ouvert) VALUES ('Les aventures de sorciers',2, '01-01-01 01:00:00', 'y' )
	INTO Parcours (nom_parcours, nombre_de_salle, temps_necessaire, est_ouvert) VALUES  ('Sur la route des pharaons',3, '01-01-01 01:40:00', 'y' )
	INTO Parcours (nom_parcours, nombre_de_salle, temps_necessaire, est_ouvert) VALUES  ('La planète des singes',7, '01-01-01 02:10:00', 'y' )
	INTO Parcours (nom_parcours, nombre_de_salle, temps_necessaire, est_ouvert) VALUES  ('La prise de troie',4, '01-01-01 01:50:00', 'n' )
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('elge','Langin','Gérard','gl@hotmail.fr','02/03/2001')
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('rogé','Robuchon','Roger','roger@hotmail.fr','01/02/1999')
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('potdecol','Colomb','Paul','pcol@hotmail.fr','03/12/1997')
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('tati','Silvia','Tatiana','ts@hotmail.fr','26/09/1989')
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('foxtrot','Bravo','Charlie','papa@whisky.fr','18/07/1989')
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('alpha','Delta','June','kilo@echo.fr','30/08/1992')
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Ramses','Pharaon', 30, 30)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Hiéroglyphique','police',30, 30)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Cléopatre','Jolie',30, 30)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Kingkong', 'Singe',31, 31)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Kingkong 2', 'Date sortie' ,31, 31)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('En cage', 'Regarder' ,31, 31)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Gorille', 'Race' ,31, 31)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Affrontement', 'Maladie' ,31, 31)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('En scène', 'Réalisateur' ,31, 31)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Origin', 'Pierre Boulle' ,31, 31)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Fondation', 'Inverse de peu', 32, 32)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Mythe', 'Dieu', 32, 32)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('A cheval', 'Guerre', 32, 32)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('New ère', 'SI', 32, 32)	
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Serpentard', 'INTERDIT', 29, 33)
	INTO Salle (nom_de_salle, indices, id_univers, id_parcours) VALUES ('Moldus', 'Oncle',29, 33)
SELECT 1 FROM DUAL;



---------------------------------INSERT INTO---------------------------------
INSERT ALL 
	
	SELECT 1 FROM DUAL;
	
	
	INTO Question (question, reponse) VALUES ('Les aventures de sorciers',2, '01-01-01 01:00:00', 'y' )
	INTO Question (question, reponse) VALUES ('Sur la route des pharaons',3, '01-01-01 01:40:00', 'y' )
	INTO Question (question, reponse) VALUES  ('La planète des singes',7, '01-01-01 02:10:00', 'y' )
	INTO Question (question, reponse) VALUES  ('La prise de troie',4, '01-01-01 01:50:00', 'n' )
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('elge','Langin','Gérard','gl@hotmail.fr','02/03/2001')
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('rogé','Robuchon','Roger','roger@hotmail.fr','01/02/1999')
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('potdecol','Colomb','Paul','pcol@hotmail.fr','03/12/1997')
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('tati','Silvia','Tatiana','ts@hotmail.fr','26/09/1989')
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('foxtrot','Bravo','Charlie','papa@whisky.fr','18/07/1989')
	INTO Utilisateur (pseudo, nom, prenom, e_mail, date_de_naissance) VALUES ('alpha','Delta','June','kilo@echo.fr','30/08/1992')
SELECT 1 FROM DUAL;




















CREATE PROFILE accesBDprof LIMIT
   FAILED_LOGIN_ATTEMPTS 3
   CONNECT_TIME 240
   IDLE_TIME 5
   PASSWORD_LIFE_TIME 90
   PASSWORD_GRACE_TIME 5
   PASSWORD_REUSE_TIME 180
   PASSWORD_REUSE_MAX 5