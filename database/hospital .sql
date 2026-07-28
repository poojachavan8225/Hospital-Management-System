-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2025 at 04:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `adddoc`
--

CREATE TABLE `adddoc` (
  `DoctorID` int(11) NOT NULL,
  `firstname` varchar(110) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Contactno` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Qualification` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `Gender` varchar(200) NOT NULL,
  `DateJoining` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adddoc`
--

INSERT INTO `adddoc` (`DoctorID`, `firstname`, `lastname`, `Contactno`, `Email`, `Qualification`, `Age`, `Gender`, `DateJoining`) VALUES
(11, 'Dhiraj', 'shingate', '1234567890', 'dhiraj123@gmail.com', 'bhms', '34', 'Male', '2025-10-29'),
(12, 'Miss', 'shingate', '0987654325', 'dhiraj123@gmail.com', 'bhms', '33', 'Male', '2025-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `admit`
--

CREATE TABLE `admit` (
  `PatientID` int(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Gender` varchar(200) NOT NULL,
  `Blood_Group` varchar(200) NOT NULL,
  `Disease` varchar(200) NOT NULL,
  `Admit_Date` varchar(200) NOT NULL,
  `Room` varchar(200) NOT NULL,
  `bedno` varchar(30) NOT NULL,
  `Doctor_ID` int(200) NOT NULL,
  `Doctor_Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admit`
--

INSERT INTO `admit` (`PatientID`, `Name`, `Gender`, `Blood_Group`, `Disease`, `Admit_Date`, `Room`, `bedno`, `Doctor_ID`, `Doctor_Name`) VALUES
(1, 'pooja', 'female', 'A+', 'headaches', '2025-10-27', 'ICU', 'ICUBed no3', 11, 'Dr.Dhiraj Shingate'),
(2, 'Aniket patil', 'Male', 'A+', 'fever', '2025-10-27', 'ICU', 'ICU Bed no1', 12, 'Dr.Dhiraj Shingate'),
(3, 'pratiksha', 'female', 'B+', 'stomachache', '2025-10-27', 'ICU', 'ICU Bed no4', 11, 'Dr.Dhiraj Shingate'),
(12, 'ajay chavan', 'Male', 'O+', 'cold', '2025-10-27', 'ICU', 'ICU Bed no4', 11, 'Dr.Dhiraj Shingate'),
(22, 'sakshi', 'female', 'AB+', 'malaria', '2025-10-29', 'Genaral room', 'Bed no3', 11, 'Dr.Dhiraj Shingate');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `PatientID` int(10) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Gender` varchar(200) NOT NULL,
  `Disease` varchar(200) NOT NULL,
  `AdmitDate` date NOT NULL,
  `Room` varchar(200) NOT NULL,
  `Dischargedate` date NOT NULL,
  `Rcharges` varchar(200) NOT NULL,
  `Nodays` varchar(200) NOT NULL,
  `TRcharges` varchar(200) NOT NULL,
  `Treatmentcha` varchar(200) NOT NULL,
  `Billingdate` date NOT NULL,
  `Paymentmode` varchar(200) NOT NULL,
  `Totalcharges` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`PatientID`, `Name`, `Gender`, `Disease`, `AdmitDate`, `Room`, `Dischargedate`, `Rcharges`, `Nodays`, `TRcharges`, `Treatmentcha`, `Billingdate`, `Paymentmode`, `Totalcharges`) VALUES
(1, 'pooja', 'female', 'headaches', '2025-10-27', 'ICU', '2025-10-28', '2000.00', '2', '2000.00', '1000', '2025-10-28', 'online', '3000.00'),
(12, 'ajay chavan', 'Male', 'cold', '2025-10-27', 'ICU', '2025-11-01', '5000.00', '5', '5000.00', '1000', '2025-11-01', 'online', '6000.00');

-- --------------------------------------------------------

--
-- Table structure for table `discharge`
--

CREATE TABLE `discharge` (
  `PatientID` int(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Blood_Group` varchar(50) NOT NULL,
  `Disease` varchar(200) NOT NULL,
  `AdmitDate` date NOT NULL,
  `Room` varchar(20) NOT NULL,
  `bedno` varchar(200) NOT NULL,
  `DoctorID` int(11) NOT NULL,
  `DoctorName` varchar(200) NOT NULL,
  `DischargeDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discharge`
--

INSERT INTO `discharge` (`PatientID`, `Name`, `Blood_Group`, `Disease`, `AdmitDate`, `Room`, `bedno`, `DoctorID`, `DoctorName`, `DischargeDate`) VALUES
(1, 'pooja', 'A+', 'headaches', '2025-10-27', 'ICU', 'ICUBed no3', 11, 'Dr.Dhiraj Shingate', '2025-10-31'),
(12, 'ajay chavan', 'O+', 'cold', '2025-10-27', 'ICU', 'ICU Bed no4', 11, 'Dr.Dhiraj Shingate', '2025-10-30'),
(22, 'sakshi', 'AB+', 'malaria', '2025-10-29', 'Genaral room', 'Bed no3', 11, 'Dr.Dhiraj Shingate', '2025-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('', ''),
('pooja', 'pooja@123'),
('pooja', 'pooja@123'),
('pooja', 'pooja@123'),
('', ''),
('pooja', 'pooja123'),
('pooja', 'pooja@123'),
('', ''),
('pooja', 'pooja@123');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientID` int(20) NOT NULL,
  `PatientName` varchar(200) NOT NULL,
  `Lastname` varchar(200) NOT NULL,
  `Contactno` varchar(200) NOT NULL,
  `EmailID` varchar(200) NOT NULL,
  `Age` varchar(200) NOT NULL,
  `Gender` varchar(200) NOT NULL,
  `BloodGroup` varchar(200) NOT NULL,
  `Symptoms` varchar(200) NOT NULL,
  `Diagnosis` varchar(200) NOT NULL,
  `DrID` int(10) NOT NULL,
  `DrName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `PatientName`, `Lastname`, `Contactno`, `EmailID`, `Age`, `Gender`, `BloodGroup`, `Symptoms`, `Diagnosis`, `DrID`, `DrName`) VALUES
(7, 'Adarsh ', 'Raut', '09876543766', 'ppoiuytrf', '16', 'Male', 'B+', 'ear pain', 'ear infection', 11, 'Dr.Dhiraj Shingate'),
(12, 'ajay chavan', 'chavan', '098765432', 'ajay123@gmail.com', '22', 'Male', 'O+', 'cold', 'cold', 11, 'Dr.Dhiraj Shingate');

-- --------------------------------------------------------

--
-- Table structure for table `registeration`
--

CREATE TABLE `registeration` (
  `AdminName` varchar(200) NOT NULL,
  `Contactno` varchar(10) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registeration`
--

INSERT INTO `registeration` (`AdminName`, `Contactno`, `Address`, `Email`, `username`, `password`) VALUES
('pooja', '0987654321', 'indapur', 'pooja@gmial.com', 'pooja', 'pooja123'),
('pooja', '0987654321', 'indapur', 'pooja@gmial.com', 'pooja', 'pooja123'),
('', '', '', '', '', ''),
('pooja', '9876543456', 'indapur', 'pooja12@gmail.com', 'pooja', 'pooja@123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adddoc`
--
ALTER TABLE `adddoc`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `admit`
--
ALTER TABLE `admit`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `discharge`
--
ALTER TABLE `discharge`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
