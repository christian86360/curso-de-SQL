CREATE TABLE Estudiantes1
(
 CodEst int primary Key,
 NomEst VarChar(50),
 SexEst char


)
/*Para restringir al usuario que ponga lo que el quiera solo puede poner F o M*/
ALTER TABLE Estudiantes1 ADD CONSTRAINT CH_Sexo CHECK(SexEst='F' OR SexEst='M')
INSERT INTO Estudiantes1 values(1,'Yoel','M')
/*Comando que no aha ceptara por la restrincion*/
INSERT INTO Estudiantes1 values(1,'Yoel','O')
