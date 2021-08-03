-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2018 at 02:37 PM
-- Server version: 5.5.52-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djuhascik01`
--

--
-- Truncate table before insert `Assignment`
--

TRUNCATE TABLE `Assignment`;
--
-- Dumping data for table `Assignment`
--

INSERT INTO `Assignment` (`ProjectID`, `EmployeeID`) VALUES
(5, 7),
(5, 2),
(2, 8),
(6, 4),
(5, 10),
(6, 5),
(6, 2),
(4, 2);

--
-- Truncate table before insert `Contract`
--

TRUNCATE TABLE `Contract`;
--
-- Dumping data for table `Contract`
--

INSERT INTO `Contract` (`ContractID`, `Title`, `Start`, `DueFinish`, `ActualFinish`, `EmployeeID`) VALUES
(1, 'Intern Contract 2018', '2018-01-01', '2019-01-01', NULL, 11),
(2, 'Director Contract', '2005-05-13', '2019-05-13', '2009-01-12', 1),
(3, 'Director Contract', '2017-01-01', '2027-01-01', NULL, 2);

--
-- Truncate table before insert `Employee`
--

TRUNCATE TABLE `Employee`;
--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`EmployeeID`, `Title`, `FirstName`, `LastName`, `Email`, `Joined`, `Left`, `Current`, `Phone`, `GradeID`, `Manager`) VALUES
(1, 'Dr', 'Daniel', 'Dare', 'dan@wwi.com', '2005-05-13', '2009-01-12', 0, '', 12, NULL),
(2, 'Lady', 'Sarah', 'Important', 'sarah@wwi.com', '2005-06-15', NULL, 1, '', 12, NULL),
(3, 'Ms', 'Alice', 'Alive', 'alice.alive@wwi.com', '2010-06-15', NULL, 1, '', 10, 2),
(4, 'Dr', 'Xander', 'Mander', 'x@wwi.com', '2010-04-18', NULL, 1, '555-1234', 9, 3),
(5, 'Professor', 'Jenny', 'Generator', 'jenny@wwi.com', '2011-12-23', NULL, 1, '', 8, 4),
(6, 'Ms', 'Gemma', 'Hardasnails', 'gemma@wwi.com', '2011-08-13', NULL, 1, '2222', 7, 2),
(7, 'HRH', 'Prince', 'Caspian', 'prince@wwi.com', '2017-09-01', NULL, 1, '000-111', 4, 5),
(8, 'Mr', 'Brian', 'Knuckles', 'knuckleduster@wwi.com', '2008-07-01', '2010-09-30', 0, '', 6, 6),
(9, 'Mr', 'Bob', 'Punch', 'bob@wwi.com', '2008-07-01', NULL, 1, '2222', 6, 6),
(10, 'Mrs', 'Natalie', 'Nononsense', 'natalie@wwi.com', '2010-10-13', NULL, 1, '2222', 6, 6),
(11, 'Mr', 'Euan', 'Young', 'euan@wwi.com', '2017-11-01', NULL, 1, '', 1, 7);

--
-- Truncate table before insert `EmployeeSkill`
--

TRUNCATE TABLE `EmployeeSkill`;
--
-- Dumping data for table `EmployeeSkill`
--

INSERT INTO `EmployeeSkill` (`EmployeeID`, `SkillID`, `DateAchieved`) VALUES
(7, 10, '2016-05-18'),
(4, 7, '2017-08-23'),
(6, 3, '2018-01-11'),
(2, 1, '2007-11-14'),
(11, 7, '2018-02-11'),
(10, 4, '2017-12-01'),
(7, 7, '2018-01-12'),
(7, 8, '2018-01-12');

--
-- Truncate table before insert `Equipment`
--

TRUNCATE TABLE `Equipment`;
--
-- Dumping data for table `Equipment`
--

INSERT INTO `Equipment` (`EquipmentID`, `Type`, `Make`, `Model`, `Description`, `OperationNotes`, `Damaged`) VALUES
(1, 'Phone', 'Samsung', 'S9', 'Samsung S9 Mobile Phone', 'Insert SIM and switch on', 0),
(2, 'Phone', 'Samsung', 'S9', 'Samsung S9 Mobile Phone', 'Insert SIM and switch on', 0),
(3, 'Hotspot', 'Huwai', 'Hotspot XL', 'Mobile 4G Hotspot', 'Charge with micro USB. Turn on and wait for green light to show solid (stop flashing).\r\n\r\nSSID WWIMobile\r\nWPA2 EnterTheInternet', 0),
(4, 'Tablet', 'Apple', 'iPad', 'Apple iPad Large', 'Large screen Apple iPad', 1),
(5, 'Extension Cable', NULL, NULL, '10m Orange 1 gang extension cable', 'Plug in, done', 0),
(6, 'Magic Box', 'Wizard', 'MagicBox 2', 'A magic box', 'Do not open the magic box', 0),
(7, 'Video Camera', 'Sony', 'DV-24-6ABX', 'Sony DV Video Camera', 'Insert digital 8 tape, charge and switch on.', 0),
(8, 'Camera', 'Pentax', 'PX-50', 'Pentax SLR camera capable of video', 'Use SD card, AA batteries in compartment', 0),
(9, 'Camera', 'Canon', '5D-III', 'Canon 5D Mark 3 SLR and Video Camera', 'Full frame 5D camera - charge and use', 1),
(10, 'Camera', 'Canon', '4Z', 'Canon 4Z stills and video camera', 'Turn on, point, shoot', 0);

--
-- Truncate table before insert `EquipmentLoan`
--

TRUNCATE TABLE `EquipmentLoan`;
--
-- Dumping data for table `EquipmentLoan`
--

INSERT INTO `EquipmentLoan` (`EmployeeID`, `EquipmentID`, `StartDate`, `EndDate`, `Current`, `Notes`) VALUES
(7, 3, '2017-03-11', NULL, 1, 'For use demoing to customers'),
(2, 1, '2018-01-13', '2018-01-14', 0, 'On call borrowed phone'),
(11, 6, '2018-02-01', '2019-11-11', 1, 'Lent the intern the magic box TO GUARD AND NOT OPEN'),
(11, 4, '2017-12-01', '2017-12-05', 0, 'Lend iPad - came back damaged'),
(11, 10, '2018-02-01', '2019-02-01', 1, 'Loan of video camera for promotional filming');

--
-- Truncate table before insert `Expense`
--

TRUNCATE TABLE `Expense`;
--
-- Dumping data for table `Expense`
--

INSERT INTO `Expense` (`ExpenseID`, `EmployeeID`, `ProjectID`, `Description`, `Amount`, `Paid`) VALUES
(1, 4, 5, 'Lunch for plotting', 138.6, 1),
(2, 7, 2, 'Phone charger', 17.99, 1),
(3, 4, NULL, 'Wine to help me forget', 38.2, 1),
(4, 11, NULL, 'Tea for the office', 3.99, 0),
(5, 11, 5, 'Large Fake Octopus', 99.99, 1),
(6, 9, 5, 'Monorail Survey', 1200, 1);

--
-- Truncate table before insert `FileItem`
--

TRUNCATE TABLE `FileItem`;
--
-- Dumping data for table `FileItem`
--

INSERT INTO `FileItem` (`ItemID`, `Title`, `Location`, `EmployeeID`) VALUES
(1, 'Royal crown', 'Vault C', 7),
(2, 'Letter of commendation', 'S:\\HR\\Employees\\Commendation-787.docx', 10);

--
-- Truncate table before insert `Grade`
--

TRUNCATE TABLE `Grade`;
--
-- Dumping data for table `Grade`
--

INSERT INTO `Grade` (`GradeID`, `Title`, `Code`, `SpineMin`, `SpineMax`) VALUES
(1, 'Intern', 'ITN', 1, 3),
(2, 'Admin Assistant', 'ADMIN', 2, 6),
(3, 'Admin Supervisor', 'ADMSUP', 5, 11),
(4, 'Admin Office Manager', 'ADMMGR', 10, 15),
(5, 'Receptionist', 'RECEP', 3, 8),
(6, 'Security', 'SEC', 4, 9),
(7, 'Security Team Leader', 'SECTL', 6, 10),
(8, 'Widget Maker', 'WIDGET', 6, 15),
(9, 'Senior Engineer', 'SNRENG', 10, 20),
(10, 'Production Manager', 'PRODMGR', 11, 21),
(11, 'Senior Manager', 'SNRMGR', 15, 30),
(12, 'Director', 'DIR', 12, 30);

--
-- Truncate table before insert `Payslip`
--

TRUNCATE TABLE `Payslip`;
--
-- Dumping data for table `Payslip`
--

INSERT INTO `Payslip` (`PayslipID`, `EmployeeID`, `Taxable`, `NonTaxable`, `IncomeTax`, `NationalInsurance`, `NetPay`, `Payday`, `TransferDay`, `TransferRef`) VALUES
(1, 4, 8000, 500, 1600, 400, 6500, '2018-02-01', '2018-01-31', 'XFR-LLOYD-71429'),
(2, 4, 8000, 500, 1600, 400, 6500, '2018-02-28', '2018-02-28', 'XFR-LLOYD-89234'),
(3, 2, 6000, 0, 2500, 500, 3000, '2017-04-30', '2017-04-29', 'MORDOR-666'),
(4, 4, 4000, 500, 1000, 300, 3200, '2017-09-30', '2017-09-28', 'XFER-FISHFISHFISH');

--
-- Truncate table before insert `Project`
--

TRUNCATE TABLE `Project`;
--
-- Dumping data for table `Project`
--

INSERT INTO `Project` (`ProjectID`, `Title`, `Notes`, `Internal`, `Sensitive`, `Started`, `Ended`) VALUES
(1, 'Mega Widgets', 'A massive widget project to build the biggest ever widget ever seen', 1, 0, '2005-02-01', '2007-03-11'),
(2, 'World Domination', 'The ongoing project to achieve utter and complete world domination', 1, 1, '2010-01-01', NULL),
(3, 'Widgets for All', 'Global widget project for customer', 0, 0, '2012-11-14', NULL),
(4, 'Blue Widget', 'Blue widget project', 1, 0, '2013-01-18', '2013-01-30'),
(5, 'Project Octopus', 'Project Octopus.\r\n\r\nSuper-secret for external customer who shall not be named.', 0, 1, '2009-04-07', NULL),
(6, 'Green Widgets', 'Can we build green widgets?', 1, 0, '2010-04-17', NULL);

--
-- Truncate table before insert `Skill`
--

TRUNCATE TABLE `Skill`;
--
-- Dumping data for table `Skill`
--

INSERT INTO `Skill` (`SkillID`, `Title`) VALUES
(3, 'Cage Fighting'),
(9, 'Copy writing'),
(2, 'Database Design'),
(10, 'Flemish Horse Riding'),
(1, 'SQL'),
(4, 'Unicycling'),
(7, 'Video Editing'),
(8, 'Video Filming'),
(6, 'Widget Consultancy'),
(5, 'Widget Design');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
