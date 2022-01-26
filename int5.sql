.mode columns
.headers ON
.nullvalue NULL

--Qual o país (ou países) com mais jogadores?

CREATE VIEW numero_jogadores_por_pais AS
SELECT DISTINCT A.country,(
        SELECT COUNT(NIF) 
        FROM Player 
        JOIN  Address B USING (addressId)
        WHERE  B.country = A.country) AS TotalNumberOfPlayers
FROM Address A;

SELECT country , TotalNumberOfPlayers FROM numero_jogadores_por_pais
WHERE TotalNumberOfPlayers = (select MAX(TOTALNUMBEROFPLAYERS) FROM numero_jogadores_por_pais);
