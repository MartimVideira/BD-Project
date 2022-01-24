.mode COLUMNS
.headers ON
.nullvalue NULL

--gatilho1_remove.sql - deve remover o gatilho1

DROP TRIGGER if exists addTotalWorkedHours;
DROP TRIGGER if exists updateTotalWorkedHours;
DROP TRIGGER if exists removeTotalWorkedHours;
