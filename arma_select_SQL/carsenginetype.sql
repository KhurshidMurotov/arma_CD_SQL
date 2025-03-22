SELECT car.* FROM car
JOIN engine_type ON car.engine_type_id = engine_type.id
WHERE engine_type.name = 'Electric';
