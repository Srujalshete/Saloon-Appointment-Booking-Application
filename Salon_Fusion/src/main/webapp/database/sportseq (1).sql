-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2023 at 05:13 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportseq`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `uname` varchar(30) DEFAULT NULL,
  `upass` varchar(50) DEFAULT NULL,
  UNIQUE KEY `uname` (`uname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `upass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_no` int NOT NULL AUTO_INCREMENT,
  `subtotal` varchar(10) DEFAULT NULL,
  `gst` varchar(10) DEFAULT NULL,
  `grandtotal` varchar(10) DEFAULT NULL,
  `billdate` date DEFAULT NULL,
  `cuname` varchar(30) DEFAULT NULL,
  `ostatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bill_no`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_no`, `subtotal`, `gst`, `grandtotal`, `billdate`, `cuname`, `ostatus`) VALUES
(22, '140.0', '25', '165', '2023-03-14', 'gauravpatil', 'Delivered'),
(21, '0.0', '0', '0', '2023-03-14', 'roshan', 'Ordered'),
(20, '300.0', '54', '354', '2023-03-14', 'roshan', 'Delivered'),
(19, '180.0', '32', '212', '2023-03-14', 'gauravpatil', 'Delivered'),
(17, '150.0', '27', '177', '2023-03-07', 'dnyanu', 'Delivered'),
(18, '40.0', '7', '47', '2023-03-07', 'aksash', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `companyname` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyname`) VALUES
('Merabharat LLP'),
('GoHard'),
('Shakti Sports'),
('Sports Arcade'),
('Only Play LLP'),
('Super Mat Pvt. Ltd.'),
('AQUA LITE'),
('water purifier'),
('AQUA LITE'),
('AQUA LITE'),
('AQUA LITE'),
('Bislery'),
('AQUA LITE'),
('neel');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `email` varchar(30) DEFAULT NULL,
  `umob` varchar(15) DEFAULT NULL,
  `umsg` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`email`, `umob`, `umsg`) VALUES
('', '', ''),
('ramdas@gmail.com', '9874563210', 'THis is best website to buy products    '),
('neha@gmail.com', '9890262845', 'Best products    '),
('aniket1929@gmai.com', '7709801630', '   how are you'),
('aniket1929@gmai.com', '7709801630', '   how are you'),
('aniket1929@gmai.com', '7709801630', '   how are you'),
('aniket1929@gmai.com', '7709801630', '   how are you'),
('aniket1929@gmai.com', '7709801630', '   how are you'),
('aniket@gmail.com', '7621547862', '    good service'),
('Dnyaneshwae123@gmai.com', '7028193681', '    water is cold\r\n'),
('Dnyaneshwae123@gmai.com', '7028193681', '    water is cold\r\n'),
('deeppatil01061999@gmail.com', '8806447671', '    hello world......');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cmob` varchar(15) NOT NULL,
  `cname` varchar(80) DEFAULT NULL,
  `cadd` varchar(120) DEFAULT NULL,
  `carea` varchar(20) DEFAULT NULL,
  `ccity` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `secq` varchar(200) NOT NULL,
  `ans` varchar(200) NOT NULL,
  PRIMARY KEY (`cmob`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cmob`, `cname`, `cadd`, `carea`, `ccity`, `email`, `uname`, `upass`, `secq`, `ans`) VALUES
('9309193517', 'gaurav patil', 'Pachora', 'read', 'jalgoan', 'vishwajitspatil1929@gmail.com', 'gauravpatil', 'Pass@1234', 'What is your nick name?', 'gaurav'),
('7385921172', 'Akash kanojiya', 'Vadgaon kade, Taluka : Pachora, District : Jalgaon', 'nahre', 'Pune', 'akashkanojiya2799@gmail.com', 'aksash', 'Akash@123', 'What is your nick name?', 'Ash'),
('7028193681', 'Dnyaneshwar', 'simca', 'nahre', 'pune', 'Dnyaneshwae123@gmai.com', 'dnyanu', 'Pass@1234', 'What is your pets name?', 'swity'),
('8806447671', 'vishvajit sharad patil', 'Vadgaon kade, Taluka : Pachora, District : Jalgaon', 'SIOM', 'Pune', 'vishwajitspatil1929@gmail.com', 'vishwapatil', 'Vishwa@1234', 'What is your nick name?', 'KITTU'),
('9130870156', 'Roshan', 'siom,vadgaon(bk)', 'Amegaon', 'pune', 'roshan123@gmail.com', 'roshan', 'roshan@123', 'What is your nick name?', 'raj');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

DROP TABLE IF EXISTS `delivery_address`;
CREATE TABLE IF NOT EXISTS `delivery_address` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `daddress` varchar(200) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `uname` varchar(100) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`aid`, `daddress`, `area`, `city`, `uname`, `pincode`) VALUES
(8, 'siom,vadgaon(bk)', 'Amegaon', 'pune', 'roshan', '000000'),
(7, 'Pachora', 'read', 'jalgoan', 'gauravpatil', '000000');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `feedback_text` varchar(1000) DEFAULT NULL,
  `cuname` varchar(110) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fid`, `feedback_text`, `cuname`) VALUES
(1, 'This is the best sports equipment shopping website', 'pranalid'),
(2, 'roshan will got fist in mca ', 'vishwapatil'),
(3, 'water is very cold', 'dnyanu'),
(4, 'most usable website\r\n', 'gauravpatil'),
(5, 'thand pani add kara rao...', 'roshan');

-- --------------------------------------------------------

--
-- Table structure for table `gamenames`
--

DROP TABLE IF EXISTS `gamenames`;
CREATE TABLE IF NOT EXISTS `gamenames` (
  `gname` varchar(100) DEFAULT NULL,
  `gtype` varchar(100) NOT NULL,
  UNIQUE KEY `gname` (`gname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gamenames`
--

INSERT INTO `gamenames` (`gname`, `gtype`) VALUES
('uol', 'Indoor');

-- --------------------------------------------------------

--
-- Table structure for table `pay_method`
--

DROP TABLE IF EXISTS `pay_method`;
CREATE TABLE IF NOT EXISTS `pay_method` (
  `bno` int DEFAULT NULL,
  `pay_method` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pay_method`
