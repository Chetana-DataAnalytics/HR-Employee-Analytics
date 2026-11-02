-- HR Employee Analytics Project
-- Script 02: HR Business Analysis

USE hr_employee_analytics;

-- 1. Employee count by department
SELECT
    Department,
    COUNT(*) AS total_employees
FROM hr_employee_clean
GROUP BY Department
ORDER BY total_employees DESC;


-- 2. Salary analysis by department
SELECT
    Department,
    COUNT(*) AS total_employees,
    ROUND(AVG(Salary), 2) AS average_salary,
    MIN(Salary) AS minimum_salary,
    MAX(Salary) AS maximum_salary
FROM hr_employee_clean
GROUP BY Department
ORDER BY average_salary DESC;


-- 3. Overall attrition analysis
SELECT
    Attrition,
    COUNT(*) AS employee_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM hr_employee_clean),
        2
    ) AS percentage
FROM hr_employee_clean
GROUP BY Attrition;


-- 4. Attrition by department
SELECT
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_percentage
FROM hr_employee_clean
GROUP BY Department
ORDER BY attrition_percentage DESC;


-- 5. Overtime and attrition analysis
SELECT
    Overtime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_percentage
FROM hr_employee_clean
GROUP BY Overtime
ORDER BY attrition_percentage DESC;


-- 6. Salary analysis by job level
SELECT
    Job_Level,
    COUNT(*) AS total_employees,
    ROUND(AVG(Salary), 2) AS average_salary,
    MIN(Salary) AS minimum_salary,
    MAX(Salary) AS maximum_salary
FROM hr_employee_clean
GROUP BY Job_Level
ORDER BY average_salary DESC;


-- 7. Attrition by job level
SELECT
    Job_Level,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_percentage
FROM hr_employee_clean
GROUP BY Job_Level
ORDER BY attrition_percentage DESC;


-- 8. Average salary by years of experience
SELECT
    Years_of_Experience,
    COUNT(*) AS total_employees,
    ROUND(AVG(Salary), 2) AS average_salary,
    MIN(Salary) AS minimum_salary,
    MAX(Salary) AS maximum_salary
FROM hr_employee_clean
GROUP BY Years_of_Experience
ORDER BY average_salary ASC;


-- 9. Average leave days by department
SELECT
    Department,
    COUNT(*) AS total_employees,
    ROUND(AVG(Leave_Days), 2) AS average_leave_days,
    MAX(Leave_Days) AS maximum_leave_days
FROM hr_employee_clean
WHERE Department <> 'Unknown'
GROUP BY Department
ORDER BY average_leave_days DESC;


-- 10. Performance rating by job level
SELECT
    Job_Level,
    COUNT(*) AS total_employees,
    ROUND(AVG(Performance_Rating), 2) AS average_rating,
    MIN(Performance_Rating) AS minimum_rating,
    MAX(Performance_Rating) AS maximum_rating
FROM hr_employee_clean
GROUP BY Job_Level
ORDER BY average_rating DESC;


-- 11. Attrition by performance rating
SELECT
    Performance_Rating,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_percentage
FROM hr_employee_clean
WHERE Performance_Rating IS NOT NULL
GROUP BY Performance_Rating
ORDER BY Performance_Rating ASC;