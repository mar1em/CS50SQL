CREATE TABLE "ingredients"(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "price_per_unit" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts"(
    "id" INTEGER,
    "name" TEXT,
    "gluten_free" TEXT NOT NULL CHECK ("gluten_free" IN ('Yes', 'No')),
    "price_per_donut" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE "customers"(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "order_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);

CREATE TABLE "orders"(
    "id" INTEGER,
    "donut_id" INTEGER,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);
