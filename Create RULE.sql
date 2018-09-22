CREATE TABLE Profesores
(
CodPrf int primary key,
NomPrf varchar(50),
SexPrf char

)
/*una regla para el usuario para que solo ingrese F y M*/
CREATE RULE regla_sexo
as
@sexo='F' OR @sexo='M'

EXEC sp_bindrule 'regla_sexo','Profesores.SexPrf' 

INSERT INTO Profesores values (1,'Pedro','t')