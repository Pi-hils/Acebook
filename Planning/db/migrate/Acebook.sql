CREATE TABLE "post" (
  "id" SERIAL,
  "text" VARCHAR(280),
  "timestamp" date
);

CREATE TABLE "comment" (
  "id" SERIAL,
  "text" VARCHAR(280),
  "timestamp" date
);

CREATE TABLE "users" (
  "id" SERIAL,
  "name" VARCHAR(60),
  "password" VARCHAR(60),
  "email" VARCHAR(60)
);

ALTER TABLE "post" ADD FOREIGN KEY ("id") REFERENCES "users" ("id");

ALTER TABLE "comment" ADD FOREIGN KEY ("id") REFERENCES "users" ("id");

ALTER TABLE "comment" ADD FOREIGN KEY ("id") REFERENCES "post" ("id");