CREATE TABLE image_type (
    id SERIAL PRIMARY KEY,
    order INTEGER DEFAULT 0,
    name VARCHAR(255) NOT NULL,
    slug_name VARCHAR(255) UNIQUE NOT NULL CHECK (slug_name IN ('main_image', 'poster_image', 'inner_image', 'sensor_image', 'skillet_image'))
);