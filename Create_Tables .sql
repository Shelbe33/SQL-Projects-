CREATE TABLE Unnormalized (
    OrderID INT,
    CustomerName VARCHAR(100),
    ProductName VARCHAR(100),
    ProductCategory VARCHAR(100),
    Quantity INT
);
INSERT INTO Unnormalized (OrderID, CustomerName, ProductName, ProductCategory, Quantity)
VALUES
    (101, 'John Doe', 'Laptop', 'Electronics', 1),
    (102, 'Jane Smith', 'Phone', 'Electronics', 2),
    (103, 'Rose Hathaway', 'Smart Watch', 'Wearables', 3),
    (104, 'Dimitri Belikov', 'Bluetooth Speaker', 'Electronics', 4),
    (105, 'Mia Rinaldi', 'Airpods', 'Electronics', 5),
    (106, 'Vasilisa Dragomir', 'Guardian Uniform', 'Wearables', 8),
    (107, 'Abe Mazur', 'Stanley Water Bottle', 'Sports Equipment', 2),
    (108, 'Adrain Ivashkov', 'Silver Stake', 'Weapons', 6),
    (109, 'Eddie Castle', 'Fleece', 'Wearables', 3), 
    (110, 'Mason Ashford', 'Ankle Weights', 'Sports Equipment', 4),
    (111, 'Sonya Karp', 'Scarf', 'Wearables', 7),
    (112, 'Jill Mastrano', 'Bookshelf', 'Furniture', 3), 
    (113, 'Amber Riley', 'Blender', 'Kitchen', 5), 
    (114, 'David Black', 'Soundbar', 'Electronics', 4), 
    (115, 'Morgan Green', 'Tie', 'Wearables', 8), 
    (116, 'Jack Harlow', 'Ice Tray', 'Kitchen', 4), 
    (117, 'Malcolmn Harty', 'Sword', 'Weapons', 8);
    
    SELECT * FROM Unnormalized 
    
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY ,
    customer_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
    