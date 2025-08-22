-- Create Database
CREATE DATABASE customer_db;
USE customer_db;

-- CREATE: Create Customer table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(50),
    country VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- INSERT (Create): Add sample customers
INSERT INTO Customer (first_name, last_name, email, phone, address, city, country) VALUES
('Kingsley', 'Donkor', 'king@gmail.com', '0547793444', 'Fiapre', 'Sunyani', 'Ghana'),
('Joseph', 'Asare', 'asere@gmail.com', '0503718429', 'Old Tafo', 'Kumasi', 'Ghana'),
('Benjamin', 'Mensah', 'mensah@gmail.com', '0554291913', 'Tema', 'Accra', 'Ghana');

-- READ: Select operations
-- Select all customers
SELECT * FROM Customer;

-- Select specific customer by ID
SELECT * FROM Customer WHERE customer_id = 1;

-- Select customers by city
SELECT * FROM Customer WHERE city = 'Sunyani';

-- Select with specific columns
SELECT first_name, last_name, email FROM Customer;

-- UPDATE: Modify existing records
-- Update a customer's phone number
UPDATE Customer 
SET phone = '0503248731' 
WHERE customer_id = 1;

-- Update multiple fields
UPDATE Customer 
SET address = 'Krachi', city = 'Oti' 
WHERE customer_id = 2;

-- DELETE: Remove records
-- Delete a specific customer
DELETE FROM Customer WHERE customer_id = 3;

-- Delete customers from a specific city
-- DELETE FROM Customer WHERE city = 'Accra';

-- Verify the changes
SELECT * FROM Customer;