SELECT car.name, car.price, brand.name AS brand_name 
FROM car 
JOIN brand ON car.brand_id = brand.id;
