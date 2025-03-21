CREATE TABLE engine_type (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    slug_name VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL
);