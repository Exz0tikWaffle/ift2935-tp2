BEGIN TRANSACTION;

ALTER TABLE segment ALTER COLUMN indIP TYPE VARCHAR(255);
ALTER TABLE salle ALTER COLUMN indIP TYPE VARCHAR(255);
ALTER TABLE poste ALTER COLUMN indIP TYPE VARCHAR(255);

ALTER TABLE salle ALTER COLUMN nSalle TYPE VARCHAR(255);
ALTER TABLE poste ALTER COLUMN nSalle TYPE VARCHAR(255);

ALTER TABLE logiciel ALTER COLUMN nLog TYPE VARCHAR(255);
ALTER TABLE installer ALTER COLUMN nLog TYPE VARCHAR(255);

ALTER TABLE poste ALTER COLUMN nPoste TYPE VARCHAR(255);
ALTER TABLE installer ALTER COLUMN nPoste TYPE VARCHAR(255);

ALTER TABLE installer ALTER COLUMN dateIns DROP NOT NULL;

COMMIT;