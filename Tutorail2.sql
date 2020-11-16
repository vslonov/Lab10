SELECT name, continent, population FROM world -- selects name, continent, population column from world table

SELECT name 
FROM world -- selects name column from world table
WHERE population > 200000000 -- specifies to only include entries where the population is over 200 million

SELECT name, gdp/population
FROM world -- selects name, and gdp/population (gdp per capita) column from world table
WHERE population > 200000000 -- specifies to only include where population is over 200 million

SELECT name, population/1000000 
FROM world -- selects name column and population from world table
WHERE continent = 'South America' -- specifies to only show entries in continent column South America

SELECT name, population
FROM world -- selects name and population column from world table
WHERE name in ('France', 'Germany', 'Italy') -- specifies to only include entries of these 3 countries

SELECT name
FROM world -- selects name column from world table
WHERE name LIKE '%united%' -- specifies to only include countries that have united in the name

SELECT name, population, area
FROM world -- selects name, poopulation, area column from world table
WHERE area > 3000000 OR population > 250000000 -- specifies to only include area and population restrictions using > and OR to specify either can be accepted

SELECT name, population, area
FROM world -- selects name, population, area column from world table
WHERE (area > 3000000 AND population < 250000000) -- specifies to only return entries with area > 3 million and population < 25 million
OR ( area < 3000000 AND population > 250000000) -- or the same parameters, but with area higher than 3 million

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2)
FROM world -- selects name column from world table, and rounds down poopulation and gdp to the specified decimals
WHERE continent = 'South America' -- specifies in South America column

SELECT name, ROUND(gdp/population, -3)
FROM world -- selects name column from world table, and rounds down gdp/population (gdp per capita) by 3 decimal places
WHERE gdp > 1000000000000 -- specifies to only include entries where the gdp is over 10 trillion

SELECT name, capital
FROM world -- selects name and capital column from world table
WHERE LENGTH(name) = LENGTH(capital) -- specifies to only return entries where teh length of name and capital are equal

SELECT name, capital
FROM world -- selects name and capital column from world table
WHERE LEFT(name, 1) = LEFT(capital, 1) XOR name = capital -- uses left function to check first letter of entries, and XOR is used to not include entries where tehe name equals the capital

SELECT name 
FROM world -- selects name column from world table
WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %'
-- uses % to specify to only include entries that have vowels in them, as well as not having any empty spaces using NOT LIKE
