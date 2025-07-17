-- marketdb_setup.sql


CREATE DATABASE MarketDB;
USE MarketDB;

-- Produce Table
CREATE TABLE Produce (
    ProduceID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL DEFAULT 0 CHECK (Stock >= 0)
);

-- Buyers Table
CREATE TABLE Buyers (
    BuyerID INT PRIMARY KEY,
    BuyerName VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20) UNIQUE NOT NULL
);

-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    BuyerID INT,
    ProduceID INT,
    SaleDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    FOREIGN KEY (BuyerID) REFERENCES Buyers(BuyerID),
    FOREIGN KEY (ProduceID) REFERENCES Produce(ProduceID)
);

-- Insert Produce Items
INSERT INTO Produce VALUES
(1, 'Tomatoes', 'Vegetable', 300.00, 100),
(2, 'Yams', 'Root', 500.00, 50),
(3, 'Bananas', 'Fruit', 200.00, 80),
(4, 'Onions', 'Vegetable', 250.00, 20),
(5, 'Plantains', 'Fruit', 400.00, 15),
(6, 'Pepper', 'Spice', 150.00, 5);

-- Insert Buyers
INSERT INTO Buyers VALUES
(1, 'Chinwe Okafor', '08012345678'),
(2, 'John Musa', '08023456789'),
(3, 'Amina Bello', '08134567890'),
(4, 'Ezekiel Uche', '08045678901'),
(5, 'Blessing David', '08156789012');

-- Insert Sales (Sample Data)
INSERT INTO Sales VALUES
(1, 1, 1, '2025-07-01', 10),
(2, 2, 2, '2025-07-01', 5),
(3, 3, 1, '2025-07-02', 7),
(4, 1, 4, '2025-07-03', 3),
(5, 4, 5, '2025-07-04', 4),
(6, 5, 6, '2025-07-04', 2),
(7, 2, 3, '2025-07-05', 6),
(8, 3, 2, '2025-07-06', 4),
(9, 1, 3, '2025-07-06', 5),
(10, 2, 1, '2025-07-07', 3),
(11, 3, 5, '2025-07-07', 4),
(12, 4, 1, '2025-07-08', 6),
(13, 5, 4, '2025-07-08', 3),
(14, 1, 6, '2025-07-09', 1),
(15, 5, 2, '2025-07-10', 2);


