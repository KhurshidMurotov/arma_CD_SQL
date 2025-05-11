SELECT name, manufacture_year
FROM car
WHERE manufacture_year IS NOT NULL
ORDER BY manufacture_year ASC
LIMIT 1;


SELECT name, manufacture_year
FROM car
WHERE manufacture_year IS NOT NULL
ORDER BY manufacture_year DESC
LIMIT 1;

