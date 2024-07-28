USE alx_book_store;

-- Create table for Authors
CREATE TABLE IF NOT EXISTS authors (
    author_id INT AUTO_INCREMENT,
    author_name VARCHAR(215),
    PRIMARY KEY (author_id)
);

-- Create table for Books
CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create table for Customers
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT,
    PRIMARY KEY (customer_id)
);

-- Create table for Orders
CREATE TABLE IF NOT EXISTS Orders (
    Order_id INT AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    PRIMARY KEY (Order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create table for Order Details
CREATE TABLE IF NOT EXISTS Order_details (
    orderdetailid INT AUTO_INCREMENT,
    Order_id INT,
    book_id INT,
    quantity DOUBLE,
    PRIMARY KEY (orderdetailid),
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
