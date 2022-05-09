-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2021 at 08:36 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentist`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `APP_ID` int(11) NOT NULL,
  `APP_START_TIME` datetime DEFAULT NULL,
  `APP_END_TIME` datetime DEFAULT NULL,
  `APP_CANCEL_TIME` datetime DEFAULT NULL,
  `APP_CANCEL_FEE` decimal(9,2) DEFAULT 10.00,
  `APP_PAT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`APP_ID`, `APP_START_TIME`, `APP_END_TIME`, `APP_CANCEL_TIME`, `APP_CANCEL_FEE`, `APP_PAT_ID`) VALUES
(1, '2021-01-02 09:00:00', '2021-01-02 10:00:00', NULL, NULL, 1),
(2, '2021-01-01 09:00:00', '2021-01-01 10:00:00', NULL, NULL, 1),
(3, '2021-01-03 10:00:00', '2021-01-03 11:00:00', '2021-01-03 10:00:00', '10.00', 2),
(4, '2021-01-04 11:00:00', '2021-01-04 12:00:00', NULL, NULL, 3),
(5, '2021-01-05 12:00:00', '2021-01-05 13:00:00', NULL, NULL, 4),
(6, '2021-01-06 09:00:00', '2021-01-06 10:00:00', NULL, NULL, 5),
(7, '2021-01-07 10:00:00', '2021-01-07 11:00:00', NULL, NULL, 6),
(8, '2021-01-08 11:00:00', '2021-01-08 12:00:00', NULL, NULL, 7),
(9, '2021-01-09 12:00:00', '2021-01-09 13:00:00', '2021-01-09 12:00:00', '10.00', 8),
(10, '2021-01-10 09:00:00', '2021-01-10 10:00:00', NULL, NULL, 9),
(11, '2021-01-11 10:00:00', '2021-01-11 11:00:00', NULL, NULL, 10),
(12, '2021-01-12 11:00:00', '2021-01-12 10:00:00', NULL, NULL, 11),
(13, '2021-01-13 12:00:00', '2021-01-13 13:00:00', NULL, NULL, 12),
(14, '2021-01-14 09:00:00', '2021-01-14 10:00:00', NULL, NULL, 13),
(15, '2021-01-15 10:00:00', '2021-01-15 11:00:00', NULL, NULL, 14),
(16, '2021-01-16 11:00:00', '2021-01-16 12:00:00', NULL, NULL, 15),
(17, '2021-01-17 12:00:00', '2021-01-17 13:00:00', '2021-01-17 12:00:00', '10.00', 16),
(18, '2021-01-18 09:00:00', '2021-01-18 10:00:00', NULL, NULL, 17),
(19, '2021-01-19 10:00:00', '2021-01-19 11:00:00', NULL, NULL, 18),
(20, '2021-01-20 11:00:00', '2021-01-20 12:00:00', NULL, NULL, 19),
(21, '2021-01-21 12:00:00', '2021-01-21 13:00:00', NULL, NULL, 20),
(22, '2021-01-22 09:00:00', '2021-01-22 10:00:00', NULL, NULL, 21),
(23, '2021-01-23 10:00:00', '2021-01-23 11:00:00', NULL, NULL, 3),
(24, '2021-01-24 11:00:00', '2021-01-24 12:00:00', NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `BILL_ID` int(11) NOT NULL,
  `BILL_TOTAL_AMOUNT` decimal(9,2) DEFAULT NULL,
  `BILL_DUE_AMOUNT` decimal(9,2) DEFAULT NULL,
  `BILL_PAY_ID` int(11) DEFAULT NULL,
  `BILL_PAT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`BILL_ID`, `BILL_TOTAL_AMOUNT`, `BILL_DUE_AMOUNT`, `BILL_PAY_ID`, `BILL_PAT_ID`) VALUES
(1, '60.00', '0.00', 1, 1),
(2, '300.00', '0.00', 2, 2),
(3, '10.00', '0.00', 3, 3),
(4, '30.00', '0.00', 4, 4),
(5, '200.00', '0.00', 5, 5),
(6, '90.00', '80.00', 6, 6),
(7, '15.00', '0.00', 7, 7),
(8, '200.00', '100.00', 8, 8),
(9, '10.00', '0.00', 9, 9),
(10, '200.00', '0.00', 10, 10),
(11, '30.00', '0.00', 11, 11),
(12, '60.00', '0.00', 12, 12),
(13, '40.00', '30.00', 13, 13),
(14, '90.00', '80.00', 14, 14),
(15, '15.00', '5.00', 15, 15),
(16, '200.00', '0.00', 16, 16),
(17, '10.00', '0.00', 17, 17),
(18, '30.00', '20.00', 18, 18),
(19, '300.00', '200.00', 19, 19),
(20, '430.00', '130.00', 20, 20),
(21, '200.00', '200.00', 21, 21);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cork_patients`
-- (See below for the actual view)
--
CREATE TABLE `cork_patients` (
`PAT_ID` int(11)
,`PAT_FIRSTNAME` varchar(45)
,`PAT_LASTNAME` varchar(45)
,`PAT_ADDRESS` varchar(90)
,`PAT_SPEC_ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `PAT_ID` int(11) NOT NULL,
  `PAT_FIRSTNAME` varchar(45) NOT NULL,
  `PAT_LASTNAME` varchar(45) NOT NULL,
  `PAT_ADDRESS` varchar(90) NOT NULL,
  `PAT_SPEC_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`PAT_ID`, `PAT_FIRSTNAME`, `PAT_LASTNAME`, `PAT_ADDRESS`, `PAT_SPEC_ID`) VALUES
(1, 'Faolán', 'Ó Leannacháin', 'Galway', 1),
(2, 'Madison', 'Petersen', '4460 Harrogate Road, Naas Co.Kildare', 1),
(3, 'Jorge', 'Guthrie', '7547 Felix Lane SHORNE, Dublin1', 1),
(4, 'Lia', 'Lang', '2418 Lincoln Green Lane, Dublin 2', 1),
(5, 'Hanna', 'Anderson', '383 Ermin Street, Dublin 3', 1),
(6, 'Arya', 'Cooley', '855 Harrogate Road, Dublin 4', 1),
(7, 'Annabell', 'Hammond', '2976 Victoria Road, Dublin 5', 1),
(8, 'Katie', 'Fletcher', '1900 Park End St BROOK, Dublin 6', 1),
(9, 'Kayla', 'Patrick', '9079 Duckpit Lane UPPER POPPLETON Dublin 7 ', 1),
(10, 'Cason', 'Beard', '9688 Church Way BRADLEY GREEN, Dublin 8', 1),
(11, 'Angelique', 'Crawford', '6809 Brackley Road, Dublin 9', 1),
(12, 'Kelly', 'Winters', '5208 Pendwyallt Road, Dublin 10', 1),
(13, 'Krystal', 'Mooney', '7866 Bishopgate Street, Dublin 11', 1),
(14, 'Valentin', 'Contreras', '5553 Newmarket Road, Dublin 12', 1),
(15, 'Kailyn', 'Wooten', '5208 Ermin Street, Dublin 13', 1),
(16, 'Sabrina', 'Leblanc', '195 Prestwick Road, Dublin 14', 1),
(17, 'Rashad', 'Sparks', '1207 Ockham Road, Dublin 15', 1),
(18, 'Emelia', 'Jarvis', 'Galway', 1),
(19, 'Jonah', 'Calhoun', 'Galway', 1),
(20, 'Shelby', 'Porter', 'Galway', 1),
(21, 'Preston', 'Hopkins', 'Galway', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `PAY_ID` int(11) NOT NULL,
  `PAY_AMOUNT` decimal(9,2) DEFAULT NULL,
  `PAY_TYPE` varchar(45) DEFAULT NULL,
  `PAY_TREAT_ID` int(11) DEFAULT NULL,
  `PAY_PAT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`PAY_ID`, `PAY_AMOUNT`, `PAY_TYPE`, `PAY_TREAT_ID`, `PAY_PAT_ID`) VALUES
(1, '60.00', 'Credit Card', 2, 1),
(2, '300.00', 'Cash', 9, 2),
(3, '10.00', 'Cheque', 11, 3),
(4, '30.00', 'Cash', 10, 4),
(5, '200.00', 'Credit Card', 4, 5),
(6, '10.00', 'Cash', 7, 6),
(7, '15.00', 'Cheque', 6, 7),
(8, '100.00', 'Credit Card', 4, 8),
(9, '10.00', 'Credit Card', 11, 9),
(10, '200.00', 'Credit Card', 4, 10),
(11, '30.00', 'Cheque', 3, 11),
(12, '60.00', 'Cash', 2, 12),
(13, '10.00', 'Credit Card', 8, 13),
(14, '10.00', 'Credit Card', 7, 14),
(15, '10.00', 'Credit Card', 6, 15),
(16, '100.00', 'Credit Card', 4, 16),
(17, '10.00', 'Cash', 11, 17),
(18, '10.00', 'Cash', 3, 18),
(19, '100.00', 'Credit Card', 9, 19),
(20, '100.00', 'Credit Card', 4, 20),
(21, '0.00', 'Credit Card', 4, 21),
(22, '100.00', 'Creidt Card', 4, 20),
(23, '100.00', 'Cash', 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `SPEC_ID` int(11) NOT NULL,
  `SPEC_FIRSTNANE` varchar(45) NOT NULL,
  `SPEC_LASTNAME` varchar(45) NOT NULL,
  `SPEC_ADDRESS` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`SPEC_ID`, `SPEC_FIRSTNANE`, `SPEC_LASTNAME`, `SPEC_ADDRESS`) VALUES
(1, 'Mary', 'Mulcahy', 'Main Street, Ballycotton, Co.Cork'),
(2, 'Michael', 'Murphy', 'Oak Street, Cork town, Co.Cork'),
(3, 'Emma', 'Watson', 'Farm Street, Fermoy, Co.Cork');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `TREAT_ID` int(11) NOT NULL,
  `TREAT_DESC` varchar(90) NOT NULL,
  `TREAT_PRICE` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`TREAT_ID`, `TREAT_DESC`, `TREAT_PRICE`) VALUES
(1, 'Routine Examination/Check-up', '35.00'),
(2, 'Consultation (Exam, diagnosis and treatment plan)', '65.00'),
(3, 'Prescription', '35.00'),
(4, 'Composite filling', '205.00'),
(5, 'Scaling + polishing', '75.00'),
(6, 'PRSI Scaling + polishing', '20.00'),
(7, 'Scaling + sandblasting', '95.00'),
(8, 'PRSI Scaling + sandblasting', '45.00'),
(9, 'Teeth whitening', '305.00'),
(10, 'X-ray', '35.00'),
(11, 'Cancelation fee', '15.00');

-- --------------------------------------------------------

--
-- Structure for view `cork_patients`
--
DROP TABLE IF EXISTS `cork_patients`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cork_patients`  AS SELECT `patients`.`PAT_ID` AS `PAT_ID`, `patients`.`PAT_FIRSTNAME` AS `PAT_FIRSTNAME`, `patients`.`PAT_LASTNAME` AS `PAT_LASTNAME`, `patients`.`PAT_ADDRESS` AS `PAT_ADDRESS`, `patients`.`PAT_SPEC_ID` AS `PAT_SPEC_ID` FROM `patients` WHERE `patients`.`PAT_ADDRESS` like '%Cork%' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`APP_ID`),
  ADD KEY `APP_PAT_ID_idx` (`APP_PAT_ID`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`BILL_ID`),
  ADD KEY `BILL_PAY_ID_idx` (`BILL_PAY_ID`),
  ADD KEY `BILL_PAT_ID_idx` (`BILL_PAT_ID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PAT_ID`),
  ADD KEY `PAT_SPEC_ID_idx` (`PAT_SPEC_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`PAY_ID`),
  ADD KEY `PAY_TREAT_ID_idx` (`PAY_TREAT_ID`),
  ADD KEY `PAY_PAT_ID_idx` (`PAY_PAT_ID`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`SPEC_ID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`TREAT_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`APP_PAT_ID`) REFERENCES `patients` (`PAT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `BILL_PAT_ID` FOREIGN KEY (`BILL_PAT_ID`) REFERENCES `patients` (`PAT_ID`),
  ADD CONSTRAINT `BILL_PAY_ID` FOREIGN KEY (`BILL_PAY_ID`) REFERENCES `payments` (`PAY_ID`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `PAT_SPEC_ID` FOREIGN KEY (`PAT_SPEC_ID`) REFERENCES `specialist` (`SPEC_ID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `PAY_PAT_ID` FOREIGN KEY (`PAY_PAT_ID`) REFERENCES `patients` (`PAT_ID`),
  ADD CONSTRAINT `PAY_TREAT_ID` FOREIGN KEY (`PAY_TREAT_ID`) REFERENCES `treatment` (`TREAT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
