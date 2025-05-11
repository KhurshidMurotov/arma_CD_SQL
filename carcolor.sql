CREATE TABLE car_color (
    id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL REFERENCES car(id) ON DELETE RESTRICT,
    "order" SMALLINT DEFAULT 0,  -- Using SMALLINT for order field, assuming the range is sufficient
    color_1 VARCHAR(255) NOT NULL,
    color_2 VARCHAR(255) NOT NULL,
    status ENUM('active', 'deactive') NOT NULL  -- Using ENUM for better performance and data integrity
);

-- Optional: Add an index for the car_id and status fields if frequently queried
CREATE INDEX idx_car_color_car_id ON car_color (car_id);
CREATE INDEX idx_car_color_status ON car_color (status);
