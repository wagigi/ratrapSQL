---------------------------------Tablespace---------------------------------

CREATE tablespace TS_Peu datafile 'C:\oraclexe\app\oracle\oradata\XE\Disque1\TS_Peu.dbf' SIZE 5M
autoextend ON
segment space management auto
EXTENT management local uniform size 60k;

CREATE Tablespace TS_PARCOURS DATAFILE 'C:\oraclexe\app\oracle\oradata\XE\Disque1\TS_PARCOURS.dbf' SIZE 5M
autoextend ON
segment space management auto
EXTENT management local uniform size 60k;

CREATE Tablespace TS_PARTICIPATION DATAFILE 'C:\oraclexe\app\oracle\oradata\XE\Disque1\TS_PARTICIPATION.dbf' SIZE 5M
autoextend ON
segment space management auto
EXTENT management local uniform size 60k;

---------------------------------Parcours---------------------------------
CREATE TABLE Parcours(
Id_parcours      number(10)   NOT NULL ,
Nom_Parcours     Varchar2 (25) ,
Nombre_de_Salle  Number(10) ,
Temps_Necessaire TIMESTAMP(0) ,
Id_Univers       Number(10) ,
Est_Ouvert		 CHAR(1),
CONSTRAINT Parcours_Pk PRIMARY KEY (Id_parcours )
using index Tablespace TS_PARCOURS)
Tablespace TS_PARCOURS;


---------------------------------Univers---------------------------------
CREATE TABLE Univers(
Id_Univers      number(10)   NOT NULL ,
Nom_Univers     Varchar2 (25) ,
Salle_de_Depart Varchar2 (25) ,
Image_URL       Varchar2 (25) ,
CONSTRAINT Id_Univers_Pk PRIMARY KEY (Id_Univers )
using index Tablespace TS_Peu)
Tablespace TS_Peu;

---------------------------------Salle---------------------------------
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

---------------------------------Utilisateur---------------------------------
CREATE TABLE Utilisateur(
Id_joueur         number(10)   NOT NULL ,
Pseudo            Varchar2 (25) ,
Nom               Varchar2 (25) ,
Prenom            Varchar2 (25) ,
E_mail            Varchar2 (25) ,
Date_de_naissance Timestamp(0) ,
Id_parcours       Number(10) ,
N_Borne           Number(10) ,
UNIQUE (Pseudo ),
CONSTRAINT Id_joueur_Pk PRIMARY KEY (Id_joueur )
using index Tablespace TS_PARTICIPATION)
Tablespace TS_PARTICIPATION;


---------------------------------Question---------------------------------
CREATE TABLE Question(
N_Question number(10)   NOT NULL ,
Question   Varchar2 (25) ,
Reponse    Char (25) ,
CONSTRAINT N_Question_Pk PRIMARY KEY (N_Question )
using index Tablespace TS_PARCOURS)
Tablespace TS_PARCOURS;

---------------------------------Borne---------------------------------
CREATE TABLE Borne(
N_Borne        number(10)   NOT NULL ,
Nmbre_Question Number(10) ,
N_Salle        Number(10) ,
Id_parcours    Number(10) ,
N_Question     Number(10) ,
Id_joueur      Number(10) ,
CONSTRAINT N_Borne_Pk PRIMARY KEY (N_Borne )
using index Tablespace TS_PARCOURS)
Tablespace TS_PARCOURS;

---------------------------------Session---------------------------------
CREATE TABLE Sess1on(
id_session   number(10)   NOT NULL ,
Date_session Date ,
Heure_debut  Timestamp(0) ,
Heure_fin    Timestamp(0) ,
CONSTRAINT id_session_Pk PRIMARY KEY (id_session )
using index Tablespace TS_PARTICIPATION)
Tablespace TS_PARTICIPATION;

---------------------------------Score---------------------------------
CREATE TABLE score(
positionnement Number(10) ,
Id_joueur      Number(10) NOT NULL ,
id_session     Number(10) NOT NULL ,
CONSTRAINT score_Pk PRIMARY KEY (Id_joueur ,id_session )
using index Tablespace TS_PARTICIPATION)
Tablespace TS_PARTICIPATION;

