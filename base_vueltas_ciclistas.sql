CREATE DATABASE VUELTA_CICLISTA


CREATE TABLE equipo (
nomequipo VARCHAR(20),
director VARCHAR(35),
CONSTRAINT cp_equipo PRIMARY KEY ( nomequipo )
);

----insertamos en la tabla
INSERT INTO equipo VALUES('Amore Vita','Ricardo Padacci');
INSERT INTO equipo VALUES('Artiach','Jos� Per�z');
INSERT INTO equipo VALUES('Banesto','Miguel Echevarria');
INSERT INTO equipo VALUES('Bresciali-Refin','Pietro Armani');
INSERT INTO equipo VALUES('Carrera','Luigi Petroni');
INSERT INTO equipo VALUES('Castorama','Jean Philip');
INSERT INTO equipo VALUES('Euskadi','Pedro Txucaru');
INSERT INTO equipo VALUES('Gatorade','Gian Luca Pacceli');
INSERT INTO equipo VALUES('Gewiss','Moreno Argentin');
INSERT INTO equipo VALUES('Jolly Club','Johan Richard');
INSERT INTO equipo VALUES('Kelme','�lvaro Pino');
INSERT INTO equipo VALUES('Lotus Festina','Suarez Cuevas');
INSERT INTO equipo VALUES('Mapei-Clas','Juan Fernandez');
INSERT INTO equipo VALUES('Mercatone Uno','Ettore Romano');
INSERT INTO equipo VALUES('Motorola','John Fidwell');
INSERT INTO equipo VALUES('Navigare','Lonrenzo Sciacci');
INSERT INTO equipo VALUES('ONCE','Manuel Sainz');
INSERT INTO equipo VALUES('PDM','Piet Van Der Kruis');
INSERT INTO equipo VALUES('Seguros Amaya','Minguez');
INSERT INTO equipo VALUES('Telecom','Morgan Reikcard');
INSERT INTO equipo VALUES('TVM','Steveens Henk');
INSERT INTO equipo VALUES('Wordperfect','Bill Gates');


select *from equipo

----Ciguiente tabla
CREATE TABLE ciclista (
dorsal INT,
nombre VARCHAR(35),
edad INT,
nomequipo VARCHAR(20),
CONSTRAINT cp_ciclista PRIMARY KEY ( dorsal ),
CONSTRAINT ca_cicl_equipo FOREIGN KEY ( nomequipo ) REFERENCES equipo
ON DELETE CASCADE
);


