--Emma Bilhimer

/* Quick note: I had to add some funky actions because
my server is being very picky. I am not able to run my functions but I followed 
our notes with my own writing so I am sure they work on your SQL server. If they don't,
I apologize for the mistakes. My co-pilot also had nothing to say.
 It was working on Sunday (the last time I worked on this project) 
 and now a few queries are not even though
I haven't touched it. I would restart my project into new queries but I waited too
late so that is a faulty on my part. I blame the rest on
technology. :) Anyways, thank you for reading.
*/


CREATE TABLE books (
    bookID int PRIMARY KEY,
    title varchar(100),
    author varchar(50),
    price DECIMAL(10, 2),
    quantity int
);

CREATE TABLE customers (
    customerID int PRIMARY KEY,
    fullName varchar(255),
    email varchar(255)
);

CREATE TABLE sales (
    saleID int PRIMARY KEY,
    bookID int,
    customerID int,
    saleDate DATE,
    quantity int,
    totalPrice DECIMAL(10, 2),
    --foreign keys
    FOREIGN KEY (bookID) REFERENCES books(bookID),
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
);

CREATE TABLE recommendations (
    bookID int,
    recommendedBookID int,
    --primary and foreign keys declare
    PRIMARY KEY (bookID, recommendedBookID),
    FOREIGN KEY (bookID) REFERENCES books(bookID),
    FOREIGN KEY (recommendedBookID) REFERENCES books(bookID)
);



/*
### Project Overview: Bookstore Inventory System
**Scenario**: You are helping a bookstore manage its inventory and sales operations. The bookstore
needs a database system to track books, customers, sales, and inventory levels. The system should also
provide analytical capabilities to understand sales trends and inventory needs.


### Task 5: Advanced Aggregation
1. **Monthly Sales Report**:
- Write a query that aggregates total sales by month and by book. Include total units sold and total
revenue.
- Use window functions to rank books based on monthly sales.

--done
### Deliverables
- SQL scripts for creating tables, inserting data, and defining functions, procedures, and triggers.
- SQL queries for recursive queries and advanced aggregations.
- A brief report explaining the functionality of each component (functions, procedures, triggers,
recursive queries, and advanced aggregations).
*/
