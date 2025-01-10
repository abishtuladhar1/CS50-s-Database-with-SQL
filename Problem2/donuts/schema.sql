CREATE TABLE "ingredients"(
    "id" INTEGER,
    "type" TEXT UNIQUE NOT NULL,
    "price_per_unit" REAL,
    "unit" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts"(
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "is_glutten_free" BOOLEAN,
    "price_per_donut" REAL,
    PRIMARY KEY("id")
);

CREATE TABLE "donutIngredient"(
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    PRIMARY KEY("donut_id", "ingredient_id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "orders"(
    "id" INTEGER,
    "order_number" INTEGER NOT NULL,
    "donut_order" TEXT,
    "customer_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "donutOrders"(
    "order_id" INTEGER,
    "donut_id" INTEGER,
    "quantity" REAL,
    PRIMARY KEY("order_id", "donut_id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);

CREATE TABLE "customers"(
    "id" INTEGER,
    "fname" TEXT,
    "lname" TEXT
);

CREATE TABLE "customerOrders"(
    "customer_id" INTEGER,
    "order_id" INTEGER,
    PRIMARY KEY("customer_id", "order_id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id")
);

