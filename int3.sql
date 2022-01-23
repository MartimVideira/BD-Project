.mode columns
.headers on
.nullvalue null

select teamId, matchId, prize from Participation natural join Classification ORDER BY TEAMID;