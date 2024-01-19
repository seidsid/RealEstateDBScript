-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2024 at 06:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nur_real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` varchar(36) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `first_name`, `last_name`, `password`, `role`) VALUES
('291707ac-aabd-11ee-901b-76a5d747dc7a', 'First80', 'Last57', 'Pass47', 'Role'),
('2aa9f894-4c01-4ad9-2334-08dc184cc297', 'Kalid', 'Nuredin', 'Kalid123', 'Admin'),
('33f9b7de-b679-4c23-3722-08dc1729e92d', 'Kalid', 'Nuredin', 'Kalid123', 'Admin'),
('8bfcbcc8-1472-4bff-6e64-08dc18a9fa82', 'Kalid', 'Nuredin', 'Kalid123', 'Admin'),
('a77f9e37-aabc-11ee-901b-76a5d747dc7a', 'First36', 'Last34', 'Pass64', 'Role'),
('c7758e12-7f87-4bb5-8a39-08dc184292d3', 'Kalid', 'Nuredin', 'Kalid123', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` varchar(36) NOT NULL,
  `property_id` varchar(36) NOT NULL,
  `house_no` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `sub_city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `property_id`, `house_no`, `city`, `sub_city`) VALUES
('803d2b17-9660-4c84-c32c-08dc184cd063', '833e1af2-a607-4a45-2c25-08dc0ce2231f', '588', 'Addis Abeba', 'Gulelle'),
('9d370b3b-0ffb-4915-75c8-08dc1835251a', '833e1af2-a607-4a45-2c25-08dc0ce2231f', '588', 'Addis Abeba', 'Gulelle'),
('c8a1e463-d985-43bc-e22a-08dc17184490', '833e1af2-a607-4a45-2c25-08dc0ce2231f', '588', 'Addis Abeba', 'Gulelle'),
('e46a18db-7896-40a8-159b-08dc18aa218a', '833e1af2-a607-4a45-2c25-08dc0ce2231f', '588', 'Addis Abeba', 'Gulelle');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(36) NOT NULL,
  `contact_id` varchar(36) NOT NULL,
  `account_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `contact_id`, `account_id`) VALUES
('637a96f4-659a-43b6-3f43-08dc18aa2b3b', 'e74d662d-aabc-11ee-901b-76a5d747dc7a', 'a77f9e37-aabc-11ee-901b-76a5d747dc7a'),
('9acd83f3-0e84-46c1-7fef-08dc184ce299', 'e74d662d-aabc-11ee-901b-76a5d747dc7a', 'a77f9e37-aabc-11ee-901b-76a5d747dc7a'),
('9cd5ded3-08b2-4d75-119c-08dc1836220c', 'e74d662d-aabc-11ee-901b-76a5d747dc7a', 'a77f9e37-aabc-11ee-901b-76a5d747dc7a'),
('dc121fb2-602d-4643-7fee-08dc184ce299', 'e74d662d-aabc-11ee-901b-76a5d747dc7a', 'a77f9e37-aabc-11ee-901b-76a5d747dc7a');

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` varchar(36) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `languages` varchar(100) NOT NULL,
  `experience_since` datetime NOT NULL,
  `contact_id` varchar(36) NOT NULL,
  `account_id` varchar(36) NOT NULL,
  `admin_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `nationality`, `languages`, `experience_since`, `contact_id`, `account_id`, `admin_id`) VALUES
