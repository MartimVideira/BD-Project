.mode columns
.headers on
.nullvalue null

--Qual o prémio ganho por cada equipa em cada partida na qual participou?

--Query
select teamId, matchId, prize 
from Participation natural join Classification 
ORDER BY TEAMID;