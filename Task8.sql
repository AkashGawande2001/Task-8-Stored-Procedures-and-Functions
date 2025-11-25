create database Task8

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO Employees (emp_id, name, department, salary) VALUES
(1, 'Akash Gawande', 'IT', 55000),
(2, 'Ravi Sharma', 'HR', 40000),
(3, 'Sneha Patil', 'Finance', 60000),
(4, 'Mayur Mahajan', 'IT', 65000),
(5, 'Priya Deshmukh', 'Marketing', 45000);

DELIMITER $$

CREATE PROCEDURE GetHighSalaryEmployees(IN min_salary DECIMAL(10,2))
BEGIN
    SELECT emp_id, name, department, salary
    FROM Employees
    WHERE salary > min_salary;
END $$

DELIMITER ;

CALL GetHighSalaryEmployees(50000);