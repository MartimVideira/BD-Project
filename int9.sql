.mode column
.headers ON
.nullvalue NULL



--Qual o total , A média, o mínimo e o máximo de ordenado que a organização terá de pagar
--aos staffs arredondado A duas casas decimais?

-- Deverá ser usada esta ordem pois esta query necessita do trigger para fazer sentido
-- .read criar.sql
-- .read gatilho1_adiciona.sql
-- .read povoar.sql

--Query
SELECT 
    ROUND( SUM( totalCost),2) AS Total , 
    ROUND(AVG(TOTALCOST), 2) AS Average, 
    ROUND(MIN(totalCost), 2) AS Minimum,
    ROUND(MAX (totalCost), 2) AS Maximum 
FROM 
    (SELECT NAME,
            totalWorkedHours*CostPerHour AS totalCost 
    FROM staff, stafftype 
    WHERE staff.stafftype = STname);

-- .read gatilho1_remove.sql
