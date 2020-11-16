SELECT SUM(population) -- selects SUM(total) of all population values
FROM world -- from world table

SELECT DISTINCT continent
FROM world -- uses DISTINCT keyword to only select each entry from continent column one time from world table

SELECT SUM(gdp)
FROM world -- uses SUM to find total of gdp column from world table
WHERE continent = 'Africa' -- specifies to include continent of Africa only

SELECT COUNT(name)
FROM world -- uses COUNT keyword to return total value from name column in world table
WHERE area >= 1000000 -- specifies to only include entries with area over 1000000

SELECT SUM(population)
FROM world -- uses SUM to find total of values in population columns from world table
WHERE name IN ('Estonia', 'Latvia', 'Lithuania') -- specifiying to only sum up values where the name matches these countries

SELECT continent, COUNT(name)
FROM world -- selects continent column and a total count of the values listed for the name column
GROUP BY continent -- groups the results by continent


SELECT continent, COUNT(name)
FROM world -- selects continent column and a count sun of amount of name entries listed
WHERE population >= 10000000 -- specifies to only include entries where population value is over 10000000
GROUP BY continent -- groups results by continent

SELECT continent
FROM world -- selects continent column from world table
GROUP BY continent 
HAVING SUM(population) > 100000000 -- groups results by continent that have a sum population of over 100 million


