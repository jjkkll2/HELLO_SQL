SELECT 
    name, 
    surname,
    age,
    CASE
        WHEN age < 18 THEN 'Menor de edad'
        WHEN age BETWEEN 18 AND 25 THEN 'Joven adulto'
        WHEN age > 25 THEN 'Adulto'
        ELSE 'Sin edad'
    END AS categoria_edad
FROM users;


/*
Para usar case, primero indico las variables que usare
name, surname, age
luego indico cual es mi variable condicion 'age' y se creara una nueva 
categoria 'categoria_edad' donde aparecera:
- menor de edad
- joven adulto
- adulto
- sin edad 
*/