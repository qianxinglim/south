-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 03:33 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `south`
--

-- --------------------------------------------------------

--
-- Table structure for table `favourited`
--

CREATE TABLE `favourited` (
  `fav_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourited`
--

INSERT INTO `favourited` (`fav_id`, `user_id`, `property_id`) VALUES
(8, 3, 62),
(9, 3, 67),
(13, 17, 64),
(15, 3, 61),
(17, 35, 68);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `property_id` int(11) NOT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `property_bedroomqty` int(11) DEFAULT NULL,
  `property_bathroomqty` int(11) DEFAULT NULL,
  `property_address` varchar(255) DEFAULT NULL,
  `property_description` varchar(10000) DEFAULT NULL,
  `property_img` varchar(255) DEFAULT NULL,
  `property_sqft` int(11) DEFAULT NULL,
  `property_state` varchar(255) DEFAULT NULL,
  `property_salePrice` double DEFAULT NULL,
  `property_rentPrice` double DEFAULT NULL,
  `property_type` varchar(255) DEFAULT NULL,
  `property_action` varchar(255) DEFAULT NULL,
  `property_facilities` varchar(255) DEFAULT NULL,
  `realtor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`property_id`, `property_name`, `property_bedroomqty`, `property_bathroomqty`, `property_address`, `property_description`, `property_img`, `property_sqft`, `property_state`, `property_salePrice`, `property_rentPrice`, `property_type`, `property_action`, `property_facilities`, `realtor_id`) VALUES
(60, 'Lux Villa', 10, 8, 'Bukit Bintang', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f15fce5252da3.83307382.jpg', 5340, 'Kuala Lumpur', 6200000, 0, 'Luxury', 'forSale', 'FirePlace,Window Shutters,24hrs Security,Fully Furnished,Private Patio,Car Park,Gymnasium Room,Rooftop Terrace', 2),
(61, 'HillTown', 5, 3, 'Lorong Bulu', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f16007b805fc4.48259246.jpg', 2345, 'Sabah', 945679, 0, 'Landed', 'forSale', 'Playground,Window Shutters,Fully Furnished,Private Patio,Car Park', 3),
(62, 'HighLand', 5, 3, 'Kota Kinabalu', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f1601287fa8f4.59949504.jpg', 3456, 'Sabah', 5000000, 0, 'Landed', 'forSale', 'Gated Community,Playground,Window Shutters,24hrs Security,Fully Furnished,Private Patio,Car Park,Rooftop Terrace', 3),
(63, 'Wonder Villa', 5, 3, 'Mid Valley', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f1601c49f5374.73514141.jpg', 3456, 'Kuala Lumpur', 1230000, 0, 'Landed', 'forSale', 'Playground,Window Shutters,Fully Furnished,Private Patio,Car Park,Gymnasium Room,Rooftop Terrace', 2),
(64, 'Mount Valley', 4, 3, 'Bayan Lepas', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f16026da558a3.31885238.jpg', 3975, 'Penang', 4376000, 0, 'Condo', 'forSale', 'Playground,Window Shutters,Ocean Views,24hrs Security,Fully Furnished,Private Patio,Car Park,Gymnasium Room,Beach Access,Rooftop Terrace', 1),
(65, 'Riverdale', 7, 4, 'Butterworth', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f1603233932f8.81435686.jpg', 4692, 'Penang', 7500400, 0, 'Luxury', 'forSale', 'Gated Community,Playground,Window Shutters,24hrs Security,Fully Furnished,Private Patio,Car Park,Gymnasium Room,Rooftop Terrace', 1),
(66, 'Eco Botanic', 6, 4, 'Batu Ferringhi', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f1604e96db3b7.92880250.jpg', 4289, 'Penang', 0, 2390, 'Landed', 'forRent', 'Playground,FirePlace,Window Shutters,Ocean Views,Fully Furnished,Private Patio,Car Park,Beach Access,Rooftop Terrace', 1),
(67, 'Green Yard', 4, 2, 'Bandar Sunway', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f1605b09d6043.63606176.jpg', 1378, 'Kuala Lumpur', 0, 1200, 'Apartment', 'forRent', 'Playground,Window Shutters,24hrs Security,Fully Furnished,Car Park,Gymnasium Room', 2),
(68, 'Polastri', 7, 5, 'Klang Valley', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f16069e4f6691.02492825.jpg', 6739, 'Kuala Lumpur', 0, 3640, 'Luxury', 'forRent', 'Gated Community,Playground,FirePlace,Window Shutters,24hrs Security,Fully Furnished,Private Patio,Car Park,Gymnasium Room,Rooftop Terrace', 2),
(69, 'Rainbow Community', 5, 3, 'Tanjung Bungah', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f16079c5e40e3.66265170.jpg', 3540, 'Penang', 0, 1730, 'Landed', 'forRent', 'Window Shutters,Fully Furnished,Car Park,Rooftop Terrace', 1),
(70, 'Ocean', 3, 2, 'Kota Kinabalu', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f160880566449.47218572.jpg', 1357, 'Sabah', 0, 967, 'Apartment', 'forRent', 'Playground,Window Shutters,24hrs Security,Rooftop Terrace', 3),
(71, 'Beverly Land', 5, 3, 'Sungai Dua', 'Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.', '5f16096f1c4fe7.53409614.jpg', 4790, 'Sabah', 0, 2600, 'Landed', 'forRent', 'Gated Community,Playground,Window Shutters,24hrs Security,Fully Furnished,Private Patio,Car Park,Gymnasium Room', 3);

-- --------------------------------------------------------

--
-- Table structure for table `realtor`
--

CREATE TABLE `realtor` (
  `realtor_id` int(11) NOT NULL,
  `realtor_username` varchar(255) DEFAULT NULL,
  `realtor_name` varchar(255) DEFAULT NULL,
  `realtor_email` varchar(255) DEFAULT NULL,
  `realtor_phoneno` varchar(255) DEFAULT NULL,
  `realtor_region` varchar(255) DEFAULT NULL,
  `realtor_speciality` varchar(255) DEFAULT NULL,
  `realtor_img` varchar(255) DEFAULT NULL,
  `realtor_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `realtor`
--

INSERT INTO `realtor` (`realtor_id`, `realtor_username`, `realtor_name`, `realtor_email`, `realtor_phoneno`, `realtor_region`, `realtor_speciality`, `realtor_img`, `realtor_password`) VALUES
(1, 'jeremy_scott', 'Jeremy Scott', 'jeremy_scott@gmail.com', '+60174578336', 'Penang', 'Condo', 'img/bg-img/team1.jpg', '123'),
(2, 'maria_williams', 'Maria Williams', 'maria_williams@gmail.com', '+60132287995', 'Johor', 'Luxury', 'img/bg-img/team2.jpg', '123'),
(3, 'patrick_joe', 'Patrick Joe', 'patrick_joe@gmail.com', '+60123456789', 'Kelantan', 'Landed', 'img/bg-img/team3.jpg', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_fullName` varchar(255) DEFAULT NULL,
  `user_phoneNo` varchar(255) DEFAULT NULL,
  `user_mail` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_fullName`, `user_phoneNo`, `user_mail`, `user_password`) VALUES
(3, 'qianxing_2506', 'Lim Qian Xing', '018-4713899', '1dlqxing0200@gmail.com', '$2y$10$T/TKUA5n/T6H84GHO5Fh..Udsjzr3few9MgxveF585JJJp5GCLGr6'),
(5, 'dylanneoh', 'Dylan Neoh', '016-4475223', 'dylan_neoh@gmail.com', '$2y$10$XQVo0ozYueAYjqLy9bISd.nSC/i83sjCV9f93h7XlXcNZty6APKwq'),
(11, 'ryan_chong', 'Ryan Chong', '012-3456789', 'ryan_chong@gmail.com', '$2y$10$hyV1Fb9CQvCQe8m5tHeKQeSB9bU1SvpMnGb5Uea2F3Mw5Fiun2RGS'),
(17, 'dabao', 'Dabao Neoh', '011-1111111', 'dabao@gmail.com', '$2y$10$lf12g0xSD6dENqBOQzXsb.qIx3b1GwO7SHLLMzJ0A0.nZ90LEzYiK'),
(28, 'xiaobao', 'Xiao Bao Neoh', '012-2222222', 'xiaobao@gmail.com', '$2y$10$YxFZHiyXymP/CkIgUolD1upBvu36AJaLlwZZUJwQ4A/fmMz7lWyRC'),
(35, 'yumi', 'Yumi Lim', '0184795736', 'yumi_lim@gmail.com', '$2y$10$IoOy.iEieQoNYC03LkCecug718sNIihiysW23ChhYVmu7qUkuew8.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favourited`
--
ALTER TABLE `favourited`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`property_id`);

--
-- Indexes for table `realtor`
--
ALTER TABLE `realtor`
  ADD PRIMARY KEY (`realtor_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favourited`
--
ALTER TABLE `favourited`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `property_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `realtor`
--
ALTER TABLE `realtor`
  MODIFY `realtor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
