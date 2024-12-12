
-- *** The Lost Letter ***
SELECT "type", "address" FROM "addresses" WHERE "id" =
(
    SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "package_id" = (
        SELECT "id" FROM "packages" WHERE "contents" LIKE '%congratulatory%'
    )
);
-- *** The Devious Delivery ***
SELECT "type" FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL
    )
);
SELECT "contents" FROM "packages" WHERE "from_address_id" IS NULL;
-- *** The Forgotten Gift ***
SELECT "contents" FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street'
);
SELECT "name" FROM "drivers" WHERE "id" IN (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages"
        WHERE "from_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street')
        AND "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place')
    )
    ORDER BY "timestamp" DESC
    LIMIT 1
);
