SELECT * FROM users 
LIMIT 2;
-- Limita los primeros 2 datos de la tabla 

SELECT * FROM users WHERE NOT email = "sara@gmil.com" OR age = 15 LIMIT 2; 
-- para limitar paginaciones, etc, 

-- LIMIT [cantidad de filas] OFFSET [cuántas filas saltarse]