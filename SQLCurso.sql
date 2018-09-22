create database curso 
go

use curso 

go






create table Profesor(
 IdRFCProf int identity Primary key not null,
TxtNombreP varchar(30) not null,
TxtAPaternoP varchar(25) not null,
TxtAMaternoP varchar(25),
TxtRFC varchar (10),
 CHECK (TxtRFC like '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9]'),
TxtDireccionP varchar(50),
TxtTelefonoP varchar(10) not null,
 CHECK (TxtTelefonoP like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
)

Insert into Profesor values('Jose','Ruiz','Martines','ERHH489634','Emiliano zapata No 34','352576479');

Create table Grupo(
IdFolioGrupo int identity primary key not null,
TxtHoraInicio char(5) not null,
CHECK (TxtHoraInicio like '[0-9][0-9][0-9][0-9][0-9]'),
TxtHoraTermino char(85) not null,
CHECK (TxtHoraTermino like '[0-9][0-9][0-9][0-9][0-9]'),
TxtNombre varchar (30) not null,
DateFInicio datetime,
DateFtermino datetime,
IntAula int,
IntClaveCurso int not null,
constraint pk_ClaveCurso Foreign key (IntClaveCurso) references
Curso(IntClaveCurso),
IdRFCProf int not null,
 constraint pk_RFCProf foreign  key (IdRFCProf)References Profesor(IdRFCProf)
)

create table Alumno(
IdFolioAlumno int identity primary key not null,
TxtNombre varchar(30) not null,
TxtApaterno varchar(25) not null,
TxtAMaterno varchar(25) not null,
TxtRFC varchar(10),
CHECK (TxtRFC like '[A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][0-9][0-9]'),
TxtDireccion varchar(50),
TxtTelefono varchar(10) not null,
CHECK (TxtTelefono like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
DateFechaAlta datetime,
TxtEmail varchar(30),
 constraint ck_Email CHECK (TxtEmail Like '%@%.%')
)



Create table  Incripcion(
IdIncripcion Int identity primary key not null,
DateFInicio datetime default current_timestamp,
IntCalif int,
IdFolioAlumno int not null,
 constraint pk_FolioAlumno Foreign key (IdFolioAlumno)References 
Alumno(IdFolioAlumno),
IdFolioGrupo int not null,
 constraint pk_FolioGrupo Foreign key (IdFolioGrupo)References
Grupo(IdFolioGrupo),
) 




create table Cuota(
  
IntClaveCuota int identity primary key not null,
CrrMontoCuota money default $0.00,
)

create table Curso(
IntClaveCurso int identity primary key not null,
TxtNombreCurso varchar(50)not null,
IntClaveArea int not null,
Constraint pk_ClaveArea foreign Key (IntClaveArea)References
Area(IntClaveArea),
IntClaveCuota int not null,
constraint pk_ClaveCuota Foreign key (IntClaveCuota)References
Cuota(IntClaveCuota)
) 







create table Area(
IntClaveArea int identity primary key not null,
TxtNombreArea varchar(40),
)



