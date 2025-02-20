-- create schema
CREATE SCHEMA demo;

-- creating a countries table
CREATE TABLE demo.countries (
  country_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  continent_code CHAR(2) NOT NULL,
  population INT
);

-- creating a continents table
CREATE TABLE demo.continents (
  continent_code CHAR(2) PRIMARY KEY,
  continent_name VARCHAR(50) NOT NULL
);

-- altering the countries table column
ALTER TABLE demo.countries
RENAME COLUMN name TO country_name;

-- deleting a database table
DROP TABLE demo.continents;