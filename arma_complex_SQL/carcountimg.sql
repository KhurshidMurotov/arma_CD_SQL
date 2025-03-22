SELECT car.name, COUNT(car_image.id) AS image_count 
FROM car 
LEFT JOIN car_image ON car.id = car_image.car_id 
GROUP BY car.name 
ORDER BY image_count DESC 
LIMIT 5;
