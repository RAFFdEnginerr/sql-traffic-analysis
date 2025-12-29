CREATE TABLE traffic_data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date DATE,
    location VARCHAR(50),
    traffic_volume INTEGER,
    road_condition VARCHAR(20),
    vehicle_type VARCHAR(20)
);