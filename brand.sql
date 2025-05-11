CREATE TABLE brand (
    id SERIAL PRIMARY KEY,
    "order" SMALLINT DEFAULT 0,
    name VARCHAR(255) NOT NULL,
    logo VARCHAR(255) NOT NULL,
    zoom DECIMAL(3,2) DEFAULT 1.00,
    status ENUM('active', 'deactive') NOT NULL,
    CONSTRAINT status_check CHECK (status IN ('active', 'deactive'))
);

CREATE INDEX idx_brand_status ON brand (status);
