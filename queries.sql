-- Query 1: Calculate carbon footprint per shipment
SELECT s.shipment_id, 
       (s.distance_km * d.carbon_emission_rate) AS carbon_footprint
FROM Shipments s
JOIN Distributors d ON s.distributor_id = d.distributor_id;

-- Query 2: Top 3 most sustainable farms (lowest avg carbon footprint)
SELECT f.name, AVG(sm.carbon_footprint) AS avg_footprint
FROM Farms f
JOIN Shipments s ON f.farm_id = s.farm_id
JOIN Sustainability sm ON s.shipment_id = sm.shipment_id
GROUP BY f.name
ORDER BY avg_footprint ASC
LIMIT 3;

-- Query 3: Average food waste per warehouse
SELECT w.name, AVG(sm.food_waste_percent) AS avg_waste
FROM Warehouses w
JOIN Shipments s ON w.warehouse_id = s.warehouse_id
JOIN Sustainability sm ON s.shipment_id = sm.shipment_id
GROUP BY w.name;

-- Query 4: Find shipments that traveled over 1000 km
SELECT shipment_id, distance_km
FROM Shipments
WHERE distance_km > 1000;

-- Query 5: Total carbon footprint per distributor
SELECT d.name, SUM(sm.carbon_footprint) AS total_emission
FROM Distributors d
JOIN Shipments s ON d.distributor_id = s.distributor_id
JOIN Sustainability sm ON s.shipment_id = sm.shipment_id
GROUP BY d.name;
