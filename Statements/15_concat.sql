SELECT CONCAT(name,' ',surname) FROM users;
-- Crea una columna con el nomre + apellido y un espacio entre ellos 


SELECT CONCAT('Nombre: ',name,' ','Apellidos:',surname) FROM users;

-- Concatenacion con alias (AS)
SELECT CONCAT('Nombre: ',name,' ','Apellidos: ',surname) 
AS 'Nombre Completo' FROM users;  
