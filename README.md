# MySQL-Assignment-1-DDL-Commands-Constraints
# MySQL Assignment 1 – DDL Commands & Constraints

## Problem Description

The objective was to create an employee database, practice DDL commands, and apply constraints to maintain valid data and relationships between tables.

## Tools Used

- **MySQL**
- **MySQL Workbench 8.0 CE**

## Work Completed

- Created the **employee** database with **Departments**, **Location**, and **Employees** tables.
- Used **ALTER** to add an email column, increase the designation column size, remove age, and rename hire_date to date_of_joining.
- Renamed **Departments** to **Departments_Info** and **Location** to **Locations**.
- Executed **TRUNCATE** on Employees to practice clearing records while retaining the table structure.
- Used **DROP** to remove the Employees table and the database.
- Recreated the original database schema with the required constraints.

## Constraints and Methods Used

- **PRIMARY KEY:** uniquely identified each department, location, and employee.
- **AUTO_INCREMENT:** generated IDs automatically.
- **UNIQUE:** prevented duplicate department and location names.
- **NOT NULL:** required values in specified columns, including employee names.
- **ENUM:** restricted gender values to M or F.
- **CHECK:** required employee age to be at least 18.
- **DEFAULT:** assigned the current date to hire_date when omitted.
- **FOREIGN KEY:** linked Employees to Departments and Location.

## Results

Completed the DDL operations and recreated all three tables with constraints. Inspected the results using **SHOW TABLES**, **DESCRIBE**, **SHOW CREATE TABLE**, and **SELECT**.

The final database uses the original table and column names, with the required constraints applied.
