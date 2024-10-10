-- Insert 10 more customers
INSERT INTO Customers (LastName, FirstName, Email, PhoneNumber, Member)
VALUES 
    ('Martin', 'Alice', 'alice.martin@example.com', '0625255556', 0),
    ('Dubois', 'Pierre', 'pierre.dubois@example.com', '0625255557', 1),
    ('Lefevre', 'Camille', 'camille.lefevre@example.com', '0625255558', 0),
    ('Moreau', 'Julien', 'julien.moreau@example.com', '0625255559', 1),
    ('Girard', 'Sophie', 'sophie.girard@example.com', '0625255560', 1),
    ('Roux', 'Louis', 'louis.roux@example.com', '0625255561', 0),
    ('Blanc', 'Emma', 'emma.blanc@example.com', '0625255562', 1),
    ('Garnier', 'Lucas', 'lucas.garnier@example.com', '0625255563', 0),
    ('Lambert', 'Chloe', 'chloe.lambert@example.com', '0625255564', 1),
    ('Dupont', 'Nicolas', 'nicolas.dupont@example.com', '0625255565', 1);

-- Insert into Members for customers who are members
INSERT INTO Members (CustomerId, Rewards, SignUpDate, RewardsRedeemed)
VALUES 
    (3, 50, '2024-08-15', 10),
    (5, 75, '2024-09-20', 20),
    (6, 90, '2024-07-10', 0),
    (8, 40, '2024-06-18', 15),
    (10, 60, '2024-05-25', 5),
    (12, 30, '2024-04-14', 0),
    (14, 85, '2024-03-23', 30);

-- Insert Orders for new customers
INSERT INTO Orders (OrderNumber, OrderDate, CustomerId, TotalAmount, ShippingAddress, ShippingStatus)
VALUES 
    ('FR0002', '2024-10-11', 2, 45.97, '22 Avenue de la Riviere', 'Shipped'),
    ('FR0003', '2024-10-12', 3, 29.98, '34 Rue du Faubourg', 'Pending'),
    ('FR0004', '2024-10-13', 4, 19.99, '56 Boulevard Saint-Michel', 'Delivered'),
    ('FR0005', '2024-10-14', 5, 50.00, '78 Rue de Rivoli', 'Pending'),
    ('FR0006', '2024-10-15', 6, 22.98, '90 Avenue des Champs-Élysées', 'Shipped'),
    ('FR0007', '2024-10-16', 7, 14.99, '12 Rue de la Paix', 'Delivered'),
    ('FR0008', '2024-10-17', 8, 27.98, '14 Rue Saint-Honoré', 'Pending'),
    ('FR0009', '2024-10-18', 9, 33.99, '16 Boulevard Haussmann', 'Shipped'),
    ('FR0010', '2024-10-19', 10, 59.97, '18 Rue La Fayette', 'Delivered');

-- Insert OrderDetails for new orders
INSERT INTO OrderDetails (OrderId, ProductId, Quantity, PriceAtPurchase)
VALUES 
    (2, 1, 2, 12.99),  
    (2, 2, 1, 13.99),  
    (3, 3, 2, 14.99),  
    (4, 4, 1, 15.99),  
    (5, 1, 3, 12.99),  
    (6, 2, 1, 13.99),  
    (7, 3, 1, 14.99),  
    (8, 4, 2, 15.99),  
    (9, 1, 2, 12.99),  
    (10, 3, 3, 14.99); 

-- Insert Payments for new orders
INSERT INTO Payments (OrderId, PaymentMethod, PaymentDate, PaymentAmount, PaymentStatus)
VALUES 
    (2, 'Credit Card', '2024-10-11', 45.97, 'Completed'),
    (3, 'PayPal', '2024-10-12', 29.98, 'Pending'),
    (4, 'Credit Card', '2024-10-13', 19.99, 'Completed'),
    (5, 'Credit Card', '2024-10-14', 50.00, 'Completed'),
    (6, 'PayPal', '2024-10-15', 22.98, 'Pending'),
    (7, 'Credit Card', '2024-10-16', 14.99, 'Completed'),
    (8, 'Credit Card', '2024-10-17', 27.98, 'Pending'),
    (9, 'Credit Card', '2024-10-18', 33.99, 'Completed'),
    (10, 'PayPal', '2024-10-19', 59.97, 'Completed');

-- Insert Shipping details for new orders
INSERT INTO Shipping (OrderId, ShippingMethod, ShippingCost, TrackingNumber, ShippingStatus)
VALUES 
    (2, 'Standard Shipping', 0.00, 'TR0102', 'Shipped'),
    (3, 'Express Shipping', 5.00, 'TR0103', 'Pending'),
    (4, 'Standard Shipping', 0.00, 'TR0104', 'Delivered'),
    (5, 'Express Shipping', 5.00, 'TR0105', 'Pending'),
    (6, 'Standard Shipping', 0.00, 'TR0106', 'Shipped'),
    (7, 'Express Shipping', 5.00, 'TR0107', 'Delivered'),
    (8, 'Standard Shipping', 0.00, 'TR0108', 'Pending'),
    (9, 'Express Shipping', 5.00, 'TR0109', 'Shipped'),
    (10, 'Standard Shipping', 0.00, 'TR0110', 'Delivered');
