-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 08:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_room`
--

CREATE TABLE `admitpatient_room` (
  `AdmitID` int(11) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Disease` text NOT NULL,
  `RoomNo` varchar(50) NOT NULL,
  `AdmitDate` text NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `AP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admitpatient_room`
--

INSERT INTO `admitpatient_room` (`AdmitID`, `PatientID`, `Disease`, `RoomNo`, `AdmitDate`, `DoctorID`, `AP_Remarks`) VALUES
(7, 'P-1', 'Rambo', '102', '02/03/2020', '2', 'Fine'),
(8, 'P-3', 'Cough', '104', '02/03/2020', '1', 'Ok'),
(9, 'P-4', 'Broken Hand', '102', '18/09/2020', '1', 'Bleeding from hand'),
(10, 'P-10', 'Ibs', '105', '06/03/2020', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_ward`
--

CREATE TABLE `admitpatient_ward` (
  `AdmitID` int(11) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Disease` text NOT NULL,
  `Wardname` varchar(100) NOT NULL,
  `AdmitDate` text NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `AP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admitpatient_ward`
--

INSERT INTO `admitpatient_ward` (`AdmitID`, `PatientID`, `Disease`, `Wardname`, `AdmitDate`, `DoctorID`, `AP_Remarks`) VALUES
(1, 'P-5', 'Tuburculosis', 'A', '02/09/2020', '2', ''),
(2, 'P-6', 'influenza', 'A', '03/09/2020', '1', ''),
(3, 'P-7', 'irosmus', 'A', '04/03/2020', '2', ''),
(4, 'P-8', 'torbi', 'A', '05/03/2020', '1', ''),
(5, 'P-9', 'ibs', 'B', '06/03/2020', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `bill_room`
--

CREATE TABLE `bill_room` (
  `BillNo` int(11) NOT NULL,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` text NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `RoomCharges` double NOT NULL,
  `TotalRoomCharges` double NOT NULL,
  `ServiceCharges` double NOT NULL,
  `TotalCharges` double NOT NULL,
  `PaymentMode` text NOT NULL,
  `PaymentModeDetails` text NOT NULL,
  `ChargesPaid` double NOT NULL,
  `DueCharges` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_room`
--

INSERT INTO `bill_room` (`BillNo`, `DischargeID`, `BillingDate`, `NoOfDays`, `RoomCharges`, `TotalRoomCharges`, `ServiceCharges`, `TotalCharges`, `PaymentMode`, `PaymentModeDetails`, `ChargesPaid`, `DueCharges`) VALUES
(2, 2, '05/03/2020', 2, 2200, 4400, 7300, 11700, 'by Cash', 'cash', 11200, 500),
(3, 3, '21/03/2020', 3, 2200, 6600, 5000, 11600, 'by Cash', 'Cash', 11600, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bill_ward`
--

CREATE TABLE `bill_ward` (
  `BillNo` int(11) NOT NULL,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` text NOT NULL,
  `BedCharges` double NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `TotalBedCharges` double NOT NULL,
  `ServiceCharges` double NOT NULL,
  `TotalCharges` double NOT NULL,
  `PaymentMode` text NOT NULL,
  `PaymentModeDetails` text NOT NULL,
  `ChargesPaid` double NOT NULL,
  `DueCharges` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_ward`
--

INSERT INTO `bill_ward` (`BillNo`, `DischargeID`, `BillingDate`, `BedCharges`, `NoOfDays`, `TotalBedCharges`, `ServiceCharges`, `TotalCharges`, `PaymentMode`, `PaymentModeDetails`, `ChargesPaid`, `DueCharges`) VALUES
(1, 1, '08/03/2020', 2200, 2, 4400, 5000, 9400, 'by Cash', 'Cash', 9400, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bmirecord`
--

CREATE TABLE `bmirecord` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `Sex` varchar(30) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `BMI` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bmirecord`
--

INSERT INTO `bmirecord` (`ID`, `Name`, `Age`, `Sex`, `Date`, `BMI`) VALUES
(1, 'Ishan', 22, 'Male', '21/9/2020', '22.7'),
(2, 'Rakib', 24, 'Male', '21/10/2020', '22.9'),
(3, 'Zidan', 24, 'Male', '22/9/2020', '23.18');

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_room`
--

CREATE TABLE `dischargepatient_room` (
  `ID` int(11) NOT NULL,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` text NOT NULL,
  `DP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dischargepatient_room`
--

INSERT INTO `dischargepatient_room` (`ID`, `AdmitID`, `DischargeDate`, `DP_Remarks`) VALUES
(2, 7, '05/03/2020', ''),
(3, 9, '21/09/2020', 'Ok');

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_ward`
--

CREATE TABLE `dischargepatient_ward` (
  `ID` int(11) NOT NULL,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` text NOT NULL,
  `DP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dischargepatient_ward`
--

INSERT INTO `dischargepatient_ward` (`ID`, `AdmitID`, `DischargeDate`, `DP_Remarks`) VALUES
(1, 5, '08/03/2020', 'Fine');

-- --------------------------------------------------------

--
-- Table structure for table `diseasedictionary`
--

CREATE TABLE `diseasedictionary` (
  `Name` varchar(100) NOT NULL,
  `Cause` varchar(100) NOT NULL,
  `Treatment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diseasedictionary`
--

INSERT INTO `diseasedictionary` (`Name`, `Cause`, `Treatment`) VALUES
('acne', ' blocked skin follicles from a plug caused by oil from glands', 'Keep neat and clean'),
('alopecia areata', 'It is a condition that attacks your hair follicles (they make hair),skin problem', 'Take care of your skin'),
('anemia', 'It is Classified as impaired', 'Have More fruits'),
('arthritis', 'Arthritis is joint inflammation that can cause stiffness or pain', 'Exercise'),
('atopic dermatitis', 'Scratching leads to redness, swelling, cracking, weeping clear fluid, crusting, and scaling.', 'Be Clean'),
('autoimmune diseases', 'when your immune cells attack your body by mistake', 'Trestosk'),
('bursitis', ' It is a common condition that causes swelling and pain around muscles and bones.', 'Exercise'),
('chikungunia', 'mosquito', 'saline'),
('deald', 'the racing around problem', 'd flipflop'),
('demota', 'the rachins', 'stay healthy'),
('dengue', 'bite of dengue mosquito', 'saline'),
('erotham', 'Storing energy', 'stay calm'),
('frem', 'tuirath tkasd tas', 'stay healthy'),
('Ibs', 'hypertension', 'stay cool'),
('influenza', 'Influenza is caused by an influenza virus.', 'Frequent hand washing reduces the risk'),
('insomnia', 'hypertension', 'be relaxed'),
('youtha', 'staying loose', 'dealing collore');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` varchar(50) NOT NULL,
  `DoctorName` text NOT NULL,
  `FatherName` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Qualifications` text NOT NULL,
  `Specialization` text NOT NULL,
  `Gender` text NOT NULL,
  `Bloodgroup` text NOT NULL,
  `DateOfJoining` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `DoctorName`, `FatherName`, `Address`, `ContactNo`, `Email`, `Qualifications`, `Specialization`, `Gender`, `Bloodgroup`, `DateOfJoining`) VALUES
('1', 'Ishan Islam', 'Sirajul Islam', 'Banasree', '01936877669', 'ishanislam22@gmail.com', 'MBBS', 'Heart', 'M', 'B+', '10/10/2019'),
('2', 'Md. Zahidul Haque', 'Md. Abdul Aziz', 'Moulovirtek', '01845223233', 'zahid@gmail.com', 'FCPS,FRCS from England', 'Brain,Neurologist', 'M', 'B-', '10/9/2020');

-- --------------------------------------------------------

--
-- Table structure for table `drugdictionary`
--

CREATE TABLE `drugdictionary` (
  `name` varchar(100) NOT NULL,
  `about` varchar(100) NOT NULL,
  `uses` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drugdictionary`
--

INSERT INTO `drugdictionary` (`name`, `about`, `uses`) VALUES
('acyclovir', 'anti-infection medicine', 'used to treat infections caused by herpes viruses'),
('amoxicillin', 'anti-bacterial medicine', 'used to treat many different types of infection'),
('ebatin', 'cold', 'used to solve cough'),
('Monas', 'Cold', 'Treatment For Cough'),
('Napa', 'painrelief medicine', 'panrelief,Fever'),
('toadr', 'the isa theasda', 'asd toasm asasea'),
('traxyl', 'stopping blood', 'to stop blood'),
('treaa', 'yothasdamls', 'used for treatment'),
('yothas', 'the chilgum', 'for betterment');

-- --------------------------------------------------------

--
-- Table structure for table `patientregistration`
--

CREATE TABLE `patientregistration` (
  `PatientID` varchar(50) NOT NULL,
  `Patientname` text NOT NULL,
  `Fathername` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Gen` text NOT NULL,
  `BG` text NOT NULL,
  `Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patientregistration`
--

INSERT INTO `patientregistration` (`PatientID`, `Patientname`, `Fathername`, `Address`, `ContactNo`, `Email`, `Age`, `Gen`, `BG`, `Remarks`) VALUES
('P-1', 'Fayem Hasan', 'Kabir Hasan', 'Modhubag', '01936822364', 'fayem22@gmail.com', 23, 'M', 'B+', 'Critical Condition'),
('P-10', 'Tushar', 'Zobbar Khan', 'Modhubag', '01292323116', 'tushar@gmail.com', 34, 'M', 'A+', ''),
('P-3', 'Munna', 'Abbas Uddin', 'Modhubag 62/a', '01823231233', 'munna@gmail.com', 23, 'M', 'O+', 'Scars'),
('P-4', 'Ashfaq Siam', 'Romij Khan', 'Motijheel', '01954522222', 'ashfaq@gmail.com', 23, 'M', 'A-', 'bleeding from hand'),
('P-5', 'Raja', 'Romij Khan', 'lalbag', '01934342343', 'ra@gmail.com', 45, 'M', 'B-', ''),
('P-6', 'Taj', 'Siraj khan', 'mohanogo', '01923123111', 'taj@gmail.com', 12, 'M', 'AB+', ''),
('P-7', 'Tonny', 'Aziz Khan', 'mirpur', '0123123123', 'tonny@gmail.com', 35, 'F', 'A+', ''),
('P-8', 'Tanzim', 'Rahmat Mia', 'tikatuli', '0194522223', 'tz@gmail.com', 23, 'M', 'B+', ''),
('P-9', 'Nuru', 'AbbasUddin', 'tangail', '01945678895', 'nuru@gmail.com', 23, 'M', 'B+', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `NameOfUser` varchar(250) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `password`, `NameOfUser`, `ContactNo`, `Email`) VALUES
('Ishan', '12345', 'Tajrian Islam Ishan', '01936877669', 'ishanislam22@gmail.com'),
('Rakib', '54321', 'Rakibul Islam', '0193456789', 'rakib22@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` varchar(50) NOT NULL,
  `RoomType` varchar(100) NOT NULL,
  `RoomCharges` int(11) NOT NULL,
  `RoomStatus` varchar(100) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `RoomType`, `RoomCharges`, `RoomStatus`) VALUES
('101', 'General', 1200, 'Vacant'),
('102', 'Deluxe', 2200, 'Vacant'),
('103', 'General', 1200, 'Vacant'),
('104', 'Deluxe', 2200, 'Booked'),
('105', 'General', 1200, 'Booked'),
('106', 'Deluxe', 2200, 'Vacant'),
('107', 'General', 1200, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ServiceID` int(11) NOT NULL,
  `ServiceName` varchar(250) NOT NULL,
  `ServiceDate` varchar(50) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `ServiceCharges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ServiceID`, `ServiceName`, `ServiceDate`, `PatientID`, `ServiceCharges`) VALUES
(1, 'X-ray Test', '18/09/2020', 'P-1', 2300),
(2, 'COVID-19 Test', '18/09/2020', 'P-1', 5000),
(4, 'Covid-19 Test', '04/03/2020', 'P-3', 5000),
(5, 'Covid-19 Test', '18/09/2020', 'P-4', 5000),
(6, 'X-Ray Test', '02/09/2020', 'P-5', 2300),
(7, 'Covid-19 Test', '03/09/2020', 'P-6', 5000),
(8, 'Covid-19 Test', '08/03/2020', 'P-9', 5000),
(9, 'Oxygen', '04/03/2020', 'P-7', 1000),
(10, 'Oxygen', '05/03/2020', 'P-8', 1000),
(11, 'Covid-19 Test', '06/03/2020', 'P-10', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donors`
--

CREATE TABLE `tbl_donors` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `AGE` varchar(30) DEFAULT NULL,
  `WEIGHT` varchar(10) DEFAULT NULL,
  `BLOOD_GROUP` varchar(10) DEFAULT NULL,
  `LAST_DONATION` varchar(30) DEFAULT NULL,
  `DISEASE` varchar(30) DEFAULT NULL,
  `MOBILE` varchar(15) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_donors`
--

INSERT INTO `tbl_donors` (`ID`, `NAME`, `GENDER`, `AGE`, `WEIGHT`, `BLOOD_GROUP`, `LAST_DONATION`, `DISEASE`, `MOBILE`, `ADDRESS`) VALUES
(1, 'Ishan', 'Male', '23', '70', 'B+', '9/21/2020', 'Insomnia', '01936877669', 'Banasree,Block :A,House:29,Road :6'),
(2, 'Rakib', 'Male', '23', '70', 'B+', '20/9/2020', 'NULL', '0193456789', 'UTTORA'),
(3, 'Fayem', 'MALE', '21', '80', 'A+', '8/9/2020', 'NULL', '01923211111', 'MODHUBAG'),
(4, 'Zahid', 'MALE', '20', '56', 'A-', '7/9/2020', 'NULL', '01923222232', 'MOULOVIRTEK');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `user_password`) VALUES
('Ishan', '12345'),
('Rakib', '54321');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `wardname` varchar(100) NOT NULL,
  `wardtype` varchar(50) NOT NULL,
  `NoOfBeds` int(11) NOT NULL,
  `Charges` int(11) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`wardname`, `wardtype`, `NoOfBeds`, `Charges`) VALUES
('A', 'General', 0, 1300),
('B', 'Special', 4, 2200);

-- --------------------------------------------------------

--
-- Table structure for table `wardboy_nurse_tbl`
--

CREATE TABLE `wardboy_nurse_tbl` (
  `ID` varchar(50) NOT NULL,
  `W_N_Name` varchar(250) NOT NULL,
  `Category` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Qualifications` varchar(250) NOT NULL,
  `BloodGroup` varchar(50) NOT NULL,
  `DateOfJoining` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wardboy_nurse_tbl`
--

INSERT INTO `wardboy_nurse_tbl` (`ID`, `W_N_Name`, `Category`, `Address`, `ContactNo`, `Email`, `Qualifications`, `BloodGroup`, `DateOfJoining`) VALUES
('1', 'Rajib Khan', 'Wardboy', 'Banasree,A Block,House :27,Road: 6', '01931564561', 'rajibkhan22@gmail.com', 'HSC', 'O+', '22/08/2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD PRIMARY KEY (`AdmitID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `DoctorID_2` (`DoctorID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `RoomNo` (`RoomNo`);

--
-- Indexes for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  ADD PRIMARY KEY (`AdmitID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `Wardname` (`Wardname`);

--
-- Indexes for table `bill_room`
--
ALTER TABLE `bill_room`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `DischargeID` (`DischargeID`),
  ADD KEY `DischargeID_2` (`DischargeID`);

--
-- Indexes for table `bill_ward`
--
ALTER TABLE `bill_ward`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `DischargeID` (`DischargeID`);

--
-- Indexes for table `bmirecord`
--
ALTER TABLE `bmirecord`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdmitID` (`AdmitID`);

--
-- Indexes for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdmitID` (`AdmitID`);

--
-- Indexes for table `diseasedictionary`
--
ALTER TABLE `diseasedictionary`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `drugdictionary`
--
ALTER TABLE `drugdictionary`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `patientregistration`
--
ALTER TABLE `patientregistration`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ServiceID`);

--
-- Indexes for table `tbl_donors`
--
ALTER TABLE `tbl_donors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`wardname`);

--
-- Indexes for table `wardboy_nurse_tbl`
--
ALTER TABLE `wardboy_nurse_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  MODIFY `AdmitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  MODIFY `AdmitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bill_room`
--
ALTER TABLE `bill_room`
  MODIFY `BillNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bill_ward`
--
ALTER TABLE `bill_ward`
  MODIFY `BillNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bmirecord`
--
ALTER TABLE `bmirecord`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ServiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_donors`
--
ALTER TABLE `tbl_donors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD CONSTRAINT `admitpatient_room_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`),
  ADD CONSTRAINT `admitpatient_room_ibfk_2` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `admitpatient_room_ibfk_3` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  ADD CONSTRAINT `admitpatient_ward_ibfk_1` FOREIGN KEY (`Wardname`) REFERENCES `ward` (`wardname`),
  ADD CONSTRAINT `admitpatient_ward_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`),
  ADD CONSTRAINT `admitpatient_ward_ibfk_3` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `bill_room`
--
ALTER TABLE `bill_room`
  ADD CONSTRAINT `bill_room_ibfk_1` FOREIGN KEY (`DischargeID`) REFERENCES `dischargepatient_room` (`ID`);

--
-- Constraints for table `bill_ward`
--
ALTER TABLE `bill_ward`
  ADD CONSTRAINT `bill_ward_ibfk_1` FOREIGN KEY (`DischargeID`) REFERENCES `dischargepatient_ward` (`ID`);

--
-- Constraints for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  ADD CONSTRAINT `dischargepatient_room_ibfk_1` FOREIGN KEY (`AdmitID`) REFERENCES `admitpatient_room` (`AdmitID`);

--
-- Constraints for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  ADD CONSTRAINT `dischargepatient_ward_ibfk_1` FOREIGN KEY (`AdmitID`) REFERENCES `admitpatient_ward` (`AdmitID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`username`) REFERENCES `registration` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
