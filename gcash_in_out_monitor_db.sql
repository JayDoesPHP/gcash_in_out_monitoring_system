-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2025 at 06:23 AM
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
-- Database: `gcash_in_out_monitor_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `remaining_gcash_wallet` float NOT NULL,
  `remaining_cash_wallet` float NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `remaining_gcash_wallet`, `remaining_cash_wallet`, `created_at`, `updated_at`) VALUES
(1, 162985, 230289, '2025-06-11 17:12:22', '2025-06-10 22:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `type` enum('cash_in','cash_out','refill') NOT NULL,
  `reference` text NOT NULL,
  `amount` float NOT NULL,
  `remaining_gcash_amount` float DEFAULT NULL,
  `remaining_cash_amount` float DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `type`, `reference`, `amount`, `remaining_gcash_amount`, `remaining_cash_amount`, `created_at`) VALUES
(1, 'cash_out', 'Dolorum ut non sunt', 47, 144, 11, '2025-06-10 22:46:15'),
(2, 'cash_in', 'Qui quia labore simi', 16, 128, 27, '2025-06-10 22:46:19'),
(3, 'cash_out', 'Dicta fugit quidem', 15, 143, 12, '2025-06-10 22:46:22'),
(4, 'cash_out', 'Velit et id accusamu', 12, 155, 0, '2025-06-10 22:46:29'),
(5, 'cash_out', 'Culpa maxime debiti', 37, 100192, 99963, '2025-06-10 22:47:25'),
(6, 'cash_in', 'Vitae architecto exp', 55, 100137, 100018, '2025-06-10 22:47:28'),
(7, 'cash_out', 'Commodo reiciendis a', 54, 100191, 99964, '2025-06-10 22:47:31'),
(8, 'cash_in', 'Et delectus nemo fu', 25, 100166, 99989, '2025-06-10 22:47:37'),
(9, 'cash_out', 'Obcaecati totam inve', 86, 100252, 99903, '2025-06-10 22:47:40'),
(10, 'cash_in', 'Odit dolore quis sit', 8, 100244, 99911, '2025-06-10 22:47:44'),
(11, 'cash_out', 'Dolor sit aliquip qu', 43, 100287, 99868, '2025-06-10 22:47:49'),
(12, 'cash_out', 'Quas quos cupidatat', 13, 100300, 99855, '2025-06-10 22:47:53'),
(13, 'cash_out', 'Quam ut fuga Ad inv', 95, 100395, 99760, '2025-06-10 23:18:33'),
(14, 'cash_in', 'Aliquid sint qui su', 47, 100396, 99879, '2025-06-10 23:19:51'),
(15, 'cash_in', 'Accusamus sint quasi', 1, 100395, 99880, '2025-06-10 23:20:33'),
(16, 'cash_out', 'Labore iure repudian', 77, 100472, 99803, '2025-06-10 23:20:39'),
(17, 'cash_in', 'Consequatur quas vel', 87, 100385, 99890, '2025-06-10 23:20:44'),
(18, 'cash_in', '7029539583785', 2000, 108385, 101890, '2025-06-11 12:39:38'),
(19, 'cash_in', '7029539583785', 10000, 98385, 111890, '2025-06-11 12:39:50'),
(20, 'cash_in', '9238923898238', 400, 99985, 113290, '2025-06-11 13:10:12'),
(21, 'cash_out', '290392839832', 1000, 100985, 112290, '2025-06-11 13:11:18'),
(22, 'cash_in', '943893489348938', 5000, 100985, 122290, '2025-06-11 13:18:22'),
(23, 'cash_in', '564456564456564', 4000, 96985, 126290, '2025-06-11 17:05:41'),
(24, 'cash_out', '564565655546', 6000, 102985, 120290, '2025-06-11 17:06:00'),
(25, 'cash_in', '334343434', 600, 162385, 230889, '2025-06-11 17:12:01'),
(26, 'cash_out', '453454545', 600, 162985, 230289, '2025-06-11 17:12:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
