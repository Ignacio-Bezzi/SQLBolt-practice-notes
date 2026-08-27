/* ===================================================
   LESSON 11: Queries with aggregates (Pt. 2)
=================================================== 
   NOTES:
   - HAVING filters groups AFTER they are created by GROUP BY.
   - WHERE filters individual rows BEFORE they are grouped.
   
   THE GOLDEN RULE:
   - Use WHERE for regular column filters (e.g., role = "Engineer").
   - Use HAVING ONLY when filtering based on the result of an aggregate function (e.g., SUM(sales) > 1000).
=================================================== */

-- Ejercicio 1: Find the number of Artists in the studio (without a HAVING clause)
SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role = "Artist";

-- Ejercicio 2: Find the number of Employees of each role in the studio
SELECT role, COUNT(*)
FROM employees
GROUP BY role;

-- Ejercicio 3: Find the total number of years employed by all Engineers
/* 
   Nota técnica: SQLBolt espera la solución usando HAVING por fines puramente didácticos.
   En un entorno real de trabajo, al no ser una función matemática, la forma optimizada 
   sería usar WHERE role = "Engineer" antes del GROUP BY.
*/
SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";
