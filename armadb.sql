CREATE TABLE about (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    logo VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    working_time VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    last_video VARCHAR(255),  -- Consider if this needs to be NOT NULL
    facebook TEXT NOT NULL,   -- Use TEXT for URLs
    instagram TEXT NOT NULL,  -- Use TEXT for URLs
    telegram TEXT NOT NULL    -- Use TEXT for URLs
);