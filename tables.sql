-- Customers Table
CREATE TABLE Customers (
    CustomerId INTEGER PRIMARY KEY,
    LastName TEXT NOT NULL,
    FirstName TEXT NOT NULL,
    Email TEXT UNIQUE NOT NULL,
    PhoneNumber TEXT,
    Member BOOLEAN NOT NULL DEFAULT 0
);

-- Products Table
CREATE TABLE Products (
    ProductId INTEGER PRIMARY KEY,
    ProductName TEXT NOT NULL,
    CategoryId INTEGER,
    Quantity INTEGER NOT NULL,
    Sold INTEGER DEFAULT 0,
    Price REAL NOT NULL,
    FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
);

-- Categories Table
CREATE TABLE Categories (
    CategoryId INTEGER PRIMARY KEY,
    CategoryName TEXT NOT NULL UNIQUE
);

-- Orders Table
CREATE TABLE Orders (
    OrderId INTEGER PRIMARY KEY,
    OrderNumber TEXT UNIQUE NOT NULL,
    OrderDate TEXT NOT NULL, -- Store date as TEXT in ISO format (YYYY-MM-DD)
    CustomerId INTEGER,
    TotalAmount REAL NOT NULL,
    ShippingAddress TEXT NOT NULL,
    ShippingStatus TEXT DEFAULT 'Pending',
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);

-- OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailId INTEGER PRIMARY KEY,
    OrderId INTEGER,
    ProductId INTEGER,
    Quantity INTEGER NOT NULL,
    PriceAtPurchase REAL NOT NULL,
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
);

-- Members Table
CREATE TABLE Members (
    CustomerId INTEGER PRIMARY KEY,
    Rewards INTEGER DEFAULT 0,
    SignUpDate TEXT NOT NULL, -- Store date as TEXT in ISO format
    RewardsRedeemed INTEGER DEFAULT 0,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);

-- Shipping Table
CREATE TABLE Shipping (
    ShippingId INTEGER PRIMARY KEY,
    OrderId INTEGER,
    ShippingMethod TEXT,
    ShippingCost REAL NOT NULL,
    TrackingNumber TEXT,
    ShippingStatus TEXT DEFAULT 'Pending',
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
);

-- Payments Table
CREATE TABLE Payments (
    PaymentId INTEGER PRIMARY KEY,
    OrderId INTEGER,
    PaymentMethod TEXT NOT NULL,
    PaymentDate TEXT NOT NULL, -- Store date as TEXT in ISO format
    PaymentAmount REAL NOT NULL,
    PaymentStatus TEXT DEFAULT 'Completed',
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
);
