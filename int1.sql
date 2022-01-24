.mode columns
.headers on
.nullvalue null

--Quais os nomes dos jogos favoritos dos fãs de Lisboa?

--Query
select distinct Gname 
from Game 
where Game.gameId in (
    select distinct game 
    from GameFan 
    where GameFan.fan in (
        select NIF 
        from Fan 
        where Fan.address in (
            select addressId 
            from Address 
            where city = 'Lisbon')));