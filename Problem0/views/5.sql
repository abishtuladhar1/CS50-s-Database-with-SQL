--In 5.sql, write a SQL query to find the highest contrast value of prints by Hokusai. Name the column “Maximum Contrast”. Does Hokusai’s prints most contrasting print actually have much contrast?


SELECT MAX("contrast") AS "Maximum Contrast" FROM "views" WHERE "artist" = 'Hokusai';

--in the range of contrast from 0 to 1 where 0 is low and 1 is max, 0.65 falls around in the middle, so i would say Hokusai
