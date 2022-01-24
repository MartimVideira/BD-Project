.mode columns
.headers on
.nullvalue null

-- Qual a equipa mais polarizante?
-- Define-se como equipa mais polarizante a que obtem uma maior diferenca de melhor pontuacao e pior, maior e que 
-- tenha obtido pior classificacao no evento.


.read criar.sql
.read povoar.sql

-- team schema : Team(teamId,Tname,email)
-- participation schema : Participation(teamId,matchId,classification)
-- Classification schema : Classification(classification,prize)

select  Team.teamId, Tname, Avg(classification) as AverageScore , Min(classification) as Best , Max(classification) as  Worst 
from Team join participation 
on participation.teamId=team.TeamId
group by Team.teamId
order by (Worst-Best) desc ,AverageScore desc;
