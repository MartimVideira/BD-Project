.mode column
.headers ON
.nullvalue NULL

--Quais são os números de telemóvel dos jogadores que participaram em pelo menos uma partida de duração igual ou maior que 1 hora?

Select Name, phoneNumber 
From Player as P1
where exists 
    (
    SELECT duration 
    FROM   (
            (Player as P2
            JOIN Team 
            on Team.teamId = P1.team)
            JOIN    
            (Participation
            JOIN Match 
            USING (matchId))

            USING (teamId)
            )
    where duration >= '01:00');
