/*
HAVING
Lección 10.12: https://youtu.be/OuJerKzV5T0?t=9265
*/

-- Cuenta cuantas filas contienen un dato no nulo en el campo edad de la tabla "users" mayor que 3
-- Limita sobre una funcion de agregación
SELECT COUNT(age) FROM users HAVING COUNT(age) > 3

-- Aclaremos: ¿porqué no usamos directamente SELECT * FROM users HAVING age > 15; si es que queremos 
-- seleccionar todos los registros que tienen mas de 15 años? Porque el HAVING se usa luego de funciones de agregación
-- Por lo tanto, para hacer eso deberíamos usar el limitante WHERE, mas no HAVING


-- NO ME TERMINA DE QUEDAR DEL TODO CLARO, PUES EN VARIOS LADOS DICE QUE EL HAVING VA CON EL GROUP BY, PERO ACA NO LO DICE