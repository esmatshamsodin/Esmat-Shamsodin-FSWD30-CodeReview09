-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2018 at 04:07 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_esmat_shamsodin_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `agency_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agency`
--

INSERT INTO `agency` (`agency_id`, `name`, `code`, `phone_number`, `address`) VALUES
(1, 'rentalcar', 123, 2563145, 'sugvd hbcdwj hbjhbchjdjh');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `Car_id` int(11) NOT NULL,
  `type_id_fk` int(11) DEFAULT NULL,
  `brand` varchar(10) DEFAULT NULL,
  `information` varchar(55) DEFAULT NULL,
  `reserved_date` date DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `current_location` varchar(55) DEFAULT NULL,
  `statuss` varchar(55) DEFAULT NULL,
  `model` varchar(55) DEFAULT NULL,
  `insurance_id_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`Car_id`, `type_id_fk`, `brand`, `information`, `reserved_date`, `color`, `capacity`, `current_location`, `statuss`, `model`, `insurance_id_fk`) VALUES
(1, 1, 'pk', 'dcn dfk ikjnjfknfklnr jbvjk jk kn lkdnwlknc w lwknwlnk', '2018-02-01', 'red', 5, 'westbahnhof', 'free', '1998', 1),
(2, 2, 'nc d', 'kdcn ', '2018-02-16', 'blue', 4, 'hauptbahnhof', 'occupied', '2011', 3),
(3, 2, 'dcd', 'dc d fcf ggrgrg ge', '2018-02-27', 'yellow', 2, 'floridsdorf', 'occupied', '2014', 3),
(4, 2, 'mkk', 'jdkd  klfnelkn lk nleknk', '2018-02-04', 'pink', 5, 'westbahnhof', 'free', '2010', 2),
(5, 5, 'kjh', 'ihdwe h fujhfrejfhrkj', '2018-01-10', 'brown', 4, 'hauptbahnhof', 'free', '2009', 5);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `coustomer_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `current_location` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `d_l_s_n` int(11) DEFAULT NULL,
  `register_id_fk` int(11) DEFAULT NULL,
  `login_id_fk` int(11) DEFAULT NULL,
  `reservation_id_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`coustomer_id`, `first_name`, `last_name`, `current_location`, `email`, `mobile`, `d_l_s_n`, `register_id_fk`, `login_id_fk`, `reservation_id_fk`) VALUES
(1, 'Elen', 'pk', 'hauptbahnhof', 'a@gmail.com', 688960011, 123456, 1, 1, 4),
(2, 'maya', 'veg', 'westbahnhof', 'm@yahoo.com', 688962563, 123456, 3, 5, 2),
(3, 'martin', 'weber', 'lutzmansburg', 'm@yahoo.com', 65163, 54156, 3, 5, 3),
(4, 'elena', 'hk', 'ramperstorfergasse', 'l@yahoo.com', 56146, 51635, 2, 2, 5),
(5, 'fred', 'dk', 'floridsdorf', 'k@gmail.com', 51635, 5613561, 4, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `extracosts`
--

CREATE TABLE `extracosts` (
  `extracosts_id` int(11) NOT NULL,
  `serialnumber` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extracosts`
--

INSERT INTO `extracosts` (`extracosts_id`, `serialnumber`, `description`) VALUES
(1, 123456, 'accident '),
(2, 14569, 'didnt fill the gass'),
(3, 14562, 'no extra cost'),
(4, 23698, 'leaving the car not in the pick place.'),
(5, 147895, 'no extra payment.');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `insurance_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`insurance_id`, `name`, `type`) VALUES
(1, 'wgkk', 'full '),
(2, 'kfa', 'full'),
(3, 'pol', 'cover 10%'),
(4, 'lkj', 'cover 60%'),
(5, 'trf', 'full');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `serialnumber` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `datee` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `serialnumber`, `amount`, `datee`) VALUES
(1, 123456, 450, '2018-03-14'),
(2, 14789, 150, '2018-03-06'),
(3, 15987, 100, '2018-02-28'),
(4, 123789, 59, '2018-02-26'),
(5, 365478, 80, '2018-03-14');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passwordd` varchar(10) NOT NULL,
  `account_information` int(11) DEFAULT NULL,
  `statuss` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `passwordd`, `account_information`, `statuss`) VALUES
