-- SQL Member Count
-- Your table: maintable_V5ZVW

-- MySQL version: 8.0.23

-- In this MySQL challenge, your query should return the names of the people who are reported to (excluding null values), 
-- the number of members that report to them, and the average age of those members as an integer. 
-- The rows should be ordered by the names in alphabetical order. Your output should look like the following table.

-- Tags

----------Solutions---------------------

/* write your SQL query below */

SELECT ReportsTO, COUNT(*) as Members,
 CEIL(AVG(Age)) AS "Average Age" 
 FROM maintable_V5ZVW
 WHERE ReportsTO is NOT NULL
 GROUP BY ReportsTO
 ORDER BY ReportsTO 
