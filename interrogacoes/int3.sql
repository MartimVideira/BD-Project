.mode columns
.headers ON
.nullvalue NULL

--Qual o prémio ganho por cada equipa em cada partida na qual participou?

--Query
SELECT teamId, matchId, prize 
FROM Participation NATURAL JOIN Classification 
ORDER BY TEAMID;