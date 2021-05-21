titles
-
(emp_no INT,
title VARCHAR(50),
from_date DATE,
to_date DATE,

salaries
-
(emp_no INT 
salary INT,
from_date DATE,
to_date DATE);

departments
-
(dept_no VARCHAR(50) 
dept_name VARCHAR(50));

employees
-
(emp_no INT 
PRIMARY KEY,
birth_date DATE,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(50),
hire_date DATE,

dept_emp
-
(emp_no INT,
dept_no VARCHAR(50),
from_date DATE,
to_date DATE,

dept_manager
-
(dept_no VARCHAR(50),
emp_no INT,
from_date DATE,
to_date DATE,

