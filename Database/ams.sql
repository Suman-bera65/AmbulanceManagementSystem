/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'admin','java@1991','admin@gmail.com','2021-01-06 06:04:45');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblambulance`
--

DROP TABLE IF EXISTS `tblambulance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblambulance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ambulance_vehicle_no` varchar(100) DEFAULT NULL,
  `ambulance_type` varchar(45) DEFAULT NULL,
  `driver_lincense_no` varchar(100) DEFAULT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `driver_mobile` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblambulance`
--

LOCK TABLES `tblambulance` WRITE;
/*!40000 ALTER TABLE `tblambulance` DISABLE KEYS */;
INSERT INTO `tblambulance` VALUES (1,'AVN20210221121303','Cardiac Ambulance','L456789','Arun Pandit','9335648551','Maharashtra','Pune','Added','2021-02-21 06:43:33','2021-02-21 19:38:43'),(2,'AVN20210221085029','Individual Ambulance','L695847','Shashi Bhure','9741256358','Maharashtra','Mumbai','Added','2021-02-21 15:20:48','2021-03-04 11:07:49'),(4,'AVN20210304112620','Basic Life Support Ambulance','L369874','Raju Kadam','9404308607','Maharashtra','Mumbai','Pending','2021-03-04 05:56:55','2021-03-04 12:12:57');
/*!40000 ALTER TABLE `tblambulance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('18165');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontact` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (1,'Kishor Kadam','kadamk33@gmail.com','+917276763516','Awesome website.','2021-02-20 11:58:53');
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldriver`
--

DROP TABLE IF EXISTS `tbldriver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldriver` (
  `driver_id` varchar(100) NOT NULL,
  `driver_name` varchar(200) DEFAULT NULL,
  `driver_email` varchar(100) DEFAULT NULL,
  `driver_mobile` varchar(100) DEFAULT NULL,
  `driver_address` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldriver`
--

LOCK TABLES `tbldriver` WRITE;
/*!40000 ALTER TABLE `tbldriver` DISABLE KEYS */;
INSERT INTO `tbldriver` VALUES ('D20210220092432','Arun Pandit','arunpandit@gmail.com','9335648552','Newasa,Ahmednagar','arun','arun@123','2021-02-20 03:54:57','2021-02-27 11:08:52'),('D20210221084559','Shashi Bhure','shashibhure33@yahoo.com','9741256358','Akurdi, Pune','shashi','shashi@123','2021-02-21 15:17:57','2021-02-21 20:47:57'),('D20210225123603','Raju Kadam','rajukadam@gmail.com','9404308607','Bhalawani, Ahmednagar','raju','raju@123','2021-02-25 07:06:42','2021-02-27 11:11:02');
/*!40000 ALTER TABLE `tbldriver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfeedback`
--

DROP TABLE IF EXISTS `tblfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfeedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_mobile` varchar(100) DEFAULT NULL,
  `avn` varchar(100) DEFAULT NULL,
  `driverName` varchar(100) DEFAULT NULL,
  `feedback_complaint_type` varchar(100) DEFAULT NULL,
  `feedback_or_complaint` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfeedback`
--

LOCK TABLES `tblfeedback` WRITE;
/*!40000 ALTER TABLE `tblfeedback` DISABLE KEYS */;
INSERT INTO `tblfeedback` VALUES (1,'P20210220090833','Kishor Kadam','7276763516','AVN20210221121303 ','Arun Pandit','Feedback','Good service provide us.','2021-02-22 04:54:14','2021-02-22 10:24:14'),(2,'P20210221075531','Sagar Kharmale','8456571542','AVN20210221121303 ','Arun Pandit','Complaint','Service is not good.','2021-02-22 11:29:57','2021-02-22 16:59:57');
/*!40000 ALTER TABLE `tblfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpatient`
--

DROP TABLE IF EXISTS `tblpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpatient` (
  `patient_id` varchar(100) NOT NULL,
  `patient_name` varchar(200) DEFAULT NULL,
  `patient_email` varchar(100) DEFAULT NULL,
  `Patient_mobile` varchar(100) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `patient_disease` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `avn` varchar(100) DEFAULT NULL,
  `source_city` varchar(100) DEFAULT NULL,
  `destination_city` varchar(100) DEFAULT NULL,
  `ambulance_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpatient`
--

LOCK TABLES `tblpatient` WRITE;
/*!40000 ALTER TABLE `tblpatient` DISABLE KEYS */;
INSERT INTO `tblpatient` VALUES ('P20210220090833','Kishor Kadam','kadamk33@gmail.com','7276763515','Bhalawani, Ahmednagar, Maharashtra.','Heart disease','kishor','java@1991','2021-02-20 03:39:15','2021-03-03 10:20:14','AVN20210221121303','Ahmednagar','Pune','Pending'),('P20210221075531','Sagar Kharmale','sagarkharmale@gmail.com','8456571542','Bhandgaon, Ahmednagar, Maharashtra.','Liver disease','sagar','sagar@123','2021-02-21 14:25:53','2021-02-23 10:28:05','AVN20210221121303','Pune','Mumbai','Pending'),('P20210221075554','Shashikant Bhure','shashibhure33@yahoo.com','9741256358','Akurdi, Pune','Corona disease','shashi','shashi@123','2021-02-21 14:26:35','2021-02-22 16:38:49','AVN20210221121303','Nanded','Pune','Pending'),('P20210225045729','Govind Raut','govindraut@gmail.com','7896321456','Gevrai, Beed.','Dengue Fever','govind','govind@123','2021-02-25 11:28:33','2021-02-27 12:24:09','AVN20210221121303','Beed','Pune','Pending'),('P20210225122123','Javed Tamboli','javed.tamboli@gmail.com','8369651475','Charoli, Pune.','Blood Infection','javed','javed@123','2021-02-25 06:53:07','2021-02-27 13:15:45','AVN20210221121303','Pune','Delhi','Pending'),('P20210304104634','Arvind Kadam','arvindkadam89@gmail.com','7878787878','Srigonda,Ahmednagar','Cerebral Venus Sinus Thrombosis','arun','arun@12345','2021-03-04 05:17:15','2021-03-04 10:55:51','AVN20210221121303','Ahmednagar','Pune','Pending'),('P20210304110851','Chetan Kadam','chetankadam12@gmail.com','7474747474','MIDC,Ahmednagar','Hepatitis B','chetan','chetan@123','2021-03-04 05:39:35','2021-03-04 11:13:05','AVN20210221085029','Ahmednagar','Pune','Assigned');
/*!40000 ALTER TABLE `tblpatient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
