--Data Engineering

-- CSV'S
	-- departments columns: dept_no, dept_name
	-- titles columns: title_id, title
	-- employees columns: 
    	-- emp_no, emp_title_id, birth_date
    	-- first_name,last_name,sex,hire_date
	-- salaries columns: emp_no, salary
	-- dept_emp columns: emp_no, dept_no
	-- dept_manager columns: dept_no, emp_no -- SAME AS DEPT_EMP
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE departments;
DROP TABLE titles;
DROP TABLE dept_emp;
DROP TABLE dept_manager;

-- Department number is a primary key, also exists in department employees and department manager csv
CREATE TABLE "departments" (
    "dept_no" VARCHAR NOT NULL,
    "dept_name" VARCHAR NOT NULL,
    CONSTRAINT "departments_pk" PRIMARY KEY ("dept_no")
	);

-- Title id is a primary key, and it also found in employees as emp_title_id
CREATE TABLE "titles" (
    "title_id" VARCHAR NOT NULL,
    "title" VARCHAR NOT NULL,
    CONSTRAINT "titles_pk" PRIMARY KEY ("title_id")
);

-- "emp_no" is the primary key
-- Additionally, "emp_no" is found in department employees, department manager and salaries list
CREATE TABLE "employees" (
    "emp_no" INT NOT NULL,
    -- Employees have a title id employees(emp_title_id)
    -- So, this id has relationship with the composite foreign key titles(title_id)
    "emp_title_id" VARCHAR NOT NULL,
    "birth_date" DATE NOT NULL, -- Employee's birth date
    "first_name" VARCHAR NOT NULL, -- Employee's first name
    "last_name" VARCHAR NOT NULL, -- Employee's last name
    "sex" VARCHAR NOT NULL, -- Employee's sex
    "hire_date" DATE NOT NULL, -- Employee's hired date
    
	CONSTRAINT "employees_pk" PRIMARY KEY (
        "emp_no"
     )
);

--salary table: "emp_no" is Primary Key
CREATE TABLE "salaries" (
    "emp_no" INT NOT NULL,
    "salary" INT NOT NULL,
    CONSTRAINT "salaries_pk" PRIMARY KEY ("emp_no")
);

-- Employee Department relationship: id is Primary Key
CREATE TABLE "dept_emp" (
    id SERIAL PRIMARY KEY,
	"emp_no" INT NOT NULL,
    "dept_no" VARCHAR NOT NULL
);

-- Manager Department relationship:  "emp_no" is Primary Key
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR NOT NULL,
	"emp_no" INT NOT NULL,
    CONSTRAINT "mgr_dept_pk" PRIMARY KEY ("emp_no")
);
