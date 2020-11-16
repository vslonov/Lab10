SELECT yr, subject, winner
  FROM nobel -- specifies to return columns yr, subject, winner from nobel table
 WHERE yr = 1950 -- only returns entries where the yr value is 1950
 
 SELECT winner
  FROM nobel 
 WHERE yr = 1962 -- specifies to select winner column from nobel table where the year value is 1962
   AND subject = 'Literature' -- specifies to only return entries where subject is literature
   
SELECT yr, subject
FROM nobel -- specifies to select yr and subject column from nobel table
WHERE winner = 'Albert Einstein' -- specifies to only return entries where the winner value is Albert Einstein

SELECT winner
FROM nobel
WHERE subject = 'Peace' -- selects winner column from nobel table where the subject is equal to 'Peace'
AND yr >= 2000 -- specifies to only include years after and including 2000

SELECT * -- selects all values 
FROM nobel -- specifically from nobel table
WHERE subject = 'Literature' -- where the subject was Literature
AND yr BETWEEN 1980 AND 1989 -- specifically between these years

SELECT *
FROM nobel -- selects all columns from nobel table
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama') -- only entries matching these names are included

SELECT winner
FROM nobel -- selects winner column from nobel table
WHERE winner LIKE 'John%' -- using %, specifically after John, to specify to only include entries where John is the first name

SELECT *
FROM nobel -- selects all entries in nobel table
WHERE (subject = 'Physics' AND yr = '1980') -- specifying to only include the subject Physics in 1980
OR (subject = 'Chemistry' AND yr = 1984) -- or Chemistry in 1984

SELECT *
FROM nobel 
WHERE yr = 1980  -- selects all entries from nobel table in year 1980
AND subject NOT IN ('Chemistry', 'Medicine') -- specifies to not include entries including Chemistry or Medicine fields

SELECT *
FROM nobel -- selects all entries from nobel table
WHERE (subject  = 'Medicine' AND yr < 1910) -- for values in Medicine and specifiyng year to be greater than 1910
OR (subject = 'Literature' AND yr >= 2004) -- also includes those in Literature and past and including 2004 year

SELECT *
FROM nobel -- selects all entries from nobel table
WHERE winner LIKE 'Peter Grunberg' -- specifically for Peter Grunberg entry

SELECT *
FROM nobel -- selects all entries from nobel table
WHERE winner = 'Eugene O''Neill' -- since the name features a ', you can put another ' to include it in query and not count it as a quotation for a paramter

SELECT winner, yr, subject
FROM nobel -- selects winner, yr, subject column from nobel table
WHERE winner LIKE 'sir%' -- uses LIKE and % to specify only entries starting with Sir
ORDER BY yr DESC, winner -- orders the entries in descending(using DESC) order and winner
