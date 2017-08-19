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

INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (41, 'Ramses', 'Pharaon', null, 30, 30);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (42, 'Hiéroglyphique', 'police', null, 30, 30);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (43, 'Cléopatre', 'Jolie', null, 30, 30);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (44, 'Kingkong', 'Singe', null, 31, 31);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (45, 'Kingkong 2', 'Date sortie', null, 31, 31);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (46, 'En cage', 'Regarder', null, 31, 31);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (47, 'Gorille', 'Race', null, 31, 31);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (48, 'Affrontement', 'Maladie', null, 31, 31);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (49, 'En scène', 'Réalisateur', null, 31, 31);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (50, 'Origin', 'Pierre Boulle', null, 31, 31);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (51, 'Fondation', 'Inverse de peu', null, 32, 32);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (52, 'Mythe', 'Dieu', null, 32, 32);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (53, 'A cheval', 'Guerre', null, 32, 32);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (54, 'New ère', 'SI', null, 32, 32);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (55, 'Serpentard', 'INTERDIT', null, 33, 29);
INSERT INTO SYSTEM.SALLE (N_SALLE, NOM_DE_SALLE, INDICES, BORNE, ID_UNIVERS, ID_PARCOURS) VALUES (56, 'Moldus', 'Oncle', null, 33, 29);

INSERT ALL
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 42, 2)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 43, 3)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 44, 9)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 45, 4)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 46, 7)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 47, 6)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 48, 16)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 49, 5)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 50, 8)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 51, 12)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 52, 14)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 53, 13)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 54, 15)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 55, 11)
  into borne (nmbre_question, n_salle, N_QUESTION) VALUES (1, 56, 10)
SELECT 1 FROM dual

CREATE TABLE Salle(
N_Salle     number(10)   NOT NULL ,
Nom_de_Salle Varchar2 (25) ,
Indices      Varchar2 (255) ,
N_Borne        Number(10) ,
Id_Univers   Number(10) ,
Id_parcours  Number(10) ,
CONSTRAINT N_Salle_Pk PRIMARY KEY (N_Salle )
using index Tablespace TS_PARCOURS)
Tablespace TS_PARCOURS;
ALTER TABLE Salle ADD FOREIGN KEY (Id_parcours) REFERENCES Parcours(Id_parcours);
ALTER TABLE Salle ADD FOREIGN KEY (N_Borne) REFERENCES Borne(N_Borne);

CREATE OR REPLACE SEQUENCE Salle_seq START WITH 1 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER Salle_seq_tr
BEFORE INSERT ON Salle
FOR EACH ROW
WHEN (NEW.N_Salle IS NULL)
BEGIN
SELECT Salle_seq.NEXTVAL INTO :NEW.N_Salle FROM DUAL;
END;
/

