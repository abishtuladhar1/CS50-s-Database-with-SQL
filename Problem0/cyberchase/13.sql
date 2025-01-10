--In 13.sql, write a SQL query to explore a question of your choice. This query should:
--Involve at least one condition, using WHERE with AND or OR

SELECT "id", "season", "title", "episode_in_season" FROM "episodes" WHERE "topic" IS NOT NULL AND "air_date" BETWEEN "2007-01-01" AND "2016-12-31";
