CREATE TABLE car (
    id SERIAL PRIMARY KEY,
    "order" SMALLINT DEFAULT 0,
    brand_id INTEGER NOT NULL REFERENCES brand(id) ON DELETE RESTRICT,
    name VARCHAR(255) NOT NULL,
    manufacture_year INTEGER DEFAULT 2020,  -- Assuming this is a valid default year, change as necessary
    price DECIMAL(10, 2) NOT NULL,  -- Use DECIMAL for better precision with price
    engine_type_id INTEGER NOT NULL REFERENCES engine_type(id) ON DELETE RESTRICT,
    acceleration DECIMAL(5,2) NOT NULL,  -- Using DECIMAL for better precision
    power_reserver_from INTEGER NOT NULL,
    power_reserver_to INTEGER NOT NULL,
    length DECIMAL(7,2) NOT NULL,  -- Adjust precision if necessary
    width DECIMAL(7,2) NOT NULL,
    height DECIMAL(7,2) NOT NULL,
    num_of_places INTEGER NOT NULL,
    max_speed INTEGER NOT NULL,
    drive_unit_id INTEGER NOT NULL REFERENCES drive_unit(id) ON DELETE RESTRICT,
    battery_capacity DECIMAL(10, 2) NOT NULL,  -- Adjust precision if necessary
    charging_speed DECIMAL(5, 2) NOT NULL,  -- Adjust precision if necessary
    speed_in VARCHAR(255) CHECK (speed_in IN ('minutes', 'hours')),
    desc_1 TEXT NOT NULL,
    desc_2 TEXT NOT NULL,
    is_featured BOOLEAN DEFAULT FALSE,
    status ENUM('active', 'deactive') NOT NULL,  -- Using ENUM for status for better performance
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Optional: Add an index for frequently queried fields like `brand_id` and `status`
CREATE INDEX idx_car_brand_id ON car (brand_id);
CREATE INDEX idx_car_status ON car (status);
