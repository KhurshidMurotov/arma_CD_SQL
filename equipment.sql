CREATE TABLE equipment (
    id SERIAL PRIMARY KEY,
    order INTEGER DEFAULT 0,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(255) CHECK (status IN ('active', 'deactive'))
);