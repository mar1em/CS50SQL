-- Users
CREATE TABLE "users"(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL UNIQUE,
    PRIMARY KEY("id")
);
-- Schools and Universities
CREATE TABLE "schools" (
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "year" INTEGER,
    PRIMARY KEY("id")
);
--Companies
CREATE TABLE "companies"(
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

--Connections with People
CREATE TABLE "people_connections"(
    "user_id" INTEGER,
    "follow_id" INTEGER,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("follow_id") REFERENCES "users"("id")
);

-- Connections with Schools
CREATE TABLE "schools_connctions"(
    "id" INTEGER,
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start_affiliation" NUMERIC,
    "end_affiliation" NUMERIC,
    "type_degree" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

--Connections with Companies
CREATE TABLE "companies_connctions"(
    "id" INTEGER,
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_affiliation" NUMERIC,
    "end_affiliation" NUMERIC,
    "title" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);






