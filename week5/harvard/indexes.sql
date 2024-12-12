CREATE INDEX "student_historical_course_enrollments"
ON "enrollments" ("student_id");

CREATE INDEX "enrolled_in_course"
ON "enrollments" ("course_id");

CREATE INDEX "departement_index"
ON "courses" ("departement") WHERE "semester" = 'Spring 2024';


CREATE INDEX "requirement_satisfied" ON "courses" ("departement");

CREATE INDEX "title_index" ON "courses" ("title");

CREATE INDEX "courses_in_each_requirement" ON "satisfies" ("requirement_id");

CREATE INDEX "course_semester" ON "courses" ("semester");
