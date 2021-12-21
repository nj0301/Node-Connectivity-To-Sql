-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 03:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Name` varchar(10) NOT NULL,
  `CourseID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Name`, `CourseID`) VALUES
('English', 1),
('Physics', 2),
('C', 3),
('Java', 4),
('Python', 5);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DeptID` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DeptID`, `Name`) VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'Civil');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_st_cr`
--

CREATE TABLE `mapping_st_cr` (
  `StudentID` int(10) NOT NULL,
  `CourseID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapping_st_cr`
--

INSERT INTO `mapping_st_cr` (`StudentID`, `CourseID`) VALUES
(1001, 1),
(1001, 2),
(1001, 5),
(1002, 1),
(1002, 2),
(1002, 4),
(1002, 5),
(1003, 1),
(1003, 5),
(1004, 2),
(1004, 3),
(1004, 4),
(1004, 5),
(1005, 3),
(1005, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mapping_st_dept`
--

CREATE TABLE `mapping_st_dept` (
  `StudentID` int(10) NOT NULL,
  `DeptID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapping_st_dept`
--

INSERT INTO `mapping_st_dept` (`StudentID`, `DeptID`) VALUES
(1001, 1),
(1002, 1),
(1003, 2),
(1004, 2),
(1005, 3),
(1006, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mapping_st_sports`
--

CREATE TABLE `mapping_st_sports` (
  `StudentID` int(10) NOT NULL,
  `SportsId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapping_st_sports`
--

INSERT INTO `mapping_st_sports` (`StudentID`, `SportsId`) VALUES
(1001, 1),
(1001, 4),
(1002, 2),
(1002, 3),
(1002, 4),
(1003, 1),
(1004, 2),
(1004, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mapping_tr_cr`
--

CREATE TABLE `mapping_tr_cr` (
  `CourseID` int(10) NOT NULL,
  `TeacherID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapping_tr_cr`
--

INSERT INTO `mapping_tr_cr` (`CourseID`, `TeacherID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `Name` text NOT NULL,
  `SportsID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`Name`, `SportsID`) VALUES
('Cricket', 1),
('Football', 2),
('Badminton', 3),
('Table Tennis', 4);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(20) NOT NULL,
  `ID` int(10) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `ID`, `Phone`, `Gender`) VALUES
('Naman', 1001, 987654321, 'Male'),
('Raghav', 1002, 987654312, 'Male'),
('Parth', 1003, 987854321, 'Male'),
('Saksham', 1004, 987694321, 'Male'),
('Chirag', 1005, 987354321, 'Male'),
('Tejinder', 1006, 917654321, 'Male'),
('Varun', 1007, 123456789, 'Male'),
('Rohan', 1008, 79887894, 'Male'),
('Rohan', 1013, 79887894, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Name` varchar(20) NOT NULL,
  `ID` int(10) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Name`, `ID`, `Phone`, `Gender`) VALUES
('SitaRam', 1, 987245612, 'Male'),
('Sushil', 2, 984245612, 'Male'),
('Bean', 3, 987247612, 'Male'),
('Geeta', 4, 937245612, 'Female'),
('Aman', 5, 123456987, 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DeptID`);

--
-- Indexes for table `mapping_st_cr`
--
ALTER TABLE `mapping_st_cr`
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `mapping_st_dept`
--
ALTER TABLE `mapping_st_dept`
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `DeptID` (`DeptID`);

--
-- Indexes for table `mapping_st_sports`
--
ALTER TABLE `mapping_st_sports`
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `SportsId` (`SportsId`);

--
-- Indexes for table `mapping_tr_cr`
--
ALTER TABLE `mapping_tr_cr`
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`SportsID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DeptID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `SportsID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mapping_st_cr`
--
ALTER TABLE `mapping_st_cr`
  ADD CONSTRAINT `mapping_st_cr_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`ID`),
  ADD CONSTRAINT `mapping_st_cr_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`);

--
-- Constraints for table `mapping_st_dept`
--
ALTER TABLE `mapping_st_dept`
  ADD CONSTRAINT `mapping_st_dept_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`ID`),
  ADD CONSTRAINT `mapping_st_dept_ibfk_2` FOREIGN KEY (`DeptID`) REFERENCES `department` (`DeptID`);

--
-- Constraints for table `mapping_st_sports`
--
ALTER TABLE `mapping_st_sports`
  ADD CONSTRAINT `mapping_st_sports_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`ID`),
  ADD CONSTRAINT `mapping_st_sports_ibfk_2` FOREIGN KEY (`SportsId`) REFERENCES `sports` (`SportsID`);

--
-- Constraints for table `mapping_tr_cr`
--
ALTER TABLE `mapping_tr_cr`
  ADD CONSTRAINT `mapping_tr_cr_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `mapping_tr_cr_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `teacher` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
