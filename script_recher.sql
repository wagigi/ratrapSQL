CREATE SCHEMA AUTHORIZATION JeuxPourTous;


ALTER TABLE SALLE
MODIFY
  (ID_UNIVERS )

UPDATE PARCOURS
SET NOM_PARCOURS = 'LES AVENTURES DE SORCIERS'
WHERE ID_PARCOURS = '29'
UPDATE PARCOURS
SET NOM_PARCOURS = 'SUR LA ROUTE DES PHARAONS'
WHERE ID_PARCOURS = '30'
UPDATE PARCOURS
SET NOM_PARCOURS = 'LA PLANETE DES SINGES'
WHERE ID_PARCOURS = '31'

UPDATE UNIVERS
SET NOM_UNIVERS = 'EGYPTE'
WHERE ID_UNIVERS = '30'
UPDATE UNIVERS
SET NOM_UNIVERS = 'KING KONG'
WHERE ID_UNIVERS = '31'
UPDATE UNIVERS
SET NOM_UNIVERS = 'GRECE'
WHERE ID_UNIVERS = '32'
UPDATE UNIVERS
SET NOM_UNIVERS = 'HARRY POTTER'
WHERE ID_UNIVERS = '33'


INSERT ALL
	INTO Salle (nom_de_salle, indices) VALUES ('Ramses','Pharaon')
	INTO Salle (nom_de_salle, indices) VALUES ('Hiéroglyphique','police')
	INTO Salle (nom_de_salle, indices) VALUES ('Cléopatre','Jolie')
	INTO Salle (nom_de_salle, indices) VALUES ('Kingkong', 'Singe')
	INTO Salle (nom_de_salle, indices) VALUES ('Kingkong 2', 'Date sortie')
	INTO Salle (nom_de_salle, indices) VALUES ('En cage', 'Regarder')
	INTO Salle (nom_de_salle, indices) VALUES ('Gorille', 'Race')
	INTO Salle (nom_de_salle, indices) VALUES ('Affrontement', 'Maladie')
	INTO Salle (nom_de_salle, indices) VALUES ('En scène', 'Réalisateur')
	INTO Salle (nom_de_salle, indices) VALUES ('Origin', 'Pierre Boulle')
	INTO Salle (nom_de_salle, indices) VALUES ('Fondation', 'Inverse de peu')
	INTO Salle (nom_de_salle, indices) VALUES ('Mythe', 'Dieu')
	INTO Salle (nom_de_salle, indices) VALUES ('A cheval', 'Guerre')
	INTO Salle (nom_de_salle, indices) VALUES ('New ère', 'SI')
	INTO Salle (nom_de_salle, indices) VALUES ('Serpentard', 'INTERDIT')
	INTO Salle (nom_de_salle, indices) VALUES ('Moldus', 'Oncle')
SELECT 1 FROM DUAL;

select ID_PARCOURS,NOM_PARCOURS,Nselect ID_PARCOURS,NOM_PARCOURS,NOMBRE_DE_SALLE,TEMPS_NECESSAIRE, NOM_UNIVERS from PARCOURS, UNIVERS where PARCOURS.ID_UNIVERS = UNIVERS.ID_UNIVERSOMBRE_DE_SALLE,TEMPS_NECESSAIRE, NOM_UNIVERS from PARCOURS, UNIVERS where PARCOURS.ID_UNIVERS = UNIVERS.ID_UNIVERS