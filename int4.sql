.mode columns
.headers on
.nullvalue null

--Qual a equipa cuja classificação média para todas as partidas juntas é mais próxima de 1?

--Query
select teamId 
from (
    select teamId, avg(classification) as averages 
    from Participation 
    group by teamId) 
where averages in  (    
    select min(averages) 
    from (
        select teamId, avg(classification) as averages 
        from Participation 
        group by teamId));