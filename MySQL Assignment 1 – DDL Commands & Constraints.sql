-- 1. Table Creation (CREATE):

create database employee;
use employee;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100));
    
CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30));
    
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10, 2),
  
FOREIGN KEY (department_id) REFERENCES Departments(department_id),
FOREIGN KEY (location_id) REFERENCES Location(location_id));

select * from Departments;
select * from Location;
select * from Employees;

-- 2. Table Alteration (ALTER):

ALTER TABLE Employees
ADD COLUMN email VARCHAR(255);

ALTER TABLE Employees
MODIFY COLUMN designation VARCHAR(255);

ALTER TABLE Employees
DROP COLUMN age;

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

DESCRIBE Employees;

-- 3. Table Renaming (RENAME)

RENAME TABLE Departments TO Departments_Info;

RENAME TABLE Location TO Locations;
SHOW TABLES;

-- 4. Table Truncation (TRUNCATE)

TRUNCATE TABLE Employees;

-- 5. Database & Table Dropping (DROP)

DROP TABLE Employees;

DROP DATABASE employee;

-- Constraints
-- 1. Database Recreation

DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;

-- 2. Departments Table

CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) UNIQUE NOT NULL);
    
    -- 3. Location Table

CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30) UNIQUE NOT NULL);
    
    -- 4. Employees Table

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F') NOT NULL,
    age INT NOT NULL CHECK (age >= 18),
    hire_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10, 2),

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Location(location_id));
        
SHOW TABLES;
SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Employees;
    




    
    
    