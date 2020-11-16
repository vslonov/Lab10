SELECT name 
FROM world -- selects name column from world table
  WHERE population > 
     (SELECT population FROM world
      WHERE name='Russia') -- specifies to check population is greater than specific entries from Russia
      
SELECT name, continent
FROM world -- selects name and continent from world table
WHERE continent IN (
  SELECT continent -- selects continents in Europe from world table specifiying in Argentina or Austraila
  FROM world
  WHERE name IN ('Argentina', 'Australia')) 

SELECT name, population
FROM world -- selects name and population column from world table
WHERE population > (
  SELECT population
  FROM world
  WHERE name = 'Canada') -- specifies to select population of Canada

AND population < (
  SELECT population
  FROM world
  WHERE name = 'Poland') -- specifies to select entries where poopulation is greater than that of Poland
  
SELECT name
FROM world -- selects name from world table
WHERE gdp >= 
ALL(SELECT gdp FROM world WHERE gdp >=0  -- selects gdp from world table greater than 0
    AND continent = 'Europe') XOR continent = 'Europe'  -- and specifies to not include the Europe continent
