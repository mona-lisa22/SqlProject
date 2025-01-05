-- Inventory Management System SQL Project

-- 1. Create Database
CREATE DATABASE InventoryManagement;
USE InventoryManagement;

-- 2. Create Tables
-- Products Table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT DEFAULT 0
)AUTO_INCREMENT = 1001;

-- Suppliers Table
CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(255) NOT NULL,
    contact_info VARCHAR(255)
)auto_increment=20100;

-- Sales Table
CREATE TABLE Sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    sale_date DATE NOT NULL,
    quantity_sold INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Restocking Table
CREATE TABLE Restocking (
    restock_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    supplier_id INT,
    restock_date DATE NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- 3. Sample Data Insertion
-- Insert Products
INSERT INTO Products (product_name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 700.00, 50),
('Smartphone', 'Electronics', 500.00, 100),
('Desk Chair', 'Furniture', 150.00, 20),
('Tablet', 'Electronics', 300.00, 75),
('Monitor', 'Electronics', 200.00, 40),
('Office Desk', 'Furniture', 250.00, 15),
('Gaming Chair', 'Furniture', 200.00, 25),
('Mouse', 'Electronics', 50.00, 150),
('Keyboard', 'Electronics', 70.00, 120),
('Headphones', 'Electronics', 80.00, 90);

-- Insert Suppliers
INSERT INTO Suppliers (supplier_name, contact_info) VALUES
('Tech Supplies Inc.', 'techsupplies@example.com'),
('Furniture Co.', 'furnitureco@example.com'),
('Gadget World', 'gadgetworld@example.com'),
('Office Essentials', 'officeessentials@example.com'),
('ElectroHub', 'electrohub@example.com'),
('Home Furniture Inc.', 'homefurniture@example.com'),
('Elite Tech', 'elitetech@example.com'),
('Workspace Solutions', 'workspacesolutions@example.com'),
('Gizmo Central', 'gizmocentral@example.com'),
('Accessory Depot', 'accessorydepot@example.com');

-- Insert Sales
INSERT INTO Sales (product_id, sale_date, quantity_sold, total_price) VALUES
(1, '2023-12-01', 5, 3500.00),
(2, '2023-12-05', 10, 5000.00),
(3, '2024-12-08', 3, 450.00),
(4, '2023-12-10', 8, 2400.00),
(5, '2024-12-12', 6, 1200.00),
(6, '2023-12-14', 2, 500.00),
(7, '2022-12-16', 4, 800.00),
(8, '2023-12-18', 15, 750.00),
(9, '2022-12-20', 12, 840.00),
(10, '2023-12-22', 7, 560.00);

-- Insert Restockingproducts
INSERT INTO Restocking (product_id, supplier_id, restock_date, quantity) VALUES
(1001, 20100, '2025-11-15', 20),
(1003, 20101, '2022-11-11', 10),
(1004, 20102, '2024-11-13', 30),
(1005, 20103, '2022-11-14', 25),
(1006, 20104, '2024-11-19', 10),
(1007, 20105, '2024-11-21', 15),
(1008, 20106, '2022-11-23', 50),
(1009, 20107, '2022-11-26', 40),
(1010, 20108, '2022-11-28', 35),
(1002, 20109, '2022-11-30', 60);

-- 4. Queries for Project Requirements
select * from products;
select * from restocking;
select * from sales;
select * from suppliers;
