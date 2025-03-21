CREATE TABLE brand (
    id SERIAL PRIMARY KEY,
    order INTEGER DEFAULT 0,
    name VARCHAR(255) NOT NULL,
    logo VARCHAR(255) NOT NULL,
    zoom FLOAT DEFAULT 1,
    status VARCHAR(255) CHECK (status IN ('active', 'deactive'))
);