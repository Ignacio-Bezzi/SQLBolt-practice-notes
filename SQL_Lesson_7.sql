/* =========================================
   LESSON 7: OUTER JOINs
============================================
NOTES:
   - INNER JOIN only keeps rows that have matches in BOTH tables.
   - If tables have asymmetric data (missing data on one side), you use OUTER JOINs to prevent data loss.
   - When there is no match for a row, the database fills those empty spaces with NULL values.
   - "LEFT OUTER JOIN" is exactly the same as "LEFT JOIN". The word "OUTER" is optional and mostly ignored today.
   
   SYNTAX & JOIN TYPES:
   - SELECT column FROM table_A ___ JOIN table_B ON table_A.id = table_B.id;
   
   - LEFT JOIN: Keeps ALL rows from Table A (the first table), regardless of matches in Table B.
   - RIGHT JOIN: Keeps ALL rows from Table B (the second table), regardless of matches in Table A.
   - FULL JOIN: Keeps ALL rows from BOTH tables, regardless of matches.
========================================= */
