-- recursive query that finds all books indirectly recommended for a given book

WITH RECURSIVE AS (
    SELECT r.BookID, r.RecommendedBookID
    FROM Recommendations r
    WHERE r.BookID = <given_book_id>
    
    UNION ALL
    
    -- Recursive case: Find books recommended for the directly recommended books
    SELECT r.BookID, r.RecommendedBookID
        FROM Recommendations r
    INNER JOIN
        Recommendations ir ON r.BookID = ir.RecommendedBookID

)
