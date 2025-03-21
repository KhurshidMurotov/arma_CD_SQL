CREATE TABLE car_image (
    id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL REFERENCES car(id) ON DELETE RESTRICT,
    order INTEGER DEFAULT 0,
    image VARCHAR(255) NOT NULL,
    status VARCHAR(255) CHECK (status IN ('active', 'deactive'))
);