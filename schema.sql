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
    full_name VARCHAR,
    age INTEGER
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR
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

