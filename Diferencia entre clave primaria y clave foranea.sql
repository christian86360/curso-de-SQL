
CREATE TABLE Carreras
(
/*Clave Primaria*/
 CodCar int primary Key,
 NomCar varchar(50)
)

Go 

CREATE TABLE Estudiantes1(
 CodCar int primary Key,
 NomEst varchar(50),
 /*Para crear una referencia de la tabla Carreras a Estudiantes1*/
 CodCard  int foreign key references Carreras(CodCar)
)
/*para eliminar la relacion de la clave forania de la tabla Estudiantes1*/
                                           /*El nombre de la referencia*/
Alter Table Estudiantes1 drop Constraint FK__Estudiant__CodCa__3F466844