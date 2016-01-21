-- -- count(*) to get count of entire select query

-- -- Timing Select Statements
-- SELECT DISTINCT make_title FROM car_models WHERE make_code LIKE '%LAM%';
-- -- Time: 29.669 ms

-- SELECT DISTINCT model_title FROM car_models WHERE (make_code = 'NISSAN' and model_code = 'GT-R');
-- -- Time: 25.179 ms

-- SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
-- -- Time: 26.559 ms

-- SELECT * FROM car_models WHERE ( year >= 2010 and year <= 2015 );
-- -- Time: 73.832 ms

-- SELECT * FROM car_models WHERE ( year = 2010 );
-- -- Time: 42.811 ms


-- Indexing
CREATE INDEX make_code_columns
  ON car_models (make_code, make_title, model_code, model_title, year);

CREATE INDEX year_index
  ON car_models (year);


SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
-- Time: 0.827 ms

SELECT DISTINCT model_title FROM car_models WHERE (make_code = 'NISSAN' and model_code = 'GT-R');
-- Time: 0.867 ms

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
-- Time: 1.413 ms

-- SELECT * FROM car_models WHERE ( year >= 2010 and year <= 2015 );
SELECT * FROM car_models WHERE year BETWEEN 2010 and 2015;
-- Time: 66.659 ms

SELECT * FROM car_models WHERE year = 2010;
-- Time: 37.030 ms