-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyecto_alonsomauricio
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asesor`
--

DROP TABLE IF EXISTS `asesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asesor` (
  `idAsesor` int NOT NULL AUTO_INCREMENT,
  `nombre_asesor` varchar(100) NOT NULL,
  `idDep` int DEFAULT NULL,
  PRIMARY KEY (`idAsesor`),
  KEY `idDep` (`idDep`),
  CONSTRAINT `asesor_ibfk_1` FOREIGN KEY (`idDep`) REFERENCES `dep` (`idDep`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asesor`
--

LOCK TABLES `asesor` WRITE;
/*!40000 ALTER TABLE `asesor` DISABLE KEYS */;
INSERT INTO `asesor` VALUES (1,'Martina Herrera',1),(2,'Nicolás Sánchez',1),(3,'Valentina Gómez',2),(4,'Agustín Martínez',2),(5,'Camila Rodríguez',3),(6,'Facundo López',3),(7,'Lucía Pérez',4),(8,'Matías Fernández',4),(9,'Sofía Díaz',5),(10,'Santiago Ruiz',5),(11,'Florencia Castro',6),(12,'Lucas González',6),(13,'Emma Alvarez',7),(14,'Juan Pablo Rodríguez',7),(15,'Renata López',8),(16,'Tomás García',8),(17,'Isabella Torres',9),(18,'Bruno Hernández',9),(19,'Catalina Martínez',10),(20,'Marcos Flores',10),(21,'Ana María González',11),(22,'Sebastián López',11),(23,'Julieta Ruiz',12),(24,'Federico Díaz',12),(25,'Valeria Sánchez',13),(26,'Ramiro Martínez',13),(27,'Antonella Pérez',14),(28,'Facundo Rodríguez',14),(29,'Sofía Pérez',15),(30,'Ignacio Martínez',15),(31,'Abril Gómez',16),(32,'Joaquín Sánchez',16),(33,'Mariana González',17),(34,'Franco López',17),(35,'Camila Rodríguez',18),(36,'Gonzalo Fernández',18),(37,'Josefina Gómez',19),(38,'Lucas García',19),(39,'Victoria Pérez',20),(40,'Emilio Torres',20),(41,'Florencia Martínez',21),(42,'Juan Ignacio Sánchez',21),(43,'Emilia Díaz',22),(44,'Alejandro Ruiz',22),(45,'Valentina López',23),(46,'Maximiliano Fernández',23);
/*!40000 ALTER TABLE `asesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bancos`
--

DROP TABLE IF EXISTS `bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bancos` (
  `idBanco` int NOT NULL AUTO_INCREMENT,
  `nombre_banco` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idBanco`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancos`
--

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
INSERT INTO `bancos` VALUES (1,'Banco Provincial'),(2,'Banco Galicia'),(3,'Banco Itau'),(4,'Banco Nacion'),(5,'Banco Hipoteacario'),(6,'Banco BBVA'),(7,'Banco Macro'),(8,'Banco Supervielle'),(9,'Banco Credicoop'),(10,'Banco Bice'),(11,'Banco Santander'),(12,'Banco HSBC'),(13,'Banco Citibank'),(14,'Banco Patagonia'),(15,'Banco Hipotecario');
/*!40000 ALTER TABLE `bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora_empresa`
--

DROP TABLE IF EXISTS `bitacora_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_empresa` (
  `idLog` int NOT NULL AUTO_INCREMENT,
  `idEmpresa` int DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idLog`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_empresa`
--

LOCK TABLES `bitacora_empresa` WRITE;
/*!40000 ALTER TABLE `bitacora_empresa` DISABLE KEYS */;
INSERT INTO `bitacora_empresa` VALUES (1,1,'INSERT','2024-06-21 23:54:55'),(2,2,'INSERT','2024-06-21 23:54:55'),(3,3,'INSERT','2024-06-21 23:54:55'),(4,4,'INSERT','2024-06-21 23:54:55'),(5,5,'INSERT','2024-06-21 23:54:55'),(6,6,'INSERT','2024-06-21 23:54:55'),(7,7,'INSERT','2024-06-21 23:54:55'),(8,8,'INSERT','2024-06-21 23:54:55'),(9,9,'INSERT','2024-06-21 23:54:55'),(10,10,'INSERT','2024-06-21 23:54:55'),(11,11,'INSERT','2024-06-21 23:54:55'),(12,12,'INSERT','2024-06-21 23:54:55'),(13,13,'INSERT','2024-06-21 23:54:55'),(14,14,'INSERT','2024-06-21 23:54:55'),(15,15,'INSERT','2024-06-21 23:54:55'),(16,16,'INSERT','2024-06-21 23:54:55'),(17,17,'INSERT','2024-06-21 23:54:55'),(18,18,'INSERT','2024-06-21 23:54:55'),(19,19,'INSERT','2024-06-21 23:54:55'),(20,20,'INSERT','2024-06-21 23:54:55'),(21,21,'INSERT','2024-06-21 23:54:55'),(22,22,'INSERT','2024-06-21 23:54:55'),(23,23,'INSERT','2024-06-21 23:54:55'),(24,24,'INSERT','2024-06-21 23:54:55'),(25,25,'INSERT','2024-06-21 23:54:55'),(26,1,'DELETE','2024-06-21 23:55:23'),(27,2,'DELETE','2024-06-21 23:55:23'),(28,3,'DELETE','2024-06-21 23:55:23');
/*!40000 ALTER TABLE `bitacora_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora_programa`
--

DROP TABLE IF EXISTS `bitacora_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_programa` (
  `idLog` int NOT NULL AUTO_INCREMENT,
  `idPrograma` int DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idLog`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_programa`
--

LOCK TABLES `bitacora_programa` WRITE;
/*!40000 ALTER TABLE `bitacora_programa` DISABLE KEYS */;
INSERT INTO `bitacora_programa` VALUES (1,1,'INSERT','2024-06-21 23:54:55'),(2,2,'INSERT','2024-06-21 23:54:55'),(3,3,'INSERT','2024-06-21 23:54:55'),(4,4,'INSERT','2024-06-21 23:54:55'),(5,5,'INSERT','2024-06-21 23:54:55'),(6,6,'INSERT','2024-06-21 23:54:55'),(7,7,'INSERT','2024-06-21 23:54:55'),(8,8,'INSERT','2024-06-21 23:54:55'),(9,9,'INSERT','2024-06-21 23:54:55'),(10,10,'INSERT','2024-06-21 23:54:55'),(11,11,'INSERT','2024-06-21 23:54:55'),(12,12,'INSERT','2024-06-21 23:54:55'),(13,13,'INSERT','2024-06-21 23:54:55'),(14,14,'INSERT','2024-06-21 23:54:55'),(15,15,'INSERT','2024-06-21 23:54:55'),(16,16,'INSERT','2024-06-21 23:54:55'),(17,17,'INSERT','2024-06-21 23:54:55'),(18,18,'INSERT','2024-06-21 23:54:55'),(19,19,'INSERT','2024-06-21 23:54:55'),(20,20,'INSERT','2024-06-21 23:54:55'),(21,21,'INSERT','2024-06-21 23:54:55'),(22,22,'INSERT','2024-06-21 23:54:55'),(23,23,'INSERT','2024-06-21 23:54:55'),(24,24,'INSERT','2024-06-21 23:54:55'),(25,25,'INSERT','2024-06-21 23:54:55');
/*!40000 ALTER TABLE `bitacora_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `idCiudad` int NOT NULL AUTO_INCREMENT,
  `nombre_ciudad` varchar(50) NOT NULL,
  PRIMARY KEY (`idCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Buenos Aires'),(2,'Córdoba'),(3,'Rosario'),(4,'La Plata'),(5,'Mendoza'),(6,'Mar del Plata'),(7,'Salta'),(8,'San Juan'),(9,'San Luis'),(10,'Mendoza'),(11,'La Plata'),(12,'Mar del Plata'),(13,'Santa Fe'),(14,'San Miguel de Tucumán'),(15,'San Juan'),(16,'San Luis'),(17,'Salta'),(18,'Resistencia'),(19,'Neuquén'),(20,'La Plata'),(21,'Mar del Plata'),(22,'San Fernando'),(23,'Tandil'),(24,'Bahía Blanca'),(25,'Bariloche');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `idContacto` int NOT NULL AUTO_INCREMENT,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `web` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idContacto`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (1,'1155551234','info@plasticos.com','www.plasticos.com'),(2,'1144445678','contacto@agronorte.com','www.agronorte.com'),(3,'1133339876','ventas@consultores.com','www.consultores.com'),(4,'1122223344','info@alimentos.com','www.alimentos.com'),(5,'1133335566','contacto@patagonica.com','www.patagonica.com'),(6,'1144447788','ventas@globalfin.com','www.globalfin.com'),(7,'1177778899','info@mueblesmodernos.com','www.mueblesmodernos.com'),(8,'1188889900','contacto@pescados.com','www.pescados.com'),(9,'1199990011','ventas@lopez.com','www.lopez.com'),(10,'1100001111','info@alimsur.com','www.alimsur.com'),(11,'1122223333','contacto@gananorte.com','www.gananorte.com'),(12,'1133334444','ventas@abc.com','www.abc.com'),(13,'1144445555','info@softsol.com','www.softsol.com'),(14,'1155556666','contacto@eco.com','www.eco.com'),(15,'1166667777','info@maquinaria','www.maquinaria.com'),(16,'1177778888','contacto@agronegocios.com','www.agronegocios.com'),(17,'1188889999','ventas@desarrollo.com','www.desarrollo.com'),(18,'1199990000','info@XYZ.com','www.XYZ.com'),(19,'1100001234','contacto@futuro.com','www.futuro.com'),(20,'1122223344','info@centro.com','www.centro.com'),(21,'1133334455','contacto@totalsrl.com','www.totalsrl.com'),(22,'1144445566','ventas@solidario.com','www.solidario.com'),(23,'1155556677','info@mental.com','www.mental.com'),(24,'1166667788','contacto@seguro.com','www.seguro.com'),(25,'1177778899','ventas@desatec.com','www.desatec.com');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dep`
--

DROP TABLE IF EXISTS `dep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dep` (
  `idDep` int NOT NULL AUTO_INCREMENT,
  `nombre_dep` varchar(100) NOT NULL,
  `telefono_dep` varchar(20) DEFAULT NULL,
  `email_dep` varchar(50) NOT NULL,
  PRIMARY KEY (`idDep`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep`
--

LOCK TABLES `dep` WRITE;
/*!40000 ALTER TABLE `dep` DISABLE KEYS */;
INSERT INTO `dep` VALUES (1,'DEP - Buenos Aires','1143170954','caba@cfd.org.ar'),(2,'DEP - La Plata','2213130954','buenosaires@cfd.org.ar'),(3,'DEP - Catamarca','3833171652','chaco@cfd.org.ar'),(4,'DEP - Resistencia','3623179952','chaco@cfd.org.ar'),(5,'DEP - Rawson','2804170970','chubut@cfd.org.ar'),(6,'DEP - Córdoba','3513170920','cordoba@cfd.org.ar'),(7,'DEP - Resistencia','3623155554','corrientes@cfd.org.ar'),(8,'DEP - Paraná','3433170733','entrerios@cfd.org.ar'),(9,'DEP - Formosa','3703171984','formosa@cfd.org.ar'),(10,'DEP - San Salvador de Jujuy','3883171224','jujuy@cfd.org.ar'),(11,'DEP - Santa Rosa','2954170353','lapampa@cfd.org.ar'),(12,'DEP - La Rioja','3803112254','larioja@cfd.org.ar'),(13,'DEP - Mendoza','2613170954','mendoza@cfd.org.ar'),(14,'DEP - Posadas','3763174654','misiones@cfd.org.ar'),(15,'DEP - Neuquén','2993144554','neuquen@cfd.org.ar'),(16,'DEP - Viedma','1143172234','rionegro@cfd.org.ar'),(17,'DEP - Salta','2920115254','salta@cfd.org.ar'),(18,'DEP - San Juan','2643122254','sanjuan@cfd.org.ar'),(19,'DEP - San Luis','1143333954','sanluis@cfd.org.ar'),(20,'DEP - Río Gallegos','2663170662','santacruz@cfd.org.ar'),(21,'DEP - Santa Fe','2423174594','santafe@cfd.org.ar'),(22,'DEP - Santiago del Estero','3853170222','santiagodelestero@cfd.org.ar'),(23,'DEP - Ushuaia','2901171254','tierradelfuego@cfd.org.ar'),(24,'DEP - San Miguel de Tucumán','3813173654','tucuman@cfd.org.ar');
/*!40000 ALTER TABLE `dep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `idEmpresa` int NOT NULL AUTO_INCREMENT,
  `nombre_soc` varchar(100) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `cuit` varchar(13) NOT NULL,
  `fecha_contrato` date NOT NULL,
  `idEnvergadura` int DEFAULT NULL,
  `fecha_i_m_e` date DEFAULT NULL,
  `idRubro` int DEFAULT NULL,
  `idBanco` int DEFAULT NULL,
  `idRrhh` int DEFAULT NULL,
  `idAsesor` int DEFAULT NULL,
  `idContacto` int DEFAULT NULL,
  `idRepresentante` int DEFAULT NULL,
  `idPrograma` int DEFAULT NULL,
  `idRatio` int DEFAULT NULL,
  `idLocalizacion` int DEFAULT NULL,
  PRIMARY KEY (`idEmpresa`),
  KEY `idEnvergadura` (`idEnvergadura`),
  KEY `idRubro` (`idRubro`),
  KEY `idBanco` (`idBanco`),
  KEY `idRrhh` (`idRrhh`),
  KEY `idAsesor` (`idAsesor`),
  KEY `idContacto` (`idContacto`),
  KEY `idRepresentante` (`idRepresentante`),
  KEY `idPrograma` (`idPrograma`),
  KEY `idRatio` (`idRatio`),
  KEY `idLocalizacion` (`idLocalizacion`),
  CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`idEnvergadura`) REFERENCES `envergadura` (`idEnvergadura`),
  CONSTRAINT `empresa_ibfk_10` FOREIGN KEY (`idLocalizacion`) REFERENCES `localizacion` (`idLocalizacion`),
  CONSTRAINT `empresa_ibfk_2` FOREIGN KEY (`idRubro`) REFERENCES `rubro` (`idRubro`),
  CONSTRAINT `empresa_ibfk_3` FOREIGN KEY (`idBanco`) REFERENCES `bancos` (`idBanco`),
  CONSTRAINT `empresa_ibfk_4` FOREIGN KEY (`idRrhh`) REFERENCES `rrhh` (`idRrhh`),
  CONSTRAINT `empresa_ibfk_5` FOREIGN KEY (`idAsesor`) REFERENCES `asesor` (`idAsesor`),
  CONSTRAINT `empresa_ibfk_6` FOREIGN KEY (`idContacto`) REFERENCES `contacto` (`idContacto`),
  CONSTRAINT `empresa_ibfk_7` FOREIGN KEY (`idRepresentante`) REFERENCES `representante` (`idRepresentante`),
  CONSTRAINT `empresa_ibfk_8` FOREIGN KEY (`idPrograma`) REFERENCES `programa` (`idPrograma`),
  CONSTRAINT `empresa_ibfk_9` FOREIGN KEY (`idRatio`) REFERENCES `ratio` (`idRatio`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (4,'Alimentos del Sur S.A.','Sociedad Anónima','30-45678901-4','2024-06-01',3,'2024-06-01',4,4,4,2,4,4,4,4,4),(5,'Ganadería Patagónica SRL','Sociedad de Responsabilidad Limitada','30-56789012-5','2024-06-05',2,'2024-06-05',5,5,5,10,5,5,5,5,5),(6,'Finanzas Globales S.A.','Sociedad Anónima','30-67890123-6','2024-06-10',1,'2024-06-10',6,6,6,1,6,6,6,6,6),(7,'Muebles Modernos S.A.','Sociedad Anónima','30-78901234-7','2024-06-15',3,'2024-06-15',7,7,7,16,7,7,7,7,7),(8,'Pescados del Atlántico SRL','Sociedad de Responsabilidad Limitada','30-89012345-8','2024-06-20',2,'2024-06-20',8,8,8,23,8,8,8,8,8),(9,'Estudio Jurídico López','Sociedad Anónima','30-90123456-9','2024-06-25',1,'2024-06-25',9,9,9,36,9,9,9,9,9),(10,'Alimentos del Sur S.A.','Sociedad Anónima','30-45678901-4','2024-07-01',4,'2024-07-01',10,10,10,9,10,10,10,10,10),(11,'Ganadería del Norte SRL','Sociedad de Responsabilidad Limitada','30-56789012-5','2024-07-05',3,'2024-07-05',11,11,11,1,11,11,11,11,11),(12,'Servicios Financieros ABC S.A.','Sociedad Anónima','30-67890123-6','2024-07-10',2,'2024-07-10',12,12,12,2,12,12,12,12,12),(13,'Software Solutions SRL','Sociedad de Responsabilidad Limitada','30-78901234-7','2024-07-15',1,'2024-07-15',13,13,13,7,13,13,13,13,13),(14,'Consultoría Ambiental ECO S.A.','Sociedad Anónima','30-89012345-8','2024-07-20',4,'2024-07-20',14,14,14,12,14,14,14,14,14),(15,'Maquinarias del Sur S.A.','Sociedad Anónima','30-90123456-9','2024-08-01',4,'2024-08-01',15,10,15,24,15,15,15,15,15),(16,'Agronegocios del Norte SRL','Sociedad de Responsabilidad Limitada','30-01234567-1','2024-08-05',3,'2024-08-05',16,11,16,36,16,16,16,16,16),(17,'Desarrollos Tecnológicos ABC S.A.','Sociedad Anónima','30-12345678-2','2024-08-10',2,'2024-08-10',17,12,17,15,17,17,17,17,17),(18,'Consultoría Financiera XYZ SRL','Sociedad de Responsabilidad Limitada','30-23456789-3','2024-08-15',1,'2024-08-15',18,13,18,17,18,18,18,18,18),(19,'Logística del Futuro S.A.','Sociedad Anónima','30-34567890-4','2024-08-20',4,'2024-08-20',19,14,19,30,19,19,19,19,19),(20,'Alimentos del Sur S.A.','Sociedad Anónima','30-56789012-5','2024-09-01',3,'2024-09-01',20,1,20,1,20,20,20,20,20),(21,'Logística Integral SRL','Sociedad de Responsabilidad Limitada','30-67890123-6','2024-09-05',2,'2024-09-05',21,2,21,2,21,21,21,21,21),(22,'Desarrollos Alimentarios S.A.','Sociedad Anónima','30-78901234-7','2024-09-10',4,'2024-09-10',22,3,22,37,22,22,22,22,22),(23,'Servicios de Salud Integral SRL','Sociedad de Responsabilidad Limitada','30-89012345-8','2024-09-15',1,'2024-09-15',23,4,23,1,23,23,23,23,23),(24,'Transporte Seguro S.A.','Sociedad Anónima','30-90123456-9','2024-09-20',3,'2024-09-20',24,5,24,2,24,24,24,24,24),(25,'Innovaciones Tecnológicas SRL','Sociedad de Responsabilidad Limitada','30-01234567-1','2024-09-25',4,'2024-09-25',25,6,25,30,25,25,25,25,25);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envergadura`
--

DROP TABLE IF EXISTS `envergadura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envergadura` (
  `idEnvergadura` int NOT NULL AUTO_INCREMENT,
  `tipo_envergadura` varchar(30) NOT NULL,
  PRIMARY KEY (`idEnvergadura`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envergadura`
--

LOCK TABLES `envergadura` WRITE;
/*!40000 ALTER TABLE `envergadura` DISABLE KEYS */;
INSERT INTO `envergadura` VALUES (1,'Micro'),(2,'Pequeña'),(3,'Mediana'),(4,'Grande');
/*!40000 ALTER TABLE `envergadura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `idEstado` int NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(15) NOT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Instrumentación'),(2,'Amortizando'),(3,'Cancelado'),(4,'Desistido'),(5,'Moroso');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linea`
--

DROP TABLE IF EXISTS `linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linea` (
  `idLinea` int NOT NULL AUTO_INCREMENT,
  `nombre_linea` varchar(50) NOT NULL,
  PRIMARY KEY (`idLinea`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linea`
--

LOCK TABLES `linea` WRITE;
/*!40000 ALTER TABLE `linea` DISABLE KEYS */;
INSERT INTO `linea` VALUES (1,'Crédito Productivo'),(2,'Acciones Sustentables'),(3,'Financiamiento Infraestructura'),(4,'Adquisición capital de trabajo'),(5,'Crédito Productivo'),(6,'Acciones Sustentables'),(7,'Financiamiento Infraestructura'),(8,'Adquisición capital de trabajo'),(9,'Línea de ampliación edilicia'),(10,'Línea de potenciación comercial'),(11,'Programa de sanamiento de deuda'),(12,'Programa de diseño de plan de negocio'),(13,'Financiamiento máquinas cosechadoras'),(14,'Financiamiento mejora energética'),(15,'Línea de apoyo a microemprendedores'),(16,'Línea de apoyo tecnificación de planta');
/*!40000 ALTER TABLE `linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizacion`
--

DROP TABLE IF EXISTS `localizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localizacion` (
  `idLocalizacion` int NOT NULL AUTO_INCREMENT,
  `nombre_calle` varchar(50) DEFAULT NULL,
  `numeracion_calle` int DEFAULT NULL,
  `idCiudad` int DEFAULT NULL,
  `idProvincia` int DEFAULT NULL,
  `idPais` int DEFAULT NULL,
  PRIMARY KEY (`idLocalizacion`),
  KEY `idCiudad` (`idCiudad`),
  KEY `idProvincia` (`idProvincia`),
  KEY `idPais` (`idPais`),
  CONSTRAINT `localizacion_ibfk_1` FOREIGN KEY (`idCiudad`) REFERENCES `ciudad` (`idCiudad`),
  CONSTRAINT `localizacion_ibfk_2` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`idProvincia`),
  CONSTRAINT `localizacion_ibfk_3` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizacion`
--

LOCK TABLES `localizacion` WRITE;
/*!40000 ALTER TABLE `localizacion` DISABLE KEYS */;
INSERT INTO `localizacion` VALUES (1,'Av. Rivadavia',1234,1,1,1),(2,'Av. Corrientes',5678,2,3,1),(3,'Av. Belgrano',987,3,4,1),(4,'Yacanto',102,4,1,1),(5,'Pande',1230,5,5,1),(6,'Pedro Molina',370,6,1,1),(7,'Chacabuco',80,7,8,1),(8,'Bv. Mitre',1260,8,12,1),(9,'Franklin',606,9,18,1),(10,'Las Heras',7420,10,5,1),(11,'Pettirossi',809,11,1,1),(12,'Kingsley',9001,12,1,1),(13,'Bv Los Álamos',1020,13,4,1),(14,'San Isidro',1170,14,6,1),(15,'Talcahuano',2220,15,12,1),(16,'Washington',4360,16,18,1),(17,'La Alameda',9000,17,8,1),(18,'Av. de las Américas',150,18,9,1),(19,'Pasteur',1630,19,14,1),(20,'Chiclana',950,20,1,1),(21,'J.J.Paso',8500,21,1,1),(22,'Yrigoyen',1920,22,19,1),(23,'Bv. Constitución',2130,23,1,1),(24,'Av. Los Presidentes',2148,24,1,1),(25,'Av. Cutralco',1240,25,14,1);
/*!40000 ALTER TABLE `localizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `idPais` int NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(50) NOT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Argentina'),(2,'Brasil'),(3,'Chile'),(4,'Colombia'),(5,'Ecuador'),(6,'Perú'),(7,'Uruguay'),(8,'Venezuela'),(9,'México'),(10,'Estados Unidos'),(11,'Canadá'),(12,'España'),(13,'Francia'),(14,'Alemania'),(15,'Italia'),(16,'Reino Unido'),(17,'Australia'),(18,'China'),(19,'Japón'),(20,'India'),(21,'Rusia'),(22,'Sudáfrica'),(23,'Nueva Zelanda'),(24,'Corea del Sur'),(25,'Indonesia'),(26,'Filipinas'),(27,'Malasia'),(28,'Singapur'),(29,'Tailandia'),(30,'Vietnam'),(31,'Bangladesh'),(32,'Pakistan'),(33,'Nigeria'),(34,'Egipto'),(35,'Kenia'),(36,'Ghana'),(37,'Marruecos'),(38,'Argelia'),(39,'Túnez'),(40,'Portugal'),(41,'Grecia'),(42,'Turquía'),(43,'Irán'),(44,'Arabia Saudita'),(45,'Emiratos Árabes Unidos'),(46,'Israel'),(47,'Qatar'),(48,'Kuwait'),(49,'Irak');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programa` (
  `idPrograma` int NOT NULL AUTO_INCREMENT,
  `nombre_programa` varchar(100) NOT NULL,
  `descripcion` text,
  `legajo` varchar(20) DEFAULT NULL,
  `monto` int DEFAULT NULL,
  `idEstado` int DEFAULT NULL,
  `idLinea` int DEFAULT NULL,
  PRIMARY KEY (`idPrograma`),
  KEY `idLinea` (`idLinea`),
  KEY `idEstado` (`idEstado`),
  CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`idLinea`) REFERENCES `linea` (`idLinea`),
  CONSTRAINT `programa_ibfk_2` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa`
--

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` VALUES (1,'Programa de Desarrollo Empresarial','Apoyo financiero para el desarrollo de pequeñas y medianas empresas.','PD20240501',100000,1,1),(2,'Programa de Exportación','Facilita el acceso al mercado internacional para empresas exportadoras.','PE20240502',150000,2,2),(3,'Programa de Innovación Tecnológica','Financiamiento para proyectos de innovación en el sector tecnológico.','PIT20240503',200000,2,3),(4,'Programa de Apoyo a Pymes','Financiación para pequeñas y medianas empresas en crecimiento.','PAP20240504',250000,2,1),(5,'Programa de Energías Renovables','Incentivo para proyectos de energías limpias y sustentables.','PER20240505',300000,2,2),(6,'Programa de Desarrollo Regional','Desarrollo de infraestructura en regiones estratégicas.','PDR20240506',350000,3,3),(7,'Programa de Capacitación','Cursos y talleres para mejorar las habilidades laborales.','PC20240507',50000,3,2),(8,'Programa de Expansión Internacional','Ayuda a empresas para expandirse en mercados internacionales.','PEI20240508',400000,1,3),(9,'Programa de Apoyo a Innovación','Fomentar la innovación en empresas emergentes.','PAI20240509',150000,2,1),(10,'Programa de Apoyo a PYMEs','Financiación y asesoramiento para pequeñas y medianas empresas.','PAP20240510',120000,2,2),(11,'Programa de Mejora de Infraestructura','Apoyo para la mejora de infraestructuras en empresas.','PMI20240511',250000,4,3),(12,'Programa de Digitalización','Fomento de la digitalización de procesos en empresas.','PD20240512',90000,5,1),(13,'Programa de Sostenibilidad','Incentivos para prácticas empresariales sostenibles.','PS20240513',130000,3,2),(14,'Programa de Exportación Avanzada','Asistencia avanzada para empresas exportadoras.','PEA20240514',350000,3,3),(15,'Programa de Expansión Internacional','Fomenta la internacionalización de empresas locales.','PEI20240515',220000,2,1),(16,'Programa de Modernización','Ayuda a empresas a modernizar sus instalaciones y procesos.','PMO20240516',180000,1,3),(17,'Programa de Capacitación Empresarial','Ofrece capacitación para la gestión empresarial.','PCE20240517',75000,1,2),(18,'Programa de Innovación Verde','Incentivos para proyectos de sostenibilidad ambiental.','PIV20240518',140000,2,2),(19,'Programa de Crecimiento Tecnológico','Apoya la expansión de empresas tecnológicas.','PCT20240519',270000,1,3),(20,'Programa de Sostenibilidad','Promueve prácticas sostenibles en empresas.','PS20240520',200000,5,4),(21,'Programa de Innovación Industrial','Fomenta la innovación en el sector industrial.','PII20240521',250000,1,1),(22,'Programa de Desarrollo Rural','Apoya el desarrollo económico de áreas rurales.','PDR20240522',120000,5,3),(23,'Programa de Mejora de Procesos','Optimiza los procesos empresariales.','PMP20240523',100000,2,2),(24,'Programa de Digitalización','Facilita la digitalización de empresas.','PD20240524',300000,1,1),(25,'Programa de Expansión de Mercado','Ayuda a empresas a expandirse a nuevos mercados.','PEM20240525',220000,3,4);
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `idProvincia` int NOT NULL AUTO_INCREMENT,
  `nombre_provincia` varchar(50) NOT NULL,
  PRIMARY KEY (`idProvincia`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Buenos Aires'),(2,'CABA'),(3,'Córdoba'),(4,'Santa Fe'),(5,'Mendoza'),(6,'Tucumán'),(7,'Entre Ríos'),(8,'Salta'),(9,'Chaco'),(10,'Corrientes'),(11,'Santiago del Estero'),(12,'San Juan'),(13,'Jujuy'),(14,'Río Negro'),(15,'Neuquén'),(16,'Formosa'),(17,'Chubut'),(18,'San Luis'),(19,'Catamarca'),(20,'La Rioja'),(21,'La Pampa'),(22,'Santa Cruz'),(23,'Tierra del Fuego');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratio`
--

DROP TABLE IF EXISTS `ratio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratio` (
  `idRatio` int NOT NULL AUTO_INCREMENT,
  `patneto` int NOT NULL,
  `margen` decimal(5,2) NOT NULL,
  `roa` decimal(5,2) DEFAULT NULL,
  `roe` decimal(5,2) DEFAULT NULL,
  `endeudamiento` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`idRatio`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratio`
--

LOCK TABLES `ratio` WRITE;
/*!40000 ALTER TABLE `ratio` DISABLE KEYS */;
INSERT INTO `ratio` VALUES (1,500000,0.15,0.08,0.10,0.40),(2,750000,0.12,0.10,0.12,0.30),(3,1000000,0.18,0.15,0.18,0.50),(4,600000,0.16,0.09,0.11,0.35),(5,800000,0.14,0.11,0.13,0.28),(6,900000,0.17,0.12,0.14,0.32),(7,700000,0.13,0.07,0.09,0.38),(8,850000,0.14,0.11,0.13,0.31),(9,950000,0.17,0.13,0.15,0.33),(10,600000,0.16,0.09,0.11,0.35),(11,800000,0.15,0.10,0.13,0.40),(12,900000,0.14,0.08,0.12,0.32),(13,1000000,0.17,0.11,0.14,0.37),(14,1100000,0.19,0.12,0.15,0.39),(15,550000,0.13,0.09,0.11,0.34),(16,780000,0.11,0.10,0.12,0.36),(17,960000,0.16,0.12,0.14,0.38),(18,850000,0.17,0.13,0.15,0.35),(19,910000,0.18,0.14,0.16,0.37),(20,600000,0.14,0.09,0.11,0.33),(21,850000,0.13,0.11,0.13,0.35),(22,920000,0.17,0.13,0.15,0.39),(23,780000,0.15,0.12,0.14,0.32),(24,990000,0.18,0.14,0.16,0.38),(25,870000,0.16,0.13,0.15,0.34);
/*!40000 ALTER TABLE `ratio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante`
--

DROP TABLE IF EXISTS `representante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `representante` (
  `idRepresentante` int NOT NULL AUTO_INCREMENT,
  `nombre_rep` varchar(100) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `nacionalidad` int DEFAULT NULL,
  PRIMARY KEY (`idRepresentante`),
  KEY `nacionalidad` (`nacionalidad`),
  CONSTRAINT `representante_ibfk_1` FOREIGN KEY (`nacionalidad`) REFERENCES `pais` (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante`
--

LOCK TABLES `representante` WRITE;
/*!40000 ALTER TABLE `representante` DISABLE KEYS */;
INSERT INTO `representante` VALUES (1,'Juan Pérez','12345678','Abogado',1),(2,'María González','87654321','Ingeniera',1),(3,'Pedro Rodríguez Sanchez','23456789','Contador',3),(4,'Ana López Obrador','34567890','Ingeniera',4),(5,'Carlos Martínez','45678901','Administrador',1),(6,'Elena Gómez Toranzo','56789012','Economista',6),(7,'Marta López','34567890','Ingeniera',1),(8,'Carlos Gómez','45678901','Médico',1),(9,'Lucía Martínez','56789012','Contadora',7),(10,'José Fernández','67890123','Arquitecto',7),(11,'Chika Indivar','78901234','Ingeniera',33),(12,'Ching Pei','89012345','Ingeniera',18),(13,'Miguel Torres','90123456','Economista',1),(14,'Natalia Hernández','01234567','Contadora',1),(15,'Ghustavo Dos Santos','12345678','Arquitecto',2),(16,'Verónica Díaz','23456789','Ingeniera',1),(17,'Laura Jackson','89012345','Programador',10),(18,'Miguel Juárez','90123456','Empresario',1),(19,'Natalia Kikuchi','01234567','Contadora',19),(20,'Carlos Fernández','34567890','Empresario',1),(21,'Ana López','45678901','Abogada',1),(22,'Luis Martínez','56789012','Economista',1),(23,'Clara García Bermelho','67890123','Empresario',2),(24,'Roberto Sánchez Vivar','78901234','Arquitecto',9),(25,'Michelle Platini','89012345','Sociólogo',13);
/*!40000 ALTER TABLE `representante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rrhh`
--

DROP TABLE IF EXISTS `rrhh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rrhh` (
  `idRrhh` int NOT NULL AUTO_INCREMENT,
  `num_socios` tinyint NOT NULL,
  `num_empleados` tinyint DEFAULT NULL,
  PRIMARY KEY (`idRrhh`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rrhh`
--

LOCK TABLES `rrhh` WRITE;
/*!40000 ALTER TABLE `rrhh` DISABLE KEYS */;
INSERT INTO `rrhh` VALUES (1,5,20),(2,10,50),(3,15,100),(4,6,25),(5,8,35),(6,12,60),(7,7,28),(8,9,40),(9,11,70),(10,8,35),(11,6,25),(12,12,60),(13,10,45),(14,9,55),(15,7,30),(16,9,40),(17,13,70),(18,11,50),(19,8,35),(20,6,25),(21,12,60),(22,8,30),(23,14,80),(24,7,35),(25,11,55);
/*!40000 ALTER TABLE `rrhh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubro`
--

DROP TABLE IF EXISTS `rubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubro` (
  `idRubro` int NOT NULL AUTO_INCREMENT,
  `actividad` varchar(200) NOT NULL,
  `idSector` int DEFAULT NULL,
  PRIMARY KEY (`idRubro`),
  KEY `idSector` (`idSector`),
  CONSTRAINT `rubro_ibfk_1` FOREIGN KEY (`idSector`) REFERENCES `sector` (`idSector`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubro`
--

LOCK TABLES `rubro` WRITE;
/*!40000 ALTER TABLE `rubro` DISABLE KEYS */;
INSERT INTO `rubro` VALUES (1,'Fabricación de Productos Plásticos',1),(2,'Producción Agrícola',2),(3,'Servicios de Consultoría',4),(4,'Elaboración de Alimentos',1),(5,'Ganadería',2),(6,'Consultoría Financiera',4),(7,'Fabricación de Muebles',1),(8,'Pesca',2),(9,'Servicios Jurídicos',4),(10,'Elaboración de Alimentos',1),(11,'Ganadería',2),(12,'Servicios Financieros',4),(13,'Producción de Software',4),(14,'Consultoría Ambiental',4),(15,'Fabricación de Maquinaria',1),(16,'Cultivo de Cereales',2),(17,'Desarrollo de Aplicaciones',4),(18,'Consultoría Financiera',4),(19,'Transporte y Logística',4),(20,'Procesamiento de Alimentos',1),(21,'Producción de Lácteos',2),(22,'Desarrollo de Software',4),(23,'Consultoría Ambiental',4),(24,'Servicios de Salud',4),(25,'Logística y Transporte',4);
/*!40000 ALTER TABLE `rubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sector` (
  `idSector` int NOT NULL AUTO_INCREMENT,
  `nombre_sector` varchar(30) NOT NULL,
  PRIMARY KEY (`idSector`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Industrial'),(2,'Agropecuario'),(3,'Minería'),(4,'Servicios'),(5,'Apicultura');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_cantidad_empresas_por_sector`
--

DROP TABLE IF EXISTS `vista_cantidad_empresas_por_sector`;
/*!50001 DROP VIEW IF EXISTS `vista_cantidad_empresas_por_sector`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_cantidad_empresas_por_sector` AS SELECT 
 1 AS `sector`,
 1 AS `cantidad_empresas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_detalle_empresas_con_representante`
--

DROP TABLE IF EXISTS `vista_detalle_empresas_con_representante`;
/*!50001 DROP VIEW IF EXISTS `vista_detalle_empresas_con_representante`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_detalle_empresas_con_representante` AS SELECT 
 1 AS `Nombre_empresa`,
 1 AS `Envergadura`,
 1 AS `Cantidad_socios`,
 1 AS `Cantidad_empleados`,
 1 AS `Representante`,
 1 AS `Nacionalidad_representante`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_empresa_completa`
--

DROP TABLE IF EXISTS `vista_empresa_completa`;
/*!50001 DROP VIEW IF EXISTS `vista_empresa_completa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_empresa_completa` AS SELECT 
 1 AS `idEmpresa`,
 1 AS `nombre_soc`,
 1 AS `tipo`,
 1 AS `cuit`,
 1 AS `fecha_contrato`,
 1 AS `tipo_envergadura`,
 1 AS `fecha_i_m_e`,
 1 AS `rubro_actividad`,
 1 AS `rubro_sector`,
 1 AS `nombre_banco`,
 1 AS `num_socios`,
 1 AS `num_empleados`,
 1 AS `nombre_asesor`,
 1 AS `asesor_dep`,
 1 AS `contacto_telefono`,
 1 AS `contacto_email`,
 1 AS `contacto_web`,
 1 AS `representante_nombre`,
 1 AS `representante_dni`,
 1 AS `representante_profesion`,
 1 AS `representante_pais`,
 1 AS `nombre_programa`,
 1 AS `programa_descripcion`,
 1 AS `programa_legajo`,
 1 AS `programa_monto`,
 1 AS `programa_estado`,
 1 AS `programa_linea`,
 1 AS `patneto`,
 1 AS `margen`,
 1 AS `roa`,
 1 AS `roe`,
 1 AS `endeudamiento`,
 1 AS `nombre_calle`,
 1 AS `numeracion_calle`,
 1 AS `nombre_ciudad`,
 1 AS `nombre_provincia`,
 1 AS `localizacion_pais`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_empresas_con_ciudad_actividad_y_asesor`
--

DROP TABLE IF EXISTS `vista_empresas_con_ciudad_actividad_y_asesor`;
/*!50001 DROP VIEW IF EXISTS `vista_empresas_con_ciudad_actividad_y_asesor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_empresas_con_ciudad_actividad_y_asesor` AS SELECT 
 1 AS `Nombre_empresa`,
 1 AS `Ciudad`,
 1 AS `Actividad`,
 1 AS `Asesor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_estado_empresas_por_departamento`
--

DROP TABLE IF EXISTS `vista_estado_empresas_por_departamento`;
/*!50001 DROP VIEW IF EXISTS `vista_estado_empresas_por_departamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_estado_empresas_por_departamento` AS SELECT 
 1 AS `departamento`,
 1 AS `estado`,
 1 AS `cantidad_empresas`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_cantidad_empresas_por_sector`
--

/*!50001 DROP VIEW IF EXISTS `vista_cantidad_empresas_por_sector`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_cantidad_empresas_por_sector` AS select `s`.`nombre_sector` AS `sector`,count(`e`.`idEmpresa`) AS `cantidad_empresas` from ((`empresa` `e` left join `rubro` `r` on((`e`.`idRubro` = `r`.`idRubro`))) left join `sector` `s` on((`r`.`idSector` = `s`.`idSector`))) group by `s`.`nombre_sector` order by `s`.`nombre_sector` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_detalle_empresas_con_representante`
--

/*!50001 DROP VIEW IF EXISTS `vista_detalle_empresas_con_representante`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_detalle_empresas_con_representante` AS select `e`.`nombre_soc` AS `Nombre_empresa`,`en`.`tipo_envergadura` AS `Envergadura`,`r`.`num_socios` AS `Cantidad_socios`,`r`.`num_empleados` AS `Cantidad_empleados`,`rep`.`nombre_rep` AS `Representante`,`p`.`nombre_pais` AS `Nacionalidad_representante` from ((((`empresa` `e` join `envergadura` `en` on((`e`.`idEnvergadura` = `en`.`idEnvergadura`))) join `rrhh` `r` on((`e`.`idRrhh` = `r`.`idRrhh`))) join `representante` `rep` on((`e`.`idRepresentante` = `rep`.`idRepresentante`))) join `pais` `p` on((`rep`.`nacionalidad` = `p`.`idPais`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_empresa_completa`
--

/*!50001 DROP VIEW IF EXISTS `vista_empresa_completa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_empresa_completa` AS select `e`.`idEmpresa` AS `idEmpresa`,`e`.`nombre_soc` AS `nombre_soc`,`e`.`tipo` AS `tipo`,`e`.`cuit` AS `cuit`,`e`.`fecha_contrato` AS `fecha_contrato`,`en`.`tipo_envergadura` AS `tipo_envergadura`,`e`.`fecha_i_m_e` AS `fecha_i_m_e`,`r`.`actividad` AS `rubro_actividad`,`s`.`nombre_sector` AS `rubro_sector`,`b`.`nombre_banco` AS `nombre_banco`,`rr`.`num_socios` AS `num_socios`,`rr`.`num_empleados` AS `num_empleados`,`a`.`nombre_asesor` AS `nombre_asesor`,`d`.`nombre_dep` AS `asesor_dep`,`c`.`telefono` AS `contacto_telefono`,`c`.`email` AS `contacto_email`,`c`.`web` AS `contacto_web`,`rep`.`nombre_rep` AS `representante_nombre`,`rep`.`dni` AS `representante_dni`,`rep`.`profesion` AS `representante_profesion`,`p`.`nombre_pais` AS `representante_pais`,`prog`.`nombre_programa` AS `nombre_programa`,`prog`.`descripcion` AS `programa_descripcion`,`prog`.`legajo` AS `programa_legajo`,`prog`.`monto` AS `programa_monto`,`es`.`nombre_estado` AS `programa_estado`,`l`.`nombre_linea` AS `programa_linea`,`rto`.`patneto` AS `patneto`,`rto`.`margen` AS `margen`,`rto`.`roa` AS `roa`,`rto`.`roe` AS `roe`,`rto`.`endeudamiento` AS `endeudamiento`,`loc`.`nombre_calle` AS `nombre_calle`,`loc`.`numeracion_calle` AS `numeracion_calle`,`ciu`.`nombre_ciudad` AS `nombre_ciudad`,`prov`.`nombre_provincia` AS `nombre_provincia`,`pa`.`nombre_pais` AS `localizacion_pais` from ((((((((((((((((((`empresa` `e` left join `envergadura` `en` on((`e`.`idEnvergadura` = `en`.`idEnvergadura`))) left join `rubro` `r` on((`e`.`idRubro` = `r`.`idRubro`))) left join `sector` `s` on((`r`.`idSector` = `s`.`idSector`))) left join `bancos` `b` on((`e`.`idBanco` = `b`.`idBanco`))) left join `rrhh` `rr` on((`e`.`idRrhh` = `rr`.`idRrhh`))) left join `asesor` `a` on((`e`.`idAsesor` = `a`.`idAsesor`))) left join `dep` `d` on((`a`.`idDep` = `d`.`idDep`))) left join `contacto` `c` on((`e`.`idContacto` = `c`.`idContacto`))) left join `representante` `rep` on((`e`.`idRepresentante` = `rep`.`idRepresentante`))) left join `pais` `p` on((`rep`.`nacionalidad` = `p`.`idPais`))) left join `programa` `prog` on((`e`.`idPrograma` = `prog`.`idPrograma`))) left join `estado` `es` on((`prog`.`idEstado` = `es`.`idEstado`))) left join `linea` `l` on((`prog`.`idLinea` = `l`.`idLinea`))) left join `ratio` `rto` on((`e`.`idRatio` = `rto`.`idRatio`))) left join `localizacion` `loc` on((`e`.`idLocalizacion` = `loc`.`idLocalizacion`))) left join `ciudad` `ciu` on((`loc`.`idCiudad` = `ciu`.`idCiudad`))) left join `provincia` `prov` on((`loc`.`idProvincia` = `prov`.`idProvincia`))) left join `pais` `pa` on((`loc`.`idPais` = `pa`.`idPais`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_empresas_con_ciudad_actividad_y_asesor`
--

/*!50001 DROP VIEW IF EXISTS `vista_empresas_con_ciudad_actividad_y_asesor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_empresas_con_ciudad_actividad_y_asesor` AS select `e`.`nombre_soc` AS `Nombre_empresa`,`c`.`nombre_ciudad` AS `Ciudad`,`r`.`actividad` AS `Actividad`,`a`.`nombre_asesor` AS `Asesor` from ((((`empresa` `e` join `localizacion` `l` on((`e`.`idLocalizacion` = `l`.`idLocalizacion`))) join `ciudad` `c` on((`l`.`idCiudad` = `c`.`idCiudad`))) join `rubro` `r` on((`e`.`idRubro` = `r`.`idRubro`))) join `asesor` `a` on((`e`.`idAsesor` = `a`.`idAsesor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_estado_empresas_por_departamento`
--

/*!50001 DROP VIEW IF EXISTS `vista_estado_empresas_por_departamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_estado_empresas_por_departamento` AS select `d`.`nombre_dep` AS `departamento`,`es`.`nombre_estado` AS `estado`,count(`e`.`idEmpresa`) AS `cantidad_empresas` from ((((`empresa` `e` left join `asesor` `a` on((`e`.`idAsesor` = `a`.`idAsesor`))) left join `dep` `d` on((`a`.`idDep` = `d`.`idDep`))) left join `programa` `prog` on((`e`.`idPrograma` = `prog`.`idPrograma`))) left join `estado` `es` on((`prog`.`idEstado` = `es`.`idEstado`))) group by `d`.`nombre_dep`,`es`.`nombre_estado` order by `d`.`nombre_dep`,`es`.`nombre_estado` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-21 20:56:19
