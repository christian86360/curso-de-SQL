create database Analisis;

use Analisis;

create table Datos( id_dato int primary key auto_increment,
                    valor int not null );

insert into Datos(valor) values				
(36),(30),(47),(60),(32),(35),(40),(50),(54),(35),(45),(52),(48),(58),(60),(38),
(32),(35),(56),(48),(30),(55),(49),(39),(58),(50),(65),(35),(56),(47),(37),(56),
(58),(50),(47),(58),(55),(39),(58),(45);

create view NO_ELEMENTOS
   as select Count(*) as ELEMENTOS from Datos;

create view MAXIMO
   as select Max(valor) as MAXIMO from Datos;

create view MINIMO
   as select Min(valor) as MINIMO from Datos;

create view RANGO   
   as select (MAXIMO-MINIMO) as RANGO from MAXIMO, MINIMO;

create view NO_CLASES   
   as select ( 1 + (3.32 * LOG10(ELEMENTOS) ) ) as NO_CLASES from NO_ELEMENTOS;

create view ANCHO_CLASE   
   as select ROUND( RANGO / ROUND(NO_CLASES) ) as ANCHO_CLASE from NO_CLASES, RANGO;

create view MEDIA   
   as select AVG(valor) as MEDIA from Datos;

create view VARIANZA
   as select VARIANCE(valor) as VARIANZA from Datos;

create view VARIANZA
   as select (sum((valor - MEDIA)*(valor - MEDIA))/ELEMENTOS) as VARIANZA
      from DATOS, MEDIA,NO_ELEMENTOS;
   
create view DESV_STD
   as select STD(valor) as DESV_STD from Datos;

create view DESV_STD
   as select STDDEV(valor) as DESV_STD from Datos;

create view DESV_STD
   as select SQRT(sum((valor - MEDIA)*(valor - MEDIA))/ELEMENTOS) as DESV_STD
      from DATOS, MEDIA,NO_ELEMENTOS;

create table Frecuencias(
   LIM_INF          int not null,
   LIM_SUP          int not null,
   INTERVALO_CLASE  text not null,
   ABSOLUTA         int not null,
   RELATIVA         double not null,
   ACUMULADA        double not null );

delimiter $$
CREATE procedure LLenar_Frecuencias()
  begin
    declare superior int;
    declare inferior int;
	declare ancho int;
    declare i int;

	DECLARE v_finished INTEGER DEFAULT 0;
    DECLARE x int;
    DECLARE y double; 
	DECLARE acumulado double default 0.0;
 
	DEClARE mi_cursor CURSOR FOR 
							SELECT LIM_INF, RELATIVA FROM Frecuencias;
 
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
	
	
	select MINIMO into inferior from MINIMO;
	select MAXIMO into superior from MAXIMO;
	select ANCHO_CLASE into ancho from ANCHO_CLASE;

    set i = inferior;
	
	delete from Frecuencias;

    while i<=superior do
	   insert into Frecuencias() 	  
		   select inferior, ( inferior + ancho ),
				  Concat(inferior, " - ", ( inferior + ancho ) ) as Intervalo, 
		          Count(D.valor) as ABSOLUTA,
                  ( ( Count(D.valor) / ELEMENTOS ) * 100 ) as RELATIVA,
                  0 as ACUMULADA 				  
			 from Datos D, NO_ELEMENTOS N
			where D.valor >= inferior 
			  and D.valor <( inferior + ancho );		  		  
	  set inferior = inferior + ancho; 
      set i=i+ancho;
    end while;
 
	OPEN mi_cursor; 
	Ciclo: LOOP
		FETCH mi_cursor INTO x,y;
 
		IF v_finished = 1 THEN 
			LEAVE Ciclo;
		END IF;
 
		SET acumulado = acumulado + y;
		UPDATE Frecuencias SET ACUMULADA = acumulado WHERE LIM_INF = x;
 
	END LOOP Ciclo;
 
	CLOSE mi_cursor;
	
  end $$
delimiter ;

call LLenar_Frecuencias();
select * from Frecuencias;

create table Distribucion_Frecuencias(
   ELEMENTO   int not null,
   ABSOLUTA   int not null,
   RELATIVA   double not null,
   ACUMULADA  double not null,
   Z          double not null );

delimiter $$
CREATE procedure LLenar_Distribucion_Frecuencias()
  begin	
	DECLARE v_finished INTEGER DEFAULT 0;
    DECLARE x int;
    DECLARE y double; 
	DECLARE acumulado double default 0.0;
 
	DEClARE mi_cursor CURSOR FOR 
							SELECT ELEMENTO, RELATIVA FROM Distribucion_Frecuencias;
 
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;

	delete from Distribucion_Frecuencias;

    insert into Distribucion_Frecuencias() 	  
		select valor, count(*) as ABSOLUTA, ((count(*)/ELEMENTOS)*100) as RELATIVA, 0.0 as ACUMULADA, ((valor - MEDIA)/DESV_STD) as Z
		from Datos, NO_ELEMENTOS, MEDIA, DESV_STD
		group by valor;

 
	OPEN mi_cursor; 
	Ciclo: LOOP
		FETCH mi_cursor INTO x,y;
 
		IF v_finished = 1 THEN 
			LEAVE Ciclo;
		END IF;
 
		SET acumulado = acumulado + y;
		UPDATE Distribucion_Frecuencias SET ACUMULADA = acumulado WHERE ELEMENTO = x;
 
	END LOOP Ciclo;
	
	CLOSE mi_cursor;		
  end $$
delimiter ;

call LLenar_Distribucion_Frecuencias();
select * from Distribucion_Frecuencias;
  
  