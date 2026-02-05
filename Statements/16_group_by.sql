-- Agrupa filas con los mismos valores 
--Busca algo muy concreto 
SELECT MAX(age) FROM users GROUP BY age ; 

-- Esta contando las edades
SELECT COUNT(age) FROM users GROUP BY age;

-- Indica cuantas veces se repite una edad y la edad 
SELECT COUNT(age),age FROM users GROUP BY age; 

-- Se obtiene dos columnas, la primera indica la cantidad de veces 
-- La segunda columna indica la edad
-- Ordena las edades de menor a mayor
SELECT COUNT(age),age FROM users GROUP BY age 
ORDER BY age ASC; 

-- Se obtiene dos columnas, la primera indica la cantidad de veces 
-- La segunda columna indica la edad
-- Ordena las edades de menor a mayor
SELECT COUNT(age),age FROM users GROUP BY age 
ORDER BY age DESC; 

-- Cuando se usa funciones de agregacion junto con otras columnas, 
--  siempre dene usar group by
SELECT COUNT(age) AS cantidad, age 
FROM users 
WHERE age > 15
GROUP BY age
ORDER BY age DESC;