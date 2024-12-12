SELECT "name", "per_pupil_expenditure" , "graduated" FROM "graduation_rates"
JOIN "schools" ON "schools"."id" = "graduation_rates"."school_id"
JOIN "expenditures" ON "expenditures"."district_id" = "schools"."district_id"
ORDER BY "expenditures"."per_pupil_expenditure" DESC, "schools"."name";
