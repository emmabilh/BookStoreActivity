/*Function to Calculate Total Sales**:
- Create a function `CalculateTotalSales(book_id)` that returns the total sales amount for a specific
book.
*/
CREATE FUNCTION CalculateTotalSales(@BookID INT) 
GO

RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @total_sales DECIMAL(10, 2);

    SELECT @total_sales = SUM(totalPrice)
    FROM sales
    WHERE bookID = BookID;

    RETURN @total_sales;
END;


/*2. **Procedure to Update Inventory**:
- Write a stored procedure `UpdateInventory(sale_id)` that updates the `Quantity` in the `Books` table
after a sale is made.
*/
CREATE PROCEDURE UpdateInventory GO

SaleID INT

AS

BEGIN

    DECLARE @bookID INT;
    DECLARE @quantity INT;

    SELECT @bookID = bookID, @quantity = quantity
    FROM sales
    WHERE saleID = SaleID;

    UPDATE books
    SET quantity = quantity - @quantity
    WHERE bookID = @bookID;

    INSERT INTO inventory(SaleID, BookID, numSold, updated)
    VALUES (@SaleID, @bookID, @quantity, GETDATE());

END;


