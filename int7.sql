.mode columns
.headers ON
.nullvalue NULL

-- Qual é a equipa que tem mais fãs que não sejam portugueses?

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