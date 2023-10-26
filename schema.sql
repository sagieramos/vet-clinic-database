/* Day 1 */

CREATE DATABASE vet_clinic;

\c vet_clinic

CREATE TABLE animals (
   id serial PRIMARY KEY,
   name varchar(255),
   date_of_birth date,
   escape_attempts integer,
   neutered boolean,
   weight_kg decimal
);

/* Day 2 */

ALTER TABLE animals
ADD COLUMN species varchar(255);

/* Day 3 */

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255),
    age INTEGER
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- Modify animals

-- Set "id" as an auto-incremented primary key
ALTER TABLE animals
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;

-- Remove the "species" column
ALTER TABLE animals
DROP COLUMN species;

-- Add "species_id" as a foreign key referencing the "species" table
ALTER TABLE animals
ADD COLUMN species_id INTEGER,
ADD CONSTRAINT fk_species_id
FOREIGN KEY (species_id)
REFERENCES species(id);

-- Add "owner_id" as a foreign key referencing the "owners" table
ALTER TABLE animals
ADD COLUMN owner_id INTEGER,
ADD CONSTRAINT fk_owner_id
FOREIGN KEY (owner_id)
REFERENCES owners(id);

/* Day 4 */

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INTEGER,
    date_of_graduation DATE
);

CREATE TABLE specializations (
    id SERIAL PRIMARY KEY,
    vet_id INTEGER REFERENCES vets (id),
    species_id INTEGER REFERENCES species (id)
);

CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    vet_id INTEGER REFERENCES vets (id),
    animal_id INTEGER REFERENCES animals (id),
    visit_date DATE
);

INSERT INTO vets (name, age, date_of_graduation)
VALUES
    ('William Tatcher', 45, '2000-04-23'),
    ('Maisy Smith', 26, '2019-01-17'),
    ('Stephanie Mendez', 64, '1981-05-04'),
    ('Jack Harkness', 38, '2008-06-08');
