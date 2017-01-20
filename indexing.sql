-- CREATE USER "indexed_cars_user";
CREATE DATABASE "indexed_cars" OWNER "indexed_cars_user";

SELECT DISTINCT "make_title" FROM "car_models"
  WHERE "make_code" = 'LAM';

SELECT DISTINCT "model_title" FROM "car_models"
  WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R';