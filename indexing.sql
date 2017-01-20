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
  --26.491

SELECT DISTINCT "model_title" FROM "car_models"
  WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R';
  --26.602ms

SELECT "make_code", "model_code", "model_title", "year" FROM "car_models"
  WHERE "make_code" = 'LAM';
  --21.363ms

SELECT * FROM "car_models"
  WHERE "year" BETWEEN '2010' AND '2015';
  --94.190ms

SELECT * FROM "car_models"
  WHERE "year" = '2010';
  --41.953ms

CREATE INDEX "car_models_index"
  ON "indexed_cars";


-- SELECT DISTINCT "make_title" FROM "car_models"
--   WHERE "make_code" = 'LAM';

-- SELECT DISTINCT "model_title" FROM "car_models"
--   WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R';

-- SELECT "make_code", "model_code", "model_title", "year" FROM "car_models"
--   WHERE "make_code" = 'LAM';

-- SELECT * FROM "car_models"
--   WHERE "year" BETWEEN '2010' AND '2015';

-- SELECT * FROM "car_models"
--   WHERE "year" = '2010';