CREATE TABLE car_equipments (
    car_id INTEGER NOT NULL REFERENCES car(id) ON DELETE CASCADE,
    equipment_id INTEGER NOT NULL REFERENCES equipment(id) ON DELETE CASCADE,
    PRIMARY KEY (car_id, equipment_id)
);