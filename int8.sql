.mode column
.headers ON
.nullvalue NULL

-- What IS the country WITH the LESS productive staff

.read criar.sql
.read gatilho1_adiciona.sql
.read povoar.sql
.read povoarAddresses.sql

--                      Used Schemas: 
-- Address SCHEMA : Address(addressId,country,city,zipCode)
-- Staff SCHEMA : Staff(NIF,phoneNumber,emailAddress,nationality,NAME,totalWorkedHours,address,staffType)


CREATE VIEW addressId_country AS
SELECT  addressId, country FROM Address;



-- Aqui vou ver aqueles joins todos bonitos para podermos obter  muitos paises num query

SELECT country, AVG(totalWorkedHours) FROM Staff JOIN addressId_country ON addressId=address
GROUP BY country
ORDER BY AVG(totalWorkedHours) ASC
LIMIT 1;

.read gatilho1_remove.sql