SELECT car.name, car_image.image, image_type.name AS image_type 
FROM car_image
JOIN car ON car_image.car_id = car.id
JOIN car_image_types ON car_image.id = car_image_types.car_image_id
JOIN image_type ON car_image_types.image_type_id = image_type.id;
