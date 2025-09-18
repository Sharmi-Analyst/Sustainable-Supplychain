# Sustainable-Supplychain
SQL  project with schema ,queries, and ER diagram
# 🌱 Sustainable Food Supply Chain – SQL Project

## 📌 Project Overview

This project models a **farm-to-table food supply chain** with a focus on **sustainability and ESG (Environmental, Social, Governance) metrics**.  
The database tracks farms, distributors, warehouses, shipments, and sustainability indicators such as **carbon footprint** and **food waste percentage**.  

Unlike traditional SQL projects (library, hospital, ecommerce), this project highlights how SQL can be applied to **real-world challenges** like food security, supply chain transparency, and climate change.  

---

## 🛠 Database Schema  
The project includes 5 main entities:  
- **Farms** – Crop type, location, certifications (Organic, FairTrade, etc.)  
- **Distributors** – Transport mode, carbon emission rate  
- **Warehouses** – Storage type (Cold, Dry), capacity  
- **Shipments** – Movement of goods from farm → distributor → warehouse  
- **Sustainability Metrics** – Food waste percentage, carbon footprint  

📌 **ER Diagram**  
Farms (farm_id) ───< Shipments >─── (distributor_id) Distributors  
                         │
                         │
                         v
                  (warehouse_id)
                    Warehouses

Shipments (shipment_id) ───< Sustainability


---

## 💾 Files in this Repository  
- `schema.sql` → SQL scripts for table creation  
- `data.sql` → Sample data inserts  
- `queries.sql` → Analytical queries  
  

---

## 📊 Sample Queries

### 1. Calculate carbon footprint per shipment
```sql
SELECT s.shipment_id, 
       (s.distance_km * d.carbon_emission_rate) AS carbon_footprint
FROM Shipments s
JOIN Distributors d ON s.distributor_id = d.distributor_id;

2. Find top 3 most sustainable farms

SELECT f.name, AVG(sm.carbon_footprint) AS avg_footprint
FROM Farms f
JOIN Shipments s ON f.farm_id = s.farm_id
JOIN Sustainability sm ON s.shipment_id = sm.shipment_id
GROUP BY f.name
ORDER BY avg_footprint ASC
LIMIT 3;

3. Average food waste per warehouse

SELECT w.name, AVG(sm.food_waste_percent) AS avg_waste
FROM Warehouses w
JOIN Shipments s ON w.warehouse_id = s.warehouse_id
JOIN Sustainability sm ON s.shipment_id = sm.shipment_id
GROUP BY w.name;


---

🚀 Future Enhancements

Add restaurant/consumer-level tracking

Introduce alerts for high food waste

Implement loyalty rewards for eco-friendly distributors



---

📌 Key Learnings

Designing normalized databases with 1-to-many & 1-to-1 relationships

Using SQL for analytics, reporting, and sustainability insights

Applying SQL to solve real-world supply chain and climate challenges



---

✨ This project is part of my Data Portfolio to showcase SQL, database design, and problem-solving skills.

