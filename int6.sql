.mode columns
.headers on
.nullvalue null

--Quais são os nomes de todas as pessoas envolvidas no campeonato?

--Query
SELECT distint NAME 
FROM (
    SELECT NAME 
    FROM PLAYER UNION 
    SELECT NAME FROM FAN UNION 
    SELECT NAME FROM STAFF) 
ORDER BY NAME;