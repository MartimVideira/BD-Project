.mode columns
.headers ON
.nullvalue NULL

--Qual A equipa cuja classificação média para todas AS partidas juntas é mais próxima de 1?

--Query
SELECT teamId 
FROM (
    SELECT teamId, AVG(classification) AS averages 
    FROM Participation 
    GROUP BY teamId) 
WHERE averages IN  (    
    SELECT MIN(averages) 
    FROM (
        SELECT teamId, AVG(classification) AS averages 
        FROM Participation 
        GROUP BY teamId));