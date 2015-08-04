-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 03, 2015 at 04:14 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kiron`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `ac_number` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `balance` float NOT NULL,
  `ac_open_date` date NOT NULL,
  `account_type` varchar(45) NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ac_number`),
  KEY `branch_id_idx` (`branch_id`),
  KEY `customer_id_idx` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ac_number`, `balance`, `ac_open_date`, `account_type`, `branch_id`, `customer_id`) VALUES
(1, 5400, '2015-07-05', 'Savings', 9, 13),
(2, 8464, '2014-12-12', 'Savings', 4, 94),
(3, 1709, '2015-10-24', 'Current', 8, 85),
(4, 5675, '2014-10-13', 'Current', 2, 38),
(5, 6996, '2015-10-04', 'Current', 1, 20),
(6, 2156, '2014-12-21', 'Current', 2, 55),
(7, 6563, '2015-05-02', 'Current', 8, 28),
(8, 5202, '2016-02-06', 'Current', 4, 95),
(9, 7022, '2014-04-07', 'Current', 9, 19),
(10, 1287, '2016-01-11', 'Savings', 4, 77),
(11, 3614, '2015-02-04', 'Current', 9, 14),
(12, 7977, '2014-10-23', 'Current', 3, 18),
(13, 8789, '2014-04-13', 'Current', 9, 27),
(14, 1696, '2015-12-11', 'Current', 2, 32),
(15, 5804, '2014-06-20', 'Current', 5, 22),
(16, 7673, '2015-04-14', 'Savings', 8, 15),
(17, 5853, '2014-05-27', 'Current', 6, 6),
(18, 9340, '2015-09-21', 'Current', 10, 7),
(19, 1558, '2014-06-25', 'Savings', 2, 53),
(20, 8199, '2016-03-20', 'Savings', 4, 5),
(21, 8483, '2014-06-19', 'Savings', 3, 42),
(22, 8576, '2016-02-10', 'Current', 6, 36),
(23, 2656, '2014-09-12', 'Current', 10, 60),
(24, 5147, '2016-02-26', 'Savings', 8, 75),
(25, 8394, '2015-09-17', 'Savings', 2, 64),
(26, 4055, '2016-03-13', 'Current', 10, 19),
(27, 5493, '2015-12-14', 'Current', 7, 49),
(28, 9174, '2014-10-03', 'Savings', 2, 93),
(29, 9592, '2016-02-27', 'Savings', 3, 53),
(30, 1903, '2015-01-12', 'Current', 5, 72),
(31, 6710, '2015-09-15', 'Current', 4, 51),
(32, 4856, '2016-01-29', 'Current', 5, 34),
(33, 2267, '2016-01-29', 'Current', 7, 54),
(34, 6657, '2016-02-13', 'Savings', 3, 10),
(35, 1173, '2015-12-05', 'Current', 5, 84),
(36, 3639, '2014-04-22', 'Savings', 8, 48),
(37, 3423, '2014-05-06', 'Savings', 2, 59),
(38, 7554, '2015-10-31', 'Savings', 10, 10),
(39, 7560, '2015-11-27', 'Savings', 7, 30),
(40, 5494, '2015-09-13', 'Savings', 7, 38),
(41, 6561, '2014-10-05', 'Savings', 10, 31),
(42, 4139, '2015-07-14', 'Current', 7, 7),
(43, 3067, '2016-02-20', 'Current', 9, 10),
(44, 7135, '2016-03-08', 'Current', 5, 80),
(45, 3910, '2014-10-09', 'Savings', 5, 76),
(46, 2378, '2014-09-09', 'Savings', 9, 39),
(47, 7424, '2014-07-03', 'Current', 2, 78),
(48, 9228, '2016-01-27', 'Current', 3, 98),
(49, 3614, '2015-10-06', 'Savings', 9, 14),
(50, 1391, '2015-06-28', 'Current', 8, 38);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_area` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `city_id`, `area`) VALUES
(1, 1, 'Gulshan'),
(2, 2, 'Agargaon'),
(3, 3, 'Banani'),
(4, 4, 'Dhanmondi'),
(5, 5, 'Baily Road'),
(6, 2, 'GEC');

-- --------------------------------------------------------

--
-- Table structure for table `bank_branch`
--

