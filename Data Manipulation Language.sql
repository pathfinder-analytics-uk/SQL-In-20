-- insert records into the countries table
-- multi row insert
INSERT INTO demo.countries (country_id, country_name, continent_code, population) VALUES
(1, 'United States', 'NA', 331000000),
(2, 'Canada', 'NA', 37700000),
(3, 'Brazil', 'SA', 211000000),
(4, 'United Kingdom', 'EU', 67800000),
(5, 'Germany', 'EU', 83000000),
(6, 'France', 'EU', 67000000),
(7, 'India', 'AS', 1380000000),
(8, 'China', 'AS', 1439323776),
(9, 'Australia', 'OC', 25600000),
(20, 'South Africa', 'AF', 59300000);

-- inserting records into the continents table
-- single record inserts
INSERT INTO demo.continents (continent_code, continent_name) VALUES ('NA', 'North America');
INSERT INTO demo.continents (continent_code, continent_name) VALUES ('SA', 'South America');
INSERT INTO demo.continents (continent_code, continent_name) VALUES ('EU', 'Europe');
INSERT INTO demo.continents (continent_code, continent_name) VALUES ('AS', 'Asia');
INSERT INTO demo.continents (continent_code, continent_name) VALUES ('OC', 'Oceania');
INSERT INTO demo.continents (continent_code, continent_name) VALUES ('AF', 'Africa');

-- voilates the column constraint
INSERT INTO demo.continents (continent_code, continent_name) VALUES ('AF', NULL);