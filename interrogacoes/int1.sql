.mode columns
.headers ON
.nullvalue NULL

--Quais os nomes dos jogos favoritos dos fãs de Lisboa?

--Query


SELECT DISTINCT Gname FROM gamefan
JOIN game ON Gamefan.game = game.gameId
JOIN fan ON Gamefan.fan = fan.NIF
JOIN address ON fan.address = address.addressid
WHERE city = 'Lisbon'
ORDER BY Gname;