-- db indexed_cars

CREATE TABLE IF NOT EXISTS car_models
(
 id serial,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY (id)
);

CREATE INDEX make_code_columns
  ON car_models (make_code, make_title, model_code, model_title, year);

CREATE INDEX year_index
  ON car_models (year);


SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

SELECT DISTINCT model_title FROM car_models WHERE (make_code = 'NISSAN' and model_code = 'GT-R');

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';

-- SELECT * FROM car_models WHERE ( year >= 2010 and year <= 2015 );
SELECT * FROM car_models WHERE year BETWEEN 2010 and 2015;

SELECT * FROM car_models WHERE year = 2010;