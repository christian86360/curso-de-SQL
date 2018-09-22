INSERT INTO Estudiantes VALUES(1,'Pedro','M')
INSERT INTO Estudiantes VALUES(2,'Juan','M')
INSERT INTO Estudiantes VALUES(3,'Rosa','F')


INSERT INTO Profesores  values(1,'Roberto','M')
INSERT INTO Profesores  VALUES(2,'Leslie','F')
INSERT INTO Profesores  VALUES(3,'Jose','M')

/*Para buscar en una tabla*/
 SELECT NomEst as Nombre_Estudiante
FROM Estudiantes1
WHERE CodEst=(SELECT CodEst FROM Estudiantes1 where NomEst='Rosa')
