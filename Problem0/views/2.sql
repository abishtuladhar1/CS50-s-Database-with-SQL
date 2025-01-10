--In 2.sql, write a SQL query to list the average colors of prints by Hokusai that include “river” in the English title. (As an aside, do they have any hint of blue?)


SELECT "average_color" FROM "views" WHERE "artist" = 'Hokusai' AND "english_title" LIKE '%river%';

--yes the middle two letters/numbers help us get the answer. The three answers we got and it's lights in blue are a1, b3 and a7 respectively which is 161, 179, and 167 respectively.
--plus if we think about it again with common sense, the picture of a "river" has to have majority of "blue" color in it.
