SELECT 
	name, 
    IFNULL(surname, 'Sin apellido') As apellido
FROM users; 


/*
Si en edad es nullo, reemplzar nulo por 0
*/
SELECT name, surname, IFNULL(age,0) AS age FROM users; 