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

