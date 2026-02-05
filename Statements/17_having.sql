-- Se utiliza cuando la clave no se puede utilizar en claves agregadas
--
SELECT * FROM  users HAVING age>15; 
SELECT COUNT(age) FROM users HAVING COUNT(age) >4;


--limitacion sobre una columna que se esta viendo 