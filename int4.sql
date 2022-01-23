.mode columns
.headers on
.nullvalue null

select teamId from (select teamId, avg(classification) as averages from Participation group by teamId) where averages in  (select min(averages) from (select teamId, avg(classification) as averages from Participation group by teamId));