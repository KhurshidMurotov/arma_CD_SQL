CREATE TABLE car_equipments (
    car_id INTEGER NOT NULL REFERENCES car(id) ON DELETE CASCADE,
    equipment_id INTEGER NOT NULL REFERENCES equipment(id) ON DELETE CASCADE,
    PRIMARY KEY (car_id, equipment_id)
);

-- Optional: Add an index for the individual foreign keys for better performance on queries
CREATE INDEX idx_car_equipments_car_id ON car_equipments (car_id);
CREATE INDEX idx_car_equipments_equipment_id ON car_equipments (equipment_id);