INSERT INTO ciclista VALUES('1','Miguel Indur�in','32','Banesto');
INSERT INTO ciclista VALUES('2','Pedro Delgado','35','Banesto');
INSERT INTO ciclista VALUES('3','Alex Zulle','27','ONCE');
INSERT INTO ciclista VALUES('4','Tony Rominger','30','Mapei-Clas');
INSERT INTO ciclista VALUES('5','Gert-Jan Theunisse','32','TVM');
INSERT INTO ciclista VALUES('6','Adriano Baffi','33','Mercatone Uno');
INSERT INTO ciclista VALUES('7','Massimiliano Lelli','30','Mercatone Uno');
INSERT INTO ciclista VALUES('8','Jean Van Poppel','33','Lotus Festina');
INSERT INTO ciclista VALUES('9','Massimo Podenzana','34','Navigare');
INSERT INTO ciclista VALUES('10','Mario Cipollini','28','Mercatone Uno');
INSERT INTO ciclista VALUES('11','Flavio Giupponi','31','Bresciali-Refin');
INSERT INTO ciclista VALUES('12','Alessio Di Basco','31','Amore Vita');
INSERT INTO ciclista VALUES('13','Lale Cubino','28','Seguros Amaya');
INSERT INTO ciclista VALUES('14','Roberto Pagnin','33','Navigare');
INSERT INTO ciclista VALUES('15','Jesper Skibby','31','TVM');
INSERT INTO ciclista VALUES('16','Dimitri Konishev','29','Jolly Club');
INSERT INTO ciclista VALUES('17','Bruno Leali','37','Bresciali-Refin');
INSERT INTO ciclista VALUES('18','Robert Millar','37','TVM');
INSERT INTO ciclista VALUES('19','Julian Gorospe','34','Banesto');
INSERT INTO ciclista VALUES('20','Alfonso Guti�rrez','29','Artiach');
INSERT INTO ciclista VALUES('21','Erwin Nijboer','31','Artiach');
INSERT INTO ciclista VALUES('22','Giorgio Furlan','32','Gewiss');
INSERT INTO ciclista VALUES('23','Lance Armstrong','27','Motorola');
INSERT INTO ciclista VALUES('24','Claudio Chiappucci','29','Carrera');
INSERT INTO ciclista VALUES('25','Gianni Bugno','32','Gatorade');
INSERT INTO ciclista VALUES('26','Mikel Zarrabeitia','27','Banesto');
INSERT INTO ciclista VALUES('27','Laurent Jalabert','28','ONCE');
INSERT INTO ciclista VALUES('28','Jesus Montoya','33','Banesto');
INSERT INTO ciclista VALUES('29','Angel Edo','28','Kelme');
INSERT INTO ciclista VALUES('30','Melchor Mauri','28','Banesto');
INSERT INTO ciclista VALUES('31','Vicente Aparicio','30','Banesto');
INSERT INTO ciclista VALUES('32','Laurent Dufaux','28','ONCE');
INSERT INTO ciclista VALUES('33','Stefano della Santa','29','Mapei-Clas');
INSERT INTO ciclista VALUES('34','Angel Yesid Camargo','30','Kelme');
INSERT INTO ciclista VALUES('35','Erik Dekker','28','Wordperfect');
INSERT INTO ciclista VALUES('36','Gian Matteo Fagnini','32','Mercatone Uno');
INSERT INTO ciclista VALUES('37','Scott Sunderland','29','TVM');
INSERT INTO ciclista VALUES('38','Javier Palacin','25','Euskadi');
INSERT INTO ciclista VALUES('39','Rudy Verdonck','30','Lotus Festina');
INSERT INTO ciclista VALUES('40','Viatceslav Ekimov','32','Wordperfect');
INSERT INTO ciclista VALUES('41','Rolf Aldag','25','Telecom');
INSERT INTO ciclista VALUES('42','Davide Cassani','29','TVM');
INSERT INTO ciclista VALUES('43','Francesco Casagrande','28','Mercatone Uno');
INSERT INTO ciclista VALUES('44','Luca Gelfi','27','Gatorade');
INSERT INTO ciclista VALUES('45','Alberto Elli','26','Artiach');
INSERT INTO ciclista VALUES('46','Agustin Sagasti','24','Euskadi');
INSERT INTO ciclista VALUES('47','Laurent Pillon','32','Gewiss');
INSERT INTO ciclista VALUES('48','Marco Saligari','29','Gewiss');
INSERT INTO ciclista VALUES('49','Eugeni Berzin','23','Gewiss');
INSERT INTO ciclista VALUES('50','Fernando Escartin','27','Mapei-Clas');
INSERT INTO ciclista VALUES('51','Udo Bolts','30','Telecom');
INSERT INTO ciclista VALUES('52','Vladislav Bobrik','26','Gewiss');
INSERT INTO ciclista VALUES('53','Michele Bartoli','28','Mercatone Uno');
INSERT INTO ciclista VALUES('54','Steffen Wesemann','30','Telecom');
INSERT INTO ciclista VALUES('55','Nicola Minali','28','Gewiss');
INSERT INTO ciclista VALUES('56','Andrew Hampsten','29','Banesto');
INSERT INTO ciclista VALUES('57','Stefano Zanini','28','Navigare');
INSERT INTO ciclista VALUES('58','Gerd Audehm','34','Telecom');
INSERT INTO ciclista VALUES('59','Mariano Picolli','28','Mercatone Uno');
INSERT INTO ciclista VALUES('60','Giovanni Lombardi','28','Bresciali-Refin');
INSERT INTO ciclista VALUES('61','Walte Castignola','26','Navigare');
INSERT INTO ciclista VALUES('62','Raul Alcala','30','Motorola');
INSERT INTO ciclista VALUES('63','Alvaro Mejia','32','Motorola');
INSERT INTO ciclista VALUES('64','Giuseppe Petito','28','Mercatone Uno');
INSERT INTO ciclista VALUES('65','Pascal Lino','29','Amore Vita');
INSERT INTO ciclista VALUES('66','Enrico Zaina','24','Gewiss');
INSERT INTO ciclista VALUES('67','Armand de las Cuevas','28','Castorama');
INSERT INTO ciclista VALUES('68','Angel Citracca','28','Navigare');
INSERT INTO ciclista VALUES('69','Eddy Seigneur','27','Castorama');
INSERT INTO ciclista VALUES('70','Sandro Heulot','29','Banesto');
INSERT INTO ciclista VALUES('71','Prudencio Indur�in','27','Banesto');
INSERT INTO ciclista VALUES('72','Stefano Colage','28','Bresciali-Refin');
INSERT INTO ciclista VALUES('73','Laurent Fignon','35','Gatorade');
INSERT INTO ciclista VALUES('74','Claudio Chioccioli','36','Amore Vita');
INSERT INTO ciclista VALUES('75','Juan Romero','32','Seguros Amaya');
INSERT INTO ciclista VALUES('76','Marco Giovannetti','34','Gatorade');
INSERT INTO ciclista VALUES('77','Javier Mauleon','33','Mapei-Clas');
INSERT INTO ciclista VALUES('78','Antonio Esparza','35','Kelme');
INSERT INTO ciclista VALUES('79','Johan Bruyneel','33','ONCE');
INSERT INTO ciclista VALUES('80','Federico Echave','37','Mapei-Clas');
INSERT INTO ciclista VALUES('81','Piotr Ugrumov','33','Gewiss');
INSERT INTO ciclista VALUES('82','Edgar Corredor','30','Kelme');
INSERT INTO ciclista VALUES('83','Hernan Buenahora','32','Kelme');
INSERT INTO ciclista VALUES('84','Jon Unzaga','31','Mapei-Clas');
INSERT INTO ciclista VALUES('85','Dimitri Abdoujaparov','30','Carrera');
INSERT INTO ciclista VALUES('86','Juan Martinez Oliver','32','Kelme');
INSERT INTO ciclista VALUES('87','Fernando Mota','32','Artiach');
INSERT INTO ciclista VALUES('88','Angel Camarillo','28','Mapei-Clas');
INSERT INTO ciclista VALUES('89','Stefan Roche','36','Carrera');
INSERT INTO ciclista VALUES('90','Ivan Ivanov','27','Artiach');
INSERT INTO ciclista VALUES('91','Nestor Mora','28','Kelme');
INSERT INTO ciclista VALUES('92','Federico Garcia','27','Artiach');
INSERT INTO ciclista VALUES('93','Bo Hamburger','29','TVM');
INSERT INTO ciclista VALUES('94','Marino Alonso','30','Banesto');
INSERT INTO ciclista VALUES('95','Manuel Guijarro','31','Lotus Festina');
INSERT INTO ciclista VALUES('96','Tom Cordes','29','Wordperfect');
INSERT INTO ciclista VALUES('97','Casimiro Moreda','28','ONCE');
INSERT INTO ciclista VALUES('98','Eleuterio Anguita','25','Artiach');
INSERT INTO ciclista VALUES('99','Per Pedersen','29','Seguros Amaya');
INSERT INTO ciclista VALUES('100','William Palacios','30','Jolly Club');

