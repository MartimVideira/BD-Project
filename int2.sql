.mode columns
.headers on
.nullvalue null

--Quais são os números de telemóvel dos jogadores que participaram em pelo menos uma partida de duração igual ou maior que 1 hora?

--Query
select phoneNumber 
from Player 
where Player.team in (
    select distinct teamId 
    from Participation 
    where matchId in (
        select matchId 
        from Match 
        where duration >= '01:00'));