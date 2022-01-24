.mode columns
.headers ON
.nullvalue NULL

--gatilho2_adiciona.sql

--verifica, se o tempo introduzido é válido (maior ou igual a 0)
Create Trigger TimeCheckConstraint Before Insert on Match
When (new.duration < '00:00')
Begin
    Select raise(ROLLBACK, 'Existe uma duracao invalida');
End;

--insert
CREATE TRIGGER addEndTime
AFTER INSERT ON Match
FOR EACH ROW
BEGIN
	UPDATE match SET new.endTime = old.startime + old.duration;
END;