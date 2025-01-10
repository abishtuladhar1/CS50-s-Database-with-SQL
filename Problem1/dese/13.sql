--13.sql
--In 13.sql, write a SQL query to answer a question you have about the data! The query should:

--Involve at least one JOIN or subquery

--Name 10 Public schools whose graduation rates are below Average from low to high. Report name and corresponding graduation rate ADN LIMIT 10;

--These answers the question- which top 10 schools that a parent might not want to send their kid to sequentially.
SELECT "schools"."name", "graduated"
FROM "schools"
JOIN "graduation_rates" ON "graduation_rates"."school_id" = "schools"."id"
WHERE type = "Public School" AND "graduated" < (
    SELECT AVG("graduated") FROM "graduation_rates"
)
ORDER BY "graduated" ASC LIMIT 10;