(1, 'a@gmail.com', '123456', 123456, 'still using'),
(2, 'l@yahoo.com', '123456', 123456, 'waiting of car'),
(3, 'k@yahoo.com', '123456', 123456, 'just finished'),
(4, 's@yahoo.com', '123456', 123456, 'free'),
(5, 'm@gamil.com', '123456', 123456, 'waiting ofcar');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `register_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passwordd` varchar(10) NOT NULL,
  `account_information` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`register_id`, `username`, `passwordd`, `account_information`) VALUES
(1, 'a@gmail.com', '123456', 123456),
(2, 'l@yahoo.com', '123456', 123456),
(3, 'm@yahoo.com', '123456', 123456),
(4, 'k@gmail.com', '123456', 123456),
(5, 'm@yahoo.com', '123456', 123);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `customer_id_fk` int(11) DEFAULT NULL,
  `pick_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `pic_location` varchar(55) DEFAULT NULL,
  `return_location` varchar(55) DEFAULT NULL,
  `invoice_id_fk` int(11) DEFAULT NULL,
  `agency_id_fk` int(11) DEFAULT NULL,
  `car_id_fk` int(11) DEFAULT NULL,
  `extracost_id_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `customer_id_fk`, `pick_date`, `return_date`, `pic_location`, `return_location`, `invoice_id_fk`, `agency_id_fk`, `car_id_fk`, `extracost_id_fk`) VALUES
(2, 2, '2018-02-07', '2018-02-14', 'hauotbahnhof', 'stephanplaz', 1, 1, 4, 4),
(3, 3, '2018-02-28', '2018-03-26', 'floridsdorf', 'floridsdorf', 3, 1, 2, 1),
(4, 4, '2018-02-02', '2018-02-02', 'adc', 'cdvc', 5, 1, 3, 2),
(5, 5, '2018-02-11', '2018-02-15', 'klnvklf', 'ksdjbcnks', 4, 1, 4, 5),
(100, 0, '2018-02-16', '2018-02-18', 'westbahnhof', 'westbahnhof', 1, 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_lable` varchar(20) DEFAULT NULL,
  `type_information` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_lable`, `type_information`) VALUES
(1, 'kkjhjk', 'bc hjv ch jj jhdjvjhdhjd jh '),
(2, 'lmklk', 'djcnks kj kjkjrhb kjrkrj '),
(3, 'dcf', 'fvedvf'),
(4, 'fvesfv', 'djkdbsk rbfk jwfj'),
(5, 'hjsdbchj', 'kjwedbh jrhwjekjf k');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`agency_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`Car_id`),
  ADD KEY `insurance_id_fk` (`insurance_id_fk`),
  ADD KEY `type_id_fk` (`type_id_fk`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`coustomer_id`),
  ADD KEY `reservation_id_fk` (`reservation_id_fk`),
  ADD KEY `login_id_fk` (`login_id_fk`),
  ADD KEY `register_id_fk` (`register_id_fk`);

--
-- Indexes for table `extracosts`
--
ALTER TABLE `extracosts`
  ADD PRIMARY KEY (`extracosts_id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`insurance_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`register_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `car_id_fk` (`car_id_fk`),
  ADD KEY `agency_id_fk` (`agency_id_fk`),
  ADD KEY `extracost_id_fk` (`extracost_id_fk`),
  ADD KEY `invoice_id_fk` (`invoice_id_fk`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`insurance_id_fk`) REFERENCES `insurance` (`insurance_id`),
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`type_id_fk`) REFERENCES `type` (`type_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`reservation_id_fk`) REFERENCES `reservation` (`reservation_id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`reservation_id_fk`) REFERENCES `reservation` (`reservation_id`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`login_id_fk`) REFERENCES `login` (`login_id`),
  ADD CONSTRAINT `customer_ibfk_4` FOREIGN KEY (`register_id_fk`) REFERENCES `register` (`register_id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`car_id_fk`) REFERENCES `car` (`Car_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`agency_id_fk`) REFERENCES `agency` (`agency_id`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`extracost_id_fk`) REFERENCES `extracosts` (`extracosts_id`),
  ADD CONSTRAINT `reservation_ibfk_4` FOREIGN KEY (`invoice_id_fk`) REFERENCES `invoice` (`invoice_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
