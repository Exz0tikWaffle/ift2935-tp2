BEGIN TRANSACTION;

CREATE TABLE segment (
    indIP INT NOT NULL,
    nomSegment VARCHAR(255) NOT NULL,
    etage INT NOT NULL,
    PRIMARY KEY (indIP)
 );

 CREATE TABLE salle (
    nSalle INT NOT NULL,
    nomSalle VARCHAR(250) NOT NULL,
    nbPoste INT NOT NULL,
    indIP INT NOT NULL,
    PRIMARY KEY (nSalle)
 );

 CREATE TABLE poste (
    nPoste INT NOT NULL,
    nomPoste VARCHAR(250) NOT NULL,
    indIP INT NOT NULL,
    ad VARCHAR(250) CHECK(0 <= (CAST(ad AS int)) AND (CAST(ad AS int)) <= 255),
    typePoste VARCHAR(250) NOT NULL,
    nSalle INT NOT NULL,
    PRIMARY KEY (nPoste)
 );

CREATE TABLE logiciel (
    nLog INT NOT NULL,
    nomLog VARCHAR(255) NOT NULL,
    dateAch DATE NOT NULL,
    versionLog VARCHAR(255) NOT NULL,
    typeLog VARCHAR(2555) NOT NULL,
    prix REAL NOT NULL CHECK(prix >= 0),
    PRIMARY KEY (nLog)
);

CREATE TABLE installer (
    numIns INT IDENTITY(1, 1),
    nPoste INT NOT NULL,
    nLog INT NOT NULL,
    dateIns TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    delai INT NOT NULL,
    PRIMARY KEY (numIns)
);

CREATE TABLE types (
    typeLP VARCHAR(255) NOT NULL,
    nomTypes VARCHAR(255) NOT NULL,
    PRIMARY KEY (typeLP)
);

COMMIT;