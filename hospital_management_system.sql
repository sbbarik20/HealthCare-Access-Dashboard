-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 11:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_answer`
--

CREATE TABLE `add_answer` (
  `student_id` varchar(50) NOT NULL,
  `exam_date` date NOT NULL DEFAULT current_timestamp(),
  `student_answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `student_mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `sl_no` int(11) NOT NULL,
  `dr_name` varchar(50) NOT NULL,
  `specialist` varchar(40) NOT NULL,
  `pt_name` varchar(50) NOT NULL,
  `pt_phone` varchar(50) NOT NULL,
  `pt_email` varchar(50) NOT NULL,
  `apt_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`sl_no`, `dr_name`, `specialist`, `pt_name`, `pt_phone`, `pt_email`, `apt_date`, `status`) VALUES
(1, 'Doctor 2', 'Dentist', 'omm', '7989998989889', 'admin@123', '2024-05-02', 1),
(5, 'Doctor 2', 'Cardiology', 'Sonali ', '7453845561', 'sonali@gmail.com', '2024-04-24', 0),
(6, 'Doctor 2', 'Cardiology', 'Sonali ', '7453845561', 'sonali@gmail.com', '2024-04-24', 0),
(7, 'Doctor 1', 'Dentist', 'Somu', '8859749403', 'somu@gmail.com', '2024-04-26', 0),
(8, 'Doctor 1', 'Dentist', 'sonu', '8765432190', 'sonu@gmail.com', '2024-04-20', 0),
(9, 'Doctor 2', 'ENT Specialist', 'Om', '8859749403', 'padam@gmail.com', '2024-04-26', 1),
(10, 'Doctor 3', 'Orthopedic', 'ommm', '8765432190', 'sonu@gmail.com', '2024-05-02', 1),
(11, 'Doctor 3', 'Orthopedic', 'sonu', '8859749403', 'shailu1234@gmail.com', '2024-04-18', 1),
(12, 'Doctor 1', 'Dentist', 'kkkkkk', '7453845561', 'govind@gmail.com', '2024-05-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sl_no` int(11) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sl_no`, `msg`, `name`, `email`, `subject`) VALUES
(1, 'Hospital opening time?', 'Sahil', 'java.class.0101@gmail.com', 'time of hospital'),
(2, 'what facilities are given?', 'Amit', 'java.class.0101@gmail.com', 'Facilities provided'),
(3, 'Is Bed available on 1st may?', 'kittu', 'java.class.0101@gmail.com', 'Bed Availability '),
(4, 'Explain about cleanliness?', 'sweta', 'java.class.0101@gmail.com', 'cleanliness Update'),
(6, 'asfsgfdgfdgfdgfgfg', 'om', 'sonu@gmail.com', 'grdhghlgf'),
(7, '', '', '', ''),
(8, 'afdsfsdf', '', '', ''),
(9, '', '', '', ''),
(10, '', '', '', ''),
(11, 'sdfsdf', 'fdsd', 'java.class.0101@gmail.com', 'fsdf'),
(12, 'dsds', 'dasads', 'java.class.0101@gmail.com', 'fdgzdgzdfvg'),
(13, 'gjjgh', 'jghhh', 'java.class.0101@gmail', 'jgjhg'),
(14, 'hjhgj', 'ghfhfhfj', 'java.class.0101@gmail.com', 'hjghj'),
(15, 'nvnhvh', 'nhvvnhhn', 'admin@gmail.com', 'hfhfhh'),
(16, 'jkjksckkds', 'shailu', 'padam@gmail.com', 'hurrrrr'),
(17, 'adsasd', 'ommm', 'admin@123', 'sadfsadasda'),
(18, 'SASS', 'ommm', 'java.class.0101@gmail.com', 'sadfsadasda');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `sl_no` int(11) NOT NULL,
  `questions` varchar(200) NOT NULL,
  `answers` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`sl_no`, `questions`, `answers`) VALUES
