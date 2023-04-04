-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 02:40 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loan_system96`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `idno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`, `first_name`, `last_name`, `contact`, `idno`) VALUES
(1, 'joseph@mudetesacco.co.ke', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Joseph', 'Mutesi', '0705141414', '30021254'),
(2, 'festus@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'FEstus', 'Kioko', '31578955', '32545454'),
(3, 'eunice@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'eunic', 'mwaluko', '0721548787', '30021533');

-- --------------------------------------------------------

--
-- Table structure for table `dividend`
--

CREATE TABLE `dividend` (
  `id` int(11) NOT NULL,
  `MemberNo` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `salary_deduction` decimal(10,2) NOT NULL,
  `short_term_interest` decimal(10,2) NOT NULL,
  `total_interest` decimal(10,2) NOT NULL,
  `expenses` decimal(10,2) NOT NULL,
  `executive_cost` decimal(10,2) NOT NULL,
  `net_surplus` decimal(10,2) NOT NULL,
  `monthly_share` decimal(10,2) NOT NULL,
  `total_share` decimal(10,2) NOT NULL,
  `dividend_received` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dividend`
--

INSERT INTO `dividend` (`id`, `MemberNo`, `month`, `salary_deduction`, `short_term_interest`, `total_interest`, `expenses`, `executive_cost`, `net_surplus`, `monthly_share`, `total_share`, `dividend_received`) VALUES
(1, 'M0001', '2500', '5000.00', '250.00', '5250.00', '200.00', '1500.00', '3550.00', '15.00', '250.00', '213.00'),
(2, 'M0002', '2500', '1000.00', '250.00', '1250.00', '500.00', '100.00', '650.00', '800.00', '600.00', '866.67');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `date`, `amount`, `description`) VALUES
(1, '2022-06-26', 5000, 'rent'),
(2, '2022-06-26', 15000, 'salaries'),
(3, '2022-06-20', 1000, 'Power');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `MemberNo` varchar(50) NOT NULL,
  `loan_come_from` varchar(50) NOT NULL,
  `loan_amount` varchar(50) NOT NULL,
  `loan_interest` varchar(10) NOT NULL,
  `payment_term` varchar(50) NOT NULL,
  `total_payment_with_intereset` varchar(50) NOT NULL,
  `emi_per_month` varchar(50) NOT NULL,
  `payment_schedule` date NOT NULL,
  `due_date` date NOT NULL,
  `approve` int(11) NOT NULL,
  `approve_by` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_id`, `MemberNo`, `loan_come_from`, `loan_amount`, `loan_interest`, `payment_term`, `total_payment_with_intereset`, `emi_per_month`, `payment_schedule`, `due_date`, `approve`, `approve_by`) VALUES
(1, 'M0001', 'Salary', '150', '10', '7', '255', '3.0357142857142856', '2022-06-23', '2022-07-09', 1, 'joseph@mudetesacco.co.ke');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `MemberNo` varchar(50) NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `idno` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `join_date` date NOT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `MemberNo`, `first_name`, `last_name`, `contact`, `idno`, `username`, `gender`, `join_date`, `date_created`) VALUES
(1, 'M0001', 'Joshua', 'Mwema', '0721548788', '31578955', 'joshua@gmail.com', 'm', '2022-06-22', '0000-00-00'),
(2, 'M0002', 'Addrew', 'mwaluko', '0701548788', '21002122', 'addrew@gmail.com', 'm', '2022-06-23', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `payment_id` int(11) NOT NULL,
  `MemberNo` varchar(50) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`payment_id`, `MemberNo`, `amount_paid`, `payment_date`) VALUES
(7, 'JM001', 1500, '2022-06-22'),
(8, 'JM001', 1000, '2022-06-22'),
(9, 'M0001', 150, '2022-06-22'),
(10, 'M0001', 100, '2022-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `share`
--

CREATE TABLE `share` (
  `id` int(11) NOT NULL,
  `MemberNo` varchar(50) NOT NULL,
  `date_contributed` date NOT NULL,
  `share_balance` decimal(10,2) NOT NULL,
  `share_contributed` decimal(10,2) NOT NULL,
  `share_added` decimal(10,2) NOT NULL,
  `total_share` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `share`
--

INSERT INTO `share` (`id`, `MemberNo`, `date_contributed`, `share_balance`, `share_contributed`, `share_added`, `total_share`) VALUES
(1, 'M0001', '2022-06-30', '1000.00', '10.00', '15.00', '1025.00'),
(2, 'M0002', '2022-06-29', '250.00', '150.00', '15.00', '415.00'),
(3, 'M0001', '2022-07-08', '1025.00', '25.00', '25.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `sys_user`
--

CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `idno` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_user`
--

INSERT INTO `sys_user` (`user_id`, `user`, `pass`, `first_name`, `last_name`, `contact`, `idno`) VALUES
(1, 'addrew@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Addrew', 'Kibet', '21002122', '32545454');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `level`) VALUES
(1, 'festus@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00', 1),
(2, 'joseph@mudetesacco.co.ke', '21232f297a57a5a743894a0e4a801fc3', '2021-12-21 20:24:29', 1),
(3, 'james@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00', 2),
(5, 'joshua@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00', 3),
(6, 'addrew@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00', 3),
(7, 'eunice@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `dividend`
--
ALTER TABLE `dividend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MemberNo` (`MemberNo`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `MemberNo` (`MemberNo`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `MemberNo` (`MemberNo`);

--
-- Indexes for table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MemberNo` (`MemberNo`);

--
-- Indexes for table `sys_user`
--
ALTER TABLE `sys_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dividend`
--
ALTER TABLE `dividend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `share`
--
ALTER TABLE `share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_user`
--
ALTER TABLE `sys_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
