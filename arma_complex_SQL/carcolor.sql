SELECT car.name 
FROM car 
JOIN car_color ON car.id = car_color.car_id
WHERE car_color.color_1 = '#FFFFFF' OR car_color.color_2 = '#FFFFFF';
