SELECT "name" , "per_pupil_expenditure" , "exemplary" FROM "districts"
JOIN "expenditures" ON "districts"."id" = "expenditures"."district_id"
JOIN "staff_evaluations" ON "expenditures"."district_id" = "staff_evaluations"."district_id"
WHERE "expenditures"."per_pupil_expenditure" > (SELECT AVG("per_pupil_expenditure") FROM "expenditures")
AND "staff_evaluations"."exemplary" > (SELECT AVG("expemplary") FROM "staff_evaluations");
