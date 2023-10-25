BEGIN;

UPDATE animals SET species = 'Unspecified';

SELECT * FROM animals;

ROLLBACK;

SELECT * FROM animals;