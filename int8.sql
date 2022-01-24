.mode columns
.headers on
.nullvalue null

-- What is the country with the less productive staff

.read criar.sql
.read povoar.sql
.read povoarAddresses.sql

-- Address schema : Address(addressId,country,city,zipCode)
-- Staff schema : Staff(NIF,phoneNumber,emailAddress,nationality,NAME,totalWorkedHours,address,staffType)


create view addressId_country as
select  addressId, country from Address;


-- Aqui vou ver aqueles joins todos bonitos para podermos obter  muitos paises num query

select country,Avg(totalWorkedHours) from Staff join addressId_country on addressId=address
group by country
order by Avg(totalWorkedHours) desc;