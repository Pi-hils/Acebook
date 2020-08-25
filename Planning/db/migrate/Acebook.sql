CREATE TABLE IF NOT EXIST "post" (
  "id" SERIAL,
  "text" VARCHAR(280),
  "timestamp" date
);

CREATE TABLE IF NOT EXIST  "comment" (
  "id" SERIAL,
  "text" VARCHAR(280),
  "timestamp" date
);

CREATE TABLE IF NOT EXIST "user" (
  "id" SERIAL,
  "name" VARCHAR(60),
  "password" VARCHAR(60),
  "email" VARCHAR(60)
);

ALTER TABLE "post" ADD FOREIGN KEY ("id") REFERENCES "user" ("id");

ALTER TABLE "comment" ADD FOREIGN KEY ("id") REFERENCES "user" ("id");

ALTER TABLE "comment" ADD FOREIGN KEY ("id") REFERENCES "post" ("id");