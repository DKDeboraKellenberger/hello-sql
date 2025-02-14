/*
GROUP BY
Lección 10.11: https://youtu.be/OuJerKzV5T0?t=8960
*/

-- Agrupa los resultados por edad diferente
/*En verdad este ejemplo es medio confuso, ya está 
agrupando solamente por edad, y luego mostramos el valor
 maximo de ese grupo, que siempre contendrá los mismos 
 valores, por lo que terminaria por mostrar uno de cada 
 grupo
*/
SELECT MAX(age) FROM users GROUP BY age

-- Agrupa los resultados por edad diferente y cuenta cuantos registros existen de cada una
-- Osea que cuenta cuántos registros hay dentro de cada grupo de edades (cuantos de 36, cuantos de 20...) y luego pone de qué edad habla
SELECT COUNT(age), age FROM users GROUP BY age

-- Agrupa los resultados por edad diferente, cuenta cuantos registros existen de cada una y los ordena
-- Ídem la de arriba pero esta vez ordena los resultados de forma ascendente
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC

-- Agrupa los resultados por edad diferente mayor de 15, cuenta cuantos registros existen de cada una y los ordena
-- Cuanta cuantos registros hay en cada grupo de edades en donde éstas sean mayor a 15 y los ordena de forma ascendente
SELECT COUNT(age), age FROM users WHERE age > 15 GROUP BY age ORDER BY age ASC