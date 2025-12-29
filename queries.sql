-- View sample data
SELECT * FROM traffic_data LIMIT 10;

-- Total records
SELECT COUNT(*) AS total_records FROM traffic_data;

-- Average traffic volume by location
SELECT location, AVG(traffic_volume) AS avg_traffic
FROM traffic_data
GROUP BY location
ORDER BY avg_traffic DESC;

-- Monthly traffic trend
SELECT strftime('%Y-%m', date) AS month, AVG(traffic_volume) AS avg_traffic
FROM traffic_data
GROUP BY month
ORDER BY month;

-- Traffic by road condition
SELECT road_condition, COUNT(*) AS record_count
FROM traffic_data
GROUP BY road_condition;

-- High traffic locations
SELECT location, AVG(traffic_volume) AS avg_traffic
FROM traffic_data
GROUP BY location
HAVING AVG(traffic_volume) > 1200;

-- Vehicle type distribution
SELECT vehicle_type, COUNT(*) AS total
FROM traffic_data
GROUP BY vehicle_type
ORDER BY total DESC;

-- Peak traffic days
SELECT date, location, traffic_volume
FROM traffic_data
WHERE traffic_volume > 2000
ORDER BY traffic_volume DESC;