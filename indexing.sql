-- CREATE USER indexed_cars_user;
-- CREATE DATABASE indexed_cars OWNER TO indexed_cars_user;

-- Before Indexing
-- 27ms
-- SELECT DISTINCT make_title
-- FROM car_models
-- WHERE make_code='LAM';

-- 40ms
-- SELECT DISTINCT model_title
-- FROM car_models
-- WHERE make_code='NISSAN'
-- AND model_code='GT-R';

--30ms
-- SELECT make_code, model_code, model_title, year
-- FROM car_models
-- WHERE make_code='LAM';

-- 160ms
-- SELECT*
-- FROM car_models
-- WHERE year
-- BETWEEN 2010
-- AND 2015;

-- 45ms
-- SELECT*
-- FROM car_models
-- WHERE year=2010;

-- CREATE INDEX idx_year
-- ON car_models (year);

-- CREATE INDEX idx_make_code
-- ON car_models (make_code);

-- CREATE INDEX idx_model_code
-- ON car_models (model_code);

-- AFTER INDEXING
-- 3ms ---> 24ms faster
-- SELECT DISTINCT make_title
-- FROM car_models
-- WHERE make_code='LAM';

-- 2ms ---> 38ms faster
-- SELECT DISTINCT model_title
-- FROM car_models
-- WHERE make_code='NISSAN'
-- AND model_code='GT-R';

-- 4ms ---> 26ms faster
-- SELECT make_code, model_code, model_title, year
-- FROM car_models
-- WHERE make_code='LAM';

-- 120ms ---> 40ms faster
-- SELECT*
-- FROM car_models
-- WHERE year
-- BETWEEN 2010
-- AND 2015;

-- 30ms ---> 15ms faster
-- SELECT*
-- FROM car_models
-- WHERE year=2010;