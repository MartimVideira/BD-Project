.mode column
.headers ON
.nullvalue NULL


--                      Used Schemas: 
-- team SCHEMA : Team(teamId,Tname,email)
-- participation SCHEMA : Participation(teamId,matchId,classification)
-- as views foram criadas no intuito de facilitar a view final



-- Uma view que tem todas as combinacoes de equipas 2 a 2
CREATE VIEW  IF NOT EXISTS combinations_of_teams  AS 
SELECT  
    T1.teamId AS T1Id, 
    T1.Tname  AS T1Name, 
    T2.teamId AS T2Id ,
    T2.Tname  AS T2Name  
FROM Team AS T1 
JOIN Team AS T2 ON T1.teamId <> T2.teamId AND T1Id < T2Id;

-- Uma view que agrupa as paritipacoes ficando 2 equipas e os seus resultados numa determinada partida
CREATE VIEW  IF NOT EXISTS grouped_participations  AS 
SELECT
    P1.matchId AS matchId,
    P1.teamId AS T1Id, 
    P1.classification AS T1Result,
    P2.teamId AS T2Id,
    P2.classification AS T2Result 
FROM participation AS P1 
JOIN participation AS P2 
ON P1.matchId = P2.matchId AND P1.teamId <  P2.teamId
ORDER BY matchId;

-- A view final que será alvo dos triggers que junta as duas views acima combinando a informacao 
-- dos id's para obter os nomes das equipas
CREATE VIEW  IF NOT EXISTS  participation_results_by2_teams AS
SELECT  P.matchId,
    T.T1Id,
    T.T1Name,
    P.T1Result ,
    T.T2Id,T.T2Name ,
    P.T2Result 
FROM combinations_of_teams AS T 
JOIN grouped_participations AS P 
ON T.T1Id = P.T1Id AND T.T2Id = P.T2Id;

-- Triggers

-- Verificar se as Equipas que se estao a tentar inserir existem
-- Caso contrario lanca um execepcao
CREATE TRIGGER inserting_in_view_1_raises_if_team_doesnt_exist 
INSTEAD OF INSERT ON participation_results_by2_teams 
FOR EACH ROW
BEGIN 
    SELECT 
        raise(ABORT,'Pelo Menos uma equipa inserida nao existe!!') 
    WHERE (2 > (select COUNT(TEAMID) 
                FROM Team 
                WHERE (Team.teamId=new.T1Id OR Team.teamId=new.T2Id)));
END;

-- Criar um novo match se o match a ser introduzido nao existir
-- Com uns default values
CREATE TRIGGER inserting_in_view_2_creates_match_if_doesnt_exist
INSTEAD  OF  INSERT ON participation_results_by2_teams
FOR EACH ROW
WHEN NOT exists(select * FROM MATCH WHERE Match.matchId = new.matchId)
BEGIN
    INSERT INTO MATCH(MATCHID,STARTTIME,DURATION,ADDRESSID,GAMEID) VALUES 
        (new.matchId,'09:30','00:45',1,1);    
    
END;

-- Se estiver tudo bem  insere as duas novas participacoes  na tabela Participations
CREATE TRIGGER inserting_in_view_3_inserts_into_participation
INSTEAD OF INSERT ON participation_results_by2_teams 
FOR EACH ROW 
BEGIN
    INSERT INTO Participation VALUES 
        (new.T1Id,new.matchId,new.T1Result),
        (new.T2Id,new.matchId,new.T2Result);
END;


-- A maneira que consegui de obter a ordem que eu  pretendo que os triggers se acionem
-- Como aconteciam por uma ordem diferete da que eram declarados agora dou lhe sort pelo nome
.output .lixo
SELECT  * FROM sqlite_master 
WHERE TYPE = 'trigger' 
ORDER BY NAME ASC;
.output


