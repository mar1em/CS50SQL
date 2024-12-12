CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id" AS "id", "property_type", "host_name", COUNT("comments") AS "reviews" FROM "listings"
JOIN "reviews" ON "listings"."id" = "reviews"."listing_id"
GROUP BY "reviews"."listing_id"
ORDER BY "reviews" DESC, "property_type", "host_name"
LIMIT 100;