---------------------------------Ajout FK---------------------------------
ALTER TABLE Parcours ADD FOREIGN KEY (Id_Univers) REFERENCES Univers(Id_Univers);
ALTER TABLE Salle ADD FOREIGN KEY (Id_parcours) REFERENCES Parcours(Id_parcours);
ALTER TABLE Salle ADD FOREIGN KEY (N_Borne) REFERENCES Borne(N_Borne);
ALTER TABLE Utilisateur ADD FOREIGN KEY (Id_parcours) REFERENCES Parcours(Id_parcours);
ALTER TABLE Utilisateur ADD FOREIGN KEY (N_Borne) REFERENCES Borne(N_Borne);
ALTER TABLE Borne ADD FOREIGN KEY (Id_parcours) REFERENCES Parcours(Id_parcours);
ALTER TABLE Borne ADD FOREIGN KEY (N_Salle) REFERENCES Salle(N_Salle);
ALTER TABLE Borne ADD FOREIGN KEY (N_Question) REFERENCES Question(N_Question);
ALTER TABLE Borne ADD FOREIGN KEY (Id_joueur) REFERENCES Utilisateur(Id_joueur);
ALTER TABLE score ADD FOREIGN KEY (Id_joueur) REFERENCES Utilisateur(Id_joueur);
ALTER TABLE score ADD FOREIGN KEY (id_session) REFERENCES Sess1on(id_session);

---------------------------------Créer Séquences---------------------------------
CREATE SEQUENCE Parcours_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Univers_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Salle_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Utilisateur_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Question_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Borne_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Session_seq START WITH 1 INCREMENT BY 1;

---------------------------------Triggers ---------------------------------
CREATE OR REPLACE TRIGGER Parcours_seq_tr
BEFORE INSERT ON Parcours FOR
EACH ROW
WHEN (NEW.Id_parcours IS NULL)
BEGIN
SELECT Parcours_seq.NEXTVAL INTO :NEW.Id_parcours FROM DUAL;
END;
/
CREATE OR REPLACE TRIGGER Univers_seq_tr
BEFORE INSERT ON Univers FOR
EACH ROW
WHEN (NEW.Id_Univers IS NULL)
BEGIN
SELECT Univers_seq.NEXTVAL INTO :NEW.Id_Univers FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER Univers_seq_tr
BEFORE INSERT ON Univers
FOR EACH ROW
WHEN (NEW.Id_Univers IS NULL)
BEGIN
SELECT Univers_seq.NEXTVAL INTO :NEW.Id_Univers FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER Salle_seq_tr
BEFORE INSERT ON Salle
FOR EACH ROW
WHEN (NEW.N_Salle IS NULL)
BEGIN
SELECT Salle_seq.NEXTVAL INTO :NEW.N_Salle FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER Utilisateur_seq_tr
BEFORE INSERT ON Utilisateur
FOR EACH ROW
WHEN (NEW.Id_joueur IS NULL)
BEGIN
SELECT Utilisateur_seq.NEXTVAL INTO :NEW.Id_joueur FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER Question_seq_tr
BEFORE INSERT ON Question
FOR EACH ROW
WHEN (NEW.N_Question IS NULL)
BEGIN
SELECT Question_seq.NEXTVAL INTO :NEW.N_Question FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER Borne_seq_tr
BEFORE INSERT ON Borne
FOR EACH ROW
WHEN (NEW.N_Borne IS NULL)
BEGIN
SELECT Borne_seq.NEXTVAL INTO :NEW.N_Borne FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER Session_seq_tr
BEFORE INSERT ON Sess1on
FOR EACH ROW
WHEN (NEW.id_session IS NULL)
BEGIN
SELECT Session_seq.NEXTVAL INTO :NEW.id_session FROM DUAL;
END;
/



CREATE OR REPLACE TRIGGER CheckPseudo
BEFORE INSERT ON Utilisateur
FOR EACH ROW
WHEN (NEW.id_session IS NULL)
BEGIN
SELECT Session_seq.NEXTVAL INTO :NEW.id_session FROM DUAL;
END;
/

