/* =========================================
   LESSON 4: Filtering and sorting Query results
============================================
NOTES:
   - DISTINCT: Removes duplicate rows from the results blindly.
   - Real database rows are not neatly ordered by default. We must explicitly sort them.
   - LIMIT and OFFSET are used to get a specific subset of data (like pages on a website).
   - Execution order: LIMIT and OFFSET are generally applied LAST in a query.
   
   SYNTAX:
   - SELECT DISTINCT column FROM table; -> Returns only unique values.
   - ORDER BY column ASC/DESC; -> Sorts data Ascending (A-Z, lowest to highest) or Descending (Z-A, highest to lowest).
   - LIMIT num_limit; -> Reduces the maximum number of rows returned.
   - OFFSET num_offset; -> Specifies how many rows to skip before starting to count the limit.
========================================= */

