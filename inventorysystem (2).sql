-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2026 at 07:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorysystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product`, `type`, `brand`, `size`, `price`, `stock`) VALUES
(3, 'TIRE', 'Tubeless', 'Dunlop', '80/90-17', 1600.00, 0),
(4, 'TIRE', 'Tubeless', 'Michelin', '90/100-17', 1500.00, 5),
(5, 'TIRE', 'Tubeless', 'Michelin', '70/80-17', 1500.00, 5),
(6, 'CLEVER', 'RCB', 'RCB', '14mm', 600.00, 5),
(7, 'BRAKE PADS', 'BRAKE', 'N/A', 'N/A', 500.00, 5),
(8, 'AIR FILTER', 'SPIN ON', 'YAMAHA', 'Standard', 250.00, 10),
(9, 'OIL FILTER', 'Mechanical filters', 'YAMAHA', 'Standard', 300.00, 35);

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `username`, `role`, `login_time`, `logout_time`) VALUES
(10, 'staff1', 'Staff', '2026-10-13 05:18:23', '2026-10-13 05:18:28'),
(11, 'staff2', 'Staff', '2026-10-13 05:18:36', '2026-10-13 05:18:40'),
(12, 'admin', 'admin', '2026-10-13 05:19:09', '2026-10-13 05:19:24'),
(13, 'admin', 'admin', '2026-10-13 05:22:53', NULL),
(14, 'staff1', 'Staff', '2026-10-13 05:26:25', NULL),
(15, 'admin', 'admin', '2026-10-13 05:29:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `sale_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_name`, `product_name`, `quantity`, `type`, `price`, `total`, `cash`, `balance`, `sale_date`) VALUES
(5, 'MARIEL', 'TIRE', 1, 'SEV', 100.00, 100.00, 200.00, 100.00, '2026-10-13 03:04:56'),
(6, 'Jay', 'AIR FILTER', 5, 'SPIN ON', 250.00, 1250.00, 2000.00, 750.00, '2026-10-13 05:12:10'),
(7, 'rusty', 'TIRE', 5, 'Tubeless', 1600.00, 8000.00, 10000.00, 2000.00, '2026-10-13 05:28:38'),
(8, 'rusty', 'TIRE', 25, 'Tubeless', 1600.00, 40000.00, 50000.00, 10000.00, '2026-10-13 05:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `signup_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `signup_date`) VALUES
(1, 'staff1', '123', 'Staff', '2026-10-02 07:42:04'),
(3, 'admin', 'admin123', 'admin', '2026-10-03 12:29:28'),
(5, 'staff2', '123', 'Staff', '2026-10-03 05:28:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
