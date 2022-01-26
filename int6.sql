.mode columns
.headers ON
.nullvalue NULL

--Quais são os nomes de todas AS pessoas envolvidas NO campeonato?


SELECT NAME FROM Player
UNION
SELECT NAME FROM Fan
UNION
SELECT NAME FROM Staff
ORDER BY NAME;