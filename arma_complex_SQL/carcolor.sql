SELECT DISTINCT car.name
FROM car
JOIN car_color ON car.id = car_color.car_id
WHERE '#FFFFFF' IN (car_color.color_1, car_color.color_2);

