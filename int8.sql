.mode column
.headers ON
.nullvalue NULL

-- Mostra A media de horas trabalhadas pelos staffs de cada país 
-- por ordem decrescente e em caso de empate por ordem alfabética DO nome DO País

-- Deverá ser usada esta ordem pois esta query necessita DO TRIGGER para fazer sentido
-- .read criar.sql
-- .read gatilho1_adiciona.sql
-- .read povoar.sql

--                      Used Schemas: 
-- Address SCHEMA : Address(addressId,country,city,zipCode)
-- Staff SCHEMA : Staff(NIF,phoneNumber,emailAddress,nationality,NAME,totalWorkedHours,address,staffType)

SELECT DISTINCT country, AVG(totalWorkedHours) FROM (Address LEFT JOIN Staff ON addressId=address)
GROUP BY country
ORDER BY AVG(totalWorkedHours) DESC, country ASC;


-- .read gatilho1_remove.sql        