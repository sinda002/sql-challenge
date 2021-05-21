-- |1| List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s ON e.emp_no = s.emp_no

-- |2| List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01 00:00:00' 
       AND hire_date < '1987-01-01 00:00:00'

-- |3| List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_manager dm ON e.emp_no = dm.emp_no
LEFT JOIN departments d ON dm.dept_no = d.dept_no

-- |4| List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no

-- |5| List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name LIKE 'Hercules' AND e.last_name LIKE 'B%'

-- |6| List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name LIKE 'Sales'

-- |7| List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name LIKE 'Sales'

-- |8| In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, count(last_name) FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC
