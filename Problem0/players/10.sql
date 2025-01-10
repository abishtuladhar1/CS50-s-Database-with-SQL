-- In 10.sql, write SQL query to answer a question of your choice. This query should:
--Make use of AS to rename a column
--Involve at least condition, using WHERE
--Sort by at least one column using ORDER BY

--For this question, I wanted to explore what the average height and weight of all baseball players are in the United States, which is a very useful piece of data for comparison

SELECT ROUND(AVG("height"), 2) AS "Average Height", ROUND(AVG("weight"), 2) AS "Average Weight"
FROM "players"
WHERE "birth_country" = 'USA';

--this query doesnot use the operator ORDER BY because there's only one row of result that doesnot require order.
