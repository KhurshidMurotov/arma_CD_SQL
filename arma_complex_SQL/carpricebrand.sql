SELECT brand.name, AVG(car.price) AS avg_price
FROM brand
JOIN car ON brand.id = car.brand_id
GROUP BY brand.id, brand.name;
