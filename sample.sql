-- Create a new database
CREATE DATABASE DEMO_PI
    AS PERMANENT = 60000000,
    SPOOL = 120000000;

-- Switch to the newly created database
DATABASE DEMO_PI;

-- Create a simple table
CREATE TABLE employees (
    emp_id INTEGER NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10,2),
    department VARCHAR(50)
) PRIMARY INDEX (emp_id);

-- Populate the table with sample data
INSERT INTO employees (emp_id, first_name, last_name, hire_date, salary, department)
VALUES (1001, 'John', 'Smith', '2020-01-15', 65000.00, 'Marketing');

INSERT INTO employees (emp_id, first_name, last_name, hire_date, salary, department)
VALUES (1002, 'Sarah', 'Johnson', '2019-05-22', 72000.00, 'Finance');

INSERT INTO employees (emp_id, first_name, last_name, hire_date, salary, department)
VALUES (1003, 'Michael', 'Brown', '2021-03-10', 58000.00, 'IT');

INSERT INTO employees (emp_id, first_name, last_name, hire_date, salary, department)
VALUES (1004, 'Jessica', 'Davis', '2018-11-05', 81000.00, 'Human Resources');

INSERT INTO employees (emp_id, first_name, last_name, hire_date, salary, department)
VALUES (1005, 'David', 'Wilson', '2022-02-18', 63000.00, 'Operations');

-- Verify data was inserted correctly
SELECT * FROM employees;