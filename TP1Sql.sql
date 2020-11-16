CREATE TABLE CANDIDAT(
CIN_candidat int CONSTRAINT PK_CIN_candidat PRIMARY KEY,
NomCandidat varchar(15),
prenomCandidat varchar(15),
DateN date,
Niveau varchar(15),
Nationnalite varchar(20));

CREATE TABLE FORMATIONS(
NomFormation varchar(50) CONSTRAINT PK_NomFormation PRIMARY KEY,
Description varchar(50),
Duree int NOT NULL,
Prix float NOT NULL);

CREATE TABLE SESSIONS(
IdSession varchar (30) CONSTRAINT PK_IdSession PRIMARY KEY,
DateDebutSession date,
NomFormateur varchar (30),
NomFormation varchar(50) CONSTRAINT FK_NomFormation REFERENCES FORMATIONS(NomFormation));	
 
CREATE TABLE PARTICIPATIONS(
idCandidat int CONSTRAINT FK_idCandidat REFERENCES CANDIDAT(CIN_candidat),
IdSession varchar (30) CONSTRAINT FK_idSession REFERENCES SESSIONS(idSession));

ALTER TABLE SESSIONS 
ADD Lieu varchar(15) DEFAULT 'ORADIST' NOT NULL;
