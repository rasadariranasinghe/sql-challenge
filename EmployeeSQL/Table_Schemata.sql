--DATA ENGINEERING
--Drop existing tables
DROP TABLE departments;
DROP TABLE  titles;
DROP TABLE  employees;
DROP TABLE  dept_emp;
DROP TABLE  dept_manager;
DROP TABLE  salaries;
	
--Create tables
CREATE TABLE departments(
	dept_no VARCHAR (5) NOT NULL PRIMARY KEY,
	dept_name VARCHAR (30) NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR (5) NOT NULL PRIMARY KEY,
	title VARCHAR (30)NOT NULL
);

CREATE TABLE employees(
	emp_no VARCHAR (10) NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR (5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	SEX CHAR,
	hire_date DATE,
	FOREIGN KEY(emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE dept_emp(
    emp_no VARCHAR,
    dept_no VARCHAR,
    FOREIGN KEY ( emp_no)REFERENCES employees(emp_no),
	FOREIGN KEY ( dept_no)REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager(
    dept_no VARCHAR (10) NOT NULL ,
	emp_no VARCHAR (10) NOT NULL,
	FOREIGN KEY ( dept_no)REFERENCES departments(dept_no),
	FOREIGN KEY ( emp_no)REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE salaries(
	emp_no VARCHAR (10) NOT NULL ,
	salary INT,
	FOREIGN KEY ( emp_no)REFERENCES employees(emp_no)
);