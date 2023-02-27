-- List the employee number, last name, first name, sex, and salary of each employee
CREATE TABLE employees (
	"emp_no" VARCHAR NOT NULL,
	"first_name" VARCHAR NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"sex" INT NOT NULL,
	"salary" INT NOT NULL
);

-- List the first name, last name, and hire date for the employees who were hired in 1986.
CREATE TABLE hired (
	"first_name" VARCHAR NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"hire_date" INT NOT NULL
);

-- PART 1 OF 2 - List the manager of each department along with their department number, 
CREATE TABLE manager (
	"dept_no" VARCHAR NOT NULL,
	"emp_no" INT NOT NULL
);

-- PART 2 OF 2 - department name, employee number, last name, and first name.
CREATE TABLE department (	
	"dept_name" VARCHAR NOT NULL,
	"emp_no" INT NOT NULL,
	"last_name" VARCHAR NOT NULL,
	"first_name" VARCHAR NOT NULL
);