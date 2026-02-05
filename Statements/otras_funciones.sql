/*
 IF - Condicional simple
Sintaxis: IF(condición, valor_si_verdadero, valor_si_falso)
*/
SELECT 
    name,
    age,
    IF(age >= 18, 'Mayor de edad', 'Menor de edad') AS clasificacion
FROM users;

/*
 IF - Condicional simple
Sintaxis: IF(condición, valor_si_verdadero, valor_si_falso)
*/
-- Verificar si tiene correo
SELECT
	name,
    surname,
    IF(email IS NOT NULL, 'Tiene correo', 'Solicitar correo') AS estado_correo
FROM users; 

-- Verificar si tiene apellido
SELECT 
    name,
    IF(surname IS NOT NULL, 'Tiene apellido', 'Sin apellido') AS estado_apellido
FROM users;


/*
DATEDIF 
NOTA: MySQL no tiene DATEDIF nativo. Se usa DATEDIFF o TIMESTAMPDIFF:
DATEDIFF - Diferencia en días
*/
-- Días desde que se registró
SELECT 
    name,
    init_date,
    DATEDIFF(CURDATE(), init_date) AS dias_desde_registro
FROM users
WHERE init_date IS NOT NULL;

-- TIMESTAMPDIFF - Diferencia en años/meses/días
-- Años desde el registro
SELECT 
    name,
    init_date,
    TIMESTAMPDIFF(YEAR, init_date, CURDATE()) AS años_registrado
FROM users
WHERE init_date IS NOT NULL;

-- Meses desde el registro
SELECT 
    name,
    init_date,
    TIMESTAMPDIFF(MONTH, init_date, CURDATE()) AS meses_registrado
FROM users
WHERE init_date IS NOT NULL;


/*
 REPLACE / SUBSTITUTE
*/
-- Reemplazar texto en email
SELECT 
    name,
    email,
    REPLACE(email, '@gmail.com', '@correo.com') AS email_modificado
FROM users;

-- Reemplazar NULL por texto
SELECT 
    name,
    REPLACE(surname, NULL, 'Sin apellido') AS apellido
FROM users;

-- Cambiar dominios de email
SELECT 
    email,
    REPLACE(email, 'gmail.com', 'empresa.com') AS email_corporativo
FROM users
WHERE email IS NOT NULL;


-- UPPER - Convertir a MAYÚSCULAS
SELECT 
    name,
    UPPER(name) AS nombre_mayusculas,
    UPPER(surname) AS apellido_mayusculas
FROM users;

-- LOWER - Convertir a minúsculas
SELECT 
    name,
    email,
    LOWER(email) AS email_minusculas
FROM users;


-- ---------------------------------------------------------------------
-- PROPER: MySQL no tiene PROPER. Se debe crear con funciones:
SELECT 
    name,
    CONCAT(UPPER(LEFT(name, 1)), LOWER(SUBSTRING(name, 2))) AS nombre_titulo
FROM users;
/*
**Resultado con 'proper':**
name   | nombre_titulo
-------+--------------
tabita | Tabita
SARA   | Sara
JUAN   | Juan
*/


-- Ejemplo de consulta completa 
SELECT 
    -- IF
    IF(age >= 18, 'Adulto', 'Menor') AS estado,
    
    -- CONCAT y UPPER
    CONCAT(UPPER(name), ' ', IFNULL(UPPER(surname), 'N/A')) AS nombre_completo,
    
    -- REPLACE
    REPLACE(IFNULL(email, 'Sin email'), '@gmail.com', '@empresa.com') AS email_corporativo,
    
    -- TRIM
    TRIM(name) AS nombre_limpio,
    
    -- DATEDIFF
    DATEDIFF(CURDATE(), IFNULL(init_date, CURDATE())) AS dias_activo,
    
    age
FROM users;