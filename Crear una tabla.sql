/*para es tar el la base de datos que queremos*/
USE SqlServer

/*Crear una tabla*/
CREATE TABLE Estudiantes
(
Id_Est INT PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
Nombre2 VARCHAR(50),
Matricula int NOT NULL
)
