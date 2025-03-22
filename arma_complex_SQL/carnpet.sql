SELECT car.name, car.price, engine_type.name AS engine, drive_unit.name AS drive_unit
FROM car
JOIN engine_type ON car.engine_type_id = engine_type.id
JOIN drive_unit ON car.drive_unit_id = drive_unit.id
WHERE car.status = 'active';
