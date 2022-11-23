-- Drop Tables
DROP TABLE IF EXISTS passanger;
DROP TABLE IF EXISTS driver;
DROP TABLE IF EXISTS trip;

-- Create Tables
CREATE TABLE passanger (
    passanger_id int AUTO_INCREMENT,
    first_name text,
    last_name text,
    mobile_no text,
    email text,
    PRIMARY KEY(passanger_id)
);
CREATE TABLE driver (
    driver_id int AUTO_INCREMENT,
    first_name text,
    last_name text,
    mobile_no text,
    email text,
    id_no text,
    car_no text,
    PRIMARY KEY(driver_id)
);
CREATE TABLE trip (
    trip_id int AUTO_INCREMENT,
    driver_id int REFERENCES driver(driver_id),
    passanger_id int REFERENCES passanger(passanger_id),
    pickup text,
    dropoff text,
    start TIMESTAMP,
    end TIMESTAMP,
    PRIMARY KEY(trip_id)
);