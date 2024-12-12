CREATE VIEW "june_vacancies" AS
SELECT "listings"."id" AS "id", "property_type", "host_name", COUNT("date") AS "days_vacant" FROM "listings"
JOIN "availabilities" ON "availabilities"."listing_id" = "listings"."id"
GROUP BY "availabilities"."listing_id"
HAVING "availabilities"."available" = 'TRUE' AND "availabilities"."date" = '2023-06-%';
