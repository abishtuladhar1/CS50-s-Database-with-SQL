
-- *** The Lost Letter ***

SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue';

-- After running the above query we know that the id of the address is 432

SELECT "id" FROM "packages" WHERE "from_address_id" = 432;

-- There are multiple results so we try to figure out which package id she was referring to by narrowing down and filtering our search

SELECT "id", "contents" FROM "packages" WHERE "from_address_id" = 432; -- From this code we find our that the id for the content "congratulatory note is 384"

-- now we know that the package id is 384 we just need to know where this package was last scanned

SELECT "address_id", "driver_id", "action", "timestamp" FROM "scans" WHERE "package_id" = 384;
 -- using this code we figured out that that the package was dropped off in the address with address id 854, now we just need to know the type of the address

 SELECT "address", "type" FROM "addresses" WHERE "id" = 854;
 -- with this code we now know the address and address type where the package ended up which was 2 Finnigan Street. They got the "e" mistaken for an "i".




-- *** The Devious Delivery ***

SELECT "id", "contents", "to_address_id" FROM "packages" WHERE "from_address_id" IS NULL;

-- from this code, we can know all the details and specially the package's id which is 5098;

-- also from this code, we know that the person who gave the package wrote down the contents of the packages as "Duck Debugger"
-- and finally it was supposed to be delivered to address 50
-- the package was supposed to be delivered to 123 Sesame Street

SELECT "address_id", "action" FROM "scans" WHERE "package_id" = 5098;
-- This packages was last scanned and dropped off in address who's id is 348

SELECT "address", "type" FROM "addresses" WHERE "id" = 348;

-- Alas, the package ended up in a police station

-- *** The Forgotten Gift ***

SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place'; -- ID IS 4983
SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street';  -- ID IS 9873

-- I ran both codes but it seems the address id from the sender does not exist so I believe there's something wrong from sender's side

SELECT "id", "contents" FROM "packages" WHERE "from_address_id" = 9873 AND "to_address_id" = 4983; -- package id is 9523 and the contents were flowers

--all three codes above can be written as subquery as follows

SELECT "id" FROM "packages"
WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
)
AND "to_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place'
);


SELECT "address_id", "action", "driver_id" FROM "scans" WHERE "package_id" = 9523;

SELECT "name" FROM "drivers" WHERE "id" = 17;

