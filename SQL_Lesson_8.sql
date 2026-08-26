/* =========================================
   LESSON 8: A short note on NULLs
============================================
NOTES:
   - NULL represents missing, unknown, or incomplete data.
   - Best practice: Use default values (like 0 or "") to avoid NULLs when possible.
   - Exception: Keep NULLs if using a default value (like 0) would skew your math (e.g., calculating averages).
   - OUTER JOINS frequently generate NULLs when there is no matching row.
   
   SYNTAX:
   - You CANNOT use standard math operators (= or !=) with NULL.
   - WHERE column IS NULL; -> Finds rows with missing data.
   - WHERE column IS NOT NULL; -> Filters out rows with missing data.
========================================= */
