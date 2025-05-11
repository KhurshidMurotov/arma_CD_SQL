CREATE TABLE engine_type (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    slug_name VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL
);

-- Optional: Add an index for the slug_name field to improve search performance
CREATE INDEX idx_engine_type_slug_name ON engine_type (slug_name);
