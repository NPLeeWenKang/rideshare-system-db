-- Drop Tables
DROP TABLE IF EXISTS passenger;
DROP TABLE IF EXISTS driver;
DROP TABLE IF EXISTS trip;
DROP TABLE IF EXISTS trip_assignment;

-- Create Tables
CREATE TABLE passenger (
    passenger_id int AUTO_INCREMENT,
    first_name text,
    last_name text,
    mobile_no text,
    email text,
    PRIMARY KEY(passenger_id)
);
CREATE TABLE driver (
    driver_id int AUTO_INCREMENT,
    first_name text,
    last_name text,
    mobile_no text,
    email text,
    id_no text,
    car_no text,
    is_available BOOLEAN,
    PRIMARY KEY(driver_id)
);
CREATE TABLE trip (
    trip_id int AUTO_INCREMENT,
    passenger_id int REFERENCES passenger(passenger_id),
    pick_up text,
    drop_off text,
    start TIMESTAMP,
    end TIMESTAMP,
    PRIMARY KEY(trip_id, passenger_id)
);

CREATE TABLE trip_assignment (
    trip_id int REFERENCES trip(trip_id),
    driver_id int REFERENCES driver(driver_id),
    status text CHECK (status IN ('PENDING', 'REJECTED','ACCEPTED','DRIVING','DONE')),
    assign_datetime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(trip_id, driver_id)
);