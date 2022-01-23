.mode columns
.headers on
.nullvalue null

select phoneNumber from Player where Player.team in (select distinct teamId from Participation where matchId in (select matchId from Match where duration >= '01:00'));