DROP TABLE IF EXISTS adoption;
DROP TABLE IF EXISTS animal_type;
DROP TABLE IF EXISTS animal;
DROP TABLE IF EXISTS owner;

-- # db name: animal_shelter

CREATE TABLE animal (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  admission_date DATE,
  adoptable VARCHAR(255),
  animal_type VARCHAR(255),
  adoption_status VARCHAR(255)
);

CREATE TABLE owner (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE animal_type (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE adoption (
  id SERIAL8 PRIMARY KEY,
  adoption_date DATE,
  owner_id SERIAL8 REFERENCES owner(id),
  animal_id SERIAL8 REFERENCES animal(id)
);
