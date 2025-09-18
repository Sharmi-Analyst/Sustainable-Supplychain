-- Insert sample farms
INSERT INTO Farms VALUES (1, 'Green Valley Farm', 'Punjab, India', 'Wheat', 'Organic');
INSERT INTO Farms VALUES (2, 'EcoHarvest', 'California, USA', 'Vegetables', 'FairTrade');
INSERT INTO Farms VALUES (3, 'Sunrise Agro', 'Kenya', 'Coffee', 'Organic');

-- Insert distributors
INSERT INTO Distributors VALUES (1, 'EcoTrans Logistics', 'Truck', 0.25);
INSERT INTO Distributors VALUES (2, 'GreenShip', 'Train', 0.10);
INSERT INTO Distributors VALUES (3, 'BlueOcean Transport', 'Ship', 0.05);

-- Insert warehouses
INSERT INTO Warehouses VALUES (1, 'North Storage', 'Delhi, India', 'Cold', 500);
INSERT INTO Warehouses VALUES (2, 'West Coast Depot', 'San Francisco, USA', 'Dry', 800);
INSERT INTO Warehouses VALUES (3, 'Nairobi Hub', 'Nairobi, Kenya', 'Cold', 600);

-- Insert shipments
INSERT INTO Shipments VALUES (101, 1, 1, 1, 250.00, '2025-09-01', '2025-09-02');
INSERT INTO Shipments VALUES (102, 2, 2, 2, 1200.00, '2025-09-05', '2025-09-07');
INSERT INTO Shipments VALUES (103, 3, 3, 3, 4500.00, '2025-09-10', '2025-09-15');

-- Insert sustainability metrics
INSERT INTO Sustainability VALUES (1, 101, 5.00, 62.50); -- Truck (250km * 0.25)
INSERT INTO Sustainability VALUES (2, 102, 3.50, 120.00); -- Train (1200km * 0.10)
INSERT INTO Sustainability VALUES (3, 103, 2.00, 225.00); -- Ship (4500km * 0.05)
