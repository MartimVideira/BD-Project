.mode columns
.headers on
.nullvalue null

--Qual é a equipa que tem mais fãs estrangeiros? Estrangeiros em relação a Portugal?

select team, max(Nfan) from (select team, count(fan) as Nfan from teamfan where fan not in(select nif from fan where fan.nationality == 'PT') group by team);