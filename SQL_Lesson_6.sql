/* =========================================
   LESSON 6: Multi-table queries with JOINs
============================================
NOTES:
   - Normalization: Real-world data is split into multiple tables to avoid duplicating information.
   - Primary Key: A unique identifier (usually an ID number) used to link these tables back together.
   - INNER JOIN: Matches rows from two tables only when their keys match.
   - Writing "JOIN" is the exact same as writing "INNER JOIN", but using "INNER" is considered best practice for readability.
   
   SYNTAX:
   - SELECT table1.column, table2.column 
     FROM table1
     INNER JOIN table2 
       ON table1.id = table2.id;
   
   - EXECUTION ORDER:
     1. FROM and JOINs
     2. WHERE
     3. SELECT
     4. ORDER BY
     5. LIMIT / OFFSET
========================================= */
