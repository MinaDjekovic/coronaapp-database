/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 10.1.38-MariaDB : Database - rmtdomaci
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rmtdomaci` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `rmtdomaci`;

/*Table structure for table `korisnik` */

DROP TABLE IF EXISTS `korisnik`;

CREATE TABLE `korisnik` (
  `korisnikID` int(11) NOT NULL AUTO_INCREMENT,
  `ime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prezime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `korisnickoIme` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lozinka` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pol` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stanje` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poslednjaPrijava` datetime DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`korisnikID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `korisnik` */

insert  into `korisnik`(`korisnikID`,`ime`,`prezime`,`korisnickoIme`,`lozinka`,`pol`,`email`,`stanje`,`poslednjaPrijava`,`admin`) values 
(2,'Marko','Markovic','Marko','marko1','muski','mare@gmail.com','pozitivan','2021-01-01 00:00:00',0),
(3,'Mirko','Mirkovic','mirko','mirko','muski','mirko@gmail.com','negativan','2021-01-01 00:00:00',0),
(4,'Admin','Admin','admin','admin123','muski','admin@gmaail.com','negativan','2021-01-02 00:00:00',1),
(5,'Nemanja','Nemanjic','Nemanja','nemanja','muski','nemanja@gmail.com','negativan','2021-01-02 00:00:00',0),
(6,'Bojan','Bojanic','bojan','bojan','muski','bojan@gmail.com','pozitivan','2021-01-02 00:00:00',0),
(7,'Mitar','Mitrovic','mitar','mitar','muski','mitar@gmail.com','negativan','2021-01-02 00:00:00',0),
(8,'Marija','Maric','marija','marija','zenski','maki@gmail.com','negativan','2021-01-02 00:00:00',0),
(9,'Milena','Milenic','milena','milena','zenski','mili@gmail.com','negativan','2021-01-02 00:00:00',0);

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `testID` int(11) NOT NULL AUTO_INCREMENT,
  `tip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `pozitivan` tinyint(1) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `korisnikID` int(11) DEFAULT NULL,
  PRIMARY KEY (`testID`),
  KEY `fk_korisnik` (`korisnikID`),
  CONSTRAINT `fk_korisnik` FOREIGN KEY (`korisnikID`) REFERENCES `korisnik` (`korisnikID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `test` */

insert  into `test`(`testID`,`tip`,`datum`,`pozitivan`,`status`,`korisnikID`) values 
(2,'samoprocena','2021-01-01',1,'gotov',2),
(3,'brzi','2021-01-01',1,'gotov',2),
(10,'PCR','2021-01-01',1,'gotov',2),
(11,'samoprocena','2021-01-02',1,'gotov',2),
(12,'brzi','2021-01-02',1,'gotov',2),
(14,'samoprocena','2021-01-02',0,'gotov',3),
(15,'PCR','2021-01-02',1,'gotov',3),
(16,'brzi','2021-01-02',0,'gotov',3),
(17,'samoprocena','2021-01-02',1,'gotov',5),
(18,'brzi','2021-01-02',1,'gotov',5),
(20,'samoprocena','2021-01-02',1,'gotov',6),
(21,'brzi','2021-01-02',0,'gotov',6),
(24,'samoprocena','2021-01-02',1,'gotov',7),
(25,'brzi','2021-01-02',0,'gotov',7),
(27,'samoprocena','2021-01-02',0,'gotov',8),
(29,'brzi','2021-01-02',1,'gotov',8),
(35,'PCR','2021-01-02',1,'gotov',6),
(36,'samoprocena','2021-01-02',1,'gotov',9),
(37,'brzi','2021-01-02',0,'gotov',9),
(38,'PCR','2021-01-02',0,'gotov',9),
(39,'PCR','2021-01-02',0,'gotov',5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
