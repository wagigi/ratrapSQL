--------------------------------------------------------------
--        Script MySQL.
--------------------------------------------------------------


--------------------------------------------------------------
-- Table: Parcours
--------------------------------------------------------------

CREATE TABLE Parcours(
        Id_parcours      number(10)   NOT NULL ,
        Nom_Parcours     Varchar2 (25) ,
        Nombre_de_Salle  Number(10) ,
        Temps_Necessaire Timestamp(0) ,
        Est_Ouvert       Char(1) ,
        Id_Univers       Number(10) ,
        PRIMARY KEY (Id_parcours )
);

-- Generate ID using sequence and trigger
CREATE SEQUENCE Parcours_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER Parcours_seq_tr
 BEFORE INSERT ON Parcours FOR EACH ROW
 WHEN (NEW.Id_parcours IS NULL)
BEGIN
 SELECT Parcours_seq.NEXTVAL INTO :NEW.Id_parcours FROM DUAL;
END;
/


--------------------------------------------------------------
-- Table: Univers
--------------------------------------------------------------

CREATE TABLE Univers(
        Id_Univers      number(10)   NOT NULL ,
        Nom_Univers     Varchar2 (25) ,
        Salle_de_Depart Varchar2 (25) ,
        Image_URL       Varchar2 (25) ,
        PRIMARY KEY (Id_Univers )
);

-- Generate ID using sequence and trigger
CREATE SEQUENCE Univers_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER Univers_seq_tr
 BEFORE INSERT ON Univers FOR EACH ROW
 WHEN (NEW.Id_Univers IS NULL)
BEGIN
 SELECT Univers_seq.NEXTVAL INTO :NEW.Id_Univers FROM DUAL;
END;
/


--------------------------------------------------------------
-- Table: Salle
--------------------------------------------------------------

CREATE TABLE Salle(
        N__Salle     number(10)   NOT NULL ,
        Nom_de_Salle Varchar2 (25) ,
        Indices      Varchar2 (25) ,
        Borne        Number(10) ,
        Id_Univers   Number(10) ,
        Id_parcours  Number(10) ,
        N_Borne      Number(10) ,
        PRIMARY KEY (N__Salle )
);

-- Generate ID using sequence and trigger
CREATE SEQUENCE Salle_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER Salle_seq_tr
 BEFORE INSERT ON Salle FOR EACH ROW
 WHEN (NEW.N__Salle IS NULL)
BEGIN
 SELECT Salle_seq.NEXTVAL INTO :NEW.N__Salle FROM DUAL;
END;
/


--------------------------------------------------------------
-- Table: Utilisateur
--------------------------------------------------------------

CREATE TABLE Utilisateur(
        Id_joueur         number(10)   NOT NULL ,
        Pseudo            Varchar2 (25) ,
        Nom               Varchar2 (25) ,
        Prenom            Varchar2 (25) ,
        E_mail            Varchar2 (25) ,
        Date_de_naissance Timestamp(0) ,
        Id_parcours       Number(10) ,
        N_Borne           Number(10) ,
        PRIMARY KEY (Id_joueur ) ,
        UNIQUE (Pseudo )
);

-- Generate ID using sequence and trigger
CREATE SEQUENCE Utilisateur_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER Utilisateur_seq_tr
 BEFORE INSERT ON Utilisateur FOR EACH ROW
 WHEN (NEW.Id_joueur IS NULL)
BEGIN
 SELECT Utilisateur_seq.NEXTVAL INTO :NEW.Id_joueur FROM DUAL;
END;
/


--------------------------------------------------------------
-- Table: Question
--------------------------------------------------------------

CREATE TABLE Question(
        N_Question number(10)   NOT NULL ,
        Question   Varchar2 (25) ,
        Reponse    Char (25) ,
        PRIMARY KEY (N_Question )
);

-- Generate ID using sequence and trigger
CREATE SEQUENCE Question_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER Question_seq_tr
 BEFORE INSERT ON Question FOR EACH ROW
 WHEN (NEW.N_Question IS NULL)
BEGIN
 SELECT Question_seq.NEXTVAL INTO :NEW.N_Question FROM DUAL;
END;
/


--------------------------------------------------------------
-- Table: Borne
--------------------------------------------------------------

CREATE TABLE Borne(
        N_Borne        number(10)   NOT NULL ,
        Nmbre_Question Number(10) ,
        Salle          Varchar2 (25) ,
        N__Salle       Number(10) ,
        N_Question     Number(10) ,
        Id_joueur      Number(10) ,
        PRIMARY KEY (N_Borne )
);

-- Generate ID using sequence and trigger
CREATE SEQUENCE Borne_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER Borne_seq_tr
 BEFORE INSERT ON Borne FOR EACH ROW
 WHEN (NEW.N_Borne IS NULL)
BEGIN
 SELECT Borne_seq.NEXTVAL INTO :NEW.N_Borne FROM DUAL;
END;
/


--------------------------------------------------------------
-- Table: Session
--------------------------------------------------------------

CREATE TABLE Session(
        id_session   number(10)   NOT NULL ,
        Date_session Date ,
        Heure_debut  Timestamp(0) ,
        Heure_fin    Timestamp(0) ,
        PRIMARY KEY (id_session )
);

-- Generate ID using sequence and trigger
CREATE SEQUENCE Session_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER Session_seq_tr
 BEFORE INSERT ON Session FOR EACH ROW
 WHEN (NEW.id_session IS NULL)
BEGIN
 SELECT Session_seq.NEXTVAL INTO :NEW.id_session FROM DUAL;
END;
/


--------------------------------------------------------------
-- Table: score
--------------------------------------------------------------

CREATE TABLE score(
        positionnement Number(10) ,
        Id_joueur      Number(10) NOT NULL ,
        id_session     Number(10) NOT NULL ,
        PRIMARY KEY (Id_joueur ,id_session )
);

ALTER TABLE Parcours ADD CONSTRAINT FK_Parcours_Id_Univers FOREIGN KEY (Id_Univers) REFERENCES Univers(Id_Univers);
ALTER TABLE Salle ADD CONSTRAINT FK_Salle_Id_parcours FOREIGN KEY (Id_parcours) REFERENCES Parcours(Id_parcours);
ALTER TABLE Salle ADD CONSTRAINT FK_Salle_N_Borne FOREIGN KEY (N_Borne) REFERENCES Borne(N_Borne);
ALTER TABLE Utilisateur ADD CONSTRAINT FK_Utilisateur_Id_parcours FOREIGN KEY (Id_parcours) REFERENCES Parcours(Id_parcours);
ALTER TABLE Utilisateur ADD CONSTRAINT FK_Utilisateur_N_Borne FOREIGN KEY (N_Borne) REFERENCES Borne(N_Borne);
ALTER TABLE Borne ADD CONSTRAINT FK_Borne_N__Salle FOREIGN KEY (N__Salle) REFERENCES Salle(N__Salle);
ALTER TABLE Borne ADD CONSTRAINT FK_Borne_N_Question FOREIGN KEY (N_Question) REFERENCES Question(N_Question);
ALTER TABLE Borne ADD CONSTRAINT FK_Borne_Id_joueur FOREIGN KEY (Id_joueur) REFERENCES Utilisateur(Id_joueur);
ALTER TABLE score ADD CONSTRAINT FK_score_Id_joueur FOREIGN KEY (Id_joueur) REFERENCES Utilisateur(Id_joueur);
ALTER TABLE score ADD CONSTRAINT FK_score_id_session FOREIGN KEY (id_session) REFERENCES Session(id_session);