select * from ciclista

CREATE TABLE etapa (
numetapa INT,
kms INT,
salida VARCHAR(40),
llegada VARCHAR(40),
dorsal INT,
CONSTRAINT cp_etapa PRIMARY KEY ( numetapa ),
CONSTRAINT ca_etapa_cicl FOREIGN KEY ( dorsal ) REFERENCES ciclista
ON DELETE CASCADE
);

INSERT INTO etapa VALUES('1','9','Valladolid','Valladolid','1');
INSERT INTO etapa VALUES('2','180','Valladolid','Salamanca','36');
INSERT INTO etapa VALUES('3','240','Salamanca','Caceres','12');
INSERT INTO etapa VALUES('4','230','Almendralejo','C�rdoba','83');
INSERT INTO etapa VALUES('5','170','C�rdoba','Granada','27');
INSERT INTO etapa VALUES('6','150','Granada','Sierra Nevada','52');
INSERT INTO etapa VALUES('7','250','Baza','Alicante','22');
INSERT INTO etapa VALUES('8','40','Benidorm','Benidorm','1');
INSERT INTO etapa VALUES('9','150','Benidorm','Valencia','35');
INSERT INTO etapa VALUES('10','200','Igualada','Andorra','2');
INSERT INTO etapa VALUES('11','195','Andorra','Estaci�n de Cerler','65');
INSERT INTO etapa VALUES('12','220','Benasque','Zaragoza','12');
INSERT INTO etapa VALUES('13','200','Zaragoza','Pamplona','93');
INSERT INTO etapa VALUES('14','172','Pamplona','Cruz de la Demanda','86');
INSERT INTO etapa VALUES('15','207','Santo Domingo','Santander','10');
INSERT INTO etapa VALUES('16','160','Santander','Lagos de Covadonga','5');
INSERT INTO etapa VALUES('17','140','Cangas de Onis','Alto del Naranco','4');
INSERT INTO etapa VALUES('18','195','�vila','�vila','8');
INSERT INTO etapa VALUES('19','190','�vila','Destilerias Dyc','2');
INSERT INTO etapa VALUES('20','52','Segovia','Destilerias Dyc','2');
INSERT INTO etapa VALUES('21','170','Destilerias Dyc','Madrid','27');

