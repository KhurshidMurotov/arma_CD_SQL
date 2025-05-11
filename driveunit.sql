CREATE TABLE drive_unit (
    id SERIAL PRIMARY KEY,
    "order" SMALLINT DEFAULT 0,  -- Using SMALLINT for order field, assuming the range is sufficient
    name VARCHAR(255) NOT NULL
);

-- Optional: Add an index for the name field if it will be queried frequently
CREATE INDEX idx_drive_unit_name ON drive_unit (name);
