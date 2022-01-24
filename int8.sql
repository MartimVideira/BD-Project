.mode columns
.headers on
.nullvalue null

-- What is the country with the less productive staff
-- Staff group by countries e fazer a average 
-- Sort by descending order and its the first
-- Fazer uma view para associar um  id de morada a um país 

-- Address schema : Address(addressId,country,city,zipCode)
-- Staff schema : Staff(NIF,phoneNumber,emailAddress,nationality,NAME,totalWorkedHours,address,staffType)

.read criar.sql
.read povoar.sql
.read povoarAddresses.sql
create view addressId_country as
select  addressId, country from Address;


select * from addressId_country;

select country,Avg(totalWorkedHours) from Staff join addressId_country on addressId=address
group by country
order by Avg(totalWorkedHours) desc;