select * from etapa

------------------------------------------
CREATE TABLE puerto (
nompuerto VARCHAR(35),
altura INT,
categoria VARCHAR(1),
pendiente DECIMAL(6,2),
numetapa INT,
dorsal INT,
CONSTRAINT cp_puerto PRIMARY KEY ( nompuerto ),
CONSTRAINT ca_puerto_etapa FOREIGN KEY ( numetapa ) REFERENCES etapa
ON DELETE CASCADE,
CONSTRAINT ca_puerto_cicl FOREIGN KEY ( dorsal ) REFERENCES ciclista
);

INSERT INTO puerto VALUES('Alto del Naranco','565','1',6.90,'10','30');
INSERT INTO puerto VALUES('Arcalis','2230','E',6.50,'10','4');
INSERT INTO puerto VALUES('Cerler-Circo de Ampriu','2500','E',5.87,'11','9');
INSERT INTO puerto VALUES('Coll de la Comella','1362','1',8.07,'10','2');
INSERT INTO puerto VALUES('Coll de Ordino','1980','E',5.30,'10','7');
INSERT INTO puerto VALUES('Cruz de la Demanda','1850','E',7.00,'11','20');
INSERT INTO puerto VALUES('Lagos de Covadonga','1134','E',6.86,'16','42');
INSERT INTO puerto VALUES('Navacerrada','1860','1',7.50,'19','2');
INSERT INTO puerto VALUES('Puerto de Alisas','672','1',5.80,'15','1');
INSERT INTO puerto VALUES('Puerto de la Morcuera','1760','2',6.50,'19','2');
INSERT INTO puerto VALUES('Puerto de Mijares','1525','1',4.90,'18','24');
INSERT INTO puerto VALUES('Puerto de Navalmoral','1521','2',4.30,'18','2');
INSERT INTO puerto VALUES('Puerto de Pedro Bernardo','1250','1',4.20,'18','25');
INSERT INTO puerto VALUES('Sierra Nevada','2500','E',6.00,'2','26');

CREATE TABLE maillot (
codigo VARCHAR(3),
tipo VARCHAR(20),
color VARCHAR(20),
premio INT,
CONSTRAINT cp_maillot PRIMARY KEY ( codigo )
);

