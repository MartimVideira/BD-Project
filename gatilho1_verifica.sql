.mode columns
.headers on
.nullvalue NULL

--gatilho1_verifica.sql - deve verificar que o tempo total de trabalho sem trigger é 0 para todos os staff
Create view NIFAndTotalWorkedHours as 
select NIF, totalWorkedHours as totalWorkedHoursWithoutTRIGGER from staff;

Create view TestingStaff100000001 as 
select * from NIFAndTotalWorkedHours where nif = 100000001;

.print ''
.print 'verificar INSERT'
.print ''
.print 'antes de ter o trigger'
.print ''

.read criar.sql
.read povoar.sql
select * from NIFAndTotalWorkedHours;

.print ''
.print 'depois de ter o trigger'
.print ''

.read criar.sql
.read gatilho1_adiciona.sql
.read povoar.sql
select * from NIFAndTotalWorkedHours;

--select NIF, totalWorkedHours as totalWorkedHoursWithTRIGGER from staff;

.print ''
.print 'verificar UPDATE'
.print ''
.print 'tempo total inicial do staff com NIF 100000001 = 13'
.print ''

select * from TestingStaff100000001;

.print ''
.print 'update no tempo de trabalho na partida 1 deste staff de 3 para 6'
.print ''

update WorkedInMatch set workedtime = 6 where staff = 100000001 and match = 1;

.print ''
.print 'tempo total do staff com NIF 100000001 = 16'
.print ''

select * from TestingStaff100000001;

.print ''
.print 'update no tempo de trabalho na partida 1 deste staff de 6 para 1'
.print ''

update WorkedInMatch set workedtime = 1 where staff = 100000001 and match = 1;

.print ''
.print 'tempo total do staff com NIF 100000001 = 11'
.print ''

select * from TestingStaff100000001;

.print ''
.print 'verificar REMOVE'
.print ''
.print 'tempo total do staff com NIF 100000001 = 11'
.print ''

select * from TestingStaff100000001;

.print ''
.print 'vamos eliminar o tempo de trabalho da partida 1'
.print ''

delete from WorkedInMatch where staff = 100000001 and match = 1;

.print ''
.print 'tempo total do staff com NIF '100000001' = 10'
.print ''

select * from TestingStaff100000001;

.print ''
.print 'vamos inserir um novo tempo de trabalho a esse staff'
.print ''

INSERT INTO WorkedInMatch VALUES(100000001, 1, 3);

.print ''
.print 'tempo total do staff com NIF 100000001 = 13'
.print ''

select * from TestingStaff100000001;
