SELECT "first_name" , "last_name" , "salary" , "HR" , "year" FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "performances"."year" = "salaries"."year"
ORDER BY "players"."id" , "salaries"."year", "performances"."HR" DESC, "salaries"."salary" DESC;
