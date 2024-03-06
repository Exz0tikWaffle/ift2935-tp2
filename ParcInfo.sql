BEGIN TRANSACTION;

CREATE TABLE Segment (
    indIP INT NOT NULL,
    nomSegment VARCHAR(255) NOT NULL,
    etage INT,
    PRIMARY KEY (indIP)
 );

 CREATE TABLE Salle (
    nSalle INT NOT NULL,
    nomSalle VARCHAR(255) NOT NULL,
    nbPoste INT NOT NULL,
    indIP INT NOT NULL,
    PRIMARY KEY (nSalle)
 );

 CREATE TABLE Poste (
    nPoste INT NOT NULL,
    nomPoste VARCHAR(255) NOT NULL,
    indIP INT NOT NULL,
    ad VARCHAR(255) CHECK(0 <= (CAST(ad AS int)) AND (CAST(ad AS int)) <= 255),
    typePoste VARCHAR(255) NOT NULL,
    nSalle INT NOT NULL,
    PRIMARY KEY (nPoste)
 );

CREATE TABLE Logiciel (
    nLog INT NOT NULL,
    nomLog VARCHAR(255) NOT NULL,
    dateAch DATE,
    versionLog VARCHAR(255) NOT NULL,
    typeLog VARCHAR(255) NOT NULL,
    prix REAL NOT NULL CHECK(prix >= 0),
    PRIMARY KEY (nLog)
);

CREATE TABLE Installer (
    numIns SERIAL,
    nPoste INT NOT NULL,
    nLog INT NOT NULL,
    dateIns TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    delai INT,
    PRIMARY KEY (numIns)
);

CREATE TABLE Types (
    typeLP VARCHAR(255) NOT NULL,
    nomTypes VARCHAR(255) NOT NULL,
    PRIMARY KEY (typeLP)
);

COMMIT;