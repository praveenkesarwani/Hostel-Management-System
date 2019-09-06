-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2019 at 09:11 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `Application_id` int(100) NOT NULL,
  `Hostel_id` int(40) NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `Application_status` tinyint(1) DEFAULT NULL,
  `Room_No` int(30) NOT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`Application_id`, `Hostel_id`, `Student_id`, `Application_status`, `Room_No`, `Message`) VALUES
(1, 1, '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `msg_id` int(30) NOT NULL,
  `sender_id` varchar(30) NOT NULL,
  `receiver_id` varchar(30) NOT NULL,
  `Hostel_id` int(30) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `subject_h` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `msg_date` varchar(30) NOT NULL,
  `msg_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`msg_id`, `sender_id`, `receiver_id`, `Hostel_id`, `sender_name`, `subject_h`, `message`, `msg_date`, `msg_time`) VALUES
(1, '50672', '50672', 3, 'Praveen Kesarwani', 'website', 'Awesome Website you have made!!!', '2019-08-29', '04:27 PM'),
(2, '50672', '50672', 2, 'Praveen Kesarwani', 'room', 'room is near toilet', '2019-08-29', '05:04 PM'),
(3, '50672', '1', 2, 'Praveen Kesarwani', 'room ', 'lorem ipsum', '2019-08-29', '05:05 PM'),
(4, '50672', '2', 2, 'Praveen Kesarwani', 'room ', 'lorem ipsum', '2019-08-29', '05:06 PM'),
(5, '50672', '', 0, 'Praveen Kesarwani', 'bsdfkhbskhb', 'kbvskbfskfbsfbsbv vvlfbqk', '2019-08-29', '05:07 PM'),
(6, '50672', '3', 3, 'Praveen Kesarwani', 'vsfjvsfk', 'kjbvksab', '2019-08-29', '06:35 PM'),
(7, '1', '50672', 1, 'Website', 'Its too awesome website', 'binay', '2019-08-30', '01:45 PM'),
(8, '1', '50672', 1, 'binay', 'Website', 'Its too awesome website', '2019-08-30', '01:47 PM'),
(9, '50672', '4', 4, 'Praveen Kesarwani', 'testing', 'testing...', '2019-09-01', '03:50 PM'),
(10, '50672', '1', 1, 'Praveen Kesarwani', 'testing', 'testing...', '2019-09-01', '04:49 PM'),
(11, '1', '50672', 1, 'binay', 'testing', 'testing.......', '2019-09-01', '04:58 PM');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `Hostel_id` int(10) NOT NULL,
  `Hostel_name` varchar(255) NOT NULL,
  `current_no_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_students` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`Hostel_id`, `Hostel_name`, `current_no_of_rooms`, `No_of_rooms`, `No_of_students`) VALUES
(1, 'Tagore Bhawan', NULL, '400', NULL),
(2, 'Patel Bhawan', NULL, '400', NULL),
(3, 'Silver Jubilee', NULL, '400', NULL),
(4, 'vishveshwarya', NULL, '400', NULL),
(5, 'Sarojini Bhawan', NULL, '400', NULL),
(6, 'Mandakini Bhawan', NULL, '400', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_manager`
--

CREATE TABLE `hostel_manager` (
  `Hostel_man_id` int(10) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Hostel_name` varchar(30) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Isadmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_manager`
--

INSERT INTO `hostel_manager` (`Hostel_man_id`, `Username`, `Fname`, `Lname`, `Mob_no`, `Hostel_id`, `Hostel_name`, `Pwd`, `Email`, `Isadmin`) VALUES
(1, 'binay', 'Binay', 'Pandey', '9874561234', 1, 'Tagore Bhawan', 'binay', 'binay@gmail.com', 0),
(2, 'yksingh', 'yk', 'singh', '8844556622', 2, 'Patel Bhawan', 'yksingh', '', 0),
(3, 'Ashok', 'Ashok', 'Kumar', '8855227744', 3, 'Silver Jubilee', 'ashok', '', 0),
(4, 'ratnesh', 'ratnesh', 'srivastav', '7755441122', 4, 'vishveshwarya', 'ratnesh', '', 0),
(5, 'neelam', 'neelam', 'singh', '8855223366', 5, 'Sarojini Bhawan', 'neelam', '', 0),
(6, 'shikha', 'shikha', 'goswami', '8855774469', 6, 'Mandakini Bhawan', 'shikha', '', 0),
(7, 'Admin', 'Praveen ', 'Kesarwani', '8924857666', 1, '', 'Admin', 'pk99411@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(30) NOT NULL,
  `notice-source` varchar(350) NOT NULL,
  `uploader` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice-source`, `uploader`) VALUES
(1, 'upload/profile.jpg', 'pk994111@gmail.com'),
(2, 'upload/profile.jpg', 'pl29411@gmail.com'),
(3, 'upload/Untitled.jpg', 'pk99411@gmail.com'),
(4, 'upload/kumar_shoes.jpg', 'kesari@gmail.com'),
(5, 'upload/Project1.jpg', 'kesaripk@gmail.com'),
(6, 'upload/storm in tea cup.jpg', 'kesari@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_id` int(10) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Room_No` int(10) NOT NULL,
  `Allocated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_id`, `Hostel_id`, `Room_No`, `Allocated`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 2, 1, 0),
(6, 1, 6, 0),
(7, 1, 7, 0),
(8, 1, 8, 0),
(9, 1, 9, 0),
(10, 2, 10, 0),
(11, 1, 11, 0),
(12, 1, 12, 0),
(13, 1, 13, 0),
(14, 1, 14, 0),
(15, 1, 15, 0),
(16, 1, 16, 0),
(17, 1, 17, 0),
(18, 1, 18, 0),
(19, 1, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `Year_of_study` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Hostel_id` int(20) DEFAULT NULL,
  `Room_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Fname`, `Lname`, `Mob_no`, `Dept`, `Year_of_study`, `email`, `Pwd`, `Hostel_id`, `Room_id`) VALUES
('50672', 'Praveen', 'Kesarwani', '8924857666', 'IT', '4', 'pk99411@gmail.com', '123', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`Application_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`Hostel_id`);

--
-- Indexes for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD PRIMARY KEY (`Hostel_man_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `Room_id` (`Room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `Application_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `msg_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `Hostel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  MODIFY `Hostel_man_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `Room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `Room_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