CREATE TABLE IF NOT EXISTS `bank_branch` (
  `branch_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bank_branch`
--

INSERT INTO `bank_branch` (`branch_id`, `location`) VALUES
(1, 'Gulshan'),
(2, 'Dhanmondi'),
(3, 'Mohakhali'),
(4, 'Wari'),
(5, 'Motijheel'),
(6, 'Ramupra'),
(7, 'Banani'),
(8, 'Bansree'),
(9, 'Baily Road'),
(10, 'Shantinagar');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city`) VALUES
(1, 'Dhaka'),
(2, 'Chittagong'),
(3, 'Sylhet'),
(4, 'Rajshahi'),
(5, 'Barishal');

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE IF NOT EXISTS `credit_card` (
  `cc_number` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cc_balance` float unsigned NOT NULL,
  `expired_date` time NOT NULL,
  `limit` float unsigned NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cc_number`),
  KEY `branch_id_idx` (`branch_id`),
  KEY `customer_id_idx` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`cc_number`, `cc_balance`, `expired_date`, `limit`, `branch_id`, `customer_id`) VALUES
(1, 956009, '03:49:34', 978445, 9, 83),
(2, 504970, '15:29:24', 745062, 6, 84),
(3, 96382, '13:57:18', 859917, 7, 52),
(4, 482248, '22:46:21', 637207, 7, 49),
(5, 746436, '07:40:54', 854700, 3, 43),
(6, 776459, '03:21:39', 354300, 2, 14),
(7, 270304, '05:18:05', 487054, 10, 93),
(8, 595473, '00:26:44', 364325, 3, 39),
(9, 399227, '13:13:30', 984682, 3, 72),
(10, 608418, '04:06:13', 461541, 9, 85),
(11, 880500, '19:50:03', 854169, 9, 1),
(12, 607969, '03:25:19', 881543, 5, 14),
(13, 397603, '14:43:37', 545544, 8, 4),
(14, 383492, '11:34:11', 435064, 3, 34),
(15, 980285, '03:33:24', 184194, 8, 63),
(16, 751681, '17:52:37', 1.10492e+006, 8, 93),
(17, 202952, '16:04:46', 286203, 9, 7),
(18, 981607, '03:42:13', 115425, 1, 79),
(19, 883242, '14:58:52', 281054, 2, 40),
(20, 690760, '19:37:12', 477971, 4, 25),
(21, 197334, '00:01:16', 379230, 8, 16),
(22, 584551, '17:05:36', 402989, 3, 59),
(23, 866838, '07:02:23', 352926, 10, 41),
(24, 397615, '23:46:00', 1.00186e+006, 3, 73),
(25, 590460, '03:59:22', 280098, 1, 45),
(26, 990275, '22:41:14', 295898, 10, 35),
(27, 393998, '06:59:33', 1.13621e+006, 4, 36),
(28, 161604, '19:26:05', 868075, 4, 13),
(29, 552672, '00:38:35', 599860, 7, 71),
(30, 57144, '04:49:55', 744704, 10, 6),
(31, 415256, '21:29:00', 1.10343e+006, 7, 43),
(32, 982002, '01:42:43', 1.03697e+006, 3, 71),
(33, 632359, '17:26:42', 356974, 6, 62),
(34, 608821, '20:47:24', 775104, 8, 93),
(35, 484215, '12:43:34', 657500, 6, 42),
(36, 842131, '20:55:01', 633164, 9, 19),
(37, 354570, '10:01:21', 203756, 6, 42),
(38, 645774, '04:27:52', 920535, 5, 29),
(39, 491970, '08:00:25', 366615, 4, 28),
(40, 182235, '22:55:15', 1.09751e+006, 8, 57),
(41, 169374, '09:56:59', 770356, 6, 49),
(42, 407293, '19:30:43', 184496, 3, 16),
(43, 725396, '22:25:43', 1.17703e+006, 1, 74),
(44, 873475, '23:55:27', 182038, 9, 18),
(45, 776767, '02:37:51', 1.07481e+006, 2, 97),
(46, 871347, '09:02:54', 901221, 7, 23),
(47, 592959, '22:26:10', 757496, 2, 39),
(48, 973413, '13:20:32', 685295, 5, 5),
(49, 220314, '20:35:14', 1.1774e+006, 4, 37),
(50, 210295, '14:51:15', 525360, 5, 78);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` int(10) unsigned NOT NULL,
  `gender` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `age` int(11) NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `address` varchar(45) NOT NULL,
  `customer_csm_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_csm_id_idx` (`customer_csm_id`),
  KEY `customer_branch_id_idx` (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `username`, `password`, `name`, `phone`, `gender`, `birthdate`, `age`, `branch_id`, `address`, `customer_csm_id`) VALUES
(1, 'Rhonda', 'Jenette', 'Chen', 880, 'Male', '1991-07-09', 56, 8, 'Ap #891-1652 Nec Ave', 6),
(2, 'Cara', 'Colton', 'Rowland', 880, 'Female', '1964-12-27', 46, 1, 'Ap #707-9951 Sit Av.', 2),
(3, 'Basil', 'Gannon', 'Duran', 880, 'Female', '1973-10-15', 38, 4, 'Ap #757-5428 In St.', 17),
(4, 'Naomi', 'Martina', 'Simpson', 880, 'Female', '1996-02-15', 42, 3, '967-447 Malesuada Road', 22),
(5, 'Graham', 'Forrest', 'Jenkins', 880, 'Male', '1978-03-26', 69, 7, '568-1527 Faucibus Rd.', 10),
(6, 'Hayes', 'Odette', 'Hancock', 880, 'Male', '1983-05-10', 61, 10, '443-1135 Dictum Street', 8),
(7, 'Uta', 'Zachary', 'Wood', 880, 'Male', '1992-07-18', 65, 6, '5948 Quis Road', 29),
(8, 'Jordan', 'Zahir', 'Hale', 880, 'Female', '1987-06-05', 40, 8, '147-5940 Eu Avenue', 25),
(9, 'Upton', 'Elaine', 'Willis', 880, 'Male', '1983-02-20', 38, 2, '5087 Integer St.', 13),
(10, 'David', 'Mariko', 'Hawkins', 880, 'Female', '1962-07-28', 28, 2, '2372 Aenean Rd.', 30),
(11, 'Penelope', 'Rowan', 'Crane', 880, 'Female', '1980-11-01', 44, 3, '717-4926 Luctus Rd.', 17),
(12, 'Anastasia', 'Dakota', 'Sheppard', 880, 'Female', '1976-06-08', 31, 2, 'P.O. Box 419, 4427 Dictum. St.', 4),
(13, 'Nola', 'Regina', 'Robles', 880, 'Male', '1965-02-15', 37, 6, '7638 Ornare St.', 12),
(14, 'Rooney', 'David', 'Sherman', 880, 'Female', '1988-09-14', 43, 10, 'P.O. Box 444, 1021 Mollis St.', 21),
(15, 'Oren', 'Cameron', 'Rodriguez', 880, 'Female', '1962-04-10', 68, 8, 'Ap #836-1210 Erat. Street', 30),
(16, 'Veda', 'Clark', 'Lynn', 880, 'Female', '1978-03-17', 20, 1, 'Ap #135-6635 Sed Ave', 14),
(17, 'Palmer', 'Patrick', 'Cline', 880, 'Male', '1982-06-10', 40, 10, '639-4395 Eget Road', 7),
(18, 'Xaviera', 'Aaron', 'Watkins', 880, 'Male', '1996-06-05', 36, 9, 'Ap #466-5476 Nostra, Street', 4),
(19, 'Caesar', 'Keiko', 'Dudley', 880, 'Female', '1979-08-14', 56, 5, '9298 Ultricies Av.', 19),
(20, 'Wyatt', 'Charissa', 'Lynn', 880, 'Female', '1962-12-14', 68, 5, 'P.O. Box 633, 6307 Proin St.', 4),
(21, 'Jonas', 'Phelan', 'Walker', 880, 'Male', '1968-08-11', 23, 4, '936-9185 Ipsum St.', 3),
(22, 'Bevis', 'Dalton', 'Reed', 880, 'Male', '1991-10-23', 70, 2, '7769 Natoque Rd.', 10),
(23, 'Molly', 'Mercedes', 'Vasquez', 880, 'Female', '1999-08-25', 65, 7, '1026 Consequat Rd.', 21),
(24, 'Leo', 'Phyllis', 'Keith', 880, 'Female', '1964-06-22', 45, 3, 'Ap #487-8030 Vel Ave', 12),
(25, 'Yasir', 'Mark', 'Matthews', 880, 'Female', '1997-11-01', 63, 1, '455-2156 Gravida Avenue', 10),
(26, 'Kaseem', 'Fritz', 'Woodward', 880, 'Female', '1991-07-19', 39, 1, '1679 Commodo Av.', 6),
(27, 'Zephania', 'Demetria', 'Kirk', 880, 'Female', '1997-09-10', 43, 3, 'P.O. Box 725, 3899 Et, Ave', 15),
(28, 'Lucius', 'Aiko', 'Dunlap', 880, 'Female', '1994-08-25', 56, 7, '7323 Tellus Rd.', 9),
(29, 'Aimee', 'Linda', 'Dorsey', 880, 'Male', '1969-05-13', 21, 2, 'Ap #866-9405 Arcu Avenue', 4),
(30, 'Maxwell', 'Hilary', 'Miller', 880, 'Male', '1978-01-05', 64, 6, 'Ap #970-8592 Vulputate St.', 4),
(31, 'Jarrod', 'Nevada', 'Avila', 880, 'Female', '1987-03-11', 60, 6, 'Ap #707-8197 Non, Rd.', 11),
(32, 'Inga', 'Kane', 'Cooper', 880, 'Male', '1961-05-10', 54, 6, 'Ap #361-9276 Nunc Ave', 18),
(33, 'Illiana', 'Miriam', 'Christensen', 880, 'Female', '1965-07-15', 60, 7, '1451 Egestas Street', 12),
(34, 'Zephr', 'Olga', 'Maldonado', 880, 'Female', '1987-09-04', 23, 8, '9096 Dui Road', 4),
(35, 'Drew', 'Bertha', 'Velazquez', 880, 'Male', '1985-03-09', 31, 1, 'P.O. Box 999, 2503 Sit Rd.', 25),
(36, 'Alexa', 'Vivien', 'Good', 880, 'Male', '1986-09-29', 49, 8, '868-7424 Urna. Av.', 26),
(37, 'Hamilton', 'Lilah', 'Ferguson', 880, 'Male', '1999-03-21', 24, 5, 'Ap #742-2838 Sem Rd.', 2),
(38, 'Alvin', 'Ria', 'Poole', 880, 'Female', '1972-12-06', 22, 7, '650-7746 Euismod Road', 19),
(39, 'Michael', 'Tarik', 'Bryant', 880, 'Male', '1987-03-07', 60, 1, 'P.O. Box 975, 6739 Sem Rd.', 28),
(40, 'Kai', 'Noble', 'Buck', 880, 'Male', '1995-05-28', 64, 5, 'P.O. Box 147, 3060 Consectetuer, St.', 11),
(41, 'Yasir', 'Fay', 'Hardin', 880, 'Male', '1972-04-10', 68, 1, 'Ap #459-7146 Lorem Rd.', 24),
(42, 'Hedy', 'Macaulay', 'Keith', 880, 'Male', '1992-12-13', 54, 9, '8906 Consequat Avenue', 17),
(43, 'Rigel', 'Brenna', 'Barry', 880, 'Female', '1980-11-10', 48, 10, 'Ap #350-4224 Ultrices St.', 1),
(44, 'Amelia', 'Samuel', 'Chapman', 880, 'Female', '1998-07-13', 44, 5, '405-4208 Rutrum, St.', 11),
(45, 'Ali', 'Cole', 'Flynn', 880, 'Male', '1999-02-09', 56, 8, 'Ap #423-6307 Ipsum. Rd.', 4),
(46, 'Jordan', 'Sydney', 'Abbott', 880, 'Male', '1972-12-31', 39, 8, '971-9850 Dui. Ave', 29),
(47, 'Jack', 'Lana', 'Wheeler', 880, 'Female', '1980-09-21', 57, 10, '590-4117 Inceptos St.', 18),
(48, 'Baker', 'Kylee', 'Wiley', 880, 'Male', '1996-06-03', 53, 6, 'P.O. Box 801, 5486 Vitae Road', 27),
(49, 'Shelley', 'Stephanie', 'Anderson', 880, 'Female', '1963-09-25', 24, 7, 'Ap #884-693 Nec Rd.', 21),
(50, 'Lavinia', 'Sylvia', 'Morse', 880, 'Female', '1979-01-06', 32, 2, 'P.O. Box 293, 3088 Nisi Street', 8),
(51, 'Giacomo', 'Octavia', 'Mcknight', 880, 'Female', '1999-04-28', 21, 1, 'P.O. Box 824, 6045 Tellus Ave', 23),
(52, 'Quemby', 'Olga', 'Kelly', 880, 'Female', '1999-03-11', 55, 4, 'Ap #601-1669 Eu St.', 23),
(53, 'Hedda', 'Lyle', 'Snow', 880, 'Male', '1963-04-06', 39, 8, 'Ap #450-3521 Vestibulum, Avenue', 4),
(54, 'Allegra', 'Grady', 'Sweet', 880, 'Female', '1965-04-29', 33, 8, 'P.O. Box 419, 662 Nec, Ave', 1),
(55, 'Arthur', 'Aileen', 'Ball', 880, 'Female', '1981-04-10', 69, 5, '474-1788 Nisi Av.', 10),
(56, 'Donna', 'Lara', 'Chavez', 880, 'Female', '1967-03-08', 67, 3, 'Ap #357-984 Augue Avenue', 14),
(57, 'Petra', 'Derek', 'Pope', 880, 'Female', '1986-03-05', 45, 5, 'P.O. Box 643, 6367 Sit Avenue', 4),
(58, 'Melinda', 'Brendan', 'Lane', 880, 'Male', '1976-05-10', 38, 1, '1623 Penatibus Rd.', 8),
(59, 'Cooper', 'Abdul', 'Terry', 880, 'Male', '1962-12-07', 62, 3, 'Ap #227-4933 Nullam St.', 8),
(60, 'Nicole', 'Merrill', 'Nunez', 880, 'Male', '1962-10-22', 24, 1, '679-4927 Nullam Rd.', 14),
(61, 'Hammett', 'Casey', 'Carver', 880, 'Female', '1986-11-10', 36, 1, '816-9027 Nunc, Rd.', 30),
(62, 'Keith', 'Alana', 'Moon', 880, 'Female', '1990-11-12', 62, 10, '5414 Euismod Ave', 2),
(63, 'Kasimir', 'Meghan', 'Bailey', 880, 'Male', '1966-03-25', 48, 10, '7618 Cras Street', 9),
(64, 'Ferdinand', 'Jermaine', 'Harding', 880, 'Female', '1978-10-20', 36, 1, '8582 Dignissim St.', 19),
(65, 'Herrod', 'Amanda', 'Sutton', 880, 'Male', '1987-08-29', 49, 2, '296-7243 Felis Road', 11),
(66, 'Ferris', 'Hasad', 'Baker', 880, 'Female', '1975-06-14', 69, 3, 'Ap #489-3779 Massa St.', 14),
(67, 'Ariel', 'Jeremy', 'Frank', 880, 'Male', '1996-08-23', 35, 7, '1023 Parturient Road', 13),
(68, 'Shelby', 'Suki', 'Finley', 880, 'Male', '1979-03-17', 28, 1, 'Ap #799-6777 Consectetuer Ave', 6),
(69, 'Kermit', 'Catherine', 'Davidson', 880, 'Female', '1983-04-24', 46, 1, 'Ap #896-8329 Proin Street', 29),
(70, 'Demetrius', 'Quinn', 'William', 880, 'Female', '1976-11-19', 59, 10, 'Ap #973-9040 Nullam Road', 27),
(71, 'Chiquita', 'Indira', 'Christian', 880, 'Male', '1961-09-02', 24, 5, '873-7780 Ante Rd.', 27),
(72, 'Arden', 'Peter', 'Reeves', 880, 'Female', '1985-01-12', 48, 9, '194-8487 Neque. Ave', 11),
(73, 'Blythe', 'Ayanna', 'Baird', 880, 'Male', '1972-09-06', 41, 2, '164-6509 Ridiculus St.', 28),
(74, 'Noah', 'Roanna', 'Huber', 880, 'Male', '1999-06-24', 23, 3, '2807 Non, Street', 1),
(75, 'Nina', 'Janna', 'Harvey', 880, 'Female', '1992-01-07', 20, 6, '684-342 Nulla Avenue', 4),
(76, 'Brenna', 'Melissa', 'Nicholson', 880, 'Male', '1984-11-29', 57, 2, 'P.O. Box 954, 4067 Primis Avenue', 6),
(77, 'Lester', 'Wang', 'Morris', 880, 'Male', '1977-06-28', 30, 5, '927-4785 Fermentum Avenue', 21),
(78, 'Harrison', 'Kalia', 'Mcbride', 880, 'Female', '1968-02-18', 65, 8, 'P.O. Box 789, 8492 Et Road', 19),
(79, 'Jayme', 'Elijah', 'Erickson', 880, 'Female', '1993-01-18', 66, 10, 'P.O. Box 931, 9568 Vulputate St.', 13),
(80, 'September', 'Whitney', 'Todd', 880, 'Female', '1999-01-17', 62, 3, 'P.O. Box 613, 8524 Mauris Av.', 7),
(81, 'Damian', 'Sarah', 'Koch', 880, 'Male', '1997-03-05', 30, 10, '3500 Nam St.', 9),
(82, 'Raven', 'Oren', 'Terrell', 880, 'Female', '1975-02-07', 41, 6, 'Ap #400-8206 Consectetuer Street', 22),
(83, 'Quentin', 'Philip', 'Britt', 880, 'Male', '1964-08-12', 65, 4, '892-7853 Litora Rd.', 30),
(84, 'Mara', 'Vaughan', 'Berry', 880, 'Male', '1961-07-07', 26, 9, 'P.O. Box 289, 7321 Rutrum Ave', 17),
(85, 'Salvador', 'Avye', 'Valenzuela', 880, 'Male', '1982-12-17', 67, 7, 'Ap #948-8130 Mauris. Ave', 23),
(86, 'Odysseus', 'Jamal', 'Sears', 880, 'Female', '1971-06-26', 58, 3, 'P.O. Box 221, 8078 Et, Rd.', 20),
(87, 'Jordan', 'Dorothy', 'Schwartz', 880, 'Female', '1987-05-17', 30, 10, 'P.O. Box 285, 5579 Lacus Road', 1),
(88, 'Flynn', 'Harper', 'Morrison', 880, 'Male', '1979-01-04', 43, 3, '485-5900 Ligula Street', 16),
(89, 'Xandra', 'Linus', 'Moss', 880, 'Female', '1985-07-04', 50, 8, 'Ap #441-6890 Facilisis St.', 6),
(90, 'Brennan', 'Jolie', 'Charles', 880, 'Female', '1997-09-09', 56, 9, 'P.O. Box 298, 7113 Interdum Av.', 28),
(91, 'Audrey', 'Josephine', 'Moreno', 880, 'Female', '1992-02-16', 61, 6, '4320 Phasellus Ave', 3),
(92, 'Magee', 'Maisie', 'Savage', 880, 'Female', '1977-07-13', 69, 4, '782-309 Rhoncus. Street', 9),
(93, 'Denton', 'Buckminster', 'Mccall', 880, 'Female', '1964-02-26', 45, 1, '691-6918 Nisi Street', 15),
(94, 'Ora', 'Brianna', 'Bridges', 880, 'Male', '1996-12-19', 66, 5, 'Ap #870-3200 Quam Street', 2),
(95, 'Clayton', 'Cora', 'Becker', 880, 'Female', '1980-10-15', 26, 5, 'P.O. Box 372, 4183 Luctus Av.', 11),
(96, 'Gemma', 'Nelle', 'Wells', 880, 'Male', '1994-11-12', 37, 3, '354-4294 Sollicitudin Rd.', 17),
(97, 'Lev', 'Harper', 'Sellers', 880, 'Female', '1962-04-15', 37, 4, '9553 Vivamus Rd.', 22),
(98, 'Keith', 'Hamilton', 'Santos', 880, 'Female', '1964-04-21', 57, 10, '8359 Et St.', 30),
(99, 'Chelsea', 'Joan', 'Whitehead', 880, 'Female', '1990-05-11', 68, 5, '151-5273 Sem Street', 3),
(100, 'Reuben', 'Gloria', 'Mccormick', 880, 'Male', '1963-09-10', 57, 4, 'Ap #751-5864 Duis Street', 17);

-- --------------------------------------------------------

--
-- Table structure for table `customer_service_manager`
--

CREATE TABLE IF NOT EXISTS `customer_service_manager` (
  `employee_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `start_date` date NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `csm_branch_id_idx` (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `customer_service_manager`
--

INSERT INTO `customer_service_manager` (`employee_id`, `first_name`, `middle_name`, `last_name`, `location`, `start_date`, `branch_id`) VALUES
(1, 'Plato', 'Beck', 'Craig', '8914 Justo Road', '2014-10-12', 1),
(2, 'Ulric', 'Naida', 'Becker', 'Ap #634-7800 Euismod Rd.', '2014-10-14', 7),
(3, 'Kelsie', 'Daquan', 'Bentley', 'P.O. Box 646, 815 Amet, Av.', '2015-08-08', 7),
(4, 'Nigel', 'Fletcher', 'Mullins', 'P.O. Box 267, 6700 Tellus Road', '2014-07-01', 4),
(5, 'Lani', 'Bryar', 'Heath', '4115 Non, Av.', '2015-07-07', 2),
(6, 'Brian', 'Yvonne', 'Cline', 'Ap #471-8451 Nonummy Avenue', '2015-03-06', 5),
(7, 'Victoria', 'Germaine', 'Nichols', 'P.O. Box 724, 888 Magna Avenue', '2015-03-22', 6),
(8, 'Fulton', 'Cheyenne', 'Hammond', 'P.O. Box 570, 6856 Gravida Av.', '2015-07-10', 10),
(9, 'Alyssa', 'Ivor', 'Sosa', '3258 Sed St.', '2015-04-07', 8),
(10, 'Fallon', 'Sybil', 'West', 'Ap #621-1359 A St.', '2015-05-25', 5),
(11, 'Reece', 'Yael', 'Singleton', 'P.O. Box 309, 3903 Sed, Road', '2014-05-05', 8),
(12, 'Emery', 'Madeson', 'Gross', '692-8799 Molestie Ave', '2014-05-05', 6),
(13, 'Quinlan', 'Kellie', 'Shaffer', 'Ap #334-7413 Sed St.', '2014-11-28', 10),
(14, 'Jessamine', 'Tallulah', 'Schroeder', 'Ap #794-4171 Proin Rd.', '2014-07-22', 10),
(15, 'Anne', 'Bianca', 'Gilbert', 'P.O. Box 499, 295 Cras St.', '2015-04-24', 9),
(16, 'Hanae', 'Kiara', 'Aguirre', 'P.O. Box 808, 2514 Tortor. Road', '2014-10-24', 6),
(17, 'Calista', 'Noble', 'Skinner', '5509 Consectetuer St.', '2015-09-12', 4),
(18, 'Ori', 'Yuli', 'Gross', 'Ap #253-9052 Leo Street', '2014-11-14', 6),
(19, 'Doris', 'Macey', 'Floyd', '8439 Ultricies Rd.', '2015-01-26', 6),
(20, 'Destiny', 'Fritz', 'Brock', 'Ap #808-644 Dapibus St.', '2015-05-16', 3),
(21, 'Shaeleigh', 'Sopoline', 'Gillespie', '999-1950 Lacus Rd.', '2014-07-13', 1),
(22, 'Hyatt', 'Fritz', 'Dyer', 'Ap #415-8645 Dapibus St.', '2014-05-05', 6),
(23, 'Judith', 'Eliana', 'Middleton', '592-4869 Cras Rd.', '2014-04-17', 1),
(24, 'Regan', 'Alma', 'Wyatt', 'Ap #453-5187 Nonummy Avenue', '2015-02-28', 2),
(25, 'Lacy', 'Graham', 'Flores', 'Ap #874-9246 Aliquam Avenue', '2015-02-16', 6),
(26, 'Ingrid', 'Nichole', 'Mays', '8201 Vitae, Av.', '2015-10-26', 6),
(27, 'Moana', 'Eagan', 'Travis', 'Ap #204-7037 Amet Ave', '2015-11-09', 6),
(28, 'Jeanette', 'Yoko', 'Ellison', 'Ap #693-6173 Cras Street', '2015-02-13', 1),
(29, 'Whilemina', 'Britanni', 'Moss', 'P.O. Box 601, 1342 Sed, Street', '2015-06-30', 2),
(30, 'Harriet', 'Kristen', 'Fitzgerald', '1531 Nam Av.', '2015-10-05', 3);

-- --------------------------------------------------------

--
-- Table structure for table `loan_account`
--

CREATE TABLE IF NOT EXISTS `loan_account` (
  `loan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loan_amount` float unsigned NOT NULL,
  `date` date NOT NULL,
  `monthly_installment` float unsigned NOT NULL,
  `interest_rate` float unsigned NOT NULL,
  `loan_remaining` float unsigned NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`loan_id`),
  KEY `branch_id_idx` (`branch_id`),
  KEY `customer_id_idx` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `loan_account`
--

INSERT INTO `loan_account` (`loan_id`, `loan_amount`, `date`, `monthly_installment`, `interest_rate`, `loan_remaining`, `branch_id`, `customer_id`) VALUES
(1, 5.88776e+006, '2015-12-11', 6716, 14, 8043, 2, 15),
(2, 9.48648e+006, '2014-07-16', 9852, 16, 5248, 1, 7),
(3, 7.51127e+006, '2012-03-20', 6008, 7, 9141, 3, 97),
(4, 8.06548e+006, '2013-09-05', 8471, 5, 6228, 9, 99),
(5, 5.97609e+006, '2013-01-14', 5266, 20, 9173, 1, 31),
(6, 795414, '2011-10-13', 9916, 20, 8816, 7, 83),
(7, 1.04437e+006, '2011-12-16', 7092, 5, 4231, 1, 14),
(8, 8.70709e+006, '2012-02-09', 9826, 13, 3987, 9, 33),
(9, 7.46779e+006, '2010-07-03', 4397, 17, 2577, 2, 97),
(10, 3.08851e+006, '2014-06-11', 9356, 20, 2542, 5, 100),
(11, 467176, '2013-12-14', 5519, 9, 6984, 6, 50),
(12, 6.87128e+006, '2014-03-20', 4847, 12, 6880, 9, 99),
(13, 1.86416e+006, '2011-07-21', 6415, 8, 8516, 3, 73),
(14, 4.86239e+006, '2015-06-26', 5936, 6, 5206, 3, 50),
(15, 3.58676e+006, '2014-05-31', 8334, 10, 5465, 4, 100),
(16, 5.5864e+006, '2012-11-08', 4563, 12, 9178, 6, 87),
(17, 7.09434e+006, '2014-01-08', 4532, 9, 8117, 4, 25),
(18, 3.78341e+006, '2012-01-10', 9937, 14, 3319, 8, 20),
(19, 5.8443e+006, '2010-11-18', 6323, 8, 5368, 7, 91),
(20, 8.77606e+006, '2015-07-30', 6110, 20, 7312, 7, 88),
(21, 6.77888e+006, '2015-07-24', 7325, 8, 3395, 7, 79),
(22, 9.64323e+006, '2010-04-17', 5273, 20, 5830, 4, 81),
(23, 3.60003e+006, '2014-11-29', 8920, 15, 6716, 8, 28),
(24, 7.64562e+006, '2011-08-28', 2843, 16, 8634, 5, 11),
(25, 7.83509e+006, '2015-03-01', 7190, 15, 5058, 5, 41),
(26, 8.87217e+006, '2015-07-21', 8307, 9, 7725, 10, 11),
(27, 9.23067e+006, '2015-05-04', 5014, 16, 1052, 10, 87),
(28, 5.25181e+006, '2014-05-10', 5803, 12, 9281, 5, 24),
(29, 6.8386e+006, '2012-12-09', 3341, 20, 1370, 7, 83),
(30, 68773, '2010-12-09', 4079, 4, 6560, 2, 19),
(31, 1.42986e+006, '2016-03-03', 2111, 4, 9343, 9, 63),
(32, 6.30729e+006, '2012-02-06', 1061, 14, 2575, 8, 95),
(33, 9.06746e+006, '2010-09-21', 2584, 17, 9100, 4, 27),
(34, 7.57768e+006, '2010-08-23', 9206, 5, 8282, 4, 39),
(35, 1.20441e+006, '2014-05-30', 1421, 6, 5867, 6, 31),
(36, 9.8223e+006, '2010-05-11', 6026, 18, 5113, 3, 19),
(37, 9.88764e+006, '2013-10-09', 3577, 5, 9790, 4, 21),
(38, 5.86424e+006, '2015-10-02', 8673, 20, 2633, 3, 13),
(39, 4.04858e+006, '2011-06-24', 4602, 7, 1279, 10, 92),
(40, 6.97903e+006, '2011-07-21', 9318, 6, 9750, 6, 12),
(41, 6.64979e+006, '2012-08-01', 7311, 6, 1019, 10, 97),
(42, 6.26717e+006, '2016-03-03', 8568, 19, 4694, 10, 20),
(43, 5.23896e+006, '2011-03-17', 2378, 15, 7092, 7, 94),
(44, 1.76165e+006, '2010-12-22', 5314, 18, 8087, 9, 77),
(45, 1.88873e+006, '2015-10-11', 1016, 17, 7371, 6, 8),
(46, 2.47114e+006, '2015-08-27', 7547, 7, 836, 6, 39),
(47, 466254, '2010-04-14', 3973, 18, 7635, 7, 21),
(48, 5.77411e+006, '2011-09-24', 6995, 10, 1489, 2, 18),
(49, 1.27198e+006, '2014-10-20', 8706, 9, 79, 2, 65),
(50, 8.09837e+006, '2010-09-05', 8946, 9, 7731, 4, 97);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_date` date NOT NULL,
  `payment_amount` float unsigned NOT NULL,
  `loan_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `loan_id_idx` (`loan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_date`, `payment_amount`, `loan_id`) VALUES
(1, '2014-10-07', 5039, 12),
(2, '2015-12-31', 5965, 32),
(3, '2014-09-21', 4541, 6),
(4, '2016-02-23', 9884, 22),
(5, '2015-06-08', 5646, 28),
(6, '2016-02-09', 8976, 6),
(7, '2015-12-28', 8518, 41),
(8, '2014-04-13', 4676, 32),
(9, '2014-07-04', 8240, 37),
(10, '2014-05-11', 5083, 14),
(11, '2015-08-22', 4678, 46),
(12, '2014-07-20', 2663, 16),
(13, '2014-08-28', 6177, 34),
(14, '2014-08-03', 4780, 38),
(15, '2016-01-09', 9047, 8),
(16, '2015-03-29', 8560, 29),
(17, '2015-08-17', 6236, 41),
(18, '2015-07-17', 658, 24),
(19, '2014-07-28', 7795, 44),
(20, '2014-09-21', 2079, 3),
(21, '2015-04-13', 4915, 5),
(22, '2015-01-12', 1662, 40),
(23, '2015-11-17', 2945, 44),
(24, '2015-12-22', 1660, 33),
(25, '2014-09-21', 1460, 40),
(26, '2016-01-10', 6771, 46),
(27, '2015-12-11', 2148, 34),
(28, '2015-08-02', 1318, 41),
(29, '2015-09-01', 1410, 11),
(30, '2015-08-23', 906, 17),
(31, '2015-11-01', 3809, 37),
(32, '2015-06-22', 1942, 33),
(33, '2015-07-26', 7119, 30),
(34, '2014-12-06', 4841, 5),
(35, '2014-12-28', 9322, 43),
(36, '2014-09-04', 1086, 39),
(37, '2014-06-03', 9134, 43),
(38, '2014-11-15', 6276, 32),
(39, '2015-07-05', 2387, 39),
(40, '2015-07-23', 4350, 50),
(41, '2014-08-16', 4700, 37),
(42, '2016-02-10', 3317, 28),
(43, '2014-12-03', 8196, 35),
(44, '2015-08-05', 6062, 23),
(45, '2016-03-11', 2217, 25),
(46, '2014-05-25', 2032, 5),
(47, '2014-08-08', 845, 5),
(48, '2015-08-10', 2697, 41),
(49, '2015-10-29', 6574, 29),
(50, '2014-08-19', 938, 46);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_type` varchar(45) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL,
  `transaction_account` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `transaction_account_idx` (`transaction_account`),
  KEY `transaction_customer_id_idx` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=211 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `transaction_type`, `amount`, `time`, `transaction_account`, `customer_id`) VALUES
(1, 'Withdrawal', 6756, '2015-12-25 04:20:13', 48, 31),
(2, 'Deposit', 2413, '2014-11-08 14:06:14', 26, 10),
(3, 'Withdrawal', 6424, '2016-01-13 11:46:06', 34, 26),
(4, 'Deposit', 6643, '2015-08-01 19:20:28', 7, 78),
(5, 'Transfer', 872, '2015-06-23 16:31:51', 6, 59),
(6, 'Deposit', 647, '2014-10-03 23:46:07', 8, 86),
(7, 'Deposit', 2080, '2014-04-13 19:59:49', 50, 20),
(8, 'Withdrawal', 2784, '2015-04-17 23:16:35', 41, 20),
(9, 'Withdrawal', 4950, '2015-11-10 03:08:23', 49, 19),
(10, 'Withdrawal', 602, '2015-07-07 19:19:58', 42, 1),
(11, 'Withdrawal', 8113, '2014-05-12 20:07:31', 11, 50),
(12, 'Deposit', 8099, '2015-08-31 12:50:15', 19, 92),
(13, 'Transfer', 8472, '2015-07-07 04:01:39', 43, 5),
(14, 'Withdrawal', 8270, '2015-05-18 09:37:52', 48, 89),
(15, 'Transfer', 1340, '2015-09-15 02:30:06', 12, 76),
(16, 'Withdrawal', 7314, '2014-07-03 02:48:14', 45, 81),
(17, 'Deposit', 2981, '2014-08-05 20:30:51', 28, 18),
(18, 'Withdrawal', 7424, '2015-06-20 10:18:46', 15, 15),
(19, 'Withdrawal', 1708, '2015-08-04 03:47:37', 42, 30),
(20, 'Deposit', 9380, '2014-05-07 07:50:43', 29, 38),
(21, 'Transfer', 7822, '2015-07-07 12:02:06', 22, 52),
(22, 'Deposit', 941, '2015-01-03 12:36:17', 1, 69),
(23, 'Deposit', 6624, '2015-09-16 21:09:32', 24, 46),
(24, 'Transfer', 1938, '2014-07-30 15:24:15', 41, 55),
(25, 'Deposit', 8344, '2016-02-26 00:20:57', 19, 62),
(26, 'Transfer', 2238, '2014-10-26 23:04:45', 45, 59),
(27, 'Withdrawal', 3660, '2015-08-24 01:14:18', 30, 70),
(28, 'Withdrawal', 5360, '2014-07-18 19:42:24', 46, 82),
(29, 'Deposit', 7406, '2014-05-12 22:07:01', 44, 29),
(30, 'Withdrawal', 8630, '2014-08-25 07:01:08', 6, 65),
(31, 'Deposit', 1239, '2014-05-02 23:15:54', 42, 48),
(32, 'Withdrawal', 9851, '2016-01-24 00:05:50', 14, 57),
(33, 'Transfer', 2643, '2016-03-04 14:26:26', 40, 25),
(34, 'Withdrawal', 3808, '2015-02-10 07:50:12', 40, 74),
(35, 'Transfer', 5999, '2014-12-28 21:54:25', 5, 70),
(36, 'Deposit', 3760, '2015-01-24 23:02:08', 30, 14),
(37, 'Deposit', 8667, '2015-06-26 22:53:38', 16, 42),
(38, 'Deposit', 7918, '2015-01-18 11:32:45', 4, 58),
(39, 'Withdrawal', 5514, '2016-02-28 19:58:00', 42, 63),
(40, 'Deposit', 7082, '2015-11-04 16:21:10', 25, 81),
(41, 'Transfer', 3276, '2015-11-20 23:49:08', 24, 80),
(42, 'Withdrawal', 8971, '2014-10-14 01:05:52', 25, 74),
(43, 'Transfer', 8565, '2015-01-21 13:14:00', 20, 72),
(44, 'Deposit', 5714, '2015-10-05 06:01:42', 9, 7),
(45, 'Withdrawal', 2740, '2015-11-29 08:17:41', 42, 21),
(46, 'Transfer', 1261, '2014-10-06 04:34:20', 25, 62),
(47, 'Withdrawal', 7360, '2015-05-15 07:23:19', 32, 46),
(48, 'Deposit', 887, '2014-12-27 15:27:08', 16, 11),
(49, 'Withdrawal', 2718, '2014-11-23 05:44:27', 31, 87),
(50, 'Withdrawal', 6995, '2014-08-31 06:22:29', 49, 84),
(51, 'Deposit', 4028, '2014-07-23 18:12:21', 38, 17),
(52, 'Deposit', 5586, '2015-02-12 15:34:14', 31, 44),
(53, 'Withdrawal', 9968, '2014-12-07 04:57:53', 43, 11),
(54, 'Withdrawal', 9544, '2014-04-07 00:27:37', 46, 81),
(55, 'Deposit', 2135, '2015-06-10 14:48:02', 8, 52),
(56, 'Deposit', 3849, '2014-12-21 15:15:37', 46, 27),
(57, 'Deposit', 3975, '2015-12-14 07:49:42', 16, 71),
(58, 'Deposit', 7897, '2014-12-01 14:11:43', 1, 34),
(59, 'Transfer', 4932, '2015-02-02 13:46:33', 37, 51),
(60, 'Deposit', 7716, '2014-11-08 23:31:33', 8, 50),
(61, 'Transfer', 1654, '2015-09-09 12:36:50', 19, 52),
(62, 'Withdrawal', 6292, '2014-06-07 06:08:56', 16, 48),
(63, 'Transfer', 6761, '2014-07-30 16:02:01', 39, 93),
(64, 'Withdrawal', 1133, '2014-10-01 08:43:37', 48, 82),
(65, 'Deposit', 1175, '2016-03-25 09:05:28', 45, 66),
(66, 'Transfer', 8012, '2014-05-30 06:00:48', 47, 55),
(67, 'Deposit', 9267, '2015-09-30 19:30:07', 29, 42),
(68, 'Withdrawal', 7243, '2016-03-05 06:25:16', 40, 61),
(69, 'Transfer', 9018, '2014-04-23 20:43:08', 46, 99),
(70, 'Transfer', 8515, '2015-05-21 21:31:33', 8, 36),
(71, 'Transfer', 6090, '2015-01-21 13:19:23', 16, 28),
(72, 'Withdrawal', 875, '2014-07-13 01:27:18', 5, 13),
(73, 'Deposit', 5174, '2014-11-14 21:43:35', 32, 7),
(74, 'Deposit', 9167, '2015-06-21 07:08:58', 9, 58),
(75, 'Withdrawal', 2350, '2015-01-17 08:46:03', 27, 38),
(76, 'Withdrawal', 6080, '2015-10-30 17:17:24', 45, 99),
(77, 'Withdrawal', 3252, '2015-02-15 16:08:28', 9, 59),
(78, 'Deposit', 7705, '2015-09-11 19:14:06', 35, 63),
(79, 'Deposit', 6724, '2014-07-28 21:15:30', 41, 34),
(80, 'Deposit', 4261, '2015-06-23 17:49:39', 8, 7),
(81, 'Withdrawal', 8361, '2015-11-09 06:17:56', 12, 40),
(82, 'Withdrawal', 5715, '2014-08-12 02:48:42', 49, 16),
(83, 'Deposit', 801, '2014-09-01 15:24:12', 47, 49),
(84, 'Deposit', 4837, '2015-03-04 04:55:55', 25, 38),
(85, 'Withdrawal', 6815, '2014-07-07 05:43:21', 32, 93),
(86, 'Transfer', 1426, '2015-02-25 19:23:49', 35, 70),
(87, 'Transfer', 1411, '2015-06-27 16:29:12', 15, 85),
(88, 'Withdrawal', 4549, '2014-08-11 17:38:49', 21, 98),
(89, 'Withdrawal', 2578, '2015-04-27 04:40:27', 8, 84),
(90, 'Withdrawal', 8544, '2014-11-02 21:16:13', 21, 67),
(91, 'Transfer', 1705, '2015-11-29 03:35:06', 14, 66),
(92, 'Deposit', 7291, '2014-10-19 09:20:46', 20, 65),
(93, 'Deposit', 5797, '2014-03-30 00:55:02', 21, 84),
(94, 'Transfer', 2069, '2014-11-28 23:54:05', 40, 84),
(95, 'Transfer', 5252, '2014-05-30 18:40:23', 41, 15),
(96, 'Transfer', 1852, '2016-02-04 09:22:23', 25, 32),
(97, 'Transfer', 3423, '2014-11-03 03:29:02', 27, 90),
(98, 'Transfer', 6147, '2015-05-08 18:51:19', 16, 14),
(99, 'Withdrawal', 8558, '2014-07-25 15:59:54', 3, 91),
(100, 'Withdrawal', 5231, '2016-02-09 15:56:42', 43, 44),
(101, 'Withdrawal', 7379, '2014-05-22 14:11:07', 16, 90),
(102, 'Deposit', 626, '2015-10-20 21:19:49', 49, 47),
(103, 'Transfer', 7507, '2015-07-04 13:39:18', 20, 50),
(104, 'Withdrawal', 3786, '2016-02-19 20:07:43', 29, 75),
(105, 'Transfer', 8286, '2015-09-12 09:00:46', 33, 51),
(106, 'Withdrawal', 9660, '2015-01-20 11:56:23', 2, 71),
(107, 'Withdrawal', 5922, '2014-07-09 16:04:14', 47, 94),
(108, 'Withdrawal', 4826, '2014-07-22 15:33:39', 48, 86),
(109, 'Transfer', 4862, '2015-10-15 12:46:05', 25, 16),
(110, 'Withdrawal', 3156, '2016-03-07 10:46:43', 10, 55),
(111, 'Withdrawal', 9981, '2014-05-29 13:05:07', 39, 88),
(112, 'Deposit', 8693, '2015-07-12 17:07:28', 17, 48),
(113, 'Deposit', 3897, '2014-06-27 09:30:26', 38, 32),
(114, 'Transfer', 9811, '2015-05-06 10:44:51', 45, 48),
(115, 'Deposit', 5892, '2014-08-28 13:28:15', 8, 22),
(116, 'Transfer', 2518, '2014-07-24 08:13:06', 49, 46),
(117, 'Transfer', 3505, '2014-10-23 05:33:15', 39, 68),
(118, 'Withdrawal', 5495, '2014-09-09 07:02:42', 36, 49),
(119, 'Deposit', 1146, '2014-05-31 06:44:45', 32, 20),
(120, 'Withdrawal', 2882, '2016-02-12 11:06:20', 18, 23),
(121, 'Transfer', 1777, '2014-06-22 19:36:20', 10, 9),
(122, 'Deposit', 9724, '2015-05-07 17:19:47', 45, 88),
(123, 'Withdrawal', 3334, '2014-11-15 15:07:29', 26, 17),
(124, 'Withdrawal', 5388, '2015-11-29 13:10:15', 43, 99),
(125, 'Transfer', 8274, '2014-07-31 17:17:07', 50, 57),
(126, 'Transfer', 7208, '2015-09-09 09:53:53', 26, 31),
(127, 'Withdrawal', 642, '2015-08-30 12:35:04', 23, 88),
(128, 'Deposit', 9491, '2014-08-14 23:29:44', 45, 86),
(129, 'Transfer', 6963, '2014-10-05 07:32:28', 29, 22),
(130, 'Transfer', 4952, '2015-02-21 05:43:04', 3, 68),
(131, 'Deposit', 6591, '2015-07-15 20:55:28', 10, 64),
(132, 'Deposit', 7134, '2014-06-20 17:49:27', 23, 44),
(133, 'Transfer', 4644, '2014-05-23 06:52:10', 4, 44),
(134, 'Deposit', 9211, '2014-06-01 14:47:34', 11, 98),
(135, 'Transfer', 5026, '2015-06-17 11:27:40', 18, 33),
(136, 'Withdrawal', 2560, '2014-11-21 18:54:51', 6, 2),
(137, 'Deposit', 3580, '2014-10-05 06:51:42', 19, 63),
(138, 'Deposit', 5655, '2015-11-16 10:51:35', 8, 33),
(139, 'Withdrawal', 4067, '2015-10-11 05:23:38', 14, 18),
(140, 'Deposit', 5729, '2014-07-30 01:44:47', 24, 75),
(141, 'Transfer', 9603, '2016-01-30 16:22:45', 38, 23),
(142, 'Withdrawal', 1398, '2015-07-27 12:41:39', 38, 99),
(143, 'Transfer', 6354, '2014-08-24 07:11:43', 36, 81),
(144, 'Deposit', 595, '2016-01-30 05:11:37', 26, 83),
(145, 'Transfer', 2766, '2016-01-22 02:42:22', 15, 53),
(146, 'Transfer', 2707, '2016-03-15 20:57:31', 42, 54),
(147, 'Deposit', 1711, '2016-01-06 02:27:56', 37, 35),
(148, 'Withdrawal', 4781, '2015-03-11 18:35:49', 22, 30),
(149, 'Transfer', 5494, '2015-01-02 21:32:35', 1, 2),
(150, 'Transfer', 6220, '2015-04-02 03:25:42', 19, 21),
(151, 'Withdrawal', 9618, '2015-05-05 00:47:56', 46, 90),
(152, 'Transfer', 8286, '2014-09-10 19:41:20', 2, 62),
(153, 'Transfer', 1788, '2016-02-18 20:25:13', 11, 75),
(154, 'Transfer', 8308, '2015-02-20 13:48:21', 44, 10),
(155, 'Deposit', 2192, '2014-08-17 04:53:44', 45, 24),
(156, 'Deposit', 4096, '2014-08-13 14:43:01', 1, 8),
(157, 'Transfer', 4864, '2016-02-15 18:06:14', 13, 51),
(158, 'Withdrawal', 8532, '2014-10-23 02:45:49', 34, 97),
(159, 'Withdrawal', 6827, '2014-10-14 16:32:57', 3, 3),
(160, 'Deposit', 7696, '2014-09-10 10:11:09', 30, 31),
(161, 'Transfer', 1184, '2015-09-23 16:05:46', 29, 97),
(162, 'Transfer', 2516, '2014-11-03 21:44:12', 38, 57),
(163, 'Transfer', 708, '2015-04-03 03:49:50', 48, 15),
(164, 'Withdrawal', 2892, '2014-05-11 15:39:15', 40, 14),
(165, 'Withdrawal', 3028, '2015-03-29 14:09:17', 10, 41),
(166, 'Withdrawal', 1211, '2016-02-21 04:03:44', 32, 58),
(167, 'Transfer', 8934, '2015-09-26 21:52:48', 19, 66),
(168, 'Transfer', 3549, '2015-01-22 21:24:22', 38, 33),
(169, 'Withdrawal', 6397, '2015-12-03 11:05:24', 7, 100),
(170, 'Withdrawal', 7927, '2014-11-26 20:59:01', 4, 19),
(171, 'Deposit', 8867, '2014-12-01 13:55:47', 14, 15),
(172, 'Deposit', 9271, '2015-05-26 04:21:07', 8, 7),
(173, 'Withdrawal', 5485, '2015-02-10 19:14:39', 22, 56),
(174, 'Withdrawal', 8148, '2014-07-08 04:23:03', 42, 15),
(175, 'Transfer', 1703, '2014-04-23 13:42:00', 15, 60),
(176, 'Transfer', 2137, '2014-06-03 22:29:24', 42, 71),
(177, 'Withdrawal', 2013, '2015-12-14 10:32:20', 7, 83),
(178, 'Deposit', 7287, '2014-07-08 15:06:31', 44, 3),
(179, 'Transfer', 9181, '2014-09-15 21:27:31', 42, 15),
(180, 'Deposit', 3595, '2016-02-05 20:50:48', 2, 82),
(181, 'Deposit', 8756, '2015-03-22 04:14:29', 33, 16),
(182, 'Deposit', 1904, '2016-03-09 13:49:28', 46, 86),
(183, 'Withdrawal', 2557, '2015-11-14 04:39:39', 39, 59),
(184, 'Deposit', 2589, '2015-09-21 19:07:29', 9, 41),
(185, 'Transfer', 9781, '2015-12-04 18:24:28', 43, 14),
(186, 'Deposit', 1422, '2016-03-25 05:09:20', 33, 63),
(187, 'Deposit', 551, '2014-05-05 19:48:41', 41, 2),
(188, 'Deposit', 1134, '2015-06-08 07:28:36', 16, 46),
(189, 'Deposit', 8563, '2015-11-19 18:24:23', 9, 36),
(190, 'Deposit', 3586, '2015-12-27 01:36:59', 33, 7),
(191, 'Transfer', 629, '2015-01-10 02:09:01', 45, 84),
(192, 'Deposit', 3652, '2014-08-10 12:17:39', 24, 11),
(193, 'Deposit', 2049, '2016-03-10 19:32:59', 44, 68),
(194, 'Withdrawal', 5621, '2015-07-22 00:33:09', 2, 49),
(195, 'Withdrawal', 3422, '2015-06-29 14:54:45', 7, 72),
(196, 'Transfer', 4943, '2015-12-13 15:37:24', 46, 95),
(197, 'Transfer', 1801, '2014-11-13 03:52:14', 31, 14),
(198, 'Withdrawal', 5055, '2015-05-07 02:28:48', 30, 18),
(199, 'Deposit', 701, '2014-06-16 20:13:27', 12, 66),
(200, 'Deposit', 4042, '2015-02-09 03:22:48', 13, 93),
(201, 'withdraw', 200, '0000-00-00 00:00:00', 28, 5),
(202, 'Wire Transfer-Out', 100, '2015-04-03 19:11:25', 13, 14),
(203, 'Wire Transfer-Out', 1000, '2015-04-03 19:11:35', 13, 14),
(204, 'Wire Transfer-Out', 1000, '2015-04-03 19:12:31', 13, 14),
(205, 'Wire Transfer-Out', 10, '2015-04-03 19:14:11', 13, 14),
(206, 'Wire Transfer-Out', 1000, '2015-04-03 19:15:19', 1, 14),
(207, 'Wire Transfer-Out', 1000, '2015-04-03 19:21:47', 1, 14),
(208, 'Wire Transfer-IN', 1000, '2015-04-03 19:21:47', 14, 1),
(209, 'Wire Transfer-Out', 1000, '2015-04-03 19:57:46', 1, 14),
(210, 'Wire Transfer-IN', 1000, '2015-04-03 19:57:46', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE IF NOT EXISTS `user_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contact_num` varchar(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `user_cat_id` int(11) DEFAULT NULL,
  `prev` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `user_auth`
--

INSERT INTO `user_auth` (`id`, `username`, `password`, `contact_num`, `email`, `city`, `area`, `user_cat_id`, `prev`) VALUES
(7, 'admin', '21232f297a57a5a743894a0e4a801fc3', '01670021785', 'kk@kk.com', 1, 1, 1, 'admin'),
(13, 'omar', 'd0bc48271a775770e8bb081ead1546b4', '016788888888', 'om@om.copm', 1, 2, 3, 'nuser'),
(14, 'rat', 'a01610228fe998f515a72dd730294d87', '2323', 'omar@trivooz.com', NULL, NULL, NULL, 'nuser'),
(20, 'kiron', '202cb962ac59075b964b07152d234b70', '1212', 'tajul.islam.3576224@gmail.com', 1, 1, 2, 'admin'),
(23, 'oo', '123', '213', '32332', 2, 2, 3, 'asd'),
(24, 'ismail', '123456', '12312313', 'ismailkironn5@gmail.com', NULL, NULL, NULL, 'nuser'),
(26, 'labib', 'a01610228fe998f515a72dd730294d87', '01978787575', 'omar@trivooz.com', NULL, NULL, NULL, 'nuser');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `bank_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `account_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `FK_area` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD CONSTRAINT `cc_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `bank_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cc_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `bank_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `customer_csm_id` FOREIGN KEY (`customer_csm_id`) REFERENCES `customer_service_manager` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customer_service_manager`
--
ALTER TABLE `customer_service_manager`
  ADD CONSTRAINT `csm_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `bank_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `loan_account`
--
ALTER TABLE `loan_account`
  ADD CONSTRAINT `loan_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `bank_branch` (`branch_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `loan_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `loan_id` FOREIGN KEY (`loan_id`) REFERENCES `loan_account` (`loan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_account` FOREIGN KEY (`transaction_account`) REFERENCES `account` (`ac_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaction_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
