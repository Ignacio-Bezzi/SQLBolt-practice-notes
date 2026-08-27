/* ===================================================
   LESSON 10: QUERIES WITH AGGREGATES (Pt. 1)
=================================================== 
   NOTES:
   - Aggregate functions summarize data across multiple rows (finding totals, averages, etc.).
   - Without GROUP BY: The function compresses the entire filtered table into a single result row.
   - With GROUP BY: The table is split into categories, and the function calculates a result for EACH category.
   - Always use AS (aliases) to give the calculated column a clean name.
   
   SYNTAX & AGGREGATE FUNCTIONS:
   - COUNT(*): Counts ALL rows. COUNT(column): Counts rows with non-NULL values in that column.
   - MIN(column): Finds the smallest value.
   - MAX(column): Finds the largest value.
   - AVG(column): Calculates the average.
   - SUM(column): Adds up all the values.
   
   - STRUCTURE:
     SELECT category_column, SUM(data_column) AS total_data
     FROM table
     GROUP BY category_column;
=================================================== */

-- Ejercicio 1: Find the longest time that an employee has been at the studio
SELECT MAX(years_employed) as Max_years_employed
FROM employees;

-- Ejercicio 2: For each role, find the average number of years employed by employees in that role
SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY role;

-- Ejercicio 3: Find the total number of employee years worked in each building
SELECT building, SUM(years_employed) as Total_years_employed
FROM employees
GROUP BY building;
