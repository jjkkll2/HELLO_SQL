-- 1. Selección con límite simple
SELECT * FROM users 
LIMIT 2; 

-- 2. Selección con filtros y comillas estándar
-- Usamos paréntesis para agrupar la lógica y comillas simples para el texto
SELECT * FROM users 
WHERE (NOT email = 'sara@gmail.com') OR age = 15 
LIMIT 2 OFFSET 0;
