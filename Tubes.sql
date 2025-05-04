CREATE DATABASE  IF NOT EXISTS `si_manajemenhotel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `si_manajemenhotel`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: si_manajemenhotel
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Dina Purnama','dina_admin','dina123'),(2,'Rudi Hartono','rudi_admin','rudi456'),(3,'Lina Kusuma','lina_admin','lina789'),(4,'Agus Salim','agus_admin','agus321');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Andi Wijaya','andi@gmail.com','L','1990-05-12'),(2,'Siti Lestari','siti@gmail.com','P','1995-08-23'),(3,'Budi Santoso','budi@gmail.com','L','1987-11-04'),(4,'Dewi Anjani','dewi@gmail.com','P','1989-07-15'),(5,'Rian Saputra','rian@gmail.com','L','1993-12-01'),(6,'Linda Oktaviani','linda@gmail.com','P','1996-03-29'),(7,'Fajar Maulana','fajar@gmail.com','L','1985-02-17');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kamar`
--

DROP TABLE IF EXISTS `kamar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_kamar` varchar(10) DEFAULT NULL,
  `tipe_kamar` enum('Single','Double','Suite') DEFAULT NULL,
  `harga_per_malam` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_kamar`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kamar`
--

LOCK TABLES `kamar` WRITE;
/*!40000 ALTER TABLE `kamar` DISABLE KEYS */;
INSERT INTO `kamar` VALUES (1,'101','Single',300000.00),(2,'102','Double',450000.00),(3,'201','Suite',750000.00),(4,'202','Single',320000.00),(5,'203','Double',470000.00),(6,'301','Suite',850000.00),(7,'302','Double',500000.00),(8,'303','Single',310000.00);
/*!40000 ALTER TABLE `kamar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan`
--

DROP TABLE IF EXISTS `layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `layanan` (
  `id_layanan` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_layanan` varchar(100) DEFAULT NULL,
  `harga_layanan` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_layanan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan`
--

LOCK TABLES `layanan` WRITE;
/*!40000 ALTER TABLE `layanan` DISABLE KEYS */;
INSERT INTO `layanan` VALUES (1,'Laundry',50000.00),(2,'Room Service',75000.00),(3,'Spa',120000.00),(4,'Gym',30000.00),(5,'Breakfast Buffet',100000.00),(6,'Valet Parking',40000.00);
/*!40000 ALTER TABLE `layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_layanan`
--

DROP TABLE IF EXISTS `log_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_layanan` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_penggunaan` int(11) DEFAULT NULL,
  `waktu_log` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_layanan`
--

LOCK TABLES `log_layanan` WRITE;
/*!40000 ALTER TABLE `log_layanan` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_layanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_reservasi` int(11) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `metode_pembayaran` enum('Cash','Credit Card','Transfer') DEFAULT NULL,
  `total_bayar` decimal(12,2) DEFAULT NULL,
  `tanggal_bayar` date DEFAULT NULL,
  PRIMARY KEY (`id_pembayaran`),
  KEY `id_reservasi` (`id_reservasi`),
  KEY `id_customer` (`id_customer`),
  CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_reservasi`) REFERENCES `reservasi` (`id_reservasi`),
  CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayaran`
--

LOCK TABLES `pembayaran` WRITE;
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
INSERT INTO `pembayaran` VALUES (1,1,1,'Credit Card',600000.00,'2025-05-01'),(2,3,3,'Cash',750000.00,'2025-04-27'),(3,4,4,'Transfer',960000.00,'2025-05-01'),(4,5,5,'Credit Card',1880000.00,'2025-05-02'),(5,6,6,'Cash',1700000.00,'2025-04-29'),(6,2,2,'Cash',1350000.00,'2025-05-02');
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penggunaan_layanan`
--

DROP TABLE IF EXISTS `penggunaan_layanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penggunaan_layanan` (
  `id_penggunaan` int(11) NOT NULL AUTO_INCREMENT,
  `id_reservasi` int(11) DEFAULT NULL,
  `id_layanan` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_penggunaan`),
  KEY `id_reservasi` (`id_reservasi`),
  KEY `id_layanan` (`id_layanan`),
  CONSTRAINT `penggunaan_layanan_ibfk_1` FOREIGN KEY (`id_reservasi`) REFERENCES `reservasi` (`id_reservasi`),
  CONSTRAINT `penggunaan_layanan_ibfk_2` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id_layanan`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penggunaan_layanan`
--

LOCK TABLES `penggunaan_layanan` WRITE;
/*!40000 ALTER TABLE `penggunaan_layanan` DISABLE KEYS */;
INSERT INTO `penggunaan_layanan` VALUES (1,1,1,2),(2,1,2,1),(3,3,3,1),(4,4,4,1),(5,4,5,2),(6,5,6,1),(7,6,1,1),(8,6,3,1),(9,2,2,2);
/*!40000 ALTER TABLE `penggunaan_layanan` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER after_penggunaan_layanan
AFTER INSERT ON penggunaan_layanan
FOR EACH ROW
BEGIN
    INSERT INTO log_layanan (id_penggunaan)
    VALUES (NEW.id_penggunaan);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reservasi`
--

DROP TABLE IF EXISTS `reservasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservasi` (
  `id_reservasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) DEFAULT NULL,
  `id_kamar` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `tanggal_checkin` date DEFAULT NULL,
  `tanggal_checkout` date DEFAULT NULL,
  `status` enum('Booked','Checked In','Cancelled') DEFAULT NULL,
  PRIMARY KEY (`id_reservasi`),
  KEY `id_customer` (`id_customer`),
  KEY `id_kamar` (`id_kamar`),
  KEY `id_admin` (`id_admin`),
  CONSTRAINT `reservasi_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id_customer`),
  CONSTRAINT `reservasi_ibfk_2` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id_kamar`),
  CONSTRAINT `reservasi_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservasi`
--

LOCK TABLES `reservasi` WRITE;
/*!40000 ALTER TABLE `reservasi` DISABLE KEYS */;
INSERT INTO `reservasi` VALUES (1,1,1,1,'2025-05-01','2025-05-03','Checked In'),(2,2,2,2,'2025-05-02','2025-05-05','Booked'),(3,3,3,1,'2025-04-28','2025-04-30','Cancelled'),(4,4,4,3,'2025-05-01','2025-05-04','Checked In'),(5,5,5,4,'2025-05-02','2025-05-06','Booked'),(6,6,6,2,'2025-04-29','2025-05-01','Checked In'),(7,2,7,1,'2025-05-03','2025-05-05','Cancelled'),(8,1,8,4,'2025-05-04','2025-05-06','Booked');
/*!40000 ALTER TABLE `reservasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_reservasi_aktif`
--

DROP TABLE IF EXISTS `view_reservasi_aktif`;
/*!50001 DROP VIEW IF EXISTS `view_reservasi_aktif`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_reservasi_aktif` AS SELECT 
 1 AS `id_reservasi`,
 1 AS `nama`,
 1 AS `nomor_kamar`,
 1 AS `tanggal_checkin`,
 1 AS `tanggal_checkout`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'si_manajemenhotel'
--

--
-- Dumping routines for database 'si_manajemenhotel'
--
/*!50003 DROP PROCEDURE IF EXISTS `tambah_pembayaran` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_pembayaran`(
    IN p_id_reservasi INT,
    IN p_id_customer INT,
    IN p_metode ENUM('Cash','Credit Card','Transfer'),
    IN p_total DECIMAL(12,2),
    IN p_tanggal DATE
)
BEGIN
    INSERT INTO pembayaran (id_reservasi, id_customer, metode_pembayaran, total_bayar, tanggal_bayar)
    VALUES (p_id_reservasi, p_id_customer, p_metode, p_total, p_tanggal);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_reservasi_aktif`
--

/*!50001 DROP VIEW IF EXISTS `view_reservasi_aktif`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_reservasi_aktif` AS select `r`.`id_reservasi` AS `id_reservasi`,`c`.`nama` AS `nama`,`k`.`nomor_kamar` AS `nomor_kamar`,`r`.`tanggal_checkin` AS `tanggal_checkin`,`r`.`tanggal_checkout` AS `tanggal_checkout` from ((`reservasi` `r` join `customers` `c` on(`r`.`id_customer` = `c`.`id_customer`)) join `kamar` `k` on(`r`.`id_kamar` = `k`.`id_kamar`)) where `r`.`status` = 'Checked In' */;
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

-- Dump completed on 2025-05-04 19:42:25