INSERT INTO maillot VALUES('MGE','General','amarillo','80000');
INSERT INTO maillot VALUES('MMO','Monta�a','blanco y rojo','20000');
INSERT INTO maillot VALUES('MMS','M�s Sufrido','estrellas moradas','20000');
INSERT INTO maillot VALUES('MMV','Metas volantes','rojo','20000');
INSERT INTO maillot VALUES('MRE','Regularidad','verde','20000');
INSERT INTO maillot VALUES('MSE','Sprints especiales','rosa','20000');

CREATE TABLE lleva (
dorsal INT,
numetapa INT,
codigo VARCHAR(3),
CONSTRAINT cp_lleva PRIMARY KEY ( codigo, numetapa ),
CONSTRAINT ca_lleva_etapa FOREIGN KEY ( numetapa ) REFERENCES etapa,
CONSTRAINT ca_lleva_cicl FOREIGN KEY ( dorsal ) REFERENCES ciclista,
CONSTRAINT ca_lleva_maill FOREIGN KEY (codigo) REFERENCES maillot,
);

INSERT INTO lleva VALUES('1','1','MGE');
INSERT INTO lleva VALUES('1','1','MMO');
INSERT INTO lleva VALUES('67','1','MMS');
INSERT INTO lleva VALUES('1','1','MMV');
INSERT INTO lleva VALUES('1','1','MRE');
INSERT INTO lleva VALUES('1','1','MSE');
INSERT INTO lleva VALUES('1','2','MGE');
INSERT INTO lleva VALUES('25','2','MMO');
INSERT INTO lleva VALUES('69','2','MMS');
INSERT INTO lleva VALUES('16','2','MMV');
INSERT INTO lleva VALUES('27','2','MRE');
INSERT INTO lleva VALUES('8','2','MSE');
INSERT INTO lleva VALUES('1','3','MGE');
INSERT INTO lleva VALUES('25','3','MMO');
INSERT INTO lleva VALUES('67','3','MMS');
INSERT INTO lleva VALUES('16','3','MMV');
INSERT INTO lleva VALUES('27','3','MRE');
INSERT INTO lleva VALUES('12','3','MSE');
INSERT INTO lleva VALUES('1','4','MGE');
INSERT INTO lleva VALUES('24','4','MMO');
INSERT INTO lleva VALUES('69','4','MMS');
INSERT INTO lleva VALUES('17','4','MMV');
INSERT INTO lleva VALUES('27','4','MRE');
INSERT INTO lleva VALUES('8','4','MSE');
INSERT INTO lleva VALUES('2','5','MGE');
INSERT INTO lleva VALUES('25','5','MMO');
INSERT INTO lleva VALUES('16','5','MMV');
INSERT INTO lleva VALUES('27','5','MRE');
INSERT INTO lleva VALUES('12','5','MSE');
INSERT INTO lleva VALUES('2','6','MGE');
INSERT INTO lleva VALUES('26','6','MMO');
INSERT INTO lleva VALUES('16','6','MMV');
INSERT INTO lleva VALUES('20','6','MRE');
INSERT INTO lleva VALUES('12','6','MSE');
INSERT INTO lleva VALUES('2','7','MGE');
INSERT INTO lleva VALUES('26','7','MMO');
INSERT INTO lleva VALUES('33','7','MMV');
INSERT INTO lleva VALUES('20','7','MRE');
INSERT INTO lleva VALUES('99','7','MSE');
INSERT INTO lleva VALUES('4','8','MGE');
INSERT INTO lleva VALUES('26','8','MMO');
INSERT INTO lleva VALUES('33','8','MMV');
INSERT INTO lleva VALUES('20','8','MRE');
INSERT INTO lleva VALUES('99','8','MSE');
INSERT INTO lleva VALUES('26','9','MGE');
INSERT INTO lleva VALUES('26','9','MMO');
INSERT INTO lleva VALUES('48','9','MMV');
INSERT INTO lleva VALUES('20','9','MRE');
INSERT INTO lleva VALUES('99','9','MSE');
INSERT INTO lleva VALUES('26','10','MGE');
INSERT INTO lleva VALUES('30','10','MMO');
INSERT INTO lleva VALUES('48','10','MMV');
INSERT INTO lleva VALUES('20','10','MRE');
INSERT INTO lleva VALUES('99','10','MSE');
INSERT INTO lleva VALUES('3','11','MGE');
INSERT INTO lleva VALUES('30','11','MMO');
INSERT INTO lleva VALUES('48','11','MMV');
INSERT INTO lleva VALUES('20','11','MRE');
INSERT INTO lleva VALUES('99','11','MSE');
INSERT INTO lleva VALUES('3','12','MGE');
INSERT INTO lleva VALUES('30','12','MMO');
INSERT INTO lleva VALUES('48','12','MMV');

