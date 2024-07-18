/*
SQLyog Ultimate v8.82 
MySQL - 5.1.50-community : Database - restaurant
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`restaurant` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `restaurant`;

/*Table structure for table `order_item` */

DROP TABLE IF EXISTS `order_item`;

CREATE TABLE `order_item` (
  `oit_number` varchar(100) NOT NULL,
  `oit_name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `cost` double NOT NULL,
  PRIMARY KEY (`oit_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `order_item` */

insert  into `order_item`(`oit_number`,`oit_name`,`price`,`cost`) values ('1','rice',300,250),('2','Full Thaal',350,250),('3','Chowmin',2,200);

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `sin` varchar(150) NOT NULL,
  `total` double NOT NULL,
  `cash` double NOT NULL,
  `balance` double NOT NULL,
  `cost` double NOT NULL,
  `profit` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`sin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`sin`,`total`,`cash`,`balance`,`cost`,`profit`,`date`,`time`) values ('SI1001',820,1000,180,585,235,'2018-09-04','09:39:41'),('SI1000',2340,2500,160,1780,560,'2018-09-04','09:35:04');

/*Table structure for table `receivestock` */

DROP TABLE IF EXISTS `receivestock`;

CREATE TABLE `receivestock` (
  `receive_no` varchar(10) NOT NULL,
  `receive_date` varchar(25) DEFAULT NULL,
  `item_number` varchar(25) NOT NULL,
  `item_name` varchar(25) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `quentity` double DEFAULT NULL,
  `expire_date` varchar(25) DEFAULT NULL,
  `buying_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `mark` int(5) NOT NULL,
  PRIMARY KEY (`receive_no`,`item_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `receivestock` */

insert  into `receivestock`(`receive_no`,`receive_date`,`item_number`,`item_name`,`description`,`quentity`,`expire_date`,`buying_price`,`selling_price`,`total_price`,`mark`) values ('RN1000','2018- 09-04','1','water','add description',45,'2018-09-29',85,120,4250,1),('RN1001','2018- 09-04','2','biscut','any',148,'2019-09-03',120,150,18000,1);

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `sin` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `itno` varchar(50) NOT NULL,
  `itname` varchar(100) NOT NULL,
  `unprice` double NOT NULL,
  `quntity` double NOT NULL,
  `total` double NOT NULL,
  `cost` double NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

/*Data for the table `sale` */

insert  into `sale`(`tid`,`sin`,`date`,`time`,`itno`,`itname`,`unprice`,`quntity`,`total`,`cost`) values (96,'SI1002','2018-9-4','9:56:9','2','biscut',150,2,300,240),(95,'SI1002','2018-9-4','9:56:3','1','water',120,5,600,425),(94,'SI1002','2018-9-4','9:55:0','1','water',120,5,600,425),(93,'SI1001','2018-9-4','9:38:11','2','Kottu',350,2,700,500),(92,'SI1001','2018-9-4','9:38:7','1','water',120,1,120,85),(91,'SI1000','2018-9-4','9:34:47','2','biscut',150,3,450,360),(90,'SI1000','2018-9-4','9:34:38','1','water',120,2,240,170),(89,'SI1000','2018-9-4','9:30:19','2','Kottu',350,3,1050,750),(88,'SI1000','2018-9-4','9:29:23','1','rice',300,2,600,500);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
