.mode column
.headers ON
.nullvalue NULL

--Quais são os números de telemóvel dos jogadores que participaram em pelo menos uma partida de duração igual ou maior que 1 hora?


--Query
SELECT Name, phoneNumber
FROM Player 
WHERE Player.team  IN (
    SELECT DISTINCT teamId 
    FROM Participation 
    WHERE matchId IN (
        SELECT matchId 
        FROM MATCH 
        WHERE duration >= '01:00'));