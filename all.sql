INSERT INTO Customers (LastName, FirstName, Email, PhoneNumber, Member)
VALUES ('Phaisan', 'Tayvadi', 'phaisantayvadi@example.com', '0625255555', 1);

INSERT INTO Members (CustomerId, Rewards, SignUpDate, RewardsRedeemed)
VALUES (1, 100, '2024-10-10', 0);

INSERT INTO Orders (OrderNumber, OrderDate, CustomerId, TotalAmount, ShippingAddress, ShippingStatus)
VALUES ('FR0001', '2024-10-10', 1, 30.98, '10 Boulevard de Strasbourg', 'Pending');

INSERT INTO OrderDetails (OrderId, ProductId, Quantity, PriceAtPurchase)
VALUES 
    (1, 1, 1, 12.99),  
    (1, 2, 1, 13.99); 

INSERT INTO Payments (OrderId, PaymentMethod, PaymentDate, PaymentAmount, PaymentStatus)
VALUES (1, 'Credit Card', '2023-10-01', 30.98, 'Completed');

INSERT INTO Products (ProductName, CategoryId, Quantity, Sold, Price)
VALUES 
    ('Shampoo', 1, 100, 0, 12.99),
    ('Conditioner', 1, 100, 0, 13.99),
    ('Leave-in Conditioner', 1, 50, 0, 14.99),
    ('Oil', 1, 75, 0, 15.99);

INSERT INTO Shipping (OrderId, ShippingMethod, ShippingCost, TrackingNumber, ShippingStatus)
VALUES (1, 'Standard Shipping', 0.00, 'TR0101', 'Shipped');