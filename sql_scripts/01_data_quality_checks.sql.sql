-- HR Employee Analytics Project
-- Script 01: Data Quality Checks

USE hr_employee_analytics;

-- 1. Check total records
SELECT COUNT(*) AS total_employees
FROM hr_employee_clean;

-- 2. Check duplicate employee IDs
SELECT
    Employee_ID,
    COUNT(*) AS duplicate_count
FROM hr_employee_clean
GROUP BY Employee_ID
HAVING COUNT(*) > 1;

-- 3. Check missing employee locations
SELECT *
FROM hr_employee_clean
WHERE Location IS NULL
   OR TRIM(Location) = '';

-- 4. Check missing departments
SELECT *
FROM hr_employee_clean
WHERE Department IS NULL
   OR TRIM(Department) = '';

-- 5. Check invalid performance ratings
SELECT *
FROM hr_employee_clean
WHERE Performance_Rating < 1
   OR Performance_Rating > 5;