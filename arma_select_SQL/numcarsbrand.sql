SELECT brand.name, COUNT(car.id) AS car_count 
FROM brand 
LEFT JOIN car ON brand.id = car.brand_id 
GROUP BY brand.name;
