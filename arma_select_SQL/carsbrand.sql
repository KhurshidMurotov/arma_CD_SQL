SELECT * FROM car 
WHERE brand_id = (SELECT id FROM brand WHERE name = 'Toyota');
