SELECT * FROM users WHERE NOT email LIKE "%gmail.com";

SELECT * FROM users WHERE NOT email LIKE "sara@gmail.com";


-- concatenacion and-not 
SELECT * FROM users WHERE NOT email LIKE "sara@gmail.com" AND age = 15; 


SELECT * FROM users WHERE NOT email LIKE "sara@gmail.com" OR age = 15; 