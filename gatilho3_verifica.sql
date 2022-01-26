.mode column
.headers ON
.nullvalue NULL
Pragma foreign_keys = ON;


.print 'Neste exemplo é criada uma VIEW  que tem os dados relativos aos encontros que cada equipa teve com outra equipa '

.print 'Vamos inserir dados com as seguintes restricoes:'
.print ''
.print '- Se pelo menos uma das equipas que se tenta inserir nao existir deverá abortar a insercao'
.print '- Se o matchId inserido nao corresponder A nenhum MATCH  será criado um MATCH com esse id '
.print '- Entao serao adicionados dois tuplos à tabela Participations que reflitam a participacao das equipas nesses'
.print 'encontros com o resultado inserido!'

.print ''
.print '---------------------------------------------------------'
.print ''
.print 'Antes de ter o TRIGGER deverá lancar erro de insercao numa view:'
.print ''

.read criar.sql
.read povoar.sql
.read gatilho3_adiciona.sql
.read gatilho3_remove.sql

INSERT INTO participation_results_by2_teams VALUES (11,1,2,1,2);
.print ''
.print 'O valor inserido tem um MATCH id = 11 e como podemos ver esse MATCH nao existe'
SELECT * FROM MATCH;

.print ''
.print 'Depois de ter o TRIGGER ser criado e voltando A inserir:'
.print ''

.read criar.sql
.read gatilho3_adiciona.sql
.read povoar.sql

INSERT INTO participation_results_by2_teams(matchId,T1Id,T1Result,T2Id,T2Result)
VALUES(11,1,1,2,2);
.print 'As mudancas refletem -se na VIEW :'
.print ''

SELECT * FROM participation_results_by2_teams WHERE matchId=11;

.print ''
.print 'E como vemos esse MATCH foi criado ....'
.print ''
SELECT * FROM MATCH WHERE matchId =11;

.print ''
.print 'Bem como foram adicionados dois tuplos em Participation'
.print ''
SELECT *  FROM participation WHERE (teamId=1 OR teamId=2) AND matchId=11;


.print ''
.print ''
.print '---------------------------------------------------------'


.print ''
.print 'SITUACOES QUE DEVARAO LANCAR A EXCEPCAO : "Pelo Menos uma das equipas nao existe":'
.print ''
.print 'Verificar A situacao da inexistencia da primeira equipa inserida:'
.print ''
INSERT INTO participation_results_by2_teams(matchId,T1Id,T1Result,T2Id,T2Result)
VALUES(11,120,1,3,1);


.print ''
.print 'Verificar A situacao da inexistencia da segunda equipa inserida'
.print ''
INSERT INTO participation_results_by2_teams(matchId,T1Id,T1Result,T2Id,T2Result)
VALUES(13,4,3,120,3);
.print ''
.print 'Verificar A situacao da inexistencia das 2 equipas inseridas'
.print ''
INSERT INTO participation_results_by2_teams(matchId,T1Id,T1Result,T2Id,T2Result)
VALUES(12,400,1,120,2);


.print ''
.print ''
.print '---------------------------------------------------------'

.print ''
.print 'Por ultimo vamos inserir num MATCH que ja existe para ver se continua A inserir em Participation'
.print ''


INSERT INTO participation_results_by2_teams(matchId,T1Id,T1Result,T2Id,T2Result)
VALUES(1,10,1,9,2);

SELECT *  FROM participation WHERE (teamId=10 OR teamId=9) AND matchId=1;
