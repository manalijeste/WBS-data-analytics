-- DROP DATABASE IF EXISTS cities ;

-- Create the database
-- CREATE DATABASE flights;

-- Use the database
USE cities;

-- Create the 'flights' table
CREATE TABLE flights (
    -- flight_id INT, -- 
    flight_number VARCHAR(25), 
    airline VARCHAR (55),
    departure_airport VARCHAR(25),
    departure_city VARCHAR(25),
    arrival_airport VARCHAR (25),
    arrival_time DATETIME,
    PRIMARY KEY (flight_number) -- 
);

-- Create the 'airports' table
CREATE TABLE airports (
    airport_icao VARCHAR(25),
    airport_name VARCHAR(255),
    PRIMARY KEY (airport_icao) 
);-- FOREIGN KEY (city_id) REFERENCES city(city_id)--


SELECT * FROM airports;