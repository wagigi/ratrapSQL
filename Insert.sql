
---------------------------------Utilisateur---------------------------------

CREATE TABLE Utilisateur(
        Id_utilisateur number(10)   NOT NULL ,
        pseudo         Varchar2 (255) ,
        nom            Varchar2 (255) ,
        prenom         Varchar2 (255) ,
        mail           Varchar2 (255) ,
        Naissance      Date ,
        CONSTRAINT Id_utilisateur_Pk PRIMARY KEY (Id_utilisateur) using index Tablespace TS_PARTICIPATION) Tablespace TS_PARTICIPATION;

---------------------------------Parcours---------------------------------

CREATE TABLE Parcours(
        Id_Parcours  Number(10) NOT NULL ,
        Nom_Parcours Varchar2 (255) ,
        Chronologie  Varchar2 (255) ,
        Heure_d      Timestamp(0) ,
        Heure_f      Timestamp(0) ,
        Heure_e      Timestamp(0) ,
        CONSTRAINT Id_Parcours_Pk PRIMARY KEY (Id_Parcours ) using index Tablespace TS_PARCOURS) Tablespace TS_PARCOURS;

---------------------------------Univers---------------------------------

CREATE TABLE Univers(
        Id_Univers  number(10)   NOT NULL ,
        Nom_Univers Varchar2 (255) ,
        Image_URL   Varchar2 (255) ,
        CONSTRAINT Id_Univers_Pk PRIMARY KEY (Id_Univers ) using index Tablespace TS_Peu) Tablespace TS_Peu;

---------------------------------Salle---------------------------------

CREATE TABLE Salle(
        Id_Salle   number(10)   NOT NULL ,
        Nom_Salle  Varchar2 (255) ,
        Id_Univers Number(10) ,
        CONSTRAINT Id_Salle_Pk PRIMARY KEY (Id_Salle ) using index Tablespace TS_PARCOURS) Tablespace TS_PARCOURS;

--------------------------------Question---------------------------------

CREATE TABLE Questions(
        Id_Question number(10)   NOT NULL ,
        Question    Varchar2 (255) ,
        Reponse     Varchar2 (255) ,
        Indices     Varchar2 (255) ,
        Id_Salle    Number(10) ,
        CONSTRAINT Id_Question_Pk PRIMARY KEY (Id_Question ) using index Tablespace TS_PARCOURS) Tablespace TS_PARCOURS;

---------------------------------Session---------------------------------

CREATE TABLE Seance(
        Id_Seance     number(10)   NOT NULL ,
        Heure_d        Timestamp(0) ,
        Heure_f        Timestamp(0) ,
        id_utilisateur Number(10) ,
        id_Parcours    Number(10) ,
        Id_Salle       Number(10) ,
        CONSTRAINT Id_Session_Pk PRIMARY KEY (Id_Seance ) using index Tablespace TS_PARTICIPATION) Tablespace TS_PARTICIPATION;

---------------------------------Clés étrangères ---------------------------------

ALTER TABLE Salle ADD FOREIGN KEY (Id_Univers) REFERENCES Univers(Id_Univers);
ALTER TABLE Questions ADD FOREIGN KEY (Id_Salle) REFERENCES Salle(Id_Salle);
ALTER TABLE Seance ADD FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id_utilisateur);
ALTER TABLE Seance ADD FOREIGN KEY (id_Parcours) REFERENCES Parcours(id_Parcours);
ALTER TABLE Seance ADD FOREIGN KEY (Id_Salle) REFERENCES Salle(Id_Salle);

---------------------------------Créer Séquences---------------------------------

CREATE SEQUENCE Utilisateur_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Univers_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Salle_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Questions_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Seance_seq START WITH 1 INCREMENT BY 1;

---------------------------------Triggers ---------------------------------

CREATE OR REPLACE TRIGGER Utilisateur_seq_tr
 BEFORE INSERT ON Utilisateur FOR EACH ROW
 WHEN (NEW.Id_utilisateur IS NULL)
BEGIN
 SELECT Utilisateur_seq.NEXTVAL INTO :NEW.Id_utilisateur FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER Univers_seq_tr
 BEFORE INSERT ON Univers FOR EACH ROW
 WHEN (NEW.Id_Univers IS NULL)
BEGIN
 SELECT Univers_seq.NEXTVAL INTO :NEW.Id_Univers FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER Salle_seq_tr
 BEFORE INSERT ON Salle FOR EACH ROW
 WHEN (NEW.Id_Salle IS NULL)
BEGIN
 SELECT Salle_seq.NEXTVAL INTO :NEW.Id_Salle FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER Questions_seq_tr
 BEFORE INSERT ON Questions FOR EACH ROW
 WHEN (NEW.Id_Question IS NULL)
BEGIN
 SELECT Questions_seq.NEXTVAL INTO :NEW.Id_Question FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER Seance_seq_tr
 BEFORE INSERT ON Seance FOR EACH ROW
 WHEN (NEW.Id_Seance IS NULL)
BEGIN
 SELECT Session_seq.NEXTVAL INTO :NEW.Id_Seance FROM DUAL;
