DROP DATABASE IF EXISTS "indexed_cars";
DROP USER "indexed_cars_user";

CREATE USER "indexed_cars_user";
CREATE DATABASE "indexed_cars" OWNER "indexed_cars_user";

\c indexed_cars

\i scripts/car_models.sql

\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql

SELECT DISTINCT "make_title" FROM "car_models"
  WHERE "make_code" = 'LAM';
  --32.809

SELECT DISTINCT "model_title" FROM "car_models"
  WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R';
  --21.787ms

SELECT "make_code", "model_code", "model_title", "year" FROM "car_models"
  WHERE "make_code" = 'LAM';
  --27.356ms

SELECT * FROM "car_models"
  WHERE "year" BETWEEN '2010' AND '2015';
  --84.431ms

SELECT * FROM "car_models"
  WHERE "year" = '2010';
  --59.614ms

CREATE INDEX "car_index" ON "car_models" ("make_code");

SELECT DISTINCT "make_title" FROM "car_models"
  WHERE "make_code" = 'LAM';
  --1.239ms

SELECT DISTINCT "model_title" FROM "car_models"
  WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R';
  --1.728ms

SELECT "make_code", "model_code", "model_title", "year" FROM "car_models"
  WHERE "make_code" = 'LAM';
  --1.128ms

SELECT * FROM "car_models"
  WHERE "year" BETWEEN '2010' AND '2015';
  --83.950ms

SELECT * FROM "car_models"
  WHERE "year" = '2010';
  --37.803