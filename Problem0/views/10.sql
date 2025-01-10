--In 10.sql, write a SQL query to answer a question of your choice about the prints. The query should:
--Make use of AS to rename a column
--Involve at least one condition, using WHERE
--Sort by at least one column, using ORDER BY


--For this question, THE STATEMENT AFTER WHERE FOR CLARITY INSPITE OF IT BEING UNNECESSARY. This query answers question from 9.sql but by using ORDER BY AND DESC OPERATORS.

SELECT "english_title", "artist" FROM "views" WHERE "artist" = 'Hokusai' OR 'Hiroshige' ORDER BY "brightness" DESC LIMIT 1;


--optional method to solve 9.sql
