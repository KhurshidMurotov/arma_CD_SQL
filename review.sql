CREATE TABLE review (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    car_id INTEGER NOT NULL REFERENCES car(id) ON DELETE RESTRICT,
    time TIME NOT NULL
);

-- Optional: Add an index for the car_id field if frequently queried
CREATE INDEX idx_review_car_id ON review (car_id);
