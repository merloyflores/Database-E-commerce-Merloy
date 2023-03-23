CREATE TABLE "Users" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int
);

CREATE TABLE "Courses" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "level" varchar,
  "teacher" varchar,
  "category_id" int
);

CREATE TABLE "Course_Videos" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "title" varchar,
  "url" varchar,
  "course_id" int
);

CREATE TABLE "Categories" (
  "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "Categories" ADD FOREIGN KEY ("id") REFERENCES "Courses" ("category_id");

ALTER TABLE "Courses" ADD FOREIGN KEY ("id") REFERENCES "Course_Videos" ("course_id");