('c3a1713f-1668-4980-6c68-08dc18aa388c', 'Ethiopian', 'Amharic, English, Arabic', '2012-01-04 00:00:00', 'e74d662d-aabc-11ee-901b-76a5d747dc7a', 'a77f9e37-aabc-11ee-901b-76a5d747dc7a', '9acd83f3-0e84-46c1-7fef-08dc184ce299');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` varchar(36) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `whatsapp_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `phone_no`, `email`, `whatsapp_no`) VALUES
('291e5d4c-aabd-11ee-901b-76a5d747dc7a', '+6254958749', 'email71@example.com', '+7031829074'),
('57d779b0-c1ec-4df6-39e8-08dc18aa474d', '0910101010', 'email@gmail.com', '251910101010'),
('a0610f95-830b-49d5-a704-08dc1843dc0d', '0910101010', 'email@gmail.com', '251910101010'),
('e170b93e-917e-4ae3-5c84-08dc184dde47', '0910101010', 'email@gmail.com', '251910101010'),
('e74d662d-aabc-11ee-901b-76a5d747dc7a', '+2069086425', 'email8@example.com', '+8125195119'),
('f8e2b7eb-b50c-11ee-b5ee-07ee9318bd6e', '0953859805', 'kalid@gmil.com', '251953859805');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `property_id` varchar(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `property_type` varchar(255) NOT NULL,
  `property_size` int(11) NOT NULL,
  `no_bedrooms` int(11) NOT NULL,
  `no_bathrooms` int(11) NOT NULL,
  `has_maidsRoom` tinyint(1) NOT NULL,
  `no_parking` int(11) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `agent_id` varchar(36) NOT NULL,
  `listed_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`property_id`, `title`, `description`, `price`, `property_type`, `property_size`, `no_bedrooms`, `no_bathrooms`, `has_maidsRoom`, `no_parking`, `user_id`, `agent_id`, `listed_date`, `status`) VALUES
('33d42598-3c8b-4d93-2192-08dc18aad5cc', 'title', 'description', 12, 'prop type', 1232, 4, 2, 1, 3, 'f78051ba-aabd-11ee-901b-76a5d747dc7a', 'c3a1713f-1668-4980-6c68-08dc18aa388c', '2024-01-04 00:00:00', 'Active'),
('833e1af2-a607-4a45-2c25-08dc0ce2231f', 'title', 'description', 12, 'prop type', 1232, 4, 2, 1, 3, 'f78051ba-aabd-11ee-901b-76a5d747dc7a', '99852525-aabd-11ee-901b-76a5d747dc7a', '2024-01-04 00:00:00', 'Active'),
('fc613970-1678-4cb8-4e50-08dc18348282', 'title', 'description', 12, 'prop type', 1232, 4, 2, 1, 3, 'f78051ba-aabd-11ee-901b-76a5d747dc7a', '99852525-aabd-11ee-901b-76a5d747dc7a', '2024-01-04 00:00:00', 'Active'),
('fd3dc96c-88c5-4f22-e86f-08dc184de99d', 'title', 'description', 12, 'prop type', 1232, 4, 2, 1, 3, 'f78051ba-aabd-11ee-901b-76a5d747dc7a', '99852525-aabd-11ee-901b-76a5d747dc7a', '2024-01-04 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(36) NOT NULL,
  `contact_id` varchar(36) NOT NULL,
  `account_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `contact_id`, `account_id`) VALUES
('014315fb-fe1a-4e4d-8a5e-08dc18448d6b', 'e74d662d-aabc-11ee-901b-76a5d747dc7a', 'a77f9e37-aabc-11ee-901b-76a5d747dc7a'),
('4d700d2b-9d4e-4538-0b97-08dc184df9f4', 'e74d662d-aabc-11ee-901b-76a5d747dc7a', 'a77f9e37-aabc-11ee-901b-76a5d747dc7a'),
('56b12024-c60c-46a7-8a5f-08dc18448d6b', 'e74d662d-aabc-11ee-901b-76a5d747dc7a', 'a77f9e37-aabc-11ee-901b-76a5d747dc7a'),
('8aaa4994-32f3-44e8-6fcd-08dc18aae83e', 'e74d662d-aabc-11ee-901b-76a5d747dc7a', 'a77f9e37-aabc-11ee-901b-76a5d747dc7a'),
('f78051ba-aabd-11ee-901b-76a5d747dc7a', 'e74d662d-aabc-11ee-901b-76a5d747dc7a', 'a77f9e37-aabc-11ee-901b-76a5d747dc7a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `contact_id` (`contact_id`,`account_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`),
  ADD KEY `contact_id` (`contact_id`,`account_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `agent_ibfk_3_idx` (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`property_id`),
  ADD KEY `user_id` (`user_id`,`agent_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `admin_ibfk_3` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `agent_ibfk_3` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `agent_ibfk_4` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`agent_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `property_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
