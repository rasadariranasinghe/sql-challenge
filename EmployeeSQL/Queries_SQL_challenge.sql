--DATA ANALYSIS
--List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986

SELECT first_name,last_name,hire_date
FROM employees
WHERE TO_CHAR(hire_date, 'YYYY') = '1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name 
SELECT dm.emp_no,dm.dept_no,d.dept_name,e.last_name,e.first_name
FROM dept_manager AS DM
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no
INNER JOIN employees AS e
ON dm.emp_no = e.emp_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no,de.emp_no,e.last_name,e.first_name,d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS e
ON  de.emp_no = e.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name,last_name,sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT emp_no,last_name,first_name
FROM employees
WHERE emp_no 
IN(
	SELECT emp_no
		FROM dept_emp
		WHERE dept_no 
		IN(
			SELECT dept_no
			FROM departments
			WHERE dept_name ='Sales'
		)   
);

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT de.emp_no,e.last_name,e.first_name,d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS e
ON de.emp_no=e.emp_no
INNER JOIN departments AS d
ON d.dept_no=de.dept_no
WHERE dept_name = 'Sales'
OR  dept_name ='Development'
	
--Alternative method for the above but without Department name since the above method can duplicate rows if the same person works in both of the departments
SELECT emp_no,last_name,first_name
FROM employees
WHERE emp_no 
IN(
	SELECT emp_no
		FROM dept_emp
		WHERE dept_no 
		IN(
			SELECT dept_no
			FROM departments
			WHERE dept_name ='Sales'
			OR dept_name ='Development'
		)   
);

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT (last_name) AS "Frequency Counts of Employees' Last Names"
FROM employees
GROUP BY last_name
ORDER BY "Frequency Counts of Employees' Last Names" DESC;


