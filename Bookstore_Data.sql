INSERT INTO Books (BookID, Title, Author, Price, Quantity)
VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 18.99, 10),
(2, '1984', 'George Orwell', 22.50, 8),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 15.00, 5),
(4, 'Moby Dick', 'Herman Melville', 17.50, 2),
(5, 'War and Peace', 'Leo Tolstoy', 19.95, 7),
(6, 'Pride and Prejudice', 'Jane Austen', 9.99, 15),
(7, 'The Hobbit', 'J.R.R. Tolkien', 10.99, 12),
(8, 'The Catcher in the Rye', 'J.D. Salinger', 14.99, 9),
(9, 'Fahrenheit 451', 'Ray Bradbury', 12.99, 6),
(10, 'Jane Eyre', 'Charlotte Brontë', 14.50, 11);

INSERT INTO Customers (CustomerID, fullName, Email)
VALUES
(1, 'Alice Smith', 'alice.smith@email.com'),
(2, 'Bob Johnson', 'bob.johnson@email.com'),
(3, 'Carol Williams', 'carol.williams@email.com'),
(4, 'David Brown', 'david.brown@email.com'),
(5, 'Eva Davis', 'eva.davis@email.com'),
(6, 'Frank Miller', 'frank.miller@email.com'),
(7, 'Grace Lee', 'grace.lee@email.com'),
(8, 'Henry Wilson', 'henry.wilson@email.com'),
(9, 'Isabel Moore', 'isabel.moore@email.com'),
(10, 'John Taylor', 'john.taylor@email.com');

INSERT INTO Sales (SaleID, BookID, CustomerID, SaleDate, Quantity,
TotalPrice)
VALUES
(1, 1, 1, '2023-01-10', 2, 37.98),
(2, 2, 2, '2023-01-12', 1, 22.50),
(3, 3, 3, '2023-01-15', 1, 15.00),
(4, 4, 4, '2023-02-02', 1, 17.50),
(5, 5, 5, '2023-02-20', 2, 39.90),
(6, 6, 6, '2023-03-05', 3, 29.97),
(7, 7, 7, '2023-03-12', 2, 21.98),
(8, 8, 8, '2023-04-01', 1, 14.99),
(9, 9, 9, '2023-04-11', 2, 25.98),
(10, 10, 10, '2023-04-15', 1, 14.50);

INSERT INTO Recommendations (BookID, RecommendedBookID)
VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 1); -- This creates a circular recommendation for recursive query

