.mode columns
.headers ON
.nullvalue NULL

--Quais os nomes dos jogos favoritos dos fãs de Lisboa?

--Query
SELECT DISTINCT Gname 
FROM Game 
WHERE Game.gameId IN (
    SELECT DISTINCT game 
    FROM GameFan 
    WHERE GameFan.fan IN (
        SELECT NIF 
        FROM Fan 
        WHERE Fan.address IN (
            SELECT addressId 
            FROM Address 
            WHERE city = 'Lisbon')));