(1, 'What are the hospital\'s visiting hours?', 'isiting hours at Blue and White Hospital are from 10:00 AM to 8:00 PM daily. However, exceptions may apply in certain units or under special circumstances.'),
(2, 'How can I schedule an appointment with a doctor?', 'To schedule an appointment, you can call our appointment desk at [insert phone number] or use our convenient online appointment booking system on our website.'),
(3, 'What services does the hospital offer?', 'Patients often want to know the range of medical services available at a hospital, including specialties, diagnostics, and treatments.'),
(4, 'What insurance plans do you accept?', 'Patients want to know if their insurance will cover the services provided by the hospital, so they often ask about accepted insurance plans.'),
(5, 'What should I bring for my hospital stay?', 'Patients may need information on what items to bring, such as personal hygiene products, comfortable clothing, and any necessary medical documents.'),
(6, 'What are the discharge procedures?', 'Patients often want to know what steps they need to take upon discharge, including medication instructions, follow-up appointments, and any necessary paperwork.');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate`
--

CREATE TABLE `hibernate` (
  `sl_no` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hibernate`
--

INSERT INTO `hibernate` (`sl_no`, `email`, `name`, `password`, `role`, `status`) VALUES
(1, 'om@gmail.com', 'Om', '12345', 'User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `sl_no` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `option1` varchar(200) NOT NULL,
  `option2` varchar(200) NOT NULL,
  `option3` varchar(200) NOT NULL,
  `option4` varchar(200) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`sl_no`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(2, 'Who invented Java Programming?', 'Guido van Rossum', 'James Gosling', 'Dennis Ritchie', 'Bjarne Stroustrup', 2),
(3, 'Which component is used to compile, debug and execute the java programs?', 'JIT', 'JRE', 'JDK', 'JVM', 3),
(4, 'Which one of the following is not a Java feature?', 'Object-oriented', 'Use of pointers', 'Portable', ' Dynamic and Extensible', 2),
(5, 'Which of these cannot be used for a variable name in Java?', 'identifier & keyword', 'identifier', ' keyword', 'none of the mentioned', 3),
(6, 'What is the extension of java code files?', '.js', ' .txt', '.class', ' .java', 4),
(7, 'Which environment variable is used to set the java path?', 'MAVEN_Path', 'JavaPATH', 'JAVA', 'JAVA_HOME', 4),
(8, 'Which of the following is not an OOPS concept in Java?', 'Polymorphism', 'Inheritance', 'Compilation', 'Encapsulation', 3),
(9, ' What is not the use of “this” keyword in Java?', 'Referring to the instance variable when a local variable has the same name', 'Passing itself to the method of the same class', ' Passing itself to another method', 'Calling another constructor in constructor chaining', 2),
(10, 'Which of the following is a type of polymorphism in Java Programming?', 'Multiple polymorphism', 'Compile time polymorphism', 'Multilevel polymorphism', 'Execution time polymorphism', 2),
(11, 'What is Truncation in Java?', 'Floating-point value assigned to a Floating type', 'Floating-point value assigned to an integer type', 'Integer value assigned to floating type', ' Integer value assigned to floating type', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `sl_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`sl_no`, `name`, `email`, `password`, `role`, `status`) VALUES
(2, 'Om', 'admin@gmail.com', '12345678', 'admin', 1),
(6, 'Dr. sanjeev', 'atul@gmail.com', '12345678', 'doctor', 1),
(9, 'Dr. Sumaia ', 'sumaia@gmail.com', '12345678', 'doctor', 1),
(11, 'Prashant', 'prashant@gmail.com', '12345678', 'user', 1),
(12, 'Govind ', 'govind@gmail.com', '12345678', 'user', 0),
(13, 'Khushi ', 'khushi@gmail.com', '12345678', 'user', 0),
(14, 'Shalini ', 'shalini@gmail.com', '12345678', 'user', 1),
(15, 'Priyanka', 'priyanka@gmail.com', '12345678', 'user', 0),
(16, 'sonu', 'sonu@gmail.com', '2468', 'user', 1),
(17, 'doctor', 'doctor@123', '12345678', 'doctor', 1),
(36, 'sonuuuu', 'sonuuu@gmail.com', '12345678', 'user', 0),
(37, 'shailu', 'shailu@gmail.com', '12345', 'user', 0),
(38, 'vikas', 'vikas@gmail.com', '12345', 'doctor', 0),
(43, 'user', 'user@123', '12345678', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `hibernate`
--
ALTER TABLE `hibernate`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`sl_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
