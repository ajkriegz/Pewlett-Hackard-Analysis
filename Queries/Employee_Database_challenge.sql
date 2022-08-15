-- Create a table for retiring employees with their titles (steps 1-7 of Deliverable 1)
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

-- Remove duplicate entries for employees and remove former employees (steps 8-15 of Deliverable 1)
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no ASC, title DESC;

SELECT * FROM unique_titles;

-- Count number of retiring employees by title (steps 16 -22 of Deliverable 1)
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Create a mentorship_eligibility table (steps 1-11 ofDeliverable 2)
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON de.emp_no = e.emp_no
INNER JOIN titles as ti
ON ti.emp_no = e.emp_no
WHERE (de.to_date ='9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;