--

INSERT INTO `pay_method` (`bno`, `pay_method`) VALUES
(9, 'COD'),
(9, 'COD'),
(10, 'tushar@sbi.com'),
(11, ''),
(12, 'shraddha@oksbi'),
(19, '6544464646565'),
(19, '6544464646565'),
(20, 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bprice` varchar(10) DEFAULT NULL,
  `pcompany` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pdesc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bimg` varchar(100) DEFAULT NULL,
  `bcat` varchar(30) DEFAULT NULL,
  `p_origin_country` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `manu_year` int DEFAULT NULL,
  `gamename` varchar(40) DEFAULT NULL,
  `bqty` int DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `pname`, `bprice`, `pcompany`, `pdesc`, `bimg`, `bcat`, `p_origin_country`, `manu_year`, `gamename`, `bqty`) VALUES
(30, 'Aqua Lite bottle 10ltr', '45', 'AQUA', ' pure', 'wa10.JPG', 'General', 'Other', 12, 'General', 76),
(27, 'Aqua Lite bottle 3ltr', '30', 'AQUA', ' pure', 'wa3.JPG', 'General', 'other', 12, 'General', 150),
(28, 'Aqua Lite bottle 1ltr', '15', 'AQUA', ' pure', 'WA1.JPG', 'General', 'other', 12, 'General', 281),
(29, 'Aqua Lite bottle 5ltr', '35', 'AQUA', ' pure', 'Wa5.JPG', 'General', 'other', 12, 'General', 196),
(26, 'Aqua Lite bottle 500ml', '20', 'AQUA', ' pure', 'WA500JPG.webp', 'General', 'other', 12, 'General', 100),
(25, 'Aqua Lite bottle 200ml', '10', 'AQUA', ' pure water', 'wa200.JPG', 'General', 'other', 22, 'General', 60),
(34, 'Aqua Lite bottle jar 20ltr', '60', 'AQUA', ' pure', 'JAr20.JPG', 'General', 'Other', 12, 'General', 85),
(31, 'Aqua Lite bottle 20ltr', '55', 'AQUA', ' pure', 'wa20.JPG', 'General', 'other', 22, 'General', 25),
(32, 'Aqua Lite bottle 15ltr', '50', 'AQUA', ' pure', 'wa15.JPG', 'General', 'other', 12, 'General', 60),
(33, 'Aqua Lite bottle 25ltr', '60', 'AQUA', ' pure', 'wa25.JPG', 'General', 'other', 12, 'General', 130);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `pqty` int DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`sid`, `pid`, `pqty`, `sdate`) VALUES
(1, 4, 10, '2022-08-13'),
(2, 4, 10, '2022-08-13'),
(3, 4, 1, '2022-08-13'),
(4, 6, 100, '2022-08-19'),
(5, 16, 10, '2023-02-27'),
(6, NULL, 60, '2023-03-07'),
(7, NULL, 60, '2023-03-07'),
(8, 29, 100, '2023-03-14'),
(9, NULL, 60, '2023-03-14'),
(10, NULL, 70, '2023-03-14'),
(11, NULL, 200, '2023-03-14'),
(12, NULL, 50, '2023-03-14'),
(13, NULL, 50, '2023-03-14'),
(14, NULL, 30, '2023-03-14'),
(15, NULL, 54, '2023-03-14'),
(16, NULL, 82, '2023-03-14'),
(17, 29, 100, '2023-03-14'),
(18, 28, 122, '2023-03-14'),
(19, 30, 50, '2023-03-14'),
(20, 31, 25, '2023-03-14'),
(21, 33, 100, '2023-03-14'),
(22, 27, 50, '2023-03-14'),
(23, 26, 100, '2023-03-14'),
(24, 32, 60, '2023-03-14'),
(25, 25, 60, '2023-03-14'),
(26, 34, 90, '2023-03-14'),
(27, 28, 100, '2023-03-14'),
(28, 28, 60, '2023-03-14'),
(29, 27, 100, '2023-03-14'),
(30, 30, 30, '2023-03-14'),
(31, 33, 30, '2023-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `temp_cart`
--

DROP TABLE IF EXISTS `temp_cart`;
CREATE TABLE IF NOT EXISTS `temp_cart` (
  `tcid` int NOT NULL AUTO_INCREMENT,
  `cuname` varchar(30) DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `pname` varchar(100) NOT NULL,
  `ostatus` varchar(20) DEFAULT NULL,
  `itemprice` double NOT NULL,
  `oqty` int DEFAULT NULL,
  `bno` int DEFAULT '0',
  PRIMARY KEY (`tcid`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `temp_cart`
--

INSERT INTO `temp_cart` (`tcid`, `cuname`, `pid`, `pname`, `ostatus`, `itemprice`, `oqty`, `bno`) VALUES
(54, 'gauravpatil', 29, 'Aqua Lite bottle 5ltr', 'Delivered', 35, 4, 22),
(52, 'gauravpatil', 30, 'Aqua Lite bottle 10ltr', 'Delivered', 45, 4, 19),
(53, 'roshan', 34, 'Aqua Lite bottle jar 20ltr', 'Delivered', 60, 5, 20),
(51, 'vishwapatil', 28, 'Aqua Lite bottle 1ltr', 'Delivered', 15, 1, 19);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
