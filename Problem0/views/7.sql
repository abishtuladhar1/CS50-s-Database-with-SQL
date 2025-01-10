--In 7.sql, write a SQL query to list the English titles of the 5 brightest prints by Hiroshige, from most to least bright. Compare them to this list on Wikipedia to see if your results match the print’s aesthetics.

SELECT "english_title" FROM "views" WHERE "artist" = 'Hiroshige' ORDER BY "brightness" DESC LIMIT 5;
--after comapring the images with resulted level of brightness, the level of brightness matched up in descending order with the top result being the brightest of all and the bottom result being the least bright.
