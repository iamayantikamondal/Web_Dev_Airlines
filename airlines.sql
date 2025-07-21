CREATE DATABASE IF NOT EXISTS airline_management;

USE airline_management;

CREATE TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
);

CREATE TABLE flights (
id INT AUTO_INCREMENT PRIMARY KEY,
flight_name VARCHAR(50) NOT NULL,
model_number VARCHAR(50),
departure_city_id INT,
arrival_city_id INT,
departure_time TIME,
price DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (departure_city_id) REFERENCES cities(id) ON DELETE CASCADE,
FOREIGN KEY (arrival_city_id) REFERENCES cities(id) ON DELETE CASCADE
);

CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    passenger_name VARCHAR(255) NOT NULL,
    flight_id INT NOT NULL,
    tickets INT NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (flight_id) REFERENCES flights(id) ON DELETE CASCADE
);
