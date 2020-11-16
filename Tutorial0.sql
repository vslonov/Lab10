SELECT population FROM world -- Selects the specific population column from world table
  WHERE name = 'France' -- Uses WHERE keyword to specify to only select it where the name of the row is France

SELECT name, population 
FROM world -- Selects specifically the name and population from the world table
  WHERE name IN ('Sweden', 'Norway', 'Denmark') -- Specifies to only select these three countries
  
SELECT name, area 
FROM world -- Selects the name and area columns from world table
  WHERE area BETWEEN 200000 AND 250000 -- Uses WHERE keyword to specify to only select rows where area is between 200,000 and 250,000
