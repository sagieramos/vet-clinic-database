/* BEGIN;

UPDATE animals SET species = 'Unspecified';

SELECT * FROM animals;

ROLLBACK;

SELECT * FROM animals; */

/* BEGIN;

UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';

UPDATE animals
SET species = 'pokemon'
WHERE species IS NULL OR species = '';

SELECT * FROM animals;

COMMIT;

SELECT * FROM animals;
 */

BEGIN;

DELETE FROM animals;

ROLLBACK;

SELECT * FROM animals;
