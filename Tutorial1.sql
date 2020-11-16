SELECT name 
FROM world -- selects name column from world table 
  WHERE name LIKE 'B%' -- specifies to only include entries that start with B
  
SELECT name 
FROM world -- selects name colum from world table
  WHERE name LIKE '%Y' -- specifies to only include entries ending in Y
  
SELECT name 
FROM world -- selects name colum from world table
  WHERE name LIKE '%X%' -- specifies to only include countries that have an X
  
SELECT name 
FROM world -- selects name colum from world table 
  WHERE name LIKE '%LAND' -- specifies to only include entries ending in "Land"
  
SELECT name 
FROM world -- selects name colum from world table
  WHERE name LIKE 'C%%ia' -- Specifies to only include entries first starting with a C, and ending with ia
  
SELECT name 
FROM world -- selects name colum from world table
  WHERE name LIKE '%oo%'-- uses WHERE to specifiy to only include entries with "oo" by putting % before and after the specified desired query
  
SELECT name 
FROM world -- selects name colum from world table
  WHERE name LIKE '%a%a%a%'-- specifies to only include entries with three a's in the name, by seperating each with a %
  
SELECT name
FROM world -- selects name colum from world table
 WHERE name LIKE '_t%' -- specifies to only include entries where the second letter is a t, marked by the _ to not count the first character
ORDER BY name -- sorts results by name

SELECT name
FROM world -- selects name colum from world table
 WHERE name LIKE '%o__o%'-- specifies to only bring up entries with two o's seperated by empty spaces, marked by the __
 
SELECT name 
FROM world -- selects name colum from world table
 WHERE name LIKE '____' -- specifies to only return entries with four characters, marked by the four _
 
SELECT name, capital, continent -- selects name, capital, continent colum from world table
  FROM world
 WHERE name = capital -- specifies to only return entries where the entries in the name column are the same for the capital ones
 
 SELECT name
  FROM world -- selects name colum from world table 
 WHERE capital = concat(name,' City') -- uses concat to specify that the capital is the same name as the entry followed by City, such as Mexico City
 
 SELECT capital, name
FROM world -- selects capital, name colum from world table
WHERE capital LIKE concat('%', name, '%') -- specifies to only include entries that include the name of the entry

SELECT capital, name
FROM world -- selects capital, name colum from world table
WHERE capital LIKE concat('%', name, '%')  -- specifies to only include entries that include the name of the entry
AND capital > name -- as well as having the capital be longer than the name
