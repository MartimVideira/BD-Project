.mode column
.headers ON
.nullvalue NULL

-- Qual A equipa mais polarizante?
-- Define-se como equipa mais polarizante A que obtem uma maior diferenca entre a melhor e a pior pontuaçao, e que 
-- tenha obtido pior classificacao NO evento.

SELECT  
    Team.teamId, 
    Tname, 
    ROUND(AVG(classification),2) AS AverageScore , 
    MIN(classification) AS Best , 
    MAX(classification) AS  Worst 
FROM Team 
JOIN participation 
ON participation.teamId=team.TeamId
GROUP BY Team.teamId
ORDER BY (Worst-Best) DESC ,AverageScore DESC;
