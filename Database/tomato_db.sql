-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2024 at 07:06 PM
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
-- Database: `tomato_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', '', '2024-04-07 08:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 6, 'idli', '4P- Really soft rice batter cake', 50.00, '66137f0539731.jpg'),
(18, 9, 'Dosa', 'Cruncy rice batter pancakes', 120.00, '66137f1cd0079.jpg'),
(19, 10, 'Uttapam', 'RIce batter thich panckaes', 150.00, '66137f3482dc8.jpg'),
(20, 5, 'Dall Fry', 'Yellow Daal fry', 180.00, '66137f493a529.jpg'),
(21, 8, 'Chapati', 'Wheat Pan cakes', 20.00, '66137f83e1e9d.jpg'),
(22, 5, 'Boiled RIce', 'Hot Boiled Rice', 80.00, '66137f987ef4b.jpg'),
(23, 5, 'Naan & Paneer butter Msala', 'Flower Roti and paneer tomato buttter gravy', 325.00, '661ab05512e10.jpg'),
(24, 5, 'North India Family Platter', 'Contains 6 Chapatis , Panner butter msala, 2 Plate Sekua, Jira Rice', 1250.00, '661ab0ed41a93.jpg'),
(25, 6, 'Masla Dosa ', 'Potato Fry with Dosa', 150.00, '661ab123b8151.jpg'),
(26, 11, 'Tandori Chiken', 'Fried Chiken', 345.00, '661ab1651ccae.jpg'),
(27, 11, 'Aaloo Pakode', 'Deepfried Potato Slices', 95.00, '661ab1a65b926.png'),
(28, 11, 'Sekua', 'Baked Pakode', 240.00, '661ab1bbba591.png'),
(29, 11, 'Daal Fry', 'Fried Daal', 160.00, '661ab1cf44151.jpg'),
(30, 8, 'Rice & Tandori Chiken', 'Rice with 4 Piece Tandoi Chiken', 645.00, '661ab212b2691.jpg'),
(31, 8, 'Panner & Paratha', 'Masala Paneer served with 2 parathe', 190.00, '661ab23d99759.jpg'),
(32, 8, 'Tandori Paneer', 'baked panner ofver coal flame', 230.00, '661ab2b2019e1.jpg'),
(33, 7, 'Spring Roll', 'Rolled up veggies with mayo Chutny', 260.00, '661ab2ff18304.png'),
(34, 7, 'panner butter masala', 'Panner and tomato gravy with a punch of butter', 340.00, '661ab32bb52c9.jpg'),
(35, 7, 'Gujarati thali', 'Conrains Dokhala Green Chutny, 2 veggies and 3 chapatis', 830.00, '661ab62f4be2b.jpg'),
(36, 7, 'Gijarati platter', 'Contains Dhokale and samose', 400.00, '661ab65797e98.jpg'),
(37, 6, 'FIsh fry', 'Deep fried fish 2P', 470.00, '661ab7184084e.jpg'),
(38, 9, 'Filter Coffee', 'Coffee made with love and filter will make ya day', 20.00, '661ab8b0cf6f1.jpg'),
(39, 10, 'Filter Coffee', 'Coffe made with filter ', 15.00, '661ab8c2a07cc.jpg'),
(40, 12, 'Filter Coffee', 'Cheap Filter Coffee', 10.00, '661ab8dbd5ab8.jpg'),
(41, 12, 'Masala Dosa', 'Dosta stuffed with Potato', 110.00, '661ab9a285833.jpg'),
(42, 12, 'Idili Tiffin', 'Contains 4 Dilis and sambhar chutny', 100.00, '661ab9bf20f03.jpg'),
(43, 9, 'Fish Curry', '2p Fish', 120.00, '661ab9d3ad039.jpg'),
(44, 10, 'Masala Dosa', 'Dosta stuffed with Potato', 130.00, '661ab9fd17acf.jpg'),
(45, 10, 'South indian Thali', 'Contains Dily Chutny, Smabhar, pohe, Dosa, 2 veggies', 370.00, '661aba33dcf10.jpg'),
(46, 6, 'Filter Coffee', 'Fresh Sip of coffe', 18.00, '661aba6f8e5dd.jpg'),
(47, 12, 'Milk tea', 'Tea Leaves bloiled with Milk', 15.00, '661abacc74e24.jpg'),
(48, 9, 'Tea', 'tea leaved Boiled in milk for extreme pleasure', 30.00, '661abae4612d4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(17, 26, 'closed', 'kutf', '2024-04-08 05:46:18'),
(18, 27, 'in process', 'sfg', '2024-04-08 08:11:56'),
(19, 27, 'rejected', 'sdf', '2024-04-08 08:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 5, 'Punjabi House', 'support@punjabi.com', '9191919191', 'www.punjabihouse.co.in', '10am', '10pm', 'Mon-Fri', 'Near Punjabi bagh Garden', '66128949cb462.jpg', '2024-04-07 11:53:45'),
(6, 6, 'Anna Foods', 'support@anna.co.in', '9292929292', 'www.anna.com', '7am', '10pm', '24hr-x7', 'Near Mumbai-Pune Expressway', '66128a3bb4b11.jpg', '2024-04-07 11:57:47'),
(7, 5, 'Gujarati Thali', 'support@gujarat.com', '9393939393', 'www.gujarat.co.in', '10am', '12am', '24hr-x7', 'Ahemdabad Road', '66137c5c4101b.jpg', '2024-04-08 05:10:52'),
(8, 5, 'Haryana Inn', 'support@haryana.com', '9494949494', 'www.haryana.com', '6am', '9pm', 'Mon-Sat', 'Gurugram Express Way', '66137cb563f66.jpg', '2024-04-08 05:12:21'),
(9, 6, 'Behdaluru Dosa', 'support@begaluru.com', '9595959595', 'www.bengaluru.com', '6am', '10pm', 'Mon-Sat', 'Bengaluru-Mysore Expressway', '66137dee10678.jpg', '2024-04-08 05:17:34'),
(10, 6, 'Chennai Dosae', 'support@chennai.com', '9696969696', 'www.chennai.com', '7am', '11pm', 'Mon-Fri', 'Chennai-Coimbatore expressway ', '66137e31ded98.jpg', '2024-04-08 05:18:41'),
(11, 5, 'Horn plox', 'horn@mail.com', '1941679371', 'www.horn.com', '9am', '12am', 'Mon-Fri', 'Near Lucknow Road', '661a5195e5664.png', '2024-04-13 09:34:13'),
(12, 6, 'Dosa inn', 'dosa@mail.com', '910237890', 'www.dosa.com', '7am', '10pm', '24hr-x7', 'Near Chennai road', '661aadb6a4df9.jpg', '2024-04-13 16:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'North-Indian', '2024-04-07 12:02:47'),
(6, 'South-Indian', '2024-04-07 12:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(26, 10, 'idli', 1, 50.00, 'closed', '2024-04-08 05:46:18'),
(27, 10, 'Uttapam', 1, 150.00, 'rejected', '2024-04-08 08:12:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
