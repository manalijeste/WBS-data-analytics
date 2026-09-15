DROP DATABASE IF EXISTS cities ;

-- Create the database
CREATE DATABASE cities;

-- Use the database
USE cities;

-- Create the 'authors' table
CREATE TABLE city (
    city_id INT AUTO_INCREMENT, -- 
    city_name VARCHAR(55) NOT NULL, --
    PRIMARY KEY (city_id) -- 
);

-- Create the 'books' table
CREATE TABLE population (
    city_id INT ,
    population INT NOT NULL,
    year_data_retrieved INT, 
    PRIMARY KEY (city_id), 
    FOREIGN KEY (city_id) REFERENCES city(city_id)--
);

INSERT INTO city (city_name)
VALUES('Santiago'),
('Granada');

INSERT INTO population (city_id, population, year_data_retrieved)
VALUES 
(4, 6269384, 2017),
(5, 233532, 2024);

SELECT * FROM city;