SELECT * FROM users ORDER BY age;

SELECT * FROM users ORDER BY age ASC;
-- Estas dos primeros es para ordenar de manera ascendente


SELECT * FROM users ORDER BY age DESC; 
-- Ordenar de manera descendente 

SELECT name FROM users WHERE email = "sara@gmail.com" ORDER BY age DESC;
-- Caso de dos personas con el mismo email y que lo ordene por edad 