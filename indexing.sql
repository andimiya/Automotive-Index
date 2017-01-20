-- CREATE USER "indexed_cars_user";
CREATE DATABASE "indexed_cars" OWNER "indexed_cars_user";

SELECT DISTINCT "make_title" FROM "car_models"
  WHERE "make_code" = 'LAM';
  --26.491

SELECT DISTINCT "model_title" FROM "car_models"
  WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R';
  --26.602ms

SELECT "make_code", "model_code", "model_title", "year" FROM "car_models"
  WHERE "make_code" = 'LAM';
  --21.363ms

SELECT * FROM "car_models"
  WHERE year BETWEEN '2010' AND '2015';
  --94.190ms

