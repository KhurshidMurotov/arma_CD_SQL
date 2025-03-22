SELECT car.name, car_color.color_1, car_color.color_2 
FROM car 
JOIN car_color ON car.id = car_color.car_id;