INSERT INTO lleva VALUES('20','12','MRE');
INSERT INTO lleva VALUES('99','12','MSE');
INSERT INTO lleva VALUES('30','13','MGE');
INSERT INTO lleva VALUES('30','13','MMO');
INSERT INTO lleva VALUES('48','13','MMV');
INSERT INTO lleva VALUES('20','13','MRE');
INSERT INTO lleva VALUES('99','13','MSE');
INSERT INTO lleva VALUES('30','14','MGE');
INSERT INTO lleva VALUES('28','14','MMO');
INSERT INTO lleva VALUES('42','14','MMV');
INSERT INTO lleva VALUES('20','14','MRE');
INSERT INTO lleva VALUES('22','14','MSE');
INSERT INTO lleva VALUES('30','15','MGE');
INSERT INTO lleva VALUES('28','15','MMO');
INSERT INTO lleva VALUES('42','15','MMV');
INSERT INTO lleva VALUES('20','15','MRE');
INSERT INTO lleva VALUES('22','15','MSE');
INSERT INTO lleva VALUES('1','16','MGE');
INSERT INTO lleva VALUES('28','16','MMO');
INSERT INTO lleva VALUES('42','16','MMV');
INSERT INTO lleva VALUES('20','16','MRE');
INSERT INTO lleva VALUES('22','16','MSE');
INSERT INTO lleva VALUES('1','17','MGE');
INSERT INTO lleva VALUES('28','17','MMO');
INSERT INTO lleva VALUES('42','17','MMV');
INSERT INTO lleva VALUES('20','17','MRE');
INSERT INTO lleva VALUES('22','17','MSE');
INSERT INTO lleva VALUES('1','18','MGE');
INSERT INTO lleva VALUES('26','18','MMO');
INSERT INTO lleva VALUES('20','18','MMV');
INSERT INTO lleva VALUES('27','18','MRE');
INSERT INTO lleva VALUES('10','18','MSE');
INSERT INTO lleva VALUES('1','19','MGE');
INSERT INTO lleva VALUES('28','19','MMO');
INSERT INTO lleva VALUES('42','19','MMV');
INSERT INTO lleva VALUES('20','19','MRE');
INSERT INTO lleva VALUES('22','19','MSE');
INSERT INTO lleva VALUES('1','20','MGE');
INSERT INTO lleva VALUES('28','20','MMO');
INSERT INTO lleva VALUES('42','20','MMV');
INSERT INTO lleva VALUES('20','20','MRE');
INSERT INTO lleva VALUES('22','20','MSE');
INSERT INTO lleva VALUES('1','21','MGE');
INSERT INTO lleva VALUES('2','21','MMO');
INSERT INTO lleva VALUES('42','21','MMV');
INSERT INTO lleva VALUES('20','21','MRE');
INSERT INTO lleva VALUES('22','21','MSE');

select * from lleva

