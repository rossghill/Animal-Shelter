DROP TABLE IF EXISTS adoptions;
DROP TABLE IF EXISTS animal_types;
DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS owners;

-- # db name: animal_shelter

CREATE TABLE animals (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  admission_date DATE,
  adoptable VARCHAR(255),
  animal_type VARCHAR(255),
  adoption_status VARCHAR(255)
);

CREATE TABLE owners (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE animal_types (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE adoptions (
  id SERIAL8 PRIMARY KEY,
  adoption_date DATE,
  owner_id SERIAL8 REFERENCES owner(id),
  animal_id SERIAL8 REFERENCES animal(id)
);
