CREATE TABLE equipment (
    id SERIAL PRIMARY KEY,
    "order" SMALLINT DEFAULT 0,  -- Using SMALLINT for order field, assuming the range is sufficient
    name VARCHAR(255) NOT NULL,
    status ENUM('active', 'deactive') NOT NULL  -- Using ENUM for better performance and data integrity
);

-- Optional: Add an index for the status field if frequently queried
CREATE INDEX idx_equipment_status ON equipment (status);
