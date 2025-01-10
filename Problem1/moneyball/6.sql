/* Which teams might be the biggest competition for the A’s this year? In 6.sql, write a SQL query to return the top 5 teams, sorted by the total number of hits by players in 2001.

Call the column representing total hits by players in 2001 “total hits”.
Sort by total hits, highest to lowest.
Your query should return two columns, one for the teams’ names and one for their total hits in 2001. */

SELECT "t"."name", SUM("pf"."H") AS "Total Hits in 2001"
FROM "performances" AS "pf"
INNER JOIN "teams" AS "t" ON "pf"."team_id" = "t"."id"
WHERE "pf"."year" = 2001
GROUP BY "pf"."team_id"
ORDER BY "Total Hits in 2001" DESC
LIMIT 5;
