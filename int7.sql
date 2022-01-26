.mode columns
.headers ON
.nullvalue NULL

--Qual é A equipa que tem mais fãs estrangeiros? Estrangeiros em relação A Portugal?

--Query
SELECT team, MAX(Nfan) 
FROM (
    SELECT team, COUNT(fan) AS Nfan 
    FROM teamfan 
    WHERE fan NOT IN(
        SELECT nif 
        FROM fan 
        WHERE fan.nationality == 'PT') 
GROUP BY team);