CREATE TABLE car_image (
    id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL REFERENCES car(id) ON DELETE RESTRICT,
    "order" SMALLINT DEFAULT 0,  -- Using SMALLINT for order field, assuming the range is sufficient
    image VARCHAR(255) NOT NULL,
    status ENUM('active', 'deactive') NOT NULL  -- Using ENUM for better performance and data integrity
);

-- Optional: Add an index for the car_id and status fields for better query performance
CREATE INDEX idx_car_image_car_id ON car_image (car_id);
CREATE INDEX idx_car_image_status ON car_image (status);
