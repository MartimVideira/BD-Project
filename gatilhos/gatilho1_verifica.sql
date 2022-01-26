.mode columns
.headers ON
.nullvalue NULL

--gatilho1_verifica.sql - deve verificar que o tempo total de trabalho sem TRIGGER é 0 para todos os staff
CREATE VIEW NIFAndTotalWorkedHours AS 
SELECT NIF, totalWorkedHours FROM staff;

CREATE VIEW TestingStaff100000001 AS 
SELECT * FROM NIFAndTotalWorkedHours WHERE nif = 100000001;

.print ''
.print 'verificar INSERT'
.print ''
.print 'antes de ter o trigger'
.print ''

.read criar.sql
.read povoar.sql
SELECT * FROM NIFAndTotalWorkedHours;

.print ''
.print 'depois de ter o trigger'
.print ''

.read criar.sql
.read gatilho1_adiciona.sql
.read povoar.sql
SELECT * FROM NIFAndTotalWorkedHours;


.print ''
.print 'verificar UPDATE'
.print ''
.print 'tempo total inicial DO staff com NIF 100000001 = 13'
.print ''

SELECT * FROM TestingStaff100000001;

.print ''
.print 'update NO tempo de trabalho na partida 1 deste staff de 3 para 6'
.print ''

UPDATE WorkedInMatch SET workedtime = 6 WHERE staff = 100000001 AND MATCH = 1;

.print ''
.print 'tempo total DO staff com NIF 100000001 = 16'
.print ''

SELECT * FROM TestingStaff100000001;

.print ''
.print 'update NO tempo de trabalho na partida 1 deste staff de 6 para 1'
.print ''

UPDATE WorkedInMatch SET workedtime = 1 WHERE staff = 100000001 AND MATCH = 1;

.print ''
.print 'tempo total DO staff com NIF 100000001 = 11'
.print ''

SELECT * FROM TestingStaff100000001;

.print ''
.print 'verificar REMOVE'
.print ''
.print 'tempo total DO staff com NIF 100000001 = 11'
.print ''

SELECT * FROM TestingStaff100000001;

.print ''
.print 'vamos eliminar o tempo de trabalho da partida 1'
.print ''

DELETE FROM WorkedInMatch WHERE staff = 100000001 AND MATCH = 1;

.print ''
.print 'tempo total DO staff com NIF '100000001' = 10'
.print ''

SELECT * FROM TestingStaff100000001;

.print ''
.print 'vamos inserir um novo tempo de trabalho A esse staff'
.print ''

INSERT INTO WorkedInMatch VALUES(100000001, 1, 3);

.print ''
.print 'tempo total DO staff com NIF 100000001 = 13'
.print ''

SELECT * FROM TestingStaff100000001;
