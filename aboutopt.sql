CREATE TABLE about (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    logo VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    working_time VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL,
    last_video VARCHAR(255),
    facebook VARCHAR(1024) NOT NULL,
    instagram VARCHAR(1024) NOT NULL,
    telegram VARCHAR(1024) NOT NULL
);