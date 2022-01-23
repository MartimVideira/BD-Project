.mode columns
.headers on
.nullvalue null

drop view if exists CountryCount;
create view CountryCount as
select count(name) as NPlayers, country
from (select name, country from Player join Address using(addressId))
group by country;

select country from Countrycount where NPlayers = (select max(Nplayers) from CountryCount);

--select country from (select * from CountryCount, (select max(NPlayers) as Maximum from CountryCount)) where NPlayers = Maximum order by country;