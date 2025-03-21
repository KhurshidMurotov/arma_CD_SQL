CREATE TABLE car_image_types (
    car_image_id INTEGER NOT NULL REFERENCES car_image(id) ON DELETE CASCADE,
    image_type_id INTEGER NOT NULL REFERENCES image_type(id) ON DELETE CASCADE,
    PRIMARY KEY (car_image_id, image_type_id)
);