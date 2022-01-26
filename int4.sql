.mode columns
.headers ON
.nullvalue NULL

--Qual A equipa cuja classificação média para todas AS partidas juntas é mais próxima de 1?

--Query
SELECT teamId 
FROM (
    SELECT teamId, AVG(classification) AS averages 
    FROM Participation 
    GROUP BY teamId
    ORDER BY averages ASC)
LIMIT 1;

--Alternative

SELECT teamId, min(averages) as 'average classification'
FROM (
    SELECT teamId, AVG(classification) AS averages 
    FROM Participation 
    GROUP BY teamId);