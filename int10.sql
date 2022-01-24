.mode columns
.headers on
.nullvalue null

-- Qual a equipa mais polarizante?
-- team schema : Team(teamId,Tname,email)
-- participation schema : Participation(teamId,matchId,classification)
-- Classification schema : Classification(classification,prize)

.read criar.sql
.read povoar.sql
