.mode COLUMN
.headers ON
.nullvalue NULL

-- Qual A equipa mais polarizante?
-- Define-se como equipa mais polarizante A que obtem uma maior diferenca de melhor pontuacao e pior, maior e que 
-- tenha obtido pior classificacao NO evento.


.read criar.sql
.read povoar.sql

-- team SCHEMA : Team(teamId,Tname,email)
-- participation SCHEMA : Participation(teamId,matchId,classification)
-- Classification SCHEMA : Classification(classification,prize)

SELECT  Team.teamId, Tname, AVG(CLASSIFICATION) AS AverageScore , MIN(CLASSIFICATION) AS Best , MAX(CLASSIFICATION) AS  Worst 
FROM Team JOIN participation 
ON participation.teamId=team.TeamId
GROUP BY Team.teamId
ORDER BY (Worst-Best) DESC ,AverageScore DESC;
