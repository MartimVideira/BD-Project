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
            WHERE city = 'Lisbon')))
ORDER BY Gname;

--Using join
SELECT DISTINCT Gname from gamefan
join game on Gamefan.game = game.gameId
join fan on Gamefan.fan = fan.NIF
join address on fan.address = address.addressid
where city = 'Lisbon'
ORDER BY Gname;