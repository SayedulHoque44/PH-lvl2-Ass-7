-- Active: 1708939592559@@127.0.0.1@5432@company_db

-- employees  and departments table creation 
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)

CREATE TABLE employees (
    employee_id  SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100) NOT NULL,
    department_id INTEGER REFERENCES departments(department_id) ON DELETE CASCADE,
    salary NUMERIC(3,2),
    status VARCHAR(30)
)
