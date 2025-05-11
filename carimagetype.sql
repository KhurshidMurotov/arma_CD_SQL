CREATE TABLE car_image_types (
    car_image_id INTEGER NOT NULL REFERENCES car_image(id) ON DELETE CASCADE,
    image_type_id INTEGER NOT NULL REFERENCES image_type(id) ON DELETE CASCADE,
    PRIMARY KEY (car_image_id, image_type_id)
);

-- Optional: Add an index for the foreign keys to optimize query performance
CREATE INDEX idx_car_image_types_car_image_id ON car_image_types (car_image_id);
CREATE INDEX idx_car_image_types_image_type_id ON car_image_types (image_type_id);
