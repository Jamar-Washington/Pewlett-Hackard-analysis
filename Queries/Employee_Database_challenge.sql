-- Deliverable 1

-- 1. Retrieve the emp_no, first_name, 
-- and last_name columns from the Employees table
-- 2. Retrieve the title, from_date, 
-- and to_date columns from the Titles table
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
    t.title, 
	t.from_date, 
	t.to_date
	
-- 3. Create a new table using the INTO clause
INTO retirement_titles

-- 4. Join both tables on the primary key
FROM employees as e
INNER JOIN titles as t 
ON e.emp_no = t.emp_no

-- 5. Filter the data on the birth_date column 
-- to retrieve the employees who were born 
-- between 1952 and 1955. Then, order by the employee number
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- 6. Export the Retirement Titles table from the 
-- previous step as retirement_titles.csv and save it to your 
-- Data folder in the Pewlett-Hackard-Analysis folder
SELECT * FROM retirement_titles;

-- 8. Copy the query from the Employee_Challenge_starter_code.sql 
-- and add it to your Employee_Database_challenge.sql file.
-- 9. Retrieve the employee number, first and last name, 
-- and title columns from the Retirement Titles table.
	-- 	These columns will be in the new table that 
	-- will hold the most recent title of each employee.
-- 10. Use the DISTINCT ON statement to retrieve the 
-- first occurrence of the employee number for each set of rows 
-- defined by the ON () clause
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no)
		rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title

-- 11. Exclude those employees that have already left the company 
-- by filtering on to_date to keep only those dates that are 
-- equal to '9999-01-01'
-- 12. Create a Unique Titles table using the INTO clause
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
-- 13. Sort the Unique Titles table in ascending order by the 
-- employee number and descending order by the last date 
-- (i.e., to_date) of the most recent title
ORDER BY emp_no, to_date DESC;

-- 14. Export the Unique Titles table as unique_titles.csv 
-- and save it to your Data folder in the Pewlett-Hackard-Analysis 
-- folder
SELECT * FROM unique_titles;

-- 16. Write another query in the Employee_Database_challenge.sql 
-- file to retrieve the number of employees by their most recent 
-- job title who are about to retire
-- 17. First, retrieve the number of titles from the Unique Titles 
-- table
SELECT COUNT (ut.title), ut.title

-- 18. Then, create a Retiring Titles table to hold the 
-- required information
INTO retiring_titles
FROM unique_titles as ut

-- 19. Group the table by title, then sort the count column in 
-- descending order
GROUP BY ut.title
ORDER BY COUNT DESC; 

-- 20. Export the Retiring Titles table as retiring_titles.csv and 
-- save it to your Data folder in the Pewlett-Hackard-Analysis folder
-- View retiring_titles table
SELECT * FROM retiring_titles;

-- Deliverable 2

-- 1. Retrieve the emp_no, first_name, last_name, and birth_date 
-- columns from the Employees table
-- 2. Retrieve the from_date and to_date columns from the 
-- Department Employee table
-- 3. Retrieve the title column from the Titles table
-- 4. Use a DISTINCT ON statement to retrieve the first occurrence
-- of the employee number for each set of rows defined by the 
-- ON () clause
SELECT DISTINCT ON (e.emp_no) 
	e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title

-- 5. Create a new table using the INTO clause
INTO mentorship_eligibility

-- 6. Join the Employees and the Department Employee tables on 
-- the primary key
FROM employees as e
LEFT JOIN dept_emp as de
ON (e.emp_no = de.emp_no) 

-- 7. Join the Employees and the Titles tables on the primary key
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)  

-- 8. Filter the data on the to_date column to all the current 
-- employees, then filter the data on the birth_date columns to 
-- get all the employees whose birth dates are between 
-- January 1, 1965 and December 31, 1965
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
    AND (de.to_date = '9999-01-01')

-- 9. Order the table by the employee number
ORDER BY e.emp_no

-- 10. Export the Mentorship Eligibility table as 
-- mentorship_eligibilty.csv and save it to your Data folder 
-- in the Pewlett-Hackard-Analysis folder
SELECT * FROM mentorship_eligibility;