END;
/
SELECT * FROM Parcours;
INSERT INTO UTILISATEUR (Id_utilisateur, pseudo, nom, prenom, mail, naissance) VALUES (51, 'elge', 'Langin', 'Gérard', 'gl@hot.fr', '04-01-2000');
INSERT INTO UTILISATEUR (Id_utilisateur, pseudo, nom, prenom, mail, naissance) VALUES (52, 'rogé', 'Robuchon', 'Roger', 'roger@hotmail.fr', '04-01-2002');
INSERT INTO UTILISATEUR (Id_utilisateur, pseudo, nom, prenom, mail, naissance) VALUES (53, 'potdecol', 'Colomb', 'Paul', 'pcol@hotmail.fr', '04-07-2000');
INSERT INTO UTILISATEUR (Id_utilisateur, pseudo, nom, prenom, mail, naissance) VALUES (54, 'foxtrot', 'Bravo', 'Charlie', 'papa@whisky.fr', '04-04-2000');
INSERT INTO UTILISATEUR (Id_utilisateur, pseudo, nom, prenom, mail, naissance) VALUES (55, 'alpha', 'Delta', 'June', 'kilo@echo.fr', '04-01-2001');

INSERT INTO PARCOURS (Id_Parcours, Nom_Parcours, Chronologie, Ouverture_H, Fermeture_H, Heure_e) VALUES (21, 'Sauvons Hermione', '2,4,6,8', '01-01-2000 08:00', '01-01-2000 11:00', '01-01-2000 02:00');
INSERT INTO PARCOURS (Id_Parcours, Nom_Parcours, Chronologie, Ouverture_H, Fermeture_H, Heure_e) VALUES (22, 'La conquête de Cléopatre', '1,3,5,7', '01-01-2000 10:00', '01-01-2000 13:00', '01-01-2000 01:30');
INSERT INTO PARCOURS (Id_Parcours, Nom_Parcours, Chronologie, Ouverture_H, Fermeture_H, Heure_e) VALUES (23, 'La prise de Troie', '9,10,11', '01-01-2000 14:00', '01-01-2000 17:00', '01-01-2000 03:00');
INSERT INTO PARCOURS (Id_Parcours, Nom_Parcours, Chronologie, Ouverture_H, Fermeture_H, Heure_e) VALUES (24, 'Mission impossible', '12,13', '01-01-2000 16:00', '01-01-2000 19:00', '01-01-2000 01:00');

INSERT INTO UNIVERS (Id_Univers, Nom_Univers, Image_URL) VALUES (31, 'Egypte', 'pharaon.jpg');
INSERT INTO UNIVERS (Id_Univers, Nom_Univers, Image_URL) VALUES (32, 'Agent Secret', 'mi.jpg');
INSERT INTO UNIVERS (Id_Univers, Nom_Univers, Image_URL) VALUES (33, 'Grèce', 'cheval.jpg');
INSERT INTO UNIVERS (Id_Univers, Nom_Univers, Image_URL)  VALUES (34, 'Harry Potter', 'harry.jpg');

INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (1, 'REINE', 31);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (2, 'GARE', 34);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (3, 'CESAR', 31);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (4, 'GRIFONDOR', 34);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (5, 'EGYPTE', 31);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (6, 'MOLDUS', 34);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (7, 'DIVIN', 31);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (8, 'MALEFOY', 34);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (9, 'MYTHE', 33);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (10, 'EN SELLE', 33);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (11, 'GUERRE', 33);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (12, 'MAISON BLANCHE', 32);
INSERT INTO SALLE (Id_Salle, Nom_Salle, Id_Univers) VALUES (13, 'INFILTRATION', 32);

INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES ( 70, 'Lieu de naissance', 'Alexandrie', 'Claude François', 1);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (71, 'Comment s appelle le train magique', 'Poudlard Express', 'Elle est connu au mont St Michel, la mère…', 2);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (72, 'Fonction de Jules César', 'Proprêteur', 'Prêt d 1 an', 3);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (73, 'Polynectar', 'Prend l apparence d un autre humain', 'Jumeaux', 4);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (74, 'La plus grand pyramide', 'Khéops', 'Gizeh', 5);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (75, 'Quel est la seule personne à connaitre l existence de la magie', 'Ministre', 'Chef', 6);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (76, 'Quel est l animal représentant la divinité', 'le chat', 'il retombe sur ses pattes', 7);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (7, 'De quoi Drago est le plus convaincu ?', 'Supériorité', 'sang pur', 8);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (78, '', '', '', 9);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (79, '', '', '', 10);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (80, '', '', '', 11);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (81, 'Bureau', 'Président', 'Ovale', 12);
INSERT INTO QUESTIONS (Id_Question, Question, Reponse, Indices, ID_SALLE) VALUES (82, 'Secret', 'code nucléaire', 'fuite industrielle', 13);

INSERT INTO SEANCE (Id_Seance, Heure_d, Heure_f, id_utilisateur, id_Parcours, Id_Salle) VALUES (100, '01-01-2000 08:30', '01-01-2000 10:38', 51, 21, 8);
INSERT INTO SEANCE (Id_Seance, Heure_d, Heure_f, id_utilisateur, id_Parcours, Id_Salle) VALUES (101, '01-01-2000 10:00', '01-01-2000 11:25', 52, 22, 7);
INSERT INTO SEANCE (Id_Seance, Heure_d, Heure_f, id_utilisateur, id_Parcours, Id_Salle) VALUES (102, '01-01-2000 16:15', '01-01-2000 17:03', 53, 24, 13);
INSERT INTO SEANCE (Id_Seance, Heure_d, Heure_f, id_utilisateur, id_Parcours, Id_Salle) VALUES (103, '01-01-2000 11:00', '01-01-2000 12:38', 51, 22, 7);
INSERT INTO SEANCE (Id_Seance, Heure_d, Heure_f, id_utilisateur, id_Parcours, Id_Salle) VALUES (104, '01-01-2000 10:00', '01-01-2000 12:00', 54, 21, 8);
INSERT INTO SEANCE (Id_Seance, Heure_d, id_utilisateur, id_Parcours) VALUES (105, '01-01-2000 18:10', 55, 24);