--ESCRIBIR LAS SIGUIENTES CONSULTAS
--1. Obtener los datos de las etapas que pasan por alg�n puerto de monta�a y que tienen salida y
--llegada en la misma poblaci�n
SELECT DISTINCT E.numetapa, E.kms, E.salida, E.llegada, E.dorsal
FROM Etapa E, Puerto P
WHERE E.numetapa = P.numetapa AND E.salida = E.llegada;
//*OTRA SOLUCI�N*//
SELECT *
FROM Etapa
WHERE salida=llegada AND numetapa IN ( SELECT numetapa FROM Puerto );

--2. Obtener las poblaciones que tienen la meta de alguna etapa, pero desde las que no se realiza
--ninguna salida.

SELECT llegada FROM Etapa
EXCEPT
SELECT salida FROM Etapa;
//* Con NOT IN (tambi�n es v�lida con <>ALL): *//
SELECT DISTINCT llegada
FROM Etapa
WHERE llegada NOT IN (SELECT salida FROM Etapa);
SELECT DISTINCT llegada
FROM Etapa
WHERE llegada <> ALL (SELECT salida FROM Etapa);




--3. Obtener el nombre y el equipo de los ciclistas que han ganado alguna etapa llevando el maillot
--amarillo, mostrando tambi�n el n�mero de etapa.

SELECT C.nombre, C.nomequipo, E.numetapa
FROM Ciclista C, Etapa E, Lleva LL, Maillot M
WHERE E.dorsal=LL.dorsal
AND E.numetapa=LL.numetapa
AND LL.codigo=M.codigo
AND M.color= 'amarillo'
AND E.dorsal=C.dorsal;


--4. Obtener los datos de las etapas que no comienzan en la misma ciudad en que acaba la etapa
--anterior.
SELECT et1.numetapa,et1.kms, et1.salida, et1.llegada, et1.dorsal
FROM etapa et1, etapa et2
WHERE et1.numetapa = et2.numetapa+1 AND et1.salida<>et2.llegada;


--5. Obtener el n�mero de las etapas que tienen alg�n puerto de monta�a, indicando cu�ntos
--tiene cada una de ellas.

SELECT numetapa, COUNT(*) AS numero_puertos
FROM Puerto
GROUP BY numetapa ;

---6. Obtener el nombre y la edad de los ciclistas que han llevado dos o m�s maillots en una misma
--etapa.

SELECT DISTINCT LL.dorsal, C.nombre, C.edad
FROM Ciclista C, Lleva LL
WHERE C.dorsal=LL.dorsal
GROUP BY LL.numetapa, LL.dorsal, C.nombre, C.edad
HAVING COUNT(*)>=2;

--7. Obtener el nombre y el equipo de los ciclistas que han llevado alg�n maillot o que han ganado
--alg�n puerto.

SELECT C.nombre, C.nomequipo
FROM Ciclista C, Lleva LL
WHERE C.dorsal=LL.dorsal
UNION
SELECT C.nombre,C.nomequipo
FROM Ciclista C, Puerto P
WHERE C.dorsal=P.dorsal;
SELECT nombre, nomequipo
FROM Ciclista
WHERE dorsal IN (SELECT dorsal FROM Lleva)
OR dorsal IN (SELECT dorsal FROM Puerto);

--8. Obtener los datos de los ciclistas que han vestido todos los maillots (no necesariamente en la
--misma etapa).

SELECT C.dorsal,C.nombre,C.edad,C.nomequipo
FROM CICLISTA C,LLEVA LL
WHERE C.dorsal=LL.dorsal
GROUP BY C.dorsal,C.nombre,C.edad,C.nomequipo
HAVING COUNT(DISTINCT LL.codigo) = (SELECT COUNT(*) FROM MAILLOT);

--9. Obtener el c�digo y el color de aquellos maillots que s�lo han sido llevados por ciclistas de un
--mismo equipo.

SELECT DISTINCT color, m.codigo
FROM maillot m, lleva l, ciclista c
WHERE c.dorsal=l.dorsal
AND m.codigo=l.codigo
AND NOT EXISTS
(SELECT * FROM lleva l2, ciclista c2
WHERE c2.dorsal=l2.dorsal AND c2.nomequipo<>c.nomequipo
AND l2.codigo=l.codigo);

