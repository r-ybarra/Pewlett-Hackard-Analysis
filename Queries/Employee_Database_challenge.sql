--retirement titles table 
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    t.title,
	t.from_date,
	t.to_date
INTO deliverable_one
FROM employees as e
    INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM deliverable_one;

-- Use Dictinct with Orderby to remove duplicate rows (unique table)
SELECT DISTINCT ON(d.emp_no) d.emp_no,
	d.first_name,
	d.last_name,
	d.title
INTO deliverable_one_unique
FROM deliverable_one as d
ORDER BY d.emp_no, d.to_date DESC;

SELECT * FROM deliverable_one_unique;

--retiring titles table 
SELECT COUNT(u.title), u.title
INTO deliverable_one_retiring
FROM deliverable_one_unique as u
GROUP BY u.title
ORDER BY COUNT(u.title) DESC;

SELECT * FROM deliverable_one_retiring;

--mentorship eligibilty (deliverable 2)
SELECT e.emp_no,
    e.first_name,
    e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentor_elig
FROM employees as e
	INNER JOIN dept_emp as de
	ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND(de.to_date = '9999-01-01')
ORDER BY e.emp_no;

--SELECT * FROM mentor_elig;

SELECT DISTINCT ON(m.emp_no) m.emp_no,
    m.first_name,
    m.last_name,
	m.birth_date,
	m.from_date,
	m.to_date,
	m.title
INTO mentor_elig_unique
FROM mentor_elig as m

SELECT * FROM mentor_elig_unique;
