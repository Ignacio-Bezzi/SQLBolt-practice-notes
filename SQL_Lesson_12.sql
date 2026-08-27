/* ===================================================
   LESSON 12: Order of execution of a Query
=================================================== 
   NOTES:
   - Writing Order != Execution Order. 
   - The database engine processes clauses in a strict sequential order.
   - CRUCIAL: Because SELECT happens at step 5, you CANNOT use aliases (created in SELECT) inside WHERE or HAVING.
   - You CAN use aliases in ORDER BY or LIMIT, because they run after SELECT.
   
   THE 8 STEPS OF EXECUTION (How the database actually reads your code):
   1. FROM and JOINs (Determines the working set of tables)
   2. WHERE (Filters individual rows first)
   3. GROUP BY (Groups the remaining rows)
   4. HAVING (Filters the newly grouped rows)
   5. SELECT (Picks columns, computes math, and assigns aliases)
   6. DISTINCT (Removes duplicate rows)
   7. ORDER BY (Sorts the final results)
   8. LIMIT / OFFSET (Cuts the results down to a specific size)
=================================================== */

-- Ejercicio 1: Find the number of movies each director has directed
SELECT director, COUNT(id) as Num_movies_directed
FROM movies
GROUP BY director;

-- Ejercicio 2: Find the total domestic and international sales that can be attributed to each director
SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies
FROM movies
    INNER JOIN boxoffice
        ON movies.id = boxoffice.movie_id
GROUP BY director;
