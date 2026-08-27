/* ===================================================
   LESSON 9: QUERIES WITH EXPRESSIONS
=================================================== 
   NOTES:
   - You can use basic math to transform data directly inside the query.
   - Parentheses () work just like in regular math to control the order of operations.
   - The Modulo operator (%) does NOT mean percentage. It returns the REMAINDER of a division. It's heavily used to find even/odd numbers.
   - AS (Alias): Used to assign a clean, temporary name to a calculated expression.
   
   SYNTAX & MATHEMATICAL OPERATORS:
   - + (Addition), - (Subtraction), * (Multiplication), / (Division).
   - % (Modulo): e.g., column % 2 = 0 -> Filters for EVEN numbers.
   - SELECT (col1 + col2) / 100 AS total_calculated FROM table;
=================================================== */

-- Ejercicio 1: List all movies and their combined sales in millions of dollars
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- Ejercicio 2: List all movies and their ratings in percent
SELECT title, rating * 10 AS rating_percent
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- Ejercicio 3: List all movies that were released on even number years
SELECT title, year
FROM movies
WHERE year % 2 = 0;
