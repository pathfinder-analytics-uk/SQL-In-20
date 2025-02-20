/*
 This query retrieves all columns and all rows from the
 'countries' table in the 'demo' schema
 */
select * from demo.countries;

/*
 This query retrieves all columns and all rows from the
 'countries' table in the 'demo' schema
 */
select * from demo.continents;

/*
 This query retrieves the country_name, continent_code,
 and population columns from the demo.countries table.
*/
SELECT 
    country_name, 
    continent_code, 
    population
FROM
    demo.countries;

/*
This query retrieves data from the demo.countries table and
renames two of the columns in the output.
*/
SELECT 
    country_name AS country,
    continent_code AS continent,
    population
FROM
    demo.countries;

/*
 This query retrieves all rows and columns from the demo.countries
table where the population is greater than 100,000,000.
*/
select * from demo.countries where population > 100000000;

/*
 This query calculates the total population for each continent by
 grouping all rows in the demo.countries table by continent_code
 and summing the population for each group, with the result labeled 
 as total_population
*/
SELECT 
    continent_code, 
    SUM(population) AS total_population
FROM
    demo.countries
GROUP BY continent_code;

/*
 This query joins two tables: demo.countries (aliased as t1) and demo.continents (aliased as t2).
 It retrieves the country_name from the countries table and renames it as country,
 the continent_name from the continents table as continent, and the population from the countries table.
 The join is performed on the continent_code column, ensuring that each country is matched
 with its corresponding continent.
*/
SELECT 
    t1.country_name AS country,
    t2.continent_name AS continent,
    t1.population AS population
FROM
    demo.countries AS t1
JOIN
    demo.continents AS t2 ON t1.continent_code = t2.continent_code;

