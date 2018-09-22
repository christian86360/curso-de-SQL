-- MySQL dump 10.11
--
-- Host: localhost    Database: CAMSA
-- ------------------------------------------------------
-- Server version	5.0.51b-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cita` (
  `id_cita` bigint(20) NOT NULL auto_increment,
  `id_verificentro` tinyint(4) NOT NULL,
  `fecha` date NOT NULL,
  `id_horario` tinyint(4) NOT NULL,
  `placas` varchar(7) NOT NULL,
  `id_tipo` tinyint(4) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` text NOT NULL,
  PRIMARY KEY  (`id_cita`),
  KEY `id_verificentro` (`id_verificentro`),
  KEY `id_horario` (`id_horario`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`id_verificentro`) REFERENCES `verificentro` (`id_verificentro`),
  CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id_horario`),
  CONSTRAINT `cita_ibfk_3` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_holograma` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=2205752564510 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (2205752564309,3,'2017-10-04',5,'ZAR9318',2,'Jeronimo Burgos','1978017108','africa@altecom.es'),(2205752564310,5,'2017-10-23',37,'LNO5861',1,'Estefania Villegas','8198852912','agata@hotmail.com'),(2205752564311,7,'2017-10-04',25,'PYC1046',3,'Guillermo Fernandez','2918252453','a@a.com'),(2205752564312,5,'2017-10-14',19,'CNN7736',3,'Eliana Ramirez','4376290432','albatros@wandoo.es'),(2205752564313,2,'2017-10-31',32,'PBK5951',1,'Jose Carmona','7740659308','albert@intercom.es'),(2205752564314,1,'2017-10-28',8,'AXT5353',1,'Marcela De santis','7282277053','alien@intercom.es'),(2205752564315,6,'2017-10-19',41,'HPZ8993',2,'Daniela Franco','2801519471','amores@hotmail.com'),(2205752564316,7,'2017-10-15',26,'KXZ3957',3,'Rafael Cortes','9695070019','anabel@altecom.es'),(2205752564317,3,'2017-10-07',13,'PYT3723',3,'Camilo Berrio','3264082541','antiga@minorisa.es'),(2205752564318,7,'2017-10-22',32,'EYA7920',3,'Francisco Arias','5081514723','ballador@hotmail.com'),(2205752564319,1,'2017-10-26',35,'UQP5381',1,'Antonio Merizalde','4502753223','balladora@altecom.es'),(2205752564320,1,'2017-10-10',8,'TGS8625',1,'Karen Restrepo','2981049242','barbilla@hotmail.com'),(2205752564321,6,'2017-10-31',18,'IVS5524',2,'David Lemus','2546531565','besugo@minorisa.es'),(2205752564322,4,'2017-11-01',23,'FRU2340',2,'Javier Santana','8201679008','bogart@terra.es'),(2205752564323,2,'2017-10-09',42,'QOW2734',2,'Virginia Saldarriaga','2332560630','bond@terra.es'),(2205752564324,2,'2017-10-02',39,'EDZ4881',3,'Sergio Posada','9596035470','gfdgf@basdasd.com'),(2205752564325,4,'2017-11-04',11,'IOL1044',3,'Jorge Zea ','6120795630','cabeza larga@cataloniamail.com'),(2205752564326,2,'2017-10-28',16,'YFW4492',2,'Mariana Diaz ','6038328653','asdgr@sdf.com'),(2205752564327,2,'2017-11-01',44,'CGC9094',2,'Esteban Giraldo','5661460737','asdresdr@asdasdrf.com'),(2205752564328,5,'2017-10-25',4,'BAX4533',1,'Jorge Idarraga','3364072217','cangur@intercom.es'),(2205752564329,4,'2017-10-14',3,'YTK7708',2,'Alejandro Simanca','5400922724','alto@hola.com'),(2205752564330,7,'2017-10-08',16,'UUX0700',3,'Angelina Pulgarin','3452020653','besugo2@minorisa.es'),(2205752564331,4,'2017-10-16',13,'NCM7482',1,'Brenda Aguirre','9972715678','bogart2@terra.es'),(2205752564332,3,'2017-10-19',46,'XIN3122',2,'Gloria Tamayo','3325541235','bond2@terra.es'),(2205752564333,6,'2017-10-17',41,'XYT3287',1,'Andrea Carmona ','7851850369','basdasd@sdfsdf.com'),(2205752564334,7,'2017-10-29',14,'EFU7440',1,'Lucero Diaz ','7622535078','carretero@intercom.es'),(2205752564335,7,'2017-10-23',4,'XDC1556',1,'Angela Alzate','1651792567','cela@altecom.es'),(2205752564336,2,'2017-10-07',29,'BGC1242',2,'Felipe Arango','1866127633','coco@hotmail.com'),(2205752564337,1,'2017-10-29',31,'GYJ8348',2,'Elena Garces','2398054465','conejo@minorisa.es'),(2205752564338,4,'2017-10-24',6,'GXF0171',1,'Carmen Uribe','1262870444','corcel@altecom.es'),(2205752564339,2,'2017-10-11',40,'JIP8608',1,'Daniel Ospina','8519178315','argfqr@jjpg.com'),(2205752564340,7,'2017-10-08',8,'MKF0866',2,'Alberto Pel ez','9542688718','curie@minorisa.es'),(2205752564341,2,'2017-11-04',11,'HJS6483',3,'Elena Perez','7396754708','dal¡@wandoo.es'),(2205752564342,5,'2017-10-13',35,'CMM9847',2,'Sebastian Carmona','5792369096','any@feo.com'),(2205752564343,3,'2017-10-24',39,'LVF6322',3,'Oscar Cifuentes','9121329186','dol‡a@cidet.com'),(2205752564344,5,'2017-10-16',35,'CFN0327',1,'Santiago Jaramillo','7397887647','dorada@intercom.es'),(2205752564345,6,'2017-10-16',37,'MON9714',1,'Luis Melano','9240445695','elisa@altecom.es'),(2205752564346,4,'2017-10-11',14,'PXT2910',2,'Tammy Mendez','7134348498','encarna@hotmail.com'),(2205752564347,1,'2017-10-17',36,'TCE6009',1,'Tomas Ramirez','6485279743','entesa@altecom.es'),(2205752564348,4,'2017-10-31',39,'DPY8345',2,'Felipe Girando','4068616905','dorada33@intercom.es'),(2205752564349,6,'2017-10-14',9,'ZDB4072',1,'Patricia Diez','1283089396','elisa33@altecom.es'),(2205752564350,6,'2017-10-09',25,'IIZ8330',3,'Luisa Sierra','3496240205','et@altecom.es'),(2205752564351,3,'2017-11-02',38,'EEV2618',2,'Sara Vallejo','6066645199','oin@agfdfg.com'),(2205752564352,4,'2017-11-02',13,'ZIL1413',3,'Alexandra Guerrero','9579403135','gtged@fbbggb.com'),(2205752564353,1,'2017-10-11',4,'JQT4714',1,'Lisa Guerra','6863955442','experta@wandoo.es'),(2205752564354,3,'2017-11-06',4,'EBV6327',2,'Ana Maria Rodr¡guez ','2941212053','f5@wandoo.es'),(2205752564355,1,'2017-10-14',13,'JSI9704',3,'Sofia Marulanda','3751891075','hollla@fer.com'),(2205752564356,6,'2017-10-11',31,'SBP9401',1,'Paula Palacio','9774441124','paul@hotmail.com'),(2205752564357,2,'2017-10-10',20,'YFA2025',2,'Jesus Bermudez','7686135019','fina@hotmail.com'),(2205752564358,1,'2017-10-06',45,'IEQ7489',3,'Roberta Toledo','8233955159','fuego@altecom.es'),(2205752564359,2,'2017-10-23',11,'ZOQ7950',2,'Tatiana Arango','4218108875','klpdgf@altecom.es'),(2205752564360,1,'2017-10-11',30,'QWK7284',3,'Melina Acevedo','5950084940','garota@hotmail.com'),(2205752564361,1,'2017-10-06',41,'BXM4380',2,'Cristina Cock','9582753404','sfdf@hotmail.com'),(2205752564362,1,'2017-10-22',2,'GQV3400',2,'Manuela Casadiegos','1134409986','gateta@cataloniamail.com'),(2205752564363,4,'2017-10-25',13,'QYO4568',3,'Isabel Salamanca','3846613182','asdasdas@hotmail.com'),(2205752564364,1,'2017-10-27',24,'PBC3637',1,'Juan Arango','4842196705','groucho@intercom.es'),(2205752564365,4,'2017-10-07',8,'KPG3323',2,'Luisa Granda','7330177315','harpo@hotmail.com'),(2205752564366,4,'2017-10-11',4,'HDH3634',1,'Monica Arango ','8956565492','hispa@cataloniamail.com'),(2205752564367,4,'2017-10-14',3,'TMQ5822',3,'Federico Arroyave','6797385941','aaaaaa@hotmail.com'),(2205752564368,7,'2017-11-01',32,'FDD2254',3,'Dalia Lemos','1229431641','huevo@terra.es'),(2205752564369,1,'2017-10-16',14,'NXV8823',2,'Ana Jaramillo','6100807918','james dean@intercom.es'),(2205752564370,6,'2017-10-12',23,'OAT0547',2,'Maria Lema','7105954635','j‚ssica@hotmail.com'),(2205752564371,1,'2017-11-03',46,'HJU9660',2,'Diana Caro','9996251961','¤kmmm@hotmail.com'),(2205752564372,1,'2017-11-03',40,'TIB3350',3,'Amalia Vergara','9804359768','bnkjsd@hotmail.com'),(2205752564373,1,'2017-10-10',22,'RGX7237',1,'Julian Duque','6909826221','sdfknkjnsdf@hotmail.com'),(2205752564374,3,'2017-10-15',12,'TYT9550',1,'Maritza Mu¤oz','7554952893','asddfge@hotmail.com'),(2205752564375,6,'2017-10-15',36,'HUA1293',1,'Andr‚s Pel ez','1152755517','llus@hotmail.com'),(2205752564376,4,'2017-10-12',13,'UTG5829',3,'Miguel Sanchez','3421751575','lsdfkldksm@hotmail.com'),(2205752564377,3,'2017-10-19',25,'TYK7504',3,'Carolina Cano','2431795147','madonna@wandoo.es'),(2205752564378,5,'2017-10-08',44,'KCB8449',1,'Jessica Marquez','1748044269','mata hari@intercom.es'),(2205752564379,5,'2017-10-11',28,'KZA5486',1,'Samuel Rico','9311795931','melanie@minorisa.es'),(2205752564380,4,'2017-11-05',30,'AWZ8546',1,'Gustavo Mendez','2490550106','melqu¡ades@hotmail.com'),(2205752564381,6,'2017-10-17',41,'WLM0913',1,'Karina Jimenez','7033490319','merche@terra.es'),(2205752564382,4,'2017-10-31',20,'QAL8011',2,'Julieth Osorio','3300848080','midas@cataloniamail.com'),(2205752564383,6,'2017-10-28',5,'MTY5843',1,'Lina Villamizar','3652914756','mona lisa@minorisa.es'),(2205752564384,3,'2017-10-14',30,'PBL9218',2,'Carlos Gomez','3045813853','moro@minorisa.es'),(2205752564385,6,'2017-10-19',4,'OPK3670',2,'Sim¢n Grac¡a','9865859252','mozart@wandoo.es'),(2205752564386,6,'2017-11-02',2,'MNS7532',2,'Monica Castro','8715168757','madonna@wandoo.mx'),(2205752564387,5,'2017-11-04',25,'QMQ3265',2,'Melisa Uribe','4835717029','matar@intercom.es'),(2205752564388,2,'2017-10-05',6,'HIR1157',1,'Alejandra Florez','1359141424','napoleon@cidet.com'),(2205752564389,5,'2017-11-03',11,'UOI6869',1,'Amalia Gutierrez','9724246524','orondo@altecom.es'),(2205752564390,4,'2017-11-05',36,'LSX8808',1,'Raquel Medina','7648787704','papagayo@altecom.es'),(2205752564391,6,'2017-10-05',43,'LAA7640',2,'Gonzalo Betancur','3016622037','dshfsdfh@hotmail.com'),(2205752564392,7,'2017-10-04',15,'GQP9941',1,'Santiago Betancurt','4929648515','pasi¢n@altecom.es'),(2205752564393,7,'2017-10-05',31,'QES1108',3,'Isabella Marquez','6392727189','sjdfbdhjf@hotmail.com'),(2205752564394,4,'2017-10-26',20,'ZIP6877',3,'Karla Molina','5635884702','pelusa@hotmail.com'),(2205752564395,3,'2017-11-05',44,'WRC5032',2,'Hilda Rodriguez','8432772595','perla@cataloniamail.com'),(2205752564396,3,'2017-10-17',21,'BVB3924',1,'Victoria Hincapie','4200486077','kads@hotmail.com'),(2205752564397,7,'2017-10-25',35,'CVR7489',3,'Pablo Rojas ','8294701910','kjdsfbdkjsf@hotmail.com'),(2205752564398,6,'2017-10-13',23,'FWE5637',1,'Pamela Serna','4637331014','psicosis@intercom.es'),(2205752564399,7,'2017-10-17',7,'NWW0193',1,'Stepania Zapata','8827187840','kljsdbfkdhsbf@hotmail.com'),(2205752564400,5,'2017-10-20',40,'VFD7133',1,'Manuel Toro','6036514960','rebeca@cataloniamail.com'),(2205752564401,7,'2017-10-20',8,'JCD4057',3,'Barbara Henao','7443441577','rebelde@intercom.es'),(2205752564402,2,'2017-11-02',5,'FJM4026',2,'Leonardo Vasquez','9840430212','perro@hotmail.com'),(2205752564403,1,'2017-10-20',23,'DSK6576',1,'Juliana Castrill¢n','8153766108','kjsdfbjdsb@hotmail.com'),(2205752564404,2,'2017-11-06',44,'EKN9704',2,'Dinara Lopez','5808106433','rene@intercom.es'),(2205752564405,6,'2017-10-01',24,'LFT9218',2,'Elisa Mota','7376592541','asdlkjsd@hotmail.com'),(2205752564406,5,'2017-10-15',10,'KQZ9293',2,'Alicia Perez','6794477196','rica@terra.es'),(2205752564407,1,'2017-10-19',20,'ONS7992',1,'Carlos Posada','9062597881','rockera@terra.es'),(2205752564408,2,'2017-10-04',36,'CNA2688',3,'Mauricio Arango','9161936842','kasbdhj@hotmail.com'),(2205752564409,6,'2017-10-23',8,'VFF0292',3,'Adriana Hoyos','7268682754','roman@wandoo.es'),(2205752564410,1,'2017-10-04',44,'UVD4334',2,'Miguel Suarez','5602103569','alsdkjasd@hotmail.com'),(2205752564411,4,'2017-10-14',4,'III0735',1,'Natalia Aristizabal','4798643874','romeo@intercom.es'),(2205752564412,2,'2017-10-31',11,'LFY9837',3,'Camila Dominguez ','8626499655','lasdkkksa@hotmail.com'),(2205752564413,4,'2017-10-28',9,'DZN8366',3,'Susana Ruiz','1450843176','ronc@cataloniamail.com'),(2205752564414,7,'2017-10-19',14,'PTA0705',1,'Cathy Higuita','6132788374','sabrosa@hotmail.com'),(2205752564415,1,'2017-10-15',33,'WAL1200',3,'Catalina Osorio','5984696058','salsa@cataloniamail.com'),(2205752564416,7,'2017-10-07',42,'AZS7749',3,'Mariana Gomez','5343146763','asdasd@hotmail.com'),(2205752564417,4,'2017-10-22',15,'RGQ3471',2,'Jacobo Bustos','3158954245','asdddasda@hotmail.com'),(2205752564418,4,'2017-10-26',12,'RCU6291',3,'Gabriel Rodas','3758496147','sincer@altecom.es'),(2205752564419,2,'2017-10-10',41,'AVQ6339',3,'Sandra Cano','7637522488','sincera@hotmail.com'),(2205752564420,3,'2017-10-31',25,'GQM0485',1,'Evelyn Diaz ','2266797723','suau@hotmail.com'),(2205752564421,5,'2017-11-01',14,'WEO1342',1,'Juan Hernandez ','8016374190','superman@altecom.es'),(2205752564422,5,'2017-10-09',16,'WHT5945',2,'David Jaramillo','5136240060','superwoman@wandoo.es'),(2205752564423,3,'2017-10-02',37,'ACV2374',1,'Peio Burgos','8053269045','tablon@hotmail.com'),(2205752564424,2,'2017-11-04',2,'WNT0544',3,'Aiur Villegas','5603598402','tendre@terra.es'),(2205752564425,4,'2017-10-28',16,'HPM1642',3,'Aratz Fernandez','3509431223','teta@intercom.es'),(2205752564426,5,'2017-11-01',44,'IWB5487',1,'Erik Ramirez','6017646170','tomasa@hotmail.com'),(2205752564427,7,'2017-10-25',23,'VAA8250',2,'Gorka Carmona','7726643428','ajshdvgh@hotmail.com'),(2205752564428,2,'2017-10-14',14,'JLE4146',3,'Ekhi De santis','2623859996','tremenda@altecom.es'),(2205752564429,1,'2017-10-08',13,'AWY7202',3,'Izan Franco','6451442981','tripa@intercom.es'),(2205752564430,3,'2017-10-16',11,'GSM1216',2,'Lucas Cortes','8204184880','verruga@hotmail.com'),(2205752564431,3,'2017-10-19',2,'QYF2407',2,'Manex Berrio','6736037230','llus@hotmail.com'),(2205752564432,4,'2017-10-17',15,'CTM7171',3,'Nicol s Arias','5042346206','lsdfkldksm@hotmail.com'),(2205752564433,2,'2017-10-29',43,'BZZ7364',3,'µlvaro Merizalde','1809490054','madonna@wandoo.es'),(2205752564434,3,'2017-10-23',46,'KJD9482',3,'Diego Restrepo','3132619226','mata hari@intercom.es'),(2205752564435,7,'2017-10-07',32,'BEY8661',3,'I¤igo Lemus','2300163800','melanie@minorisa.es'),(2205752564436,7,'2017-10-29',11,'VEL1457',3,'Enaitz Santana','9729511422','melqu¡ades@hotmail.com'),(2205752564437,3,'2017-10-24',4,'NBX2588',1,'Ekaitz Saldarriaga','7022962353','merche@terra.es'),(2205752564438,4,'2017-10-11',14,'WRM2273',1,'Ibon Posada','5603708787','midas@cataloniamail.com'),(2205752564439,1,'2017-10-08',7,'PTV1443',1,'Peru Zea ','9713687698','mona lisa@minorisa.es'),(2205752564440,3,'2017-11-04',4,'CRB3889',1,'Lier Diaz ','2470083609','moro@minorisa.es'),(2205752564441,3,'2017-10-13',4,'QHL7854',2,'David Giraldo','3047285267','mozart@wandoo.es'),(2205752564442,1,'2017-10-24',4,'RZW1925',2,'Alejandro Idarraga','6028834894','madonna@wandoo.mx'),(2205752564443,5,'2017-10-16',15,'JTU7016',1,'E¤aut Simanca','1470123982','matar@intercom.es'),(2205752564444,1,'2017-10-16',5,'PSG1349',3,'Izei Pulgarin','7517608528','napoleon@cidet.com'),(2205752564445,4,'2017-10-11',23,'XEN4546',3,'Josu Aguirre','7271697948','orondo@altecom.es'),(2205752564446,2,'2017-10-17',14,'CWE9208',3,'Paul Tamayo','8274104371','papagayo@altecom.es'),(2205752564447,3,'2017-10-31',46,'IWO3326',2,'Liher Carmona ','8757989420','dshfsdfh@hotmail.com'),(2205752564448,4,'2017-10-14',28,'ASK0626',1,'Luka Diaz ','9151816112','pasi¢n@altecom.es'),(2205752564449,3,'2017-10-09',30,'TVM1742',1,'Gaizka Alzate','6272424230','sjdfbdhjf@hotmail.com'),(2205752564450,7,'2017-11-02',10,'XIE2291',3,'Galder Arango','9569775208','pelusa@hotmail.com'),(2205752564451,6,'2017-11-02',23,'CMG6030',2,'Adur Garces','2514942233','perla@cataloniamail.com'),(2205752564452,7,'2017-10-11',41,'XNH0076',3,'Mario Uribe','4262808108','kads@hotmail.com'),(2205752564453,3,'2017-11-06',37,'XEA3881',3,'Oinatz Ospina','6524606343','kjdsfbdkjsf@hotmail.com'),(2205752564454,5,'2017-10-14',18,'ASQ6646',3,'Leo Pel ez','7255367963','psicosis@intercom.es'),(2205752564455,7,'2017-10-11',46,'AJX9894',1,'Andoni Perez','5058172860','kljsdbfkdhsbf@hotmail.com'),(2205752564456,3,'2017-10-10',10,'ILU3950',2,'Marcos Carmona','5943963426','rebeca@cataloniamail.com'),(2205752564457,1,'2017-10-06',33,'VCH6775',3,'Ugaitz Cifuentes','6810343138','rebelde@intercom.es'),(2205752564458,1,'2017-10-23',14,'CSH7858',2,'Marco Jaramillo','2553726331','perro@hotmail.com'),(2205752564459,3,'2017-10-11',5,'VUL5570',1,'Adei Melano','1808597724','kjsdfbjdsb@hotmail.com'),(2205752564460,7,'2017-10-06',6,'RPL0550',3,'Jokin Mendez','2278958858','rene@intercom.es'),(2205752564461,6,'2017-10-22',24,'HPW1742',1,'Kimetz Ramirez','3975900849','asdlkjsd@hotmail.com'),(2205752564462,4,'2017-10-25',26,'ZZC5907',1,'Endika Girando','3438781818','rica@terra.es'),(2205752564463,4,'2017-10-27',2,'ZEL6857',3,'Imanol Diez','1248286494','rockera@terra.es'),(2205752564464,4,'2017-10-07',20,'DSY4641',1,'Adam Sierra','5037099222','kasbdhj@hotmail.com'),(2205752564465,4,'2017-10-11',16,'ZDU9190',1,'Egoitz Vallejo','3769699646','roman@wandoo.es'),(2205752564466,1,'2017-10-14',25,'NOO6025',3,'Ian Guerrero','6043892327','alsdkjasd@hotmail.com'),(2205752564467,3,'2017-11-01',44,'CKR1053',3,'Inhar Guerra','8322895873','romeo@intercom.es'),(2205752564468,1,'2017-10-16',38,'DYJ4505',2,'Igor Rodr¡guez ','4459356107','lasdkkksa@hotmail.com'),(2205752564469,4,'2017-10-12',11,'FZV7415',1,'Iraitz Marulanda','1560439349','ronc@cataloniamail.com'),(2205752564470,3,'2017-11-03',17,'OQD5647',2,'Ager Palacio','6696409067','sabrosa@hotmail.com'),(2205752564471,6,'2017-11-03',34,'QCI2784',3,'Guillermo Bermudez','4290887882','salsa@cataloniamail.com'),(2205752564472,3,'2017-10-10',45,'XRJ3390',3,'Aiert Toledo','2155502769','asdasd@hotmail.com'),(2205752564473,2,'2017-10-15',11,'OKF2245',3,'Hegoi Arango','7682177748','asdddasda@hotmail.com'),(2205752564474,2,'2017-10-15',29,'PEY4488',1,'Javier Acevedo','1131923566','sincer@altecom.es'),(2205752564475,2,'2017-10-12',13,'FVM7122',1,'Joel Cock','5218587193','sincera@hotmail.com'),(2205752564476,7,'2017-10-19',27,'QQQ8821',1,'Rayan Casadiegos','6738919002','suau@hotmail.com'),(2205752564477,7,'2017-10-08',37,'YHD9537',1,'Ekai Salamanca','1417517848','superman@altecom.es'),(2205752564478,7,'2017-10-11',17,'DCS5456',3,'Eki Arango','6587830351','superwoman@wandoo.es'),(2205752564479,1,'2017-11-05',12,'LUA1490',3,'Ignacio Granda','5455840024','tablon@hotmail.com'),(2205752564480,2,'2017-10-17',5,'QFV5784',1,'Ion Arango ','9909325743','tendre@terra.es'),(2205752564481,5,'2017-10-31',29,'TNW2382',3,'Iv n Arroyave','3290526932','teta@intercom.es'),(2205752564482,3,'2017-10-28',4,'UKF4881',1,'Juan Lemos','8136843961','tomasa@hotmail.com'),(2205752564483,6,'2017-10-14',20,'XKW0546',1,'Mohamed Jaramillo','1381510143','ajshdvgh@hotmail.com'),(2205752564484,1,'2017-10-19',45,'RIT9095',1,'Urtzi Lema','3235515386','tremenda@altecom.es'),(2205752564485,5,'2017-11-02',8,'LFX8510',1,'Yeray Caro','6298716854','tripa@intercom.es'),(2205752564486,7,'2017-11-04',13,'CTG3233',3,'Arkaitz Vergara','5739628106','verruga@hotmail.com'),(2205752564487,5,'2017-10-05',21,'AZQ1426',3,'Ander Duque','2404362167','llus@hotmail.com'),(2205752564488,7,'2017-11-03',17,'RXX5550',1,'Oier Mu¤oz','8489457030','lsdfkldksm@hotmail.com'),(2205752564489,3,'2017-11-05',22,'FOV7952',2,'Iker Pel ez','5100914069','madonna@wandoo.es'),(2205752564490,2,'2017-10-05',44,'ILB8307',2,'Unai Sanchez','2922282778','mata hari@intercom.es'),(2205752564491,3,'2017-10-04',30,'UQN2963',1,'Mikel Cano','7233474707','melanie@minorisa.es'),(2205752564492,4,'2017-10-05',27,'EBB2057',1,'Aimar Marquez','4131900249','melqu¡ades@hotmail.com'),(2205752564493,7,'2017-10-26',37,'JXE0805',2,'Ibai Rico','7322360776','merche@terra.es'),(2205752564494,5,'2017-11-05',8,'WHL0779',3,'Julen Mendez','9863733592','midas@cataloniamail.com'),(2205752564495,6,'2017-10-17',18,'HEW7890',3,'Unax Jimenez','9513669115','mona lisa@minorisa.es'),(2205752564496,6,'2017-10-25',32,'MYQ5075',3,'Eneko Osorio','9412652468','moro@minorisa.es'),(2205752564497,3,'2017-10-13',38,'AUW9659',1,'Asier Villamizar','3748300652','mozart@wandoo.es'),(2205752564498,6,'2017-10-17',5,'ZAG9939',2,'Be¤at Gomez','2389593919','madonna@wandoo.mx'),(2205752564499,2,'2017-10-20',24,'ZWH8759',3,'Alain Grac¡a','3729657891','matar@intercom.es'),(2205752564500,1,'2017-10-20',16,'GJV8458',1,'Oihan Castro','8330186968','napoleon@cidet.com'),(2205752564501,3,'2017-11-02',9,'VQZ3615',3,'Danel Uribe','8135086017','orondo@altecom.es'),(2205752564502,2,'2017-10-20',1,'SXZ8285',2,'Martin/Mart¡n Florez','2485538146','papagayo@altecom.es'),(2205752564503,4,'2017-11-06',24,'DHA1572',2,'Xabier Gutierrez','6030221770','dshfsdfh@hotmail.com'),(2205752564504,1,'2017-10-01',10,'FQW3159',2,'Aitor Medina','6728208748','pasi¢n@altecom.es'),(2205752564505,1,'2017-10-15',17,'GYT5443',3,'Amets Betancur','7392132054','sjdfbdhjf@hotmail.com'),(2205752564506,4,'2017-10-19',3,'URH2412',1,'Aner Betancurt','9275203138','pelusa@hotmail.com'),(2205752564507,2,'2017-10-04',33,'AAO9586',3,'Aritz Marquez','8792808734','perla@cataloniamail.com'),(2205752564508,7,'2017-10-23',24,'ZUU5393',1,'Ekain Molina','7070403871','kads@hotmail.com'),(2205752564509,5,'2017-10-04',34,'VJW0619',3,'Hugo Rodriguez','3751156582','kjdsfbdkjsf@hotmail.com');
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita_cancelado`
--

DROP TABLE IF EXISTS `cita_cancelado`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cita_cancelado` (
  `id_cancelado` bigint(20) NOT NULL auto_increment,
  `id_cita` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY  (`id_cancelado`),
  UNIQUE KEY `id_cita` (`id_cita`),
  CONSTRAINT `cita_cancelado_ibfk_1` FOREIGN KEY (`id_cita`) REFERENCES `cita` (`id_cita`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cita_cancelado`
--

LOCK TABLES `cita_cancelado` WRITE;
/*!40000 ALTER TABLE `cita_cancelado` DISABLE KEYS */;
INSERT INTO `cita_cancelado` VALUES (1,2205752564480,'2017-10-16'),(2,2205752564338,'2017-10-20'),(3,2205752564467,'2017-10-30'),(4,2205752564329,'2017-10-12'),(5,2205752564393,'2017-10-01'),(6,2205752564406,'2017-10-13'),(7,2205752564493,'2017-10-22'),(8,2205752564369,'2017-10-15'),(9,2205752564360,'2017-10-08');
/*!40000 ALTER TABLE `cita_cancelado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delegacion`
--

DROP TABLE IF EXISTS `delegacion`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `delegacion` (
  `id_delegacion` tinyint(4) NOT NULL auto_increment,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY  (`id_delegacion`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `delegacion`
--

LOCK TABLES `delegacion` WRITE;
/*!40000 ALTER TABLE `delegacion` DISABLE KEYS */;
INSERT INTO `delegacion` VALUES (2,'Azcapotzalco'),(3,'Benito Ju rez'),(4,'Coyoac n'),(5,'Cuajimalpa de Morelos'),(6,'Cuauht‚moc'),(7,'Gustavo A. Madero'),(8,'Iztacalco'),(9,'Iztapalapa'),(10,'Magdalena Contreras'),(11,'Miguel Hidalgo'),(12,'Milpa Alta'),(14,'Tlalpan'),(13,'Tl huac'),(15,'Venustiano Carranza'),(16,'Xochimilco'),(1,'µlvaro Obreg¢n');
/*!40000 ALTER TABLE `delegacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descansa`
--

DROP TABLE IF EXISTS `descansa`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `descansa` (
  `terminacion` tinyint(4) NOT NULL,
  `id_dia` tinyint(4) NOT NULL,
  UNIQUE KEY `terminacion` (`terminacion`),
  KEY `id_dia` (`id_dia`),
  CONSTRAINT `descansa_ibfk_1` FOREIGN KEY (`id_dia`) REFERENCES `dia` (`id_dia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `descansa`
--

LOCK TABLES `descansa` WRITE;
/*!40000 ALTER TABLE `descansa` DISABLE KEYS */;
INSERT INTO `descansa` VALUES (5,1),(6,1),(7,2),(8,2),(3,3),(4,3),(1,4),(2,4),(0,5),(9,5);
/*!40000 ALTER TABLE `descansa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dia` (
  `id_dia` tinyint(4) NOT NULL auto_increment,
  `descripcion` varchar(40) NOT NULL,
  PRIMARY KEY  (`id_dia`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` VALUES (4,'Jueves'),(1,'Lunes'),(2,'Martes'),(3,'Miercoles'),(6,'Sabado'),(5,'Viernes');
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `horario` (
  `id_horario` tinyint(4) NOT NULL auto_increment,
  `descripcion` varchar(5) NOT NULL,
  PRIMARY KEY  (`id_horario`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (1,'08:00'),(2,'08:15'),(3,'08:30'),(4,'08:45'),(5,'09:00'),(6,'09:15'),(7,'09:30'),(8,'09:45'),(9,'10:00'),(10,'10:15'),(11,'10:30'),(12,'10:45'),(13,'11:00'),(14,'11:15'),(15,'11:30'),(16,'11:45'),(17,'12:00'),(18,'12:15'),(19,'12:30'),(20,'12:45'),(21,'13:00'),(22,'13:15'),(23,'13:30'),(24,'13:45'),(25,'14:00'),(26,'14:15'),(27,'14:30'),(28,'14:45'),(29,'15:00'),(30,'15:15'),(31,'15:30'),(32,'15:45'),(33,'16:00'),(34,'16:15'),(35,'16:30'),(36,'16:45'),(37,'17:00'),(38,'17:15'),(39,'17:30'),(40,'17:45'),(41,'18:00'),(42,'18:15'),(43,'18:30'),(44,'18:45'),(45,'19:00'),(46,'19:15'),(47,'19:30');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL auto_increment,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY  (`id_marca`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Abarth'),(2,'Alfa Romeo'),(3,'AMC'),(4,'American Bamtan'),(5,'Asia Motors'),(6,'Aston Martin'),(7,'Audi'),(8,'Aymesa'),(9,'B. engineering'),(10,'Bac'),(11,'Bag Splitz'),(12,'Bajaj'),(13,'Ballot'),(14,'Bandini'),(15,'Baojun'),(16,'Bargon'),(17,'Baw'),(18,'Beck'),(19,'Bell Aurens'),(20,'Bell-Ross'),(21,'Bellier'),(22,'Belumbury'),(23,'Bentley'),(24,'Berkeley'),(25,'Bertone'),(26,'BF Performance'),(27,'Bill Tomas'),(28,'Birkin'),(29,'Bitter'),(30,'Bizzarrini'),(31,'Blakely'),(32,'Bmw'),(33,'Bohse'),(34,'Bolwell'),(35,'Bond'),(36,'Borgward'),(37,'Brabham'),(38,'Brabus'),(39,'Breckland'),(40,'Bricklin'),(41,'Brilliance'),(42,'Bristol'),(43,'Brokernet'),(44,'Bucciali'),(45,'Bufori'),(46,'Bugatti'),(47,'Buick'),(48,'Bulldog'),(49,'Burgfalke'),(50,'BYD'),(51,'Cadillac'),(52,'Callaway'),(53,'Camo Marauder'),(54,'Campagna'),(55,'Caparo'),(56,'Capstone'),(57,'Carbontech'),(58,'Cardi'),(59,'Carice'),(60,'Carlsson'),(61,'Carver One'),(62,'Casalini'),(63,'Case'),(64,'Castagna'),(65,'Caterham'),(66,'Caterpillar'),(67,'Chana'),(68,'Changan'),(69,'Changfeng'),(70,'Checker'),(71,'Chery'),(72,'Chevrolet'),(73,'Chrysler'),(74,'Citr”en'),(75,'Cizeta'),(76,'Clan'),(77,'Clenet'),(78,'Climax'),(79,'Clua'),(80,'Coda'),(81,'Comarth'),(82,'Condor Aguzzoli'),(83,'Connaught'),(84,'Conquest Knight'),(85,'Corbin'),(86,'Cord'),(87,'Covini'),(88,'Crosley'),(89,'Cross Lander'),(90,'Cunninham'),(91,'Dacia'),(92,'Daewoo'),(93,'DAF'),(94,'Daihatsu'),(95,'Dare'),(96,'DarlïMat'),(97,'Dartmoor'),(98,'Dartz'),(99,'Datsun'),(100,'David Brown Automotive'),(101,'Davis'),(102,'DB'),(103,'DC Desing'),(104,'DDR'),(105,'De Dion'),(106,'De La Chapelle'),(107,'De Macross'),(108,'De Tomaso'),(109,'Dean Jefries'),(110,'Delage'),(111,'Delahaye'),(112,'Delfino'),(113,'Delorean'),(114,'Deronda'),(115,'Derways'),(116,'Desoto'),(117,'Detroit Electric'),(118,'Devaux'),(119,'Devel'),(120,'Devon'),(121,'Diatto'),(122,'Didia'),(123,'Divco'),(124,'DKW'),(125,'Dodge'),(126,'Dome'),(127,'Dongfeng'),(128,'Donkervoort'),(129,'Duesenberg'),(146,'E-Wolf'),(134,'Eagle'),(130,'Ebbro Btec'),(131,'EDAG'),(132,'Edo'),(133,'Edsel'),(135,'Elfin'),(136,'Elio Motors'),(137,'Elva'),(138,'Emme'),(139,'Enzman'),(140,'ERF'),(141,'Ermini'),(142,'Eterniti'),(143,'EuropeStar'),(145,'Evans'),(144,'Evante'),(147,'Exagon'),(148,'Facel Vega'),(149,'Fairthorpe'),(150,'Falcon'),(151,'falhke'),(152,'Faralli & Mazzanti'),(153,'Farbio'),(154,'Farboud'),(155,'Farus'),(156,'Faw'),(157,'Felino'),(158,'Fenix Automotive'),(159,'Ferrari'),(160,'Ferves'),(161,'Fiat'),(162,'Fiberfab'),(163,'Fioravanti'),(164,'Fisher'),(165,'Fisker'),(166,'Flajole'),(167,'FM Auto'),(168,'Force'),(169,'Ford'),(170,'Fornasari'),(171,'Four Stroke'),(172,'Fournier'),(173,'FPV'),(174,'Francis Lombardi'),(175,'Franklin'),(176,'FreeStream'),(177,'Freightliner'),(179,'Galloper'),(178,'Gaz'),(180,'GD'),(181,'Geely'),(182,'Geiger'),(183,'Gemballa'),(184,'Genevart'),(185,'Genty'),(186,'Ghia'),(187,'Gibbs'),(188,'Gillet'),(189,'Ginetta'),(190,'Glas'),(191,'Glasspar'),(192,'GM'),(193,'GMC'),(194,'Gonow'),(195,'Gordini'),(196,'Gordon Kleebe'),(197,'Gordon Murray'),(198,'Graham-Paige'),(199,'Great Wall'),(200,'Grecav'),(201,'Griffith'),(202,'GTA'),(203,'GTM'),(204,'Gumpert'),(205,'Gurgel'),(206,'GWA'),(207,'Haima'),(208,'Hamann'),(209,'Heffner Performance'),(211,'Hennessey'),(210,'Henry J'),(212,'Heuliez'),(213,'Hillman'),(214,'Hindustan'),(215,'Hino'),(216,'Hispano Suiza'),(217,'HMC'),(218,'Hoftetter'),(219,'Holden'),(220,'Hommell'),(221,'Honda'),(222,'Hongqi'),(223,'Horch'),(224,'Hotchkiss'),(225,'HSV'),(226,'HTT'),(227,'Hulme'),(228,'Humber'),(229,'Hummer'),(230,'Hurtan'),(231,'Hyundai'),(232,'Icona'),(233,'identity'),(234,'Idries'),(235,'IED'),(237,'Imperia'),(236,'IMSA'),(238,'Infiniti'),(239,'Innocenti'),(240,'Innotech'),(241,'International'),(242,'International Haverter'),(243,'Invicta'),(244,'Iran Khodro'),(245,'Irmscher'),(246,'Isdera'),(247,'Iso'),(248,'Isotta'),(249,'Isuzu'),(250,'ItalDesing'),(251,'Iveco'),(252,'Izaro'),(253,'JAC'),(254,'Jaguar'),(255,'Jakusa'),(256,'Javan'),(257,'JBA'),(258,'JDM'),(259,'Jeep'),(260,'Jensen'),(261,'Jimenez Novia'),(262,'Jiotto'),(263,'Joss'),(265,'Justicialista'),(264,'J”sse'),(266,'K1'),(267,'Kaipan'),(268,'Kaiser'),(269,'Kawasaki'),(270,'Keating'),(271,'Keinath'),(272,'Kenworth'),(273,'Kia'),(274,'Kleemann'),(275,'Kodiak'),(276,'Koeningsegg'),(277,'Korres'),(278,'KTM'),(279,'La salle'),(280,'Lada'),(281,'Ladalat'),(282,'Laforza'),(283,'Lagonda'),(284,'Lamborghini'),(285,'Lanchester'),(286,'Lancia'),(287,'Land Rover'),(288,'Landwind'),(289,'Laraki'),(290,'LCC'),(291,'LDV'),(293,'Le Blanc'),(292,'Le Marquis'),(294,'Lea Francis'),(295,'Leopard'),(297,'Lexus'),(296,'Leyland'),(298,'Liege'),(299,'Lightburn'),(300,'Lightning'),(301,'Ligier'),(302,'Lincoln'),(303,'Lister'),(304,'Lloyd'),(305,'LM Sovra'),(306,'LMX'),(307,'Lobini'),(308,'Locus'),(309,'Lola'),(310,'Lombardi'),(311,'Loremo'),(312,'Lotec'),(313,'Lotus'),(314,'Lucra'),(315,'Luxgen'),(316,'Lyonheart'),(319,'Magna Steyr'),(317,'Mahindra'),(318,'Maico'),(320,'Man'),(321,'Manganese'),(322,'Manic'),(323,'Mansory'),(324,'Marcadier'),(325,'Marcos'),(326,'Marlin'),(327,'Marmon'),(328,'Marussia'),(329,'Maserati'),(330,'Mastretta'),(331,'Mathis'),(332,'Matra'),(333,'Maybach'),(334,'MAZ'),(335,'Mazda'),(336,'Mazel'),(337,'MB Roadcars'),(338,'MCA'),(339,'McLaren'),(340,'MCV'),(341,'Mega'),(342,'Melkus'),(343,'Mercedez Benz'),(344,'Mercer'),(345,'Mercury'),(346,'Meyers'),(347,'MG'),(348,'MHV'),(349,'Mindset'),(350,'Minerva'),(351,'Mini'),(352,'Mitchell'),(353,'Mitsubishi'),(354,'Mitsuoka'),(355,'MMI'),(356,'Mohs Ostentatine'),(357,'Monteverdi'),(358,'Morgan'),(359,'Mosler'),(360,'Mostro Di Potenza'),(361,'Mullen'),(362,'Nami'),(363,'Nardi Espa¤ola'),(364,'Nash'),(365,'Nismo'),(366,'Nissan'),(367,'Noble'),(368,'Nova'),(369,'NSU'),(370,'Obvio'),(371,'Oldsmobile'),(372,'Oltcit'),(373,'Opel'),(374,'Orca'),(376,'Osca'),(375,'OSI'),(377,'Packard'),(378,'Pagani'),(379,'Panhard'),(380,'Panoz'),(381,'Panther'),(382,'Parradine'),(383,'Pars Khodro'),(384,'Pegas'),(385,'Pegaso'),(386,'Pemblenton'),(387,'Penske'),(388,'Perodua'),(389,'Peugeot'),(390,'PGO'),(391,'Pierce Arrow'),(392,'Pilgrim'),(393,'Pininfarina'),(394,'Plymount'),(395,'Poncin'),(396,'Pontiac'),(397,'Porsche'),(398,'Praga'),(399,'Prince'),(400,'Proton'),(401,'Protoscar'),(402,'PTG'),(403,'Puma Car'),(404,'Puritalia'),(405,'Qiantu'),(407,'Quimera'),(406,'Quoros'),(408,'Qvale'),(409,'Radical'),(410,'Rambler'),(411,'Rapier Automotive'),(412,'Reliant'),(413,'Renaissance'),(414,'Renauld'),(415,'Renauld Alpine'),(416,'Rene Bonnet'),(417,'RENNtech'),(418,'Reo'),(419,'Rezvani'),(421,'Riley'),(420,'Riley & Scott'),(422,'Rimac'),(423,'Rinho'),(424,'Rinspeed'),(425,'Robur'),(426,'Roding'),(427,'Rolls Royce'),(428,'Ronart'),(429,'Rossion'),(430,'Roush'),(431,'Rover'),(432,'Royale'),(433,'RSC'),(435,'Ruf'),(434,'Russo-Baltique'),(436,'Saab'),(437,'Saipa'),(438,'Saleem'),(439,'Salmson'),(440,'Samsung'),(441,'Santa Matilde'),(442,'Santana'),(443,'Saturn'),(444,'Savage'),(445,'Sbarro'),(446,'Scania'),(447,'Schuppan'),(448,'Scion'),(449,'Seat'),(450,'Secma'),(451,'Shacman'),(452,'Shayton'),(453,'Shelby SuperCars SSC'),(454,'Siata'),(455,'Simca'),(456,'Singer'),(457,'Skoda'),(458,'Smart'),(459,'Soueast'),(460,'Spada'),(461,'Spartan'),(462,'Spectre'),(463,'SpeedArt'),(464,'Sportec'),(465,'Spyker'),(466,'Ssang Yong'),(467,'Stand Craft'),(468,'Startech'),(469,'Stealth'),(470,'Sterling'),(471,'Steyr'),(472,'Strathcarron'),(473,'Strosek'),(474,'Studebaker'),(475,'Studio Torino'),(476,'Stutz'),(477,'Subaru'),(478,'Sunbean'),(479,'Sunred'),(480,'Superlite'),(481,'Suzuki'),(482,'Suzusho'),(483,'Syrena'),(484,'Tagaz'),(485,'Talbot'),(486,'Tata'),(487,'Tatra'),(489,'Tauro'),(488,'tavria'),(490,'Tazzari'),(491,'TechArt'),(492,'Tesla'),(493,'Tornado'),(494,'Toroidion'),(495,'Toyota'),(496,'Trabant'),(497,'Tramontana'),(498,'TranStar'),(499,'Trident'),(500,'Triumph'),(501,'Troller'),(502,'Tucker'),(503,'Tushek'),(504,'TVR'),(505,'UAZ'),(506,'Ultima'),(507,'UMM'),(508,'Unipower'),(509,'URI'),(510,'URO'),(511,'Valmet'),(512,'Vanden Plas'),(513,'Vandenbrink'),(514,'Vanwall'),(515,'Vauxhall'),(516,'Vaydor'),(517,'VDS'),(518,'Vector'),(519,'Velam Isseta'),(520,'Velanturi'),(521,'Vemac'),(522,'Vemag'),(523,'Vencer'),(524,'Venirauto'),(525,'Venturi'),(526,'Venucia'),(527,'Veritas'),(528,'Vespa Automovile'),(529,'Vidi'),(530,'Vision'),(531,'Voisin'),(532,'Volga'),(533,'Volkswagen'),(534,'Volvo'),(535,'Vortex'),(536,'Vuhl'),(537,'Vulcan'),(548,'W-Motors'),(538,'Wald'),(539,'Walley Larson'),(540,'Wanderer'),(541,'Wartburg'),(542,'Weineck'),(543,'Western Star'),(544,'Westfield'),(545,'Wiesmann'),(546,'Willy\'s'),(547,'Wolseley'),(549,'Yamaha'),(550,'Yes'),(551,'Yo-Auto'),(552,'Yo-Mobile'),(553,'Yugo'),(554,'Zagato'),(555,'Zap'),(556,'Zarooq'),(557,'Zavasta'),(558,'ZAZ'),(559,'Zender'),(560,'Zenos'),(561,'Zenvo'),(562,'Zeus Twelve'),(563,'Zil'),(564,'Zimmer'),(565,'Zinoro'),(566,'Zolfe'),(567,'Zotye');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_holograma`
--

DROP TABLE IF EXISTS `tipo_holograma`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tipo_holograma` (
  `id_tipo` tinyint(4) NOT NULL auto_increment,
  `descripcion` varchar(40) NOT NULL,
  PRIMARY KEY  (`id_tipo`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tipo_holograma`
--

LOCK TABLES `tipo_holograma` WRITE;
/*!40000 ALTER TABLE `tipo_holograma` DISABLE KEYS */;
INSERT INTO `tipo_holograma` VALUES (1,'CERO Y/O DOBLE CERO'),(3,'DOS O SIN VERIFICACION'),(2,'UNO');
/*!40000 ALTER TABLE `tipo_holograma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verificentro`
--

DROP TABLE IF EXISTS `verificentro`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `verificentro` (
  `id_verificentro` tinyint(4) NOT NULL auto_increment,
  `cvv` varchar(7) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `id_delegacion` tinyint(4) NOT NULL,
  `referencia` varchar(300) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `num_lineas` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id_verificentro`),
  UNIQUE KEY `cvv` (`cvv`),
  KEY `id_delegacion` (`id_delegacion`),
  CONSTRAINT `verificentro_ibfk_1` FOREIGN KEY (`id_delegacion`) REFERENCES `delegacion` (`id_delegacion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `verificentro`
--

LOCK TABLES `verificentro` WRITE;
/*!40000 ALTER TABLE `verificentro` DISABLE KEYS */;
INSERT INTO `verificentro` VALUES (1,'AO9077','Av. Toluca #147, Col. Ol¡var de los Padres, C.P. 01780',1,'A espaldas de Televisa San µngel Inn','55 95 53 6',5),(2,'AZ9005','Coltongo No. 67 Esq. Av. Vallejo, Col. Coltongo, C.P. 02630',2,'','57 19 10 2',4),(3,'BJ9019','Av. Gabriel Mancera #305 Esq. Romero de Terreros, Col. Del Valle, C.P. 03100',3,'A una cuadra de Eje 4 sur (xola)','56 39 66 1',6),(4,'CO9004','Prolongaci¢n Eje central L zaro C rdenas #120, Col. Candelaria, Del. Coyoacan, C.P. 04380',4,'Cerca de Plaza Cantil y Universidad Latina','56 10 65 8',4),(5,'IZ9003','Eje 5 sur, MZ.5 LT 3. Central de Abastos, C.P. 09000',9,'Frente a la Central de Abastos','56 94 07 3',5),(6,'MH9002','Rodolfo Gaona # 86, Col. Lomas de Sotelo, Del. Miguel Hidalgo, C.P. 11200',11,'Frente al Toreo de Cuatro Caminos','55 57 40 4',6),(7,'TH9015','La Turba #68, Col. Granjas Cabrera, Del. Tl huac, C.P. 13230',13,'Entre Av. Tl huac y Alessio Robles a una cuadra del Pante¢n Civil','58 59 53 9',7);
/*!40000 ALTER TABLE `verificentro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-12 21:34:34
