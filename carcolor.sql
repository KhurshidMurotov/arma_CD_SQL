CREATE TABLE car_color (
    id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL REFERENCES car(id) ON DELETE RESTRICT,
    order INTEGER DEFAULT 0,
    color_1 VARCHAR(255) NOT NULL,
    color_2 VARCHAR(255) NOT NULL,
    status VARCHAR(255) CHECK (status IN ('active', 'deactive'))
);