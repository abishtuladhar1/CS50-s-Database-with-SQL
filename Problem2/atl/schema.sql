CREATE TABLE "passengers"(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "checkins" (
    "id" INTEGER,
    "passenger_id" INTEGER,
    "flight_id" INTEGER,
    "checkin_time" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id"),
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id")
);

CREATE TABLE "flights"(
    "id" INTEGER,
    "flight_number" INTEGER NOT NULL,
    "airline" TEXT NOT NULL,
    "airline_id" INTEGER,
    "dept_airline_code" TEXT NOT NULL,
    "arrival_arline_code" TEXT NOT NULL,
    "expected_departure_time" NUMERIC,
    "expected_arrival_time" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);

CREATE TABLE "airlines"(
    "id" INTEGER,
    "name" TEXT UNIQUE NOT NULL,
    "concourse" TEXT NOT NULL,
    PRIMARY KEY("id")
);
