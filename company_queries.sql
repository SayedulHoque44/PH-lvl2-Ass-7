-- Active: 1708939592559@@127.0.0.1@5432@company_db

-- employees  and departments table creation 
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY UNIQUE,
    department_name VARCHAR(50)
)

CREATE TABLE employees (
    employee_id  SERIAL PRIMARY KEY UNIQUE,
    employee_name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100) NOT NULL,
    department_id INTEGER REFERENCES departments(department_id) ON DELETE CASCADE,
    salary NUMERIC(10,2),
    status VARCHAR(30)
)




------ INSERT TABLE DATA
INSERT INTO departments (department_name) VALUES 
    ('Engineering'),
    ('Marketing'),
    ('Finance');
INSERT INTO employees (employee_name, age, email, department_id, salary, status) VALUES
    ('Alice', 30, 'alice@example.com', 1, 60000, NULL),
    ('Bob', 35, 'bob@example.net', 2, 65000, NULL),
    ('Charlie', 28, 'charlie@google.com', 1, 55000, NULL),
    ('David', 33, 'david@yahoo.com', 2, 62000, NULL),
    ('Eve', 31, 'eve@example.net', 3, 58000, NULL),
    ('Frank', 29, 'frank@example.com', 1, 59000, NULL),
    ('Grace', 34, 'grace@google.com', 2, 63000, NULL),
    ('Henry', 32, 'henry@yahoo.com', 3, 57000, NULL),
    ('Ivy', 27, 'ivy@gmail.com', 1, 56000, NULL),
    ('Jack', 36, 'jack@example.net', 2, 64000, NULL),
    ('Karen', 29, 'karen@gmail.com', 3, 60000, NULL),
    ('Liam', 33, 'liam@gmail.com', 1, 59000, NULL),
    ('Mia', 31, 'mia@yahoo.com', 2, 62000, NULL),
    ('Nora', 28, 'nora@yahoo.com', 3, 57000, NULL),
    ('Oliver', 35, 'oliver@example.net', 1, 61000, NULL),
    ('Penelope', 30, 'penelope@google.com', 2, 63000, NULL),
    ('Quinn', 32, 'quinn@google.com', 3, 59000, NULL),
    ('Rachel', 27, 'rachel@gmail.com', 1, 55000, NULL),
    ('Sam', 34, 'sam@example.net', 2, 64000, NULL),
    ('Taylor', 31, 'taylor@yahoo.com', 3, 58000, NULL);


--------------------------- Quries

DROP TABLE employees

DROP TABLE departments

TRUNCATE employees

TRUNCATE departments

SELECT * FROM employees

SELECT * FROM departments

-- Query 1: Retrieve all employees with a salary greater than 60000

SELECT * FROM employees WHERE salary > 60000

-- Query 2: Retrieve the names of employees using a limit of 2, starting from the 3rd employee.

SELECT employee_name FROM employees LIMIT 2  OFFSET 2

-- Query 3: Calculate and display the average age of all employees.

SELECT round(avg(age),1) FROM employees

-- Query 4: Retrieve the names of employees whose email addresses contain 'example.com', 'example.net', or 'google.com'.

SELECT employee_name FROM employees WHERE email ILIKE  '%example.com' OR email ILIKE '%example.net' OR email ILIKE '%google.com'

-- Query 5: Retrieve the names of all employees who belong to the department titled 'Engineering'.

SELECT E.employee_name,D.department_name FROM employees E
    JOIN departments D ON E.department_id = D.department_id
        WHERE D.department_name = 'Engineering'

-- Query 6: Update the status of the employee with the highest salary to 'Promoted'
UPDATE employees
SET status = 'Promoted'
WHERE salary = (select max(salary) from employees)

--Query 7: Retrieve the department name and the average salary of employees in each department:
SELECT D.department_name,avg(E.salary) as avg_salary FROM employees E
    JOIN departments D ON E.department_id = D.department_id
        GROUP BY D.department_name\




        