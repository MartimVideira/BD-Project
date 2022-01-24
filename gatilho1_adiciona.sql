--depois de inserir o tempo de trabalho, adicionar esse tempo ao tempo total de trabalho do respetivo trabalhador
CREATE TRIGGER addTotalWorkedHours
AFTER INSERT ON WorkedInMatch
FOR EACH ROW
BEGIN
	UPDATE staff SET totalWorkedHours = totalWorkedHours + new.workedTime WHERE staff.NIF = new.staff;
END;

-- depois de atualizar o tempo de trabalho, o tempo total de trabalho desse staff deve ser também atualizado
CREATE TRIGGER updateTotalWorkedHours
AFTER UPDATE ON WorkedInMatch
FOR EACH ROW
BEGIN
    UPDATE staff SET totalWorkedHours = totalWorkedHours - old.workedTime where staff.NIF = new.staff;
    UPDATE staff SET totalWorkedHours = totalWorkedHours + new.workedTime where staff.NIF = new.staff;
END;

-- depois de remover um tuplo, o tempo total desse staff deve ser atualizado
CREATE TRIGGER removeTotalWorkedHours
AFTER DELETE ON WorkedInMatch
FOR EACH ROW
BEGIN
    UPDATE staff SET totalWorkedHours = totalWorkedHours - old.workedTime where staff.NIF = old.staff;
END;