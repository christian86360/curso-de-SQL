CREATE TABLE Carreras
(
CodCar int primary key,
NomCar Varchar(50)
)
GO

CREATE TABLE Estudiantes
(
 CodEst int primary Key,
 NomEst VarChar(50),
 CodCar int foreign key references Carreras(CodCar)

)
/*insertar registros en la tabla Carreras*/
INSERT INTO Carreras(CodCar,NomCar) values(1,'Ingenieria')
INSERT INTO Carreras(CodCar,NomCar) values(2,'Medicina')
INSERT INTO Carreras(CodCar,NomCar) values(3,'Mercadeo')
/*insertar registros en la tabla Estudiantes*/
INSERT INTO Estudiantes values(1,'Pedro',2)
INSERT INTO Estudiantes values(2,'Juan',3)
INSERT INTO Estudiantes values(3,'Jose',2)
/*Para eliminar un solo registro*/
DELETE FROM Estudiantes WHERE  CodEst=2
/*Para eliminar todos los registros*/
/*Para eliminar todos los registros mas rapido*/
TRUNCATE TABLE Estudiantes