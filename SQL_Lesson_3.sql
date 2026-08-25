/* =========================================
   LESSON 3: Queries with constraints (Pt. 2)
============================================
NOTES:
   - All text strings MUST be wrapped in quotes (e.g., "text") so the database doesn't confuse them with SQL commands.
   - For heavy, complex full-text searches, developers usually use dedicated external libraries (like Apache Lucene) instead of standard SQL.
   
   SYNTAX & TEXT OPERATORS:
   - = : Case-sensitive exact match (e.g., col_name = "abc").
   - != or <> : Case-sensitive exact inequality.
   - LIKE : Case-insensitive exact match (e.g., col_name LIKE "ABC").
   - NOT LIKE : Case-insensitive exact inequality.
   - % (Wildcard) : Matches a sequence of zero or more characters. 
     > Example: LIKE "%AT%" matches "CAT", "ATTIC", or "BATS".
   - _ (Wildcard) : Matches exactly ONE single character. 
     > Example: LIKE "AN_" matches "AND", but not "AN".
   - IN (...) : String exists in a specific list (e.g., IN ("A", "B", "C")).
========================================= */

