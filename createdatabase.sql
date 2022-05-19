drop table if exists titles;
create table titles( title_id varchar(10) NOT NULL PRIMARY KEY,
title varchar(30));

LOAD DATA LOCAL INFILE  'titles.csv'
INTO TABLE titles
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

drop table if exists employees;
create table employees( emp_no int NOT NULL PRIMARY KEY,
emp_titles_id varchar(10) NOT NULL , 
birth_date varchar(20) NOT NULL,
first_name varchar(30) NOT NULL,
last_name varchar(30) NOT NULL,
sex varchar(1) NOT NULL,
hire_date varchar(20) NOT NULL,
no_of_projects int NOT NULL,
Last_performance_rating varchar(3) NOT NULL,
emp_left int not null,
last_date varchar(20));

LOAD DATA LOCAL INFILE  'employees.csv'
INTO TABLE employees
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

drop table if exists salaries;
create table salaries(emp_no int not null, salary int NOT NULL);

LOAD DATA LOCAL INFILE  'salaries.csv'
INTO TABLE salaries
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

drop table if exists departments;
create table departments(dept_no varchar(20) NOT NULL PRIMARY KEY,dept_name varchar(20) not null);

LOAD DATA LOCAL INFILE  'departments.csv'
INTO TABLE departments
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

drop table if exists department_managers;
create table department_managers(dept_no varchar(20) not null, 
emp_no int not null);

LOAD DATA LOCAL INFILE  'dept_manager.csv'
INTO TABLE department_managers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

drop table if exists department_employees;
create table department_employees(emp_no int not null, 
dept_no varchar(20) not null);

LOAD DATA LOCAL INFILE  'dept_emp.csv'
INTO TABLE department_employees
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;







