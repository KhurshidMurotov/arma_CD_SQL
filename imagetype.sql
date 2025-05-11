CREATE TABLE image_type (
    id SERIAL PRIMARY KEY,
    "order" SMALLINT DEFAULT 0,  -- Using SMALLINT for order field, assuming the range is sufficient
    name VARCHAR(255) NOT NULL,
    slug_name VARCHAR(255) UNIQUE NOT NULL CHECK (slug_name IN ('main_image', 'poster_image', 'inner_image', 'sensor_image', 'skillet_image'))
);

-- Optional: Add an index for the `slug_name` field for faster searches if needed
CREATE INDEX idx_image_type_slug_name ON image_type (slug_name);