--10. Obtener los n�meros de las etapas que no tienen puertos de monta�a.

SELECT numetapa FROM Etapa
EXCEPT
SELECT numetapa FROM Puerto;

--//Otra forma //

SELECT numetapa
FROM Etapa
WHERE numetapa NOT IN (SELECT numetapa FROM Puerto);

--11. Obtener la edad media de los ciclistas que han ganado alguna etapa.

SELECT AVG(C.edad) AS media_edad_ganadores
FROM Ciclista C, Etapa E
WHERE C.dorsal = E.dorsal;

--12. Obtener el nombre de los puertos de monta�a que tienen una altura superior a la altura
--media de todos los puertos.

SELECT nompuerto
FROM Puerto
WHERE altura > ( SELECT AVG(altura) FROM Puerto );

--13. Obtener las poblaciones de salida y de llegada de las etapas donde se encuentran los puertos
--con mayor pendiente.

SELECT salida, llegada
FROM Etapa E, Puerto P
WHERE E.numetapa = P.numetapa
AND P.pendiente = ( SELECT MAX(pendiente) FROM Puerto);

SELECT DISTINCT E.salida, E.llegada
FROM Etapa E, Puerto P
WHERE E.numetapa = P.numetapa
AND P.pendiente >= ALL( SELECT pendiente FROM Puerto);

---14. Obtener el dorsal y el nombre de los ciclistas que han ganado los puertos de mayor altura.

SELECT DISTINCT C.dorsal, C.nombre
FROM Ciclista C, Puerto P
WHERE C.dorsal = P.dorsal
AND P.altura = ( SELECT MAX(altura) FROM Puerto) ;
-------
SELECT c.dorsal,c.nombre, p.altura
FROM ciclista c, puerto p
WHERE p.altura<=25000

--// Otra forma //
SELECT DISTINCT C.dorsal,C.nombre
FROM Puerto P, Ciclista C
WHERE P.dorsal=C.dorsal
AND P.altura >= ALL(SELECT altura FROM Puerto) ;


--15. Obtener los datos de las etapas cuyos puertos (todos) superan los 1300 metros de altura.
SELECT E.*
FROM Puerto P, Etapa E
WHERE P.numetapa=E.numetapa AND P.altura>1300 EXCEPT
SELECT E.*
FROM Puerto P, Etapa E
WHERE P.numetapa=E.numetapa AND P.altura<=1300 ;

--//Con el NOT IN //
SELECT DISTINCT E.*
FROM Puerto P, Etapa E
WHERE P.numetapa=E.numetapa AND P.altura>1300
AND E.numetapa NOT IN ( SELECT numetapa FROM Puerto
WHERE altura<=1300) ;


--16. Obtener el nombre de los ciclistas que pertenecen a un equipo de m�s de cinco ciclistas y que han ganado alguna etapa, indicando tambi�n cu�ntas etapas han ganado.

SELECT C.dorsal , C.nombre, COUNT(*) AS num_etapas_ganadas
FROM Ciclista C, Etapa E
WHERE C.dorsal=E.dorsal AND C.nomequipo IN
( SELECT nomequipo FROM Ciclista
GROUP BY nomequipo HAVING COUNT(*)>5 )
GROUP BY C.dorsal, C.nombre ;

--17.Octener el nombre y el equpo de los ciclistas menores de 30 a�oas que hayan ganado una etapa(deven salir 6)


Select DISTINCT nombre,nomequipo
from ciclista c , etapa e
where edad < 30 and c.dorsal=e.dorsal;

   

--18.Octener el nombre y el equpo de los ciclistas mayores de 32 a�os que allan ganado algun puerto(salir 2)
   
Select DISTINCT nombre,nomequipo
from ciclista c , etapa e
where edad > 32 and c.dorsal=e.dorsal; 
 

--19.Octener los datos de las etapas que pasan por algun puerto de monta�a que tiene salida y llegada en la misma poblacion(1)

--20.Octener las poblaciones que tienen la meta de alguna etapa , pero de la que no se realizar ninguna salida (9)	