.mode columns
.headers ON
.nullvalue NULL

--Qual A equipa cuja classificação média para todas AS partidas juntas é mais próxima de 1?

SELECT teamId, MIN(AVERAGES) AS 'average classification'
FROM (
    SELECT teamId, AVG(CLASSIFICATION) AS averages 
    FROM Participation 
    GROUP BY teamId);