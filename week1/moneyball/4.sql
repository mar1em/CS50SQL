SELECT "first_name", "last_name" , "salary" FROM "players"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
WHERE "salaries"."year" = 2001
ORDER BY "salaries"."salary" , "players"."first_name" , "players"."last_name" , "players"."id"
LIMIT 50;
