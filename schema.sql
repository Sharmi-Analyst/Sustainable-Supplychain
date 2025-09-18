- Create Farms table
CREATE TABLE Farms (
    farm_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    crop_type VARCHAR(50),
    certification VARCHAR(50) -- e.g. Organic, FairTrade
);

-- Create Distributors table
CREATE TABLE Distributors (
    distributor_id INT PRIMARY KEY,
    name VARCHAR(100),
    transport_mode VARCHAR(50), -- Truck, Train, Ship
    carbon_emission_rate DECIMAL(10,2) -- kg CO2 per km
);

-- Create Warehouses table
CREATE TABLE Warehouses (
    warehouse_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    storage_type VARCHAR(50), -- Cold, Dry
    capacity_tons DECIMAL(10,2)
);

-- Create Shipments table
CREATE TABLE Shipments (
    shipment_id INT PRIMARY KEY,
    farm_id INT,
    distributor_id INT,
    warehouse_id INT,
    distance_km DECIMAL(10,2),
    shipped_date DATE,
    arrival_date DATE,
    FOREIGN KEY (farm_id) REFERENCES Farms(farm_id),
    FOREIGN KEY (distributor_id) REFERENCES Distributors(distributor_id),
    FOREIGN KEY (warehouse_id) REFERENCES Warehouses(warehouse_id)
);

-- Create Sustainability Metrics table
CREATE TABLE Sustainability (
    sustainability_id INT PRIMARY KEY,
    shipment_id INT,
    food_waste_percent DECIMAL(5,2),
    carbon_footprint DECIMAL(10,2), -- Calculated later
    FOREIGN KEY (shipment_id) REFERENCES Shipments(shipment_id)
);


