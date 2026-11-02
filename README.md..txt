# HR Employee Analytics using MySQL

## Project Overview
This project analyzes employee data using MySQL to identify workforce trends, salary patterns, employee performance, and attrition.

The objective is to generate meaningful HR insights that can help organizations understand employee turnover and workforce distribution.

## Dataset
- Total records: 500 employees
- Source: HR employee dataset created for this portfolio project
- Database: MySQL
- Tool: MySQL Workbench

## Project Objectives
- Analyze employee distribution across departments.
- Understand salary differences across departments and job levels.
- Calculate overall employee attrition.
- Identify departments with higher attrition rates.
- Analyze the relationship between overtime and attrition.
- Explore employee performance ratings.
- Examine average leave days across departments.
- Study salary patterns by years of experience.

## Data Cleaning
The raw dataset was preserved separately, and a cleaned table was created for analysis.

Data cleaning activities included:
- Checking duplicate employee IDs.
- Identifying missing values.
- Replacing missing department and location values with "Unknown".
- Handling invalid performance ratings by setting them to NULL.
- Handling missing overtime information by setting it to "Unknown".
- Validating employee data.

## Key Business Insights
- Finance had the highest attrition rate among departments in the initial analysis.
- Employees working overtime had a 21.68% attrition rate, compared with 9.45% for employees not working overtime.
- Lead-level employees had the highest average salary in the job-level analysis.
- Junior-level employees had the highest job-level attrition rate at 16.95%.
- Customer Support had the highest average leave days among named departments, at 14.94 days.
- Senior-level employees had the highest average performance rating at 3.56 out of 5.
- Attrition did not consistently increase or decrease with performance rating.

## SQL Skills Demonstrated
- SELECT statements
- WHERE conditions
- GROUP BY
- ORDER BY
- Aggregate functions: COUNT, AVG, MIN, MAX
- CASE statements
- Subqueries
- Data cleaning and validation
- Attrition analysis

## Project Structure
```text
HR-Employee-Analytics/
│
├── data/
├── sql-scripts/
│   ├── 01_data_quality_checks.sql
│   └── 02_hr_analysis.sql
│
├── screenshots/
│
└── README.md
```

## Conclusion
This project demonstrates practical SQL skills in data cleaning, data validation, and HR analytics. It provides insights into employee attrition, salary distribution, performance, overtime, and leave patterns.
