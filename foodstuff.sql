-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2019 at 02:20 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodstuff`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `A_username` varchar(200) NOT NULL,
  `A_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`A_username`, `A_password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(6) NOT NULL,
  `p_id` int(6) NOT NULL,
  `c_id` int(6) NOT NULL,
  `v_email` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `c_id`, `v_email`, `qty`) VALUES
(73, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(2000) NOT NULL,
  `cat_desc` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'fruits', 0),
(2, 'milk', 0),
(3, 'butters', 0),
(4, 'juice', 0),
(5, 'sweets', 0),
(6, 'ice-cream', 0),
(7, 'chocolate', 0),
(8, 'curds', 0),
(9, 'bakery', 0),
(10, 'vegetable', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `f_name` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`f_name`, `phone`, `email`, `message`) VALUES
('Mukesh Kumar', '2147483647', 'mukeshpurnea6@gmail.com', 'njkkj'),
('Mukesh Kumar', '2147483647', 'mukeshpurnea6@gmail.com', ',hjhhkhdhhdhhd'),
('divya', '868923698', 'divyasuman164@gmail.com', 'Hi I am divya jha'),
('Mukesh Kumar', '2147483647', 'mukeshpurnea6@gmail.com', 'njkkj'),
('Mukesh Kumar', '2147483647', 'mukeshpurnea6@gmail.com', ',hjhhkhdhhdhhd'),
('Rahul Raj', '9471881020', 'rajr04300@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `c_id` int(6) unsigned NOT NULL,
  `c_f_name` varchar(50) NOT NULL,
  `c_L_name` varchar(200) NOT NULL,
  `c_gen` char(10) NOT NULL,
  `c_age` int(5) NOT NULL,
  `c_phn` bigint(11) NOT NULL,
  `c_add` text NOT NULL,
  `c_city` varchar(20) NOT NULL,
  `c_state` varchar(20) NOT NULL,
  `c_pin` int(10) unsigned NOT NULL,
  `c_email` varchar(25) NOT NULL,
  `c_img` varchar(2000) DEFAULT NULL,
  `c_pass` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_f_name`, `c_L_name`, `c_gen`, `c_age`, `c_phn`, `c_add`, `c_city`, `c_state`, `c_pin`, `c_email`, `c_img`, `c_pass`) VALUES
(11, 'divya', 'jha', '', 73847086865, 'gandhi nagar', '', '', 880671, 'divya@gmail.com', 'divya.jpg', '2b717289e448c4f616c987b953b8b84ebf538f87'),
(12, 'sominto', 'charlie', 'male', 20, 4366547, 'teachers colony, rajni chowk', 'Purnea', 'Bihar', 854301, 'sominto@gmail.com', 'Sominto.jpg', '566f8462a4762404477bf21a8c04b00312bcb5ab'),
(13, 'mukesh', 'kumar', 'male', 20, 8739253426, 'teachers colony, rajni chowk', 'Purnea', 'Bihar', 854301, 'mukesh@gmail.com', 'Mukesh.jpeg', '256d23ebdfeb388c10a3019a2c223ca5c90edfcc'),
(14, 'rahul', 'kumar', 'male', 20, 8739253426, 'teachers colony, rajni chowk', 'Purnea', 'Bihar', 854301, 'rahul@gmail.com', 'rahul.jpg', '8b2357213c6def665b79c46ac43e562ce5e10eef'),
(16, 'divya', 'suman', 'female', 20, 1323445465, 'teachers colony, rajni chowk', 'Purnea', 'Bihar', 854301, 'divyasuman164@gmail.com', '', '4a8a9fc31dc15a4b87bb145b05db3ae0bf2333e4'),
(17, 'sominto', 'charlie', 'female', 20, 4366547, 'teachers colony, rajni chowk', 'Purnea', 'Bihar', 854301, 's_charlie@gmail.com', '', '97973e8cc683fdc89f68f3ab0c04a4b2fd5137bb'),
(18, 'sadique', 'hussain', 'male', 30, 7992296050, 'teachers colony, rajni chowk', 'Purnea', 'Bihar', 854301, 'rock@gmail.com', 'peach.jpg', '9b91cc1f6fe45bc2fdf4ebedf45ee0283345d376'),
(19, 'uttam', 'sir', 'male', 50, 9931926868, 'teachers colony, rajni chowk', 'Purnea', 'Bihar', 854301, 'uttamsir@gmail.com', 'cover.jpeg', 'd1fd7a9c76f9ff855a0665235144f3940b9d5022'),
(20, 'newton', 'kumar', 'male', 21, 7992216306, 'belouri', 'Purnea', 'Bihar', 854326, 'kumarnewton771@gmail.com', 'eduard-militaru-139559.jpg', '2598586a1591d6cadc6fc73efb735d2939661a88'),
(21, 'Rahul', 'Raj', 'male', 21, 9471881020, 'suddin chowk', 'Purnea', 'Bihar', 854301, 'rajr04300@gmail.com', '4.jpg', '8b2357213c6def665b79c46ac43e562ce5e10eef'),
(22, 'kunj ', 'raj', 'male', 20, 9546584495, 'kasba', 'Purnea', 'Bihar', 854330, 'priyanshuk2016@gmail.com', '1Armie.jpg', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(23, 'priya', 'raj', 'female', 21, 687687687, 'suddin chowk', 'Purnea', 'Bihar', 854301, 'priya@gmail.com', 'alina.jpg', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(28, 'abhijeet', 'jha', 'male', 24, 8789992104, 'kasba', 'Purnea', 'Bihar', 854330, 'abhijeet@gmail.com', '1Armie.jpg', '13e30ae3b35e0e6cbfddab33cd3027cb7c56c542'),
(31, 'richa', 'jha', 'female', 22, 6299221975, 'teachers colony', 'Purnea', 'Bihar', 854301, 'richa@gmail.com', '', '322a5da8d4f9cb9196587d7c032a39733f689ec0'),
(32, 'abc', 'def', 'female', 21, 987987985, 'teachers colony, rajni chowk', 'Purnea', 'Bihar', 854301, 'divyasuman184@gmail.com', '', '9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684'),
(33, 'shipra', 'shipra', 'female', 24, 986394865, 'teachers colony rajni chowk', 'Purnea', 'Bihar', 854301, 'shipra@gmail.com', '', 'a05fc702fce60d8a2691220c7925c0fa23cbfeed');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(6) NOT NULL,
  `emp_f_name` varchar(60) NOT NULL,
  `emp_phn` varchar(200) NOT NULL,
  `emp_email` varchar(200) NOT NULL,
  `emp_gen` char(10) NOT NULL,
  `emp_age` int(10) NOT NULL,
  `emp_pass` varchar(200) NOT NULL,
  `emp_salery` varchar(200) NOT NULL,
  `emp_add` varchar(2000) NOT NULL,
  `emp_pin` bigint(10) NOT NULL,
  `emp_img` varchar(2000) DEFAULT NULL,
  `emp_L_name` varchar(100) NOT NULL,
  `emp_city` varchar(100) NOT NULL,
  `emp_state` varchar(100) NOT NULL,
  `emp_status` varchar(200) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_f_name`, `emp_phn`, `emp_email`, `emp_gen`, `emp_age`, `emp_pass`, `emp_salery`, `emp_add`, `emp_pin`, `emp_img`, `emp_L_name`, `emp_city`, `emp_state`, `emp_status`) VALUES
(1, 'divya  ', '478638746', 'divya@gmail.com', '', 20, 'divya', '', 'teachers colony', 854301, NULL, 'jha', '', '', 'Active'),
(2, 'sominto', '7299875643', 'sominto@gmail.com', '', 20, 'sominto', '', 'teachers colony', 854301, NULL, 'charlie', '', '', 'Active'),
(3, 'mukesh', '7098653421', 'mukesh@gmail.com', '', 20, 'mukesh', '', 'teachers colony', 854301, NULL, 'kumar', '', '', 'Active'),
(4, 'rahul', '7654320987', 'rahul@gmail.com', 'male', 20, 'rahul', '', 'teachers colony', 854301, NULL, 'kumar', 'Purnea', 'Bihar', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `o_id` int(6) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `p_id` int(6) NOT NULL,
  `c_id` int(6) NOT NULL,
  `qty` int(11) DEFAULT '1',
  `order_status` varchar(200) NOT NULL DEFAULT 'Active',
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `v_email` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COMMENT='Order_table';

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `invoice_no`, `p_id`, `c_id`, `qty`, `order_status`, `order_time`, `v_email`) VALUES
(1, '20190922124142', 24, 11, 1, 'Delivered', '2019-09-21 19:11:42', 'ritik@gmail.com'),
(2, '20190922124142', 18, 11, 1, 'Delivered', '2019-09-21 19:11:42', 'vendor1@gmail.com'),
(3, '20190922124203', 2, 11, 1, 'Delivered', '2019-09-21 19:12:03', 'mukesh@gmail.com'),
(4, '20190922124203', 24, 11, 1, 'Delivered', '2019-09-21 19:12:04', 'ritik@gmail.com'),
(5, '20190922124203', 33, 11, 1, 'Delivered', '2019-09-21 19:12:04', 'ritik@gmail.com'),
(6, '20190922124217', 24, 11, 1, 'Delivered', '2019-09-21 19:12:17', 'ritik@gmail.com'),
(7, '20190922105323', 111, 11, 2, 'Delivered', '2019-09-22 05:23:23', 'roshni@gmail.com'),
(8, '20190922105323', 116, 11, 1, 'Delivered', '2019-09-22 05:23:23', 'shilpajha@gmail.com'),
(9, '20190922105323', 34, 11, 1, 'cancel', '2019-09-22 05:23:23', 'ritik@gmail.com'),
(10, '20191005072052', 106, 31, 1, 'cancel', '2019-10-05 05:20:52', 'roshni@gmail.com'),
(11, '20191005111306', 195, 31, 1, 'Active', '2019-10-05 05:43:06', 'mukeshpurnea6@gmail.com'),
(12, '20191005111306', 76, 31, 8, 'Active', '2019-10-05 05:43:06', 'banty@gmail.com'),
(13, '20191005111306', 71, 31, 1, 'Active', '2019-10-05 05:43:06', 'banty@gmail.com'),
(14, '20191005111306', 70, 31, 1, 'Active', '2019-10-05 05:43:06', 'banty@gmail.com'),
(15, '20191005111306', 182, 31, 5, 'Active', '2019-10-05 05:43:06', 'mukeshpurnea6@gmail.com'),
(16, '20191005111306', 183, 31, 1, 'Active', '2019-10-05 05:43:06', 'mukeshpurnea6@gmail.com'),
(17, '20191005111306', 59, 31, 1, 'Active', '2019-10-05 05:43:06', 'mukesh@gmail.com'),
(18, '20191005111306', 29, 31, 1, 'Active', '2019-10-05 05:43:06', 'ritik@gmail.com'),
(19, '20191005111306', 143, 31, 1, 'Active', '2019-10-05 05:43:06', 'banty@gmail.com'),
(20, '20191005111306', 69, 31, 1, 'Active', '2019-10-05 05:43:06', 'bittu@gmail.com'),
(21, '20191005111306', 135, 31, 1, 'Active', '2019-10-05 05:43:06', 'rahul@gmail.com'),
(22, '20191005111306', 26, 31, 1, 'Active', '2019-10-05 05:43:06', 'ritik@gmail.com'),
(23, '20191005111306', 39, 31, 1, 'Active', '2019-10-05 05:43:06', 'abishek@gmail.com'),
(24, '20191005111306', 46, 31, 1, 'Active', '2019-10-05 05:43:06', 'abishek@gmail.com'),
(25, '20191005111306', 45, 31, 1, 'Active', '2019-10-05 05:43:06', 'abishek@gmail.com'),
(26, '20191005111306', 51, 31, 1, 'Active', '2019-10-05 05:43:07', 'shilpajha@gmail.com'),
(27, '20191005111306', 38, 31, 1, 'Active', '2019-10-05 05:43:07', 'abishek@gmail.com'),
(28, '20191005111306', 41, 31, 1, 'Active', '2019-10-05 05:43:07', 'abishek@gmail.com'),
(29, '20191005111306', 28, 31, 1, 'Active', '2019-10-05 05:43:07', 'ritik@gmail.com'),
(30, '20191005111306', 18, 31, 1, 'Active', '2019-10-05 05:43:07', 'vendor1@gmail.com'),
(31, '20191005111306', 31, 31, 1, 'Active', '2019-10-05 05:43:07', 'ritik@gmail.com'),
(32, '20191005111306', 33, 31, 9, 'Active', '2019-10-05 05:43:07', 'ritik@gmail.com'),
(33, '20191005111306', 25, 31, 1, 'Active', '2019-10-05 05:43:07', 'ritik@gmail.com'),
(34, '20191005111306', 24, 31, 1, 'Active', '2019-10-05 05:43:07', 'ritik@gmail.com'),
(35, '20191005074717', 56, 11, 1, 'Delivered', '2019-10-05 05:47:17', 'shilpajha@gmail.com'),
(36, '20191010113253', 32, 11, 1, 'Active', '2019-10-10 09:32:53', 'ritik@gmail.com'),
(37, '20191010115026', 56, 11, 1, 'cancel', '2019-10-10 09:50:26', 'shilpajha@gmail.com'),
(38, '20191010032245', 2, 11, 6, 'Active', '2019-10-10 09:52:45', 'mukesh@gmail.com'),
(39, '20191010032245', 25, 11, 1, 'Active', '2019-10-10 09:52:45', 'ritik@gmail.com'),
(40, '20191010032245', 18, 11, 1, 'cancel', '2019-10-10 09:52:45', 'vendor1@gmail.com'),
(41, '20191010032245', 98, 11, 1, 'Active', '2019-10-10 09:52:46', 'shreya@gmail.com'),
(42, '20191010032245', 24, 11, 1, 'Active', '2019-10-10 09:52:46', 'ritik@gmail.com'),
(43, '20191010011400', 26, 11, 12, 'cancel', '2019-10-10 11:14:00', 'ritik@gmail.com'),
(44, '20191010044646', 2, 11, 1, 'Active', '2019-10-10 11:16:46', 'mukesh@gmail.com'),
(45, '20191010044646', 18, 11, 1, 'cancel', '2019-10-10 11:16:46', 'vendor1@gmail.com'),
(46, '20191010044646', 33, 11, 7, 'Active', '2019-10-10 11:16:46', 'ritik@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `p_id` int(6) NOT NULL,
  `p_name` varchar(60) NOT NULL,
  `p_price` varchar(20) NOT NULL,
  `p_mfg` date DEFAULT NULL,
  `p_img` varchar(2000) DEFAULT NULL,
  `cat_title` varchar(30) DEFAULT NULL,
  `p_desc` varchar(5000) DEFAULT NULL,
  `Qty` varchar(100) NOT NULL,
  `p_status` varchar(200) NOT NULL DEFAULT 'Available',
  `p_brand` varchar(200) NOT NULL DEFAULT '---',
  `v_email` varchar(30) NOT NULL,
  `each_qty` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_price`, `p_mfg`, `p_img`, `cat_title`, `p_desc`, `Qty`, `p_status`, `p_brand`, `v_email`, `each_qty`) VALUES
(1, 'mashroom', '120', '0000-00-00', '300-mushroom-spawn-seeds-milky-white-calocybe-indica-300gm-set-original-imafdrwfbzvamcq8.jpeg', 'vegetable', 'A mushroom, or toadstool, is the fleshy, spore-bearing fruiting body of a fungus, typically produced above ground on soil or on its food source. ... These gills produce microscopic spores that help the fungus spread across the ground or its occupant surface.', '5kg', 'Not Available', '---', 'mukesh@gmail.com', '1'),
(2, 'brocoli', '80', '0000-00-00', 'broccoli.jpeg', 'vegetable', 'Broccoli. ... Broccoli is classified in the Italica cultivar group of the species Brassica oleracea. Broccoli has large flower heads, usually dark green in color, arranged in a tree-like structure branching out from a thick, edible stalk which is usually light green. The mass of flower heads is surrounded by leaves.', '10kg', 'Available', '---', 'mukesh@gmail.com', '1 kg'),
(18, 'Peanut Butter', '200', '2019-07-24', 'alpino peanut butter.jpeg', 'butters', 'Peanut butter is a food paste or spread made from ground dry-roasted peanuts. It often contains additional ingredients that modify the taste or texture, such as salt, sweeteners, or emulsifiers. Peanut butter is popular in many countries.', '10 packs', 'Available', 'Alpino', 'vendor1@gmail.com', '500 g'),
(19, 'Red Grapes', '80', '0000-00-00', 'red grape.jpeg', 'fruits', 'Red Seedless Grapes. Distinctively Sweet Flavor. Red table grapes are known for their striking color and distinctive sweet flavor. These versatile fruits make a quick and easy snack and can also be blended in smoothies and baked in desserts.', '5 kg', 'Not Available', '---', 'vendor1@gmail.com', '1 kg'),
(24, 'bakery rusk', '60', '2019-05-02', 'bakery rusk.jpg', 'bakery', '---', '64', 'Available', 'Sahni delight', 'ritik@gmail.com', '400g'),
(25, 'milky mist', '79', '2019-06-04', 'milky milk.jpg', 'butters', '', '50', 'Available', 'Cheddar cheez', 'ritik@gmail.com', '200 g'),
(26, 'Gourmet', '69', '2019-08-01', 'Gourmet.jpg', 'ice-cream', '', '45', 'Available', 'vadilal', 'ritik@gmail.com', '200 g'),
(27, ' Dairy Milk Silk Bubbly', '80', '2019-07-31', 'bubbly.jpeg', 'chocolate', 'Cadbury Dairy Milk Silk Bubbly is manufactured using Mondel?z''s Aerimelt Technology and is formed with small bubbles on the outside and also contains bubbles inside.', '86', 'Available', 'cadbury ', 'ritik@gmail.com', '70 g'),
(28, 'Amul lassi', '20', '2019-08-01', 'lassi amul.jpg', 'curds', 'Amul Kool Lassi is refreshing milk based natural drink. It is an easy to use delicious drink that refreshes immediately with goodness of nature.', '108', 'Available', 'Amul', 'ritik@gmail.com', '100 ml'),
(29, 'Riovida juice', '60', '2019-08-03', 'Riovida juice.jpg', 'juice', 'RioVida is your answer because you couldn''t find a better antioxidant product on the market. Its power comes from the most concentrated antioxidant fruits in nature. These include blueberries, elderberries, pomegranates, and purple grapes.', '45', 'Available', '4Life', 'ritik@gmail.com', '300 ml'),
(30, 'sudha healthy milk', '48', '2019-08-03', 'heldi milk.jpg', 'milk', 'Pasteurized Sudha Milk meets the FSSAI Standards for respective type of milk.', '212 kg', 'Available', 'Sudha', 'ritik@gmail.com', '1 L'),
(31, 'Rassgulla', '120', '2019-08-02', 'rasssgulla.jpg', '', '', '90', 'Available', 'Sudha', 'ritik@gmail.com', ''),
(32, 'Buah-Jambu', '110', '2019-07-29', 'Buah-Jambu-Agustinnesia.jpg', 'fruits', '', '500 kg', 'Available', '', 'ritik@gmail.com', ''),
(33, 'capsicum', '100', '0000-00-00', 'capsicum.jpg', 'vegetable', '', '80 kg', 'Available', '', 'ritik@gmail.com', ''),
(34, 'stacy', '65', '2019-08-03', 'stacy.jpg', 'bakery', '', '125', 'Available', 'stacy', 'ritik@gmail.com', ''),
(35, 'amul lite', '35', '2019-07-15', 'amul lite.png', 'butters', 'this is delicious product', '321', 'Available', 'amul ', 'ritik@gmail.com', ''),
(36, 'Buscuit', '25', '2019-07-23', 'buscuit.jpg', 'bakery', '', '240', 'Available', 'home bread', 'abishek@gmail.com', ''),
(37, 'sudha butter', '70', '2019-07-25', 'KCHEESE 1kg.jpg', 'butters', '', '65', 'Available', 'sudha', 'abishek@gmail.com', ''),
(38, 'Phuket', '80', '0000-00-00', 'phuket.jpg', 'fruits', '', '160 kg', 'Available', '', 'abishek@gmail.com', ''),
(39, 'Cornetto', '40', '2019-07-30', 'cone.jpg', 'ice-cream', '', '56', 'Available', 'Sudha', 'abishek@gmail.com', ''),
(40, 'Gowardhan rich-n-thick dahi', '65', '2019-08-01', 'curd1.jpeg', 'curds', '', '105', 'Available', 'Gowardhan', 'abishek@gmail.com', ''),
(41, 'pizza chese', '45', '2019-06-25', 'pizza chese.jpg', 'butters', 'best quality chesse', '87', 'Available', 'amul', 'abishek@gmail.com', ''),
(42, 'cabbage', '50', '0000-00-00', 'cabbage.png', 'vegetable', '', '92 kg', 'Available', '', 'abishek@gmail.com', ''),
(43, 'Appy Fizz', '60', '2019-07-04', 'appy1.jpg', 'juice', '', '60', 'Available', 'appy', 'abishek@gmail.com', ''),
(45, 'Rerrero Rocher', '250', '2019-07-24', 'Screenshot_2019-08-03-12-08-04-87.png', 'chocolate', '', '42', 'Available', 'Rocher', 'abishek@gmail.com', ''),
(46, 'Rabri', '25', '2019-07-26', 'Rabri.png', 'sweets', '', '96', 'Available', 'Mother Dairy', 'abishek@gmail.com', ''),
(47, 'Carrot', '60', '0000-00-00', 'carrot.jpg', 'vegetable', '', '60 kg', 'Available', '', 'abishek@gmail.com', ''),
(48, 'Pot Crimson Night Raspberry', '180', '0000-00-00', 'raspberry.jpg', 'fruits', 'Description. Raspberry (Rubus ideaeus ) is a deciduous bush from the Rosaceae family that grows up to 6 ft (2 m) high, with erect and thorny stems, a thin spine and perennial roots. The bush is well-known for its fruit, a red spherical berry that grows continuously on the branches.', '10 kg', 'Available', '---', 'shilpajha@gmail.com', ''),
(50, 'Sudha smart milk', '60', '2019-08-31', 'sudha-smart-milk-double-toned-milk-500x500.png', 'milk', 'The Bihar State Milk Co-Operative Federation Ltd is a dairy cooperative, established in 1983 as an enterprise of the Government of Bihar, India. It markets its products under the label "Sudha Dairy". The co-operative facilitates the procurement, processing, and marketing of dairy products.', '30 kg', 'Available', 'Sudha', 'shilpajha@gmail.com', ''),
(51, 'Dark fantasy choco-fills', '60', '2019-08-03', 'dark-fantasy-chocofills-cream-biscuit-sunfeast-original.jpeg', 'bakery', 'Dark fantasy is a subgenre of fantasy literary, artistic, and cinematic works that incorporate darker and frightening themes of fantasy. It also often combines fantasy with elements of horror or has a gloomy, darker tone, or a sense of horror and dread.', '20 packs', 'Available', 'Sunfeast', 'shilpajha@gmail.com', ''),
(52, 'nouriza crunchy peanut butter', '200', '2019-08-12', 'nouriza peanut butter.jpeg', 'butters', 'Nouriza Peanut Butter VMO Creamy is a delectable peanut butter with a scrumptious nutty aroma. ... Protein: Nouriza Peanut Butter creamy is made with 100% fine roasted peanuts with a creamy texture that melts away in your mouth. It provides fine protein to help fuel your muscles and prevent muscle loss.', '12 packs', 'Available', 'Healthkart', 'shilpajha@gmail.com', ''),
(53, 'real pine-apple fruit juice(double pack)', '200', '2019-08-03', 'pine apple.jpeg', 'juice', 'The beverage is prepared using the best quality pineapples sourced from select farms which are then converted into your favourite pineapple juice. Real Fruit Power Pineapple is a great alternative to Real Fruit Power Orange, with both possessing almost the same nutrient qualities, but a refreshingly different taste.', '30 packs', 'Available', 'Real', 'shilpajha@gmail.com', ''),
(54, 'celebrations-assorted-chocolate-gift-pack', '50', '2019-08-06', 'celebrations-assorted-chocolate-gift-pack.jpeg', 'chocolate', 'This is a Vegetarian product.\r\nThis gift pack contains your favourite chocolates - cadbury dairy milk, cadbury 5 star and gems\r\nVegetarian product\r\nNet quantity- 142 g\r\n', '60 packs', 'Available', 'Cadbury', 'shilpajha@gmail.com', ''),
(55, 'Amul masti', '80', '2019-08-03', 'Amul dahi.png', 'curds', 'Amul Masti Dahi is hygienically processed and packed in a reusable plastic tub as well as convenient pouch and thus free from possible adulteration. Amul Masti Dahi is high on nutrition and taste. Thick, creamy Amul Masti Dahi has a rich, glossy texture. Food tastes even more delicious at the snap of your fingers.', '50 kg', 'Available', 'Amul', 'shilpajha@gmail.com', ''),
(56, 'Red Tomato', '40', '0000-00-00', 'Tomato.jpeg', 'vegetable', 'Tomato, Lycopersicum esculentum (syn. Solanum lycopersicum and Lycopersicon lycopersicum) is an herbaceous annual in the family Solanaceae grown for its edible fruit. The plant can be erect with short stems or vine-like with long, spreading stems.', '20 kg', 'Available', '---', 'shilpajha@gmail.com', ''),
(57, 'Amrakhand cup icecream', '35', '2019-08-04', 'Amrakhand cup icecream.jpg', 'ice-cream', 'Amrakhand is a semi-soft sweetishÃ¢â‚¬â€œsour whole milk product prepared from lactic fermented curd.amrakhand Price in pune.', '30 packs', 'Available', 'Katraj Peswai', 'mukesh@gmail.com', ''),
(58, 'London Dairy Ice Cream Natural', '60', '2019-08-03', 'Buy London Dairy Ice Cream Natural.jpg', 'ice-cream', 'London Dairy brings you a elegant combination of vanilla ice cream blended with caramel sauce for the ultimate dessert experience. It is perfect for all dessert lovers.', '30 packs', 'Available', 'London Dairy', 'mukesh@gmail.com', ''),
(59, 'Strawberry milk', '45', '2019-08-04', 'Strawberry-Milk.jpg', 'milk', 'Strawberry Flavoured milks to which some flavours/colours and sugar been added. When the milk is used the minimum legal requirement for market milk', '50 packs', 'Available', 'Katraj Peswai', 'mukesh@gmail.com', ''),
(60, 'Chocolate cup icecream', '20', '2019-08-04', 'Chocklate-cup-Ice-cream.jpg', 'ice-cream', 'Chocolate ice Cream Cup is available in Butterscotch,Mango,Vanilla,Pista,Chocolate & Strawberry.Ice cream available 35ml,50ml,70ml,100ml cone.', '40 packs', 'Available', 'Katraj Peswai', 'mukesh@gmail.com', ''),
(62, 'Coconut ladoo', '120 per kg', '2019-08-04', 'Coconut Ladoo.jpg', 'sweets', 'Coconut ladoo are delicious sweet balls made with grated coconut, sugar & cardamom powder. These coconut laddus are a festive delight and are mostly made during festivals & celebrations.', '20kg', 'Available', '---', 'bittu@gmail.com', ''),
(63, 'motichur Ladoo', '150 per kg', '2019-08-03', 'Motichur Ladoo.webp', 'sweets', 'Motichoor Ladoo or Motichur Ladoo is a round-shaped sweetmeat made from fine, tiny balls of besan. The chickpea flour globules is fried in ghee or oil, and soaked in sugar syrup', '15 kg', 'Available', 'jagdeesh sweets', 'bittu@gmail.com', ''),
(64, 'Kaju katli', '650', '2019-08-03', 'kaju-barfi-sweets.jpg', 'sweets', 'Kaju katli (literally "cashew slice"), also known as kaju barfi, is an Indian dessert similar to a barfi. Kaju means cashew; Barfi is often, but not always, made by thickening milk with sugar and other ingredients (such as dry fruits and mild spices).', '10 kg', 'Available', '---', 'bittu@gmail.com', ''),
(65, 'Rasmadhuri', '40 per piece', '2019-08-03', 'Rasmadhuri.jpg', 'sweets', 'It is milk made from sweet milk but it is not that sweet, because of which people like it. Anyone can eat it even after having a full diet meal. The delicacy holds special demand during wedding season. The whole process of making this dessert takes approx eight hours.', '15kg', 'Available', '---', 'bittu@gmail.com', ''),
(66, 'Rajbhog', '30 per piece', '2019-08-04', 'Rajbhog.jpg', 'sweets', ' Rajbhog is a traditional Bengali sweet made with paneer or chena and flavoured with saffron and rose essence.', '50 piece', 'Available', '---', 'bittu@gmail.com', ''),
(67, 'Rose coconut ladoo', '130 per kg', '2019-08-04', 'Rose coconut Ladoo.jpg', 'sweets', 'These ladoos are super easy and delicious and perfect to make on this Diwali. This has a luxuriant milky flavor and an exciting mouth-feel', '20 kg', 'Available', '---', 'bittu@gmail.com', ''),
(68, 'handmade coconut cookies', '30', '2019-08-06', 'handmade-coconut-cookies.jpeg', 'bakery', 'Toasted Coconut Cookies. Soft and Chewy Toasted Coconut Cookies are buttery sugar cookie with a nutty aroma. These coconut cookies are loaded with toasted coconut and crispy on the outside and soft and chewy in the middle.', '40 packs', 'Available', 'T & T', 'bittu@gmail.com', ''),
(69, 'Fresh strawberry ice-cream', '45', '2019-08-03', 'fresh stawberry icecream.jpg', 'ice-cream', 'Vadilal entered the processed foods industry to optimise utilisation of its extensive cold chain network in the 1990s. It caters to the domestic and export markets with products such as frozen vegetables and ready to eat snacks, curries and breads, in addition to the traditional core ice cream business.', '25 packs', 'Available', 'vadilal', 'bittu@gmail.com', ''),
(70, 'chocolate toppings cookies', '60', '2019-08-06', 'chocolate topping cookies.jpeg', 'bakery', 'Ruth Graves Wakefield invented the chocolate chip cookie, and during WWII, when Massachusetts servicemen received them in care packages', '60 packs', 'Available', 'Wikifield', 'banty@gmail.com', ''),
(71, 'chocolate-chip-cookies', '48', '2019-08-31', 'chocolate-chip-cookies.jpg', 'bakery', 'ItÃ¢â‚¬â„¢s difficult to imagine that the chocolate chip cookie, one of the worldÃ¢â‚¬â„¢s most beloved sweet treats, was actually invented by accident. The invention of the chocolate chip cookie happened', '26 packs', 'Available', 'Wikifield', 'banty@gmail.com', ''),
(73, 'Pillsbury hot rolls', '30', '2019-09-04', 'pilsburry hot rolls.jpeg', 'bakery', 'This might just be the ultimate chocolate chip cookie recipe (besides our refrigerated dough, of course). ... Heat oven to 375Ã‚Â°F. In large bowl with electric mixer, beat granulated sugar, brown sugar and butter until light and fluffy. ... Allow cookies to cool, then decide if theyÃ¢â‚¬â„¢re', '30 packs', 'Available', 'Pillsbury', 'banty@gmail.com', ''),
(74, 'bitter melon (karela)', '30 per kg', '0000-00-00', 'bitter melon (karela).jpg', 'vegetable', 'Bitter Gourd is a well-liked vegetable in Asian countries, where its health benefits are famous, particularly, and its ability to lower blood glucose in diabetics.', '40 kg', 'Available', '---', 'banty@gmail.com', ''),
(75, 'Ginger (adrakh)', '60 per kg', '0000-00-00', 'ginger (Adrakh).jpg', 'vegetable', 'Ginger (Zingiber officinale) is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine. It is a herbaceous perennial which grows annual pseudostems (false stems made of the rolled bases of leaves) about a meter tall bearing narrow leaf blades.', '40 kg', 'Available', '---', 'banty@gmail.com', ''),
(76, 'Cauli Flower (gobhi)', '40 per kg', '0000-00-00', 'cauliflower (gobhi).jpg', 'vegetable', 'Image result for cauliflower descriptionwww.specialtyproduce.com\r\nCauliflower is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the family Brassicaceae. ... The cauliflower head is composed of a white inflorescence meristem. Cauliflower heads resemble those in broccoli, which differs in having flower buds as the edible portion.', '50 kg', 'Available', '---', 'banty@gmail.com', ''),
(77, 'mixed greenstuff (Saag)', '100', '0000-00-00', 'green vegitables.jpg', 'vegetable', 'Saag (pronounced [saÃ‹Âg]) (Punjabi: Ã Â¨Â¸Ã Â¨Â¾Ã Â¨â€”) (Nepali: Ã Â¤Â¸Ã Â¤Â¾Ã Â¤â€”) (Odia: Ã Â¬Â¶Ã Â¬Â¾Ã Â¬â€”) or saga is a leaf-based (spinach, mustard leaf, collard greens, basella, etc.) dish eaten in the Indian subcontinent with bread such as roti or naan,[1] or rice (in Nepal, Odisha, Kashmir and West Bengal). Saag can be made from spinach, mustard leaves, finely chopped broccoli, or other greens, along with added spices and sometimes other ingredients such as paneer.\r\n\r\nSaag common in the state of Odisha, where it is eaten with pakhala. In the Shree Jagannath Temple of Puri, saag is one of the dishes offered to Jagannath as part of Mahaprasad. Saag is also common in West Bengal and other regions of North India, where the most common preparation is sarson da saag (mustard plant leaves), which may be eaten with makki di roti, a yellow roti made with maize flour.[2] Saag aloo (spinach and potato) and saag gosht (spinach and goat) are a common dishes in Punjabi cuisine, which are also served in restaurants and take-aways in the Western world (where the goat is commonly replaced with lamb).', '10 kg', 'Available', '---', 'banty@gmail.com', ''),
(78, 'Mixed vegitable combo pack', '400', '0000-00-00', 'mix vegitable combo pack.jpg', 'vegetable', 'Mixed Vegetables are a mixture of at least two different vegetables. They are peeled, if necessary, and prepared in bite-sized pieces if they are large vegetables. ... The vegetables in commercial Ã¢â‚¬Å“Mixed VegetablesÃ¢â‚¬Â used to be just peas and corn, or peas and carrots (with the carrots being diced to match the peas in size.)', '50 kg', 'Available', '---', 'ravi@gmail.com', ''),
(79, 'brocoli', '85', '0000-00-00', 'brocolli1.jpg', 'vegetable', 'Broccoli. ... Broccoli is classified in the Italica cultivar group of the species Brassica oleracea. Broccoli has large flower heads, usually dark green in color, arranged in a tree-like structure branching out from a thick, edible stalk which is usually light green. The mass of flower heads is surrounded by leaves.', '30 kg', 'Available', '---', 'ravi@gmail.com', ''),
(80, 'Coriandar leave (Dhaniya patta)', '15 ', '0000-00-00', 'coriander leaves.cms', 'vegetable', 'Coriander, Coriandrum sativum, is an erect annual herb in the family Apiaceae. The leaves of the plant are variable in shape, broadly lobed at the base of the plant, and slender and feathery higher on the flowering stems. ... Coriander is an annual plant, surviving only one growing season and reaches up to 50 cm (19.7 in).', '10 kg', 'Available', '---', 'ravi@gmail.com', ''),
(82, 'Red Tomato', '80', '0000-00-00', 'red tomatoes.webp', 'vegetable', 'Tomato, Lycopersicum esculentum (syn. Solanum lycopersicum and Lycopersicon lycopersicum) is an herbaceous annual in the family Solanaceae grown for its edible fruit. The plant can be erect with short stems or vine-like with long, spreading stems.', '10 kg', 'Available', '---', 'ravi@gmail.com', ''),
(83, 'Appy Fizz', '55', '2019-08-09', 'Appy-Fizz.jpg', 'juice', 'Introduced in 2005, Appy Fizz is a sparkling apple juice drink available in India. Produced by ParlÃƒÂ© Agro, the largest Indian food and beverage company (who also make Frooti), Appy Fizz builds on its predecessor, Appy, which was a regular, non-carbonated juice.', '10 packs', 'Available', 'Parle Agro', 'banty@gmail.com', ''),
(84, 'orange, red cherry,grapes juice', '360', '2019-08-09', 'Serafin_modern-organic-pressed-juice (orange, red cherry,grapes juice).jpg', 'juice', 'Serafin Juice is an organic, cold-pressed and delicious line of juices created and based in San Diego, California. ... The design that was created is modern, clean and simple, much like their juices that are free of GMOs and preservatives.', '40 bottels', 'Available', 'serafin', 'banty@gmail.com', ''),
(85, 'minute maid guava juice', '70', '2019-08-07', 'minute maid guava juice.png', 'juice', 'Minute Maid Guava is the top selling guava juice product in India. Get details like product information and ingredients of Minute Maid Guava Fresh Juice.', '10 bottels', 'Available', 'Minute maid', 'banty@gmail.com', ''),
(86, 'apple  anaar orange tripack', '300', '2019-08-07', 'guava apple orange tripack juice.png', 'juice', 'Minute Maid Guava is the top selling guava juice product in India. Get details like product information and ingredients of Minute Maid Guava Fresh Juice.', '40 bottels', 'Available', 'Minute maid', 'banty@gmail.com', ''),
(87, 'pomegranate( Anaar juice)', '60', '2019-08-06', 'Know-Mm-Anar.jpg', 'juice', 'Minute Maid Anar is a new pomegranate drink in India made with 100% Pomegranate Juice. Know product information, ingredients and more details of Minute Maid Anar.', '40 bottels', 'Available', 'Minute maid', 'shaurya@gmail.com', ''),
(88, 'Mixed fruit splash', '80', '2019-08-31', 'mixed fruit splash.jpg', 'juice', 'Mixed Fruit Juice is one of the most refreshing Beverage or Juice, full of nutrients and taste. ... It is a simple and easy homemade juice made with Oranges, Apples, Grapes, Lemon and Kiwi. This Juice is fully loaded with nutritional values and taste.', '20 bottels', 'Available', 'Freshy', 'shaurya@gmail.com', ''),
(89, 'mango juice', '101', '2019-08-07', 'mango juice.jpeg', 'juice', 'The fruit flesh of a ripe mango is very sweet and has a unique, aromatic taste. ... Mango fruit varies in colour, shape and size. It has a large stone at its centre. Mangoes are an excellent source of vitamins, minerals and antioxidants - calcium, potassium, vitamin A, E and C and several B vitamins.', '40 bottels', 'Available', 'Real', 'shaurya@gmail.com', ''),
(90, 'tropicanadelight-pomegranate 1L pack', '90', '2019-08-06', 'tropicana-fruit-juice-delight-pomegranate 1L pack.jpg', 'juice', 'Savour the rich taste of pomegranate ! A special 6-layer protection gives you the goodness of tasty, ready to serve fruit beverage in every glass of Tropicana. Did You Know? Pomegranate is a fruit of great antiquity, grown for the last 5000 years in Iran and Afghanistan. A good source of nutrients, this fruit makes for a sweet and great tasting juice.\r\nNUTRITIONAL FACTS\r\n(per 100 ml) Calories: 56 kcl Total Fat: 0 g Saturated: 0 g Polyunsaturated: 0 g Monounsaturated: 0 g Trans: 0 g Cholesterol: 0 mg Sodium: 41 mg Protein: 0 g Sugars: 14 g Dietary Fiber: 0 g Potassium: 47 mg Total Carbs: 14 g', '30 bottels', 'Available', 'Tropicana', 'shaurya@gmail.com', ''),
(91, 'Tropicana Fruit Juice - Delight, Mixed Fruit,', '90', '2019-08-04', 'tropicana-fruit-juice-delight-mixed-fruit.jpg', 'juice', 'Enjoy the refreshing and delicious taste of mixed fruits! A special 6-layer protection gives you the goodness of tasty, ready to serve fruit beverage in every glass of Tropicana. Did You Know? Fruits are an important part of a balanced daily diet and provide the body with nutrients which are good for healthy living.', '30 packs', 'Available', 'Tropicana', 'shaurya@gmail.com', ''),
(92, 'amul-gold-homogenised-standardised-milk', '384', '2019-08-09', 'amul-gold-homogenised-standardised-milk.jpg', 'milk', 'Pasteurised milk Amul milk meets the PFA standards for the respective type of milk.\r\nAmul Milk is the most hygienic liquid milk available in the market.\r\nIt is pasteurised in state-of-the-art processing plants and pouch-packed to make it conveniently available to consumers.', '50 packs', 'Available', 'Amul', 'shaurya@gmail.com', ''),
(93, 'sofit-milk-soya-chocolate 200ml', '26', '2019-08-20', 'sofit-milk-soya-chocolate.jpg', 'milk', 'Get set with this delicious chocolate flavored Soya Milk by Sofit. Be it a day filled with work, or just brimming with fun, do more with Sofit!Ãƒâ€š Rich in Soy Proteins, Omega-3, Vitamins & Calcium, this delicious drink keeps you and your family healthy & fit. Ãƒâ€š Sofit Soya Milk is cholesterol free & gluten free, and an ideal pick for the lactose intolerant & vegans. Available in 4 more delicious flavors: Mango, Kesar Pista, Vanilla & Coffee Mocha.', '30 packs', 'Available', 'Sofit', 'shaurya@gmail.com', '200ml'),
(94, 'Cavins Milkshake - Chocolate', '75', '2019-08-09', 'cavins-milkshake-chocolate.jpg', 'milk', 'The thick and smooth taste of this creamy chocolate flavour is good for cold milk. Delicious taste in every sip, this drink will be best to tame your small hunger packs. Packed with the goodness of milk, enjoy this healthy drink anywhere everywhere. Liked by kids, they will keep asking for more.', '40  bottels', 'Available', 'Cavins', 'shaurya@gmail.com', '3x180 ml'),
(95, 'Banana', '25', '0000-00-00', 'banana.jpg', 'fruits', 'Relish the soft, buttery texture of Robusta bananas that are light green and have a great fragrance and taste. The stalks of Robustas are thick and rigid. Fresh fruits are green, which revolve to a bright yellow on ripening and the flesh contains a white - ceramic colour. Fresho Robusta are fine quality, sweet flavored, mushy and soft bananas. ', '20 dozen', 'Available', '---', 'shreya@gmail.com', '1 dozen'),
(97, 'Black Plum', '57', '0000-00-00', 'Black plum.jpg_480Wx480H', 'fruits', 'Indian Plums fresh and juicy flavor of the plum creates it refreshing fruit to eat. It is generally have a maroon- purplish outer skin. It is an outstanding source of vitamins such as folate, vitamin A, C, vitamin K and Vitamin B complex. Each plum includes just 30 calories. It also provides dietary fiber and suggests very low calories lacking any fats. \r\nProduct image shown is for representation purpose only, the actually product may vary based on season, produce & availability.', '10 kg', 'Available', '---', 'shreya@gmail.com', '500g'),
(98, 'Peach', '40', '0000-00-00', 'peach.jpg', 'fruits', 'Indian peaches are large with a red, velvety and fuzzy skin. They have red flesh, which is tender yet firm with a sweet and sometimes slightly tart flavour. Fresho peaches are juicy, high quality, selectively picked peaches.', '10 kg', 'Available', '---', 'shreya@gmail.com', '250 g'),
(99, 'apple-red-delicious-regular', '185', '0000-00-00', 'apple-red-delicious-regular.jpg', 'fruits', 'The bright red coloured and heart shaped Red Delicious apples are crunchy, juicy and slightly sweet. Red Delicious Apples are a natural source of fibre and are fat free. They contain a wide variety of anti-oxidants and polynutrients. ', '200 pc', 'Available', '---', 'shreya@gmail.com', '4 piece'),
(100, 'Pineapple', '75', '0000-00-00', 'pineapple.jpg', 'fruits', 'With the shape of a pine cone, the fruit is loosely fibrous and juicy with white to yellowish flesh. The edible center part is firm, leathery and sweet. ', '20 piece', 'Available', '---', 'shreya@gmail.com', '1 pc (750g-800g)'),
(101, 'London Dairy Ice Cream - Yoghurt Berry Delight', '400', '2019-08-30', 'london-dairy-ice-cream-yoghurt-berry-delight.jpg', 'ice-cream', 'A berrylicious combination of handpicked Strawberries and Blueberries coupled with the goodness of yoghurt in delicious ice cream, which makes the Yoghurt Berry Delight a special treat. It also contains 50% less fat to give you a truly guilt free indulgence masterpiece.', '40 Tubs', 'Available', 'London dairy', 'shreya@gmail.com', '500 ml Tub'),
(102, 'Baskin Robbins Ice Cream Sundae - Fudge', '99', '2019-08-20', 'Baskin Robbins Ice Cream Sundae - Fudge.jpg', 'ice-cream', 'Baskin Robbins Fudge Sundae is a premium Vanilla ice cream with caramel and chocolate confectionery, topped with roasted almonds that will instantly become your new favourite indulgence.', '40 Tubs', 'Available', 'Baskin Robbins', 'shreya@gmail.com', '165 ml'),
(103, 'london-dairy-ice-cream-strawberry-cheese-cake', '400', '2019-08-06', 'london-dairy-ice-cream-strawberry-cheese-cake.jpg', 'ice-cream', 'An exquisite combination of creamy textured cheesecake ice cream with delicious cream cheese pieces and swirls of luscious strawberry sauce, the London Dairy Strawberry Cheesecake promises a rich gastronomic experience. A flavour with international heritage and popularity, the Strawberry Cheesecake is the first choice of Strawberry ice cream lovers who are seeking an overwhelming ice cream indulgence.', '20 tubs', 'Available', 'London Dairy', 'roshni@gmail.com', '500ml'),
(104, 'Baskin Robbins Ice Cream - Gold Medal Ribbon', '350', '2019-08-07', 'baskin-robbins-ice-cream-gold-medal-ribbon.jpg', 'ice-cream', 'Beat the heat with some creamy and delicious ice cream by Baskin Robins, which is created using exotic and unique flavours that will leave you mesmerized with every mouthful. Golden Medal Ribbon is the ice cream for all caramel lovers as it is a heavenly medley of vanilla and chocolate ice cream, embraced by caramel ribbion that is sure to leave you craving for more.', '50 tubs', 'Available', 'Baskin Robbins', 'roshni@gmail.com', '450 ml'),
(105, 'amul-butter-pasteurized', '46', '2019-08-20', 'amul-butter-pasteurized.jpg', 'butters', 'Pasteurized Amul butter is a delicious bread spread, an essential ingredient of baking and a known enhancer for many food items. This smooth creamy chunk from the house of Amul can be added to sauce, Indian gravy and baked products.', '20 packs', 'Available', 'Amul', 'roshni@gmail.com', '100g'),
(106, 'funfoods-peanut-butter-crunchy', '245', '2019-08-07', 'funfoods-peanut-butter-crunchy.jpg', 'butters', 'FunFoods brings you the crunchy version of peanut butter. Every jar is blended with loads of real peanut pieces so you get the fun flavour of Fun Foods Peanut Butter, plus crazy-good crunchiness. Make tasty peanut butter and jelly sandwich or enjoy crunchier version of peanut butter milk shake.', '20 packs', 'Available', 'FunFoods', 'roshni@gmail.com', '925 g'),
(107, 'Gowardhan Table Butter - Pasteurised', '207', '2019-08-07', 'gowardhan-table-butter-pasteurised.jpg', 'butters', 'Pasteurized Butter is added to different food items so as to improve its taste. The range is necessary for healthy and strong muscles, teeth and bones. This Table Butter is having good quality, Rich in taste, simple to spread.', '50 packs', 'Available', 'Gowardhan', 'roshni@gmail.com', '500g'),
(108, 'Sundrop Peanut Butter - Honey Roast Creamy', '215', '2019-08-09', 'sundrop-peanut-butter-honey-roast-creamy.jpg', 'butters', '\r\nSundrop offers specificity of that peanut butter is the touch of honey which gives the creamy texture to the product. This peanut butter is rich in dietary fiber that helps maintain a healthy digestive system and also contains unsaturated fatty acids that keep your heart healthy.', '60 packs', 'Available', 'Sundrops', 'roshni@gmail.com', '462 g '),
(109, 'cadbury-dairy-milk-lickables', '40', '2019-08-07', 'cadbury-dairy-milk-lickables.jpg', 'chocolate', 'Your favourite chocolate Cadbury Dairy Milk in a unique, indulgent, liquid format. Lick and enjoy this liquid chocolaty treat with a twist of Oreo bits and Wheat crispies for a delicious multi-textural experience. Get the FREE iconic Justice League toy with each pack of the delicious Dairy Milk Lickables which assures to be a package of pleasure. Scoop it, lick it and enjoy.', '60 pieces', 'Available', 'Cadbury', 'roshni@gmail.com', '20g'),
(110, 'Lindberg Crunchy Cookie - Pure Belgian Milk Chocolate', '99', '2019-06-12', 'lindberg-crunchy-cookie-pure-belgian-milk-chocolate.jpg', 'chocolate', 'An all-time winner, try our silky & pure Belgian milk chocolate with crunchy cookies. The 70% cocoa extract in the smooth milk chocolate balances the crispy cookies and makes this a perfect people pleaser! A gift to your cookies n cream lovers and these are sure to hit the spot! Lindberg chocolates contain no added preservatives and so go ahead and spoil yourself with as many as you like.', '50 pieces', 'Available', 'Lindberg ', 'roshni@gmail.com', '50g'),
(111, 'lindberg-apricot-pure-belgian-dark-chocolate', '99', '2019-08-09', 'lindberg-apricot-pure-belgian-dark-chocolate.jpg', 'chocolate', 'Explore the rich and decadent, pure Belgian Dark Chocolate paired with sweet and sour Apricots. They say dark chocolates are good for the heart and ours come from pure 70% cocoa extracts straight from Belgium. These are glossy delights meant to melt in your mouth! Indulge in these with no worries as Lindberg chocolates contain No added preservatives and are good for your family and loved ones. Perfect for gifting to a chocolate lover!', '30 packs', 'Available', 'Lindberg ', 'roshni@gmail.com', '50g'),
(113, 'lindberg-classic-white-chocolate-crispies', '129', '2019-08-20', 'lindberg-classic-white-chocolate-crispies.jpg', 'chocolate', 'These caramelised crisps dipped in creamy and smooth white chocolate are the perfect match for your morning cuppa. Give in to your sweet cravings, guilt-free!', '40 packs', 'Available', 'Lindberg ', 'roshni@gmail.com', '100g'),
(114, 'Amul Milk Chocolate- Smooth & Creamy', '100', '2019-08-07', 'amul-milk-chocolate-smooth-creamy.jpg', 'chocolate', 'Savour the mesmerising combination of creamy milk blended with rich cocoa that is sure to delight your sweet tooth. Milk Chocolate is all about regaling in the creaminess of the classic chocolate bar. This rich, smooth chocolate bar gives you joy in every bite and is ideal for enjoying with your loved ones, or to give it as a gift.', '60 packs', 'Available', 'Amul', 'roshni@gmail.com', '150g'),
(115, 'Cadbury Choclairs Gold Birthday Pack', '150', '2019-08-07', 'cadbury-choclairs-gold-birthday-pack.jpg', 'chocolate', 'Bring home your favourite chocolairs in a super saver home pack perfect for birthday parties and gifting occasions for young kids. This pack comes with 100 chocolairs gold eclairs units.', '60 packs', 'Available', 'Cadbury', 'shilpajha@gmail.com', '655 g'),
(116, 'mother dairy Dahi - Made From Toned Milk', '19', '2019-08-09', 'mother-dairy-dahi-made-from-toned-milk.jpg', 'curds', 'Mother Dairy Dahi 100% Natural The Taste of Real Dhai Provides Calcium Good for Strong Bones and Teeth, Supply Proteins Helps maintain active life and growth, Helps Digestion Supports digestive system in gut, Tastier and Healthier Everybody loves it.', '50 packs', 'Available', 'Mothers Dairy', 'shilpajha@gmail.com', '200g cup'),
(117, 'mother-dairy-misti-doi', '14', '2019-08-09', 'mother-dairy-misti-doi.jpg', 'curds', 'Mother Dairy Mishti Doi is a delicious treat whenever you feel like having something sweet. It is an entirely strong dairy product lacking any preservative and extra color, so it a valuable item for everybody apart from for those who are the diabetic.', '40 packs', 'Available', 'Mothers Dairy', 'shilpajha@gmail.com', '85g cup'),
(118, 'epigamia-greek-yogurt-strawberry', '31', '2019-08-07', 'epigamia-greek-yogurt-strawberry.jpg', 'curds', 'Low Fat and High protein delicious and thick Greek Yogurt.', '40 packs', 'Available', 'epigamia', 'mukesh@gmail.com', '90g'),
(119, 'epigamia-greek-yogurt-honey-banana', '31', '2019-08-09', 'epigamia-greek-yogurt-honey-banana.jpg', 'curds', 'Low Fat and High protein delicious and thick Greek Yogurt.', '40 packs', 'Available', 'epigamia', 'mukesh@gmail.com', '90g'),
(120, 'Epigamia Greek Yogurt - Vanilla Bean', '31', '2019-08-04', 'epigamia-greek-yogurt-vanilla-bean.jpg', 'curds', 'Epigama in Ancient Greek meant a way to Formalize the relationship between different nations, Thus with this cup of Greek Yogurt we applaud the marriage of a healthy lifestyle with delicious taste using only natural ingredients, No Prevervatives or artificial Flavours.', '60 packs', 'Available', 'epigamia', 'mukesh@gmail.com', '90g'),
(121, 'bikaji rasgulla', '225', '2019-08-07', 'bikaji-rasgulla.jpg', 'sweets', '\r\nRasgulla is a syrupy dessert popular in the indian subcontinent and regions with south asian diaspora. It is made from ball shaped dumplings of chhena and semolina dough, cooked in light syrup made of sugar.', '10 kg', 'Available', 'Bikaji', 'mukesh@gmail.com', '1 kg'),
(122, 'Sonpapdi', '89', '2019-08-07', 'sonpapdi.webp', 'sweets', 'Product Details\r\nKey Features\r\nMade up of Besan, Sugar, Palmolein Oil, etc.\r\nDoes not contain artificial colour, flavour and preservative\r\nFestive delight specially for you\r\nOffers a tantalizing treat to your taste buds\r\nPerfect gift option for your loved ones', '20 packs', 'Available', 'Happy day', 'shreya@gmail.com', '500g'),
(123, 'Besan ke Laddoo', '120', '2019-08-07', 'besan ke laddoo.jpg', 'sweets', ' Besan laddu is a popular Indian sweet dish made of besan (chickpea flour or gram flour), sugar and ghee. Besan is roasted in ghee ...', '60 kg', 'Available', '---', 'shreya@gmail.com', '1 kg'),
(124, 'Good Day butter cookie', '30', '2019-08-07', 'butter-good-day-original.jpeg', 'bakery', 'Good day butter cookie have fun with a good day', '80 packs', 'Available', 'Britania', 'shilpajha@gmail.com', '250g'),
(125, 'Muskmellon', '45', '0000-00-00', 'muskmellon.jpeg', 'fruits', 'Muskmellon the real taste of fruit', '30 kg', 'Available', '---', 'shaurya@gmail.com', '500g'),
(126, 'Watermellon', '80', '0000-00-00', 'watermellon.jpeg', 'fruits', 'The watermelon is a large fruit of a more or less spherical shape. ... It has an oval or spherical shape and a dark green and smooth rind, sometimes showing irregular areas of a pale green colour. It has a sweet, juicy, refreshing flesh of yellowish or reddish colour, containing multiple black, brown or white pips.', '20 piece', 'Available', '---', 'shaurya@gmail.com', '1 piece (1kg-1.5kg)'),
(127, 'Drupe vegan almond Milk', '25', '2019-08-07', 'almond milk.jpeg', 'milk', 'It is made from fresh almond paste and mixed with alkaline water, which helps maintain the product PH level . Drupe Almond Milk has No preservatives. Drupe Almond Milk has 16-35 calories and is extremely low fat, easy to digest.', '60 packs', 'Available', 'Drupe', 'banty@gmail.com', '250 ml'),
(128, 'Marigold Full Creame Milk', '40', '2019-08-07', 'marigold full cream.jpg', 'milk', 'It is also high in calcium and protein, containing 400mg of calcium and 10g of protein in every 200ml glass of milk. MARIGOLD HL Milk is also low in fat (99-per-cent fat-free) and low in lactose, making it more than just a glass of milk.', '10 L', 'Available', 'Marigold', 'banty@gmail.com', '1 L'),
(129, 'Nestle A+ Nourish Toned Milk', '75', '2019-08-07', 'nestle a+ nourish toned-milk.jpg', 'milk', 'Milk has the goodness of Calcium and Protein that provide nourishment. NestlE a+ Nourish Milk is sourced from healthy, well fed cows. Then, this milk undergoes 61 stringent quality checks including checks for adulterants, aflatoxin and antibiotics. Following this, the milk is passed through Flash Heat Treatment that makes the milk germ-free and preserves its nutrients. Thereafter, NestlE a+ Milk is packed in a 6 layer protection packaging. 2 glasses (1 glass = 250ml) of NestlE a+ Nourish Milk helps meet 2 of the 3 daily recommended portions of dairy products. This UHT Treated Toned Milk, with the power of Calium and Protein, has no added preservatives. Warning: This product is not be used as an infant milk substitute. Do not buy if the pack is puffed. Storage: Store in a cool, dry and hygienic place. Once opened, refrigerate (between 4 degree to 8 degree Celsius) and consume within 2 days.', '20 L', 'Available', 'Nestle', 'banty@gmail.com', '1 L carton'),
(130, 'Dabur Hommade - Coconut Milk', '65', '2019-08-09', 'dabur-hommade-coconut-milk.jpg', 'milk', 'Dabur Hommade goes beyond its popular range of cooking pastes to elevate the tastes of Indian homemade recipes with Coconut Milk. Made from the first pressed extract of top-grade coconuts, this culinary delight carries a rich taste and thick texture that makes your dishes much fuller and creamier.', '40 L', 'Available', 'Dabur', 'shaurya@gmail.com', '200ml'),
(131, 'Amul Kool Milk Shake - Badam', '210', '2019-08-07', 'amul-kool-milk-shake-badam.jpg', 'milk', 'Amul Kool Badam milkshakes are ended up with 100 % pure natural ingredients and with the richness of milk. It holds carbohydrates, calcium, added sugar, protein, vitamins etc. It is a delectable drink rich in nutrients.', '40 packs', 'Available', 'Amul', 'shaurya@gmail.com', '6x200ml'),
(133, 'Orange', '60', '0000-00-00', 'orange.jpeg', 'fruits', 'dsgffffffffffffffffffffffffffff', '30kg', 'Available', '---', 'shilpajha@gmail.com', '1 kg'),
(134, 'Carrot', '60', '0000-00-00', 'carrote.jpeg', 'vegetable', 'The carrot (Daucus carota subsp. sativus) is a root vegetable, usually orange in colour, though purple, black, red, white, and yellow cultivars exist. ... The carrot is a biennial plant in the umbellifer family Apiaceae. At first, it grows a rosette of leaves while building up the enlarged taproot.', '152 kg', 'Available', '---', 'rahul@gmail.com', '1 kg'),
(135, 'Gourmet nutty pop', '49', '2019-08-06', 'gourmet_nutty_pop.png', 'ice-cream', 'A little nutty; a lot chocolatey. One of our original and most adored gourmet popcorn recipes, this gourmet caramel popcorn arrives loaded with nuts.', '125 ', 'Available', 'Vadilal', 'rahul@gmail.com', '1 pic'),
(136, 'Golden pearl uice cream', '90', '2019-08-02', 'golden-pearl-uice-cream.png', 'ice-cream', 'Golden Pearl Ice Cream ... Pistachio Almond Fudge Ice Cream .... our new enticing new flavour made with fresh milk cream and the best hand picked ingredients.', '250', 'Available', 'Vadilal', 'charlie1801@gmail.com', '1 pic'),
(137, 'juice mixed fruit merry', '89', '2019-08-07', '1-juice-mixed-fruit-merry-tetrapack-b-natural-original-imaezby5g4p8mety.jpeg', 'juice', 'B Natural s Mixed Fruit Merry juice brings to you the goodness of 8 fruits to provide vital nutrients. Relish the yummy & healthy mixed fruit juice by B Natural that .', '85', 'Available', 'Natural', 'charlie1801@gmail.com', '1 L'),
(138, 'soan papdi badami', '119', '2019-07-29', '250-soan-papdi-badami-soan-papdi-haldiram-original-imaevg5j98bqbuem.jpeg', 'sweets', 'Soan papdi (also known as patisa, son papri, sohan papdi or shonpapdi) is a popular Indian dessert. It is usually cube-shaped or served as flakes, and has a crisp and flaky texture. It was traditionally sold loose in a rolled paper cone, but modern industrial production has led it to be sold in tightly formed cubes.', '145 kg', 'Available', 'Haldiram', 'ritik@gmail.com', '400 g'),
(139, 'Onion', '24', '0000-00-00', 'onion.jpeg', 'vegetable', 'Description. Onion, Allium cepa, is an herbaceous biennial in the family Liliaceae grown for its edible bulb. The stem of the plant is a flattened disc at the base and the tubular leaves form a pseudostem where their sheaths overlap. The leaves are either erect or oblique and there are 3Ã¢â‚¬â€œ8 per plant.', '124 kg', 'Available', '---', 'ritik@gmail.com', '1 kg'),
(140, 'masroom', '60', '0000-00-00', 'masroom.jpeg', 'vegetable', 'A mushroom, or toadstool, is the fleshy, spore-bearing fruiting body of a fungus, typically produced above ground on soil or on its food source. ... These gills produce microscopic spores that help the fungus spread across the ground or its occupant surface.', '145 kg', 'Available', '---', 'banty@gmail.com', '500 g'),
(141, 'Kohlrabi', '80', '0000-00-00', 'phool.jpeg', 'fruits', 'The purple colour of Kolibri is so appealing that they really stand out in the garden. Kohlrabi has the attractive texture of a crisp apple with a mild Brassica flavour that hints of cabbage. Its crispness lends it well for use in salads with thick dressings. Shredded, it makes a delicious coleslaw. And like its Brassica cousins, kohlrabi is an excellent source of phosphorus and potassium as well as dietary fibre, and (somewhat surprisingly) vitamin C.', '250 kg', 'Available', '---', 'banty@gmail.com', '1'),
(142, 'peaches', '160', '0000-00-00', 'peaches.jpg', 'fruits', 'Peach, Prunus persica, is a deciduous tree or shrub in the family Rosaceae grown for its edible fruit of the same name. ... The fruit is a velvety, soft, fleshy red to yellow-orange fruit which is oval in shape and 3-8 cm in diameter. Peach trees can grow up to 8 m (19 ft) in height and produce fruit for 10 to 20 years.', '20 kg', 'Available', '---', 'shilpajha@gmail.com', '1 kg'),
(143, 'Guava', '60', '0000-00-00', 'Guava.jpg', 'fruits', 'Guava, Psidium guajava, is an evergreen shrub or small tree in the family Myrtaceae grown for its edible fruits. Guava has a slender trunk with smooth green to red-brown bark. The trunk may be branched at the base and the branches droop low to the ground. ... The fruit is oval in shape and green to yellow in color.', '40 kg', 'Available', '---', 'banty@gmail.com', '1 kg'),
(144, 'chikku', '120', '0000-00-00', 'chikku.jpg', 'fruits', ' Chikoo has brown fuzzy skin and is more oval-shaped than its Central American cousins, though some develop pointed ends. The skin is .', '20 kg', 'Available', '---', 'shilpajha@gmail.com', '1 kg'),
(145, 'Frozen dessert strawberry', '175', '2019-08-07', 'kwality-walls-frozen-dessert-strawberry-cheesecake.jpg', 'ice-cream', 'It has high nutritional value. In summers, it gives you a cooling and refreshing effect. It is soft and has a mouth-watering taste.. Kwality Walls Strawberry Cheesecake ice cream comes packed in an attractive tub of 750ml..', '120 piece', 'Available', 'kwality walls', 'mukesh@gmail.com', '1 pic'),
(146, 'oreo chocolate kwality walls', '75', '2019-08-08', 'oreo chocolate kwality walls.jpg', 'ice-cream', 'A crunchy Oreo crumbs topped with a smooth chocolate disc and creamy vanilla ice - cream mixed with Oreo chunks. All this wrapped in a Oreo wafer cone that ends with the yummiest chocolate tip.', '90 piece', 'Available', 'kwality walls', 'charlie1801@gmail.com', '1 pic'),
(147, 'Doodh peda peda jersey original', '90', '2019-08-07', '200-doodh-peda-peda-jersey-original-imafggv5ss4wq6yq.jpeg', 'sweets', 'Doodh Peda, details & specifications from Creamline Dairy Products Ltd., a leading ... Product Description ... Its milk and dairy products are sold under the popular brand name jersey. ', '152 kg', 'Available', 'Jersey', 'charlie1801@gmail.com', '250 g'),
(148, 'Kaju berfi', '370', '2019-08-06', '400-kaju-burfi-burfi-bikano-original-imafgccmd7h6auqj.jpeg', 'sweets', 'Kaju literally means cashew nuts and barfi is a type of Indian sweet, usually in a lozenge shape. Barfi is often but not always, made by thickening milk with sugar and other ingredients (dry fruits and mild spices). It is then spread in a flat, shallow dish and cut into bite-sized pieces.', '60 kg', 'Available', 'Bikano', 'charlie1801@gmail.com', '500 g'),
(149, 'Annona (atta)', '120', '0000-00-00', 'Annona (atta).jpg', 'fruits', 'The color is typically pale green through blue-green, with a deep pink blush in certain varieties, and typically has a bloom. It is unique among Annona fruits in being segmented, and the segments tend to separate when ripe, exposing the interior.', '30 kg', 'Available', '---', 'charlie1801@gmail.com', '1 kg'),
(150, 'grapes', '120', '0000-00-00', 'grapes.jpg', 'fruits', 'Grapes are a type of fruit that grow in clusters of 15 to 300, and can be crimson, black, dark blue, yellow, green, orange, and pink. "White" grapes are actually green in color, and are evolutionarily derived from the purple grape. ... Grapes are typically an ellipsoid shape resembling a prolate spheroid.', '124 kg', 'Available', '---', 'charlie1801@gmail.com', '1 kg'),
(151, 'Licchi (lichi)', '100', '0000-00-00', 'Licchi (lichi).jpg', 'fruits', 'Lychee, (Litchi chinensis), also spelled litchi or lichi, evergreen tree of the soapberry family (Sapindaceae), grown for its edible fruit. Lychee is native to Southeast Asia and has been a favourite fruit of the Cantonese since ancient times.', '5000 piece', 'Available', '', 'charlie1801@gmail.com', '100 pic'),
(152, 'Orange', '100', '0000-00-00', 'orange 1.jpg', 'fruits', 'The orange fruit is one of the most widely consumed fruits in the Unites States. It is a member of the citrus family along with lemons, limes and grapefruit. Oranges are most often covered in a thick, orangey-yellow skin, and the inside is divided into segments of juicy pulp.', '156 kg', 'Available', '---', 'charlie1801@gmail.com', '1 kg'),
(153, 'Santol (chikku)', '140', '0000-00-00', 'Santol (chikku).jpg', 'fruits', 'The downy rind may be thin or thick and contains a thin, milky juice. It is edible, as is the white, translucent, juicy pulp (aril), sweet, subacid or sour, surrounding the 3 to 5 brown, inedible seeds which are up to 3/4 in (2 cm) long, tightly clinging or sometimes free from the pulp.', '25 kg', 'Available', '---', 'charlie1801@gmail.com', '1 kg'),
(154, 'Beet', '100', '0000-00-00', 'beet img.jpg', 'vegetable', 'Beets, Beta vulgaris, are herbacious biennial root vegetables in the family Chenopodiaceae grown for their edible root. The plant is usually erect with a long main root and a rosette of leaves growing on stems. ... Beets may also be referred to as beetroot, garden beet or spinach beet and originated from the Mediterranean.', '125 kg', 'Available', '---', 'charlie1801@gmail.com', '1 kg'),
(155, 'Pea', '80', '0000-00-00', 'Pea 2.jpg', 'vegetable', 'The pea is most commonly the small spherical seed or the seed-pod of the pod fruit Pisum sativum. Each pod contains several peas, which can be green or yellow. Pea pods are botanically fruit, since they contain seeds and develop from the ovary of a (pea) flower', '150 kg', 'Available', '---', 'charlie1801@gmail.com', '1 kg'),
(156, 'papaya', '20', '0000-00-00', 'papaya.jpeg', 'fruits', 'payaaaa', '40pieces', 'Available', '---', 'shilpajha@gmail.com', '1 piece'),
(157, 'Curd Bucket', '200', '2019-08-10', '5Kgs Curd Bucket_500ml_edited_2.jpg', 'curds', 'Often curds. a substance consisting mainly of casein and the like, obtained from milk by coagulation, and used as food or made into cheese.', '80 kg', 'Available', 'bucket', 'mukeshpurnea6@gmail.com', '500 ml'),
(158, 'Dahi curd', '70', '2019-08-11', 'Dahi.jpg', 'curds', 'a custard made with lemon juice, butter, sugar, and eggs and used as a spread or filling. These example sentences are selected automatically from various online news sources to reflect current usage of the word  lemon curd.', '50 kg', 'Available', 'Dahi', 'mukeshpurnea6@gmail.com', '250 ml'),
(159, 'Kc plush curd  dahi', '80', '2019-08-11', 'kc-plus-cup-curd-500x500.jpg', 'curds', 'a custard made with lemon juice, butter, sugar, and eggs and used as a spread or filling. ', '60 kg', 'Available', 'KC Plus', 'mukeshpurnea6@gmail.com', '300 ml'),
(160, ' Natural curd thik', '150', '2019-08-11', 'Natural-Thick-Set-Curd.jpg_350x350.jpg', 'curds', 'Finagro natural product is a leading manufacturer of set curd, flavored Yogurt and other needy dairy products.Our mission is to provide our consumers fresh, nutritious and great tasting products that are 100 percent  safe and affordable.', '60 kg', 'Available', 'Finagro', 'mukeshpurnea6@gmail.com', '250 ml');
INSERT INTO `product` (`p_id`, `p_name`, `p_price`, `p_mfg`, `p_img`, `cat_title`, `p_desc`, `Qty`, `p_status`, `p_brand`, `v_email`, `each_qty`) VALUES
(161, ' 50 50 biscuit', '15', '2019-08-11', 'biscut.jpeg', 'bakery', 'Britannia 50-50 Biscuits. Among the variety of products, we export widely known Britannia Biscuits 50-50, which are procured from reputed manufacturer named Britannia.Owing to good packing and processing, these biscuits have a lot of crisp and glucose in them which provide instant energy to the body.', ' 250 pkt', 'Available', ' 50 50', 'mukeshpurnea6@gmail.com', '150 gm'),
(162, ' kreck jack biscuit', '65', '2019-08-11', 'krack.jpeg', 'bakery', 'Health Benefit Recipes with Krack Jack Biscuit. Krack jack is a kind of small, flat-baked sweet and salty biscuit, manufactured and marketed by Parle Foods.', '300 pkt', 'Available', ' kreck jack', 'mukeshpurnea6@gmail.com', '200 gm'),
(163, 'Milkbiks biscuit', '25', '2019-08-11', 'milkbiks.jpeg', 'bakery', 'Milk Bikis Kal ke liye Aaj! Rich with the goodness of milk, Britannia Milk Bikis are crunchy biscuits baked to perfection. ', '500 pkt', 'Available', 'Milkbiks', 'mukeshpurnea6@gmail.com', '150 gm'),
(164, 'Manoco biscuit', '30', '2019-08-11', 'monaco.jpeg', 'bakery', 'The Monaco biscuit is a small, flat-baked, salty biscuit, manufactured and marketed by Parle Foods. A light and crispy biscuit sprinkled with salt, Monaco adds a namkeen twist to sweet dominated biscuit world. The salty taste is well-balanced and is liked by kids and adults alike.', '600 pkt', 'Available', 'Monaco', 'mukeshpurnea6@gmail.com', '200 gm'),
(165, 'Uncle chips kurkury', '10', '2019-08-11', 'uncle chips.jpeg', 'bakery', 'Uncle Chipps was a pioneer in branded potato chips in India. The brand was acquired from Amrit Agro Ltd. in 2000 by Frito-Lay India. After the acquisition, the hugely popular brand has grown from strength to strength and has built a powerful connection with consumers.', '2000 pkt', 'Available', 'Uncle chips', 'mukeshpurnea6@gmail.com', '50 gm'),
(166, 'nut biscuit', '15', '2019-08-11', 'nut.jpeg', 'bakery', 't is an Indian company and the product was launched in the consumer market in the year 1986. Brand Good Day is associated with food products industry and it deals in making of very tasty.', ' 250 pkt', 'Available', 'Nut', 'mukeshpurnea6@gmail.com', '100 gm'),
(167, 'zeera biscuit', '120', '2019-08-11', 'zeera biscuits.jpeg', 'bakery', 'Jeera or zeera is the Hindi name for cumin seeds. Zeera biscuits are an amazing mix of savory and sweet and a welcome break from the overloaded sweet cookies.', '500 pkt', 'Available', 'Monaco', 'mukeshpurnea6@gmail.com', '200 gm'),
(168, 'anchor butter', '65', '2019-08-11', 'Anchor-Butter.jpg', 'butters', 'Anchor Butter is processed during the New Zealand spring through summer months delivering consistency to the final product. Made from high quality pasteurised cream with no chemical processing or additives, our butters are firmer, with a deep distinctive creamy butter flavor.', '80 kg', 'Available', 'Anchor', 'mukeshpurnea6@gmail.com', '70 ml'),
(169, 'butter amul', '70', '2019-08-11', 'butter-amul-4-600x450.jpg', 'butters', 'Amul is an Indian dairy cooperative, based at Anand in the state of Gujarat, India.Formed in 1946, it is a brand managed by a cooperative body, the Gujarat Co-operative Milk Marketing Federation Ltd.which today is jointly owned by 3 million milk producers in Gujarat.', '60 kg', 'Available', 'amul', 'mukeshpurnea6@gmail.com', '150 gm'),
(170, 'Shea butter', '200', '2019-08-11', '3cb9a300-dbbe-46a7-b5cc-ab132ba43178._SL300__.jpg', 'butters', 'Shea butter is a skin super food that comes from the seeds of the fruit of the Shea tree and that is naturally rich in vitamins A, E and F. It offers UV protection and provides the skin with essential fatty acids and the nutrients necessary for collagen production.', '50 kg', 'Available', 'Shea', 'mukeshpurnea6@gmail.com', '200 ml'),
(171, 'mother dairy dahi', '100', '2019-08-11', '71thnSqEoeL._SX522_.jpg', 'curds', 'Mother Dairy Classic Dahi is a simply delicious and well set curd which gives you the taste of Home-made curd without the hassles of setting curd at home. Our curd is prepared using the best quality standards making it hygienic.', '60 kg', 'Available', 'mother dairy', 'mukeshpurnea6@gmail.com', '200 gm'),
(172, 'spins ghee ', '65', '2019-08-11', 'sa_ghee_pro.png', 'butters', 'The gleaming yellow jar of ghee in Leslie McWilliams hands represents the latest super-food to elicit gushing acclaim from health gurus and celebrities. ', '80 kg', 'Available', 'Spins', 'mukeshpurnea6@gmail.com', '100 ml'),
(173, 'jif armond butter', '150', '2019-08-11', 'product_nut_naturalalmond.png', 'butters', 'Jif brand is passionate about delivering high-quality products and doing the right thing. But sometimes, the right thing is a tough nut to crack. So weve committed to specific, actionable guidelines and goals to keep us accountable.\r\n', '30', 'Available', 'Jif armond', 'mukeshpurnea6@gmail.com', '200 ml'),
(174, 'Srichakra lassi', '30', '2019-08-11', 'Laassi.png', 'milk', 'Lassi a creamy, frothy yogurt-based drink, blended with water and various fruits or seasonings such as salt or sugar that originated in Punjab, India.The drink has spread to the rest of the world, especially to Great Britain and countries tied to the former British Empire.', ' 250 pkt', 'Available', 'Srichakra', 'mukeshpurnea6@gmail.com', '100 gm'),
(175, 'govind lassi', '40', '2019-08-12', 'Lassi_Pouch.png', 'milk', 'Govind Lassi. It is a fermented liquid milk product with a sweet and sour taste. Govind s Lassi is famous for its taste & thickness. It is the best alternative for aerated drinks as it is beneficial to our health due to the presence of lactic acid bacteria in it.', '150 pkt', 'Available', 'Govind', 'mukeshpurnea6@gmail.com', '200 ml'),
(176, 'Greenfields milk', '40', '2019-08-12', 'uht-full-cream-254x500.png', 'milk', 'Greenfields Fresh Milk contains No preservatives, No additives, No hormones, No antibiotics, No milk powder and No permeate, so that is why it is 100% fresh. And if you have not already known, Starbucks uses Greenfields milk.', '300 pkt', 'Available', 'greenfields', 'mukeshpurnea6@gmail.com', '750 ml'),
(177, 'challenge butter', '200', '2019-08-12', 'products_european_style_butter_0.png', 'butters', 'Challenge Unsalted Butter, also known as sweet butter, is 100% real cream butter but with no salt added. In cooking, many recipes call for unsalted butter to give the cook greater control over the flavor and savories of their dishes. It s also a delicious way for people to reduce their intake of sodium.', '50 kg', 'Available', 'Challenge', 'mukeshpurnea6@gmail.com', '200 ml'),
(179, 'yili milk pure', '30', '2019-08-12', 'Yili.png', 'milk', 'It is engaged in processing and manufacturing of milk products, including ice cream, milk tea powder, sterilized milk and fresh milk under Yili brand, powdered milk under Pro-Kido brand, and organic milk under Satine brand. It is headquartered in Hohhot, Inner Mongolia.', '50 kg', 'Available', 'Yili', 'mukeshpurnea6@gmail.com', '750 ml'),
(180, ' pure butter chese', '300 ', '2019-08-12', 'cheese.jpg', 'butters', 'mera-product-application-processed-sliced-cheese-burger . crust and ready meals where good cheese definition is essential.', '80 kg', 'Available', 'mera chese', 'mukeshpurnea6@gmail.com', '1 kg'),
(181, 'little hearts  biscuit', '35', '2019-08-12', 'classic.jpeg', 'bakery', 'The little hearts biscuits are so named owing to its unique heart shape design that still draws a lot of attention to it. The swirling lines on the biscuit covered in a generous sprinkling of sugar make it extremely tempting.', '300 pkt', 'Available', 'little hearts', 'mukeshpurnea6@gmail.com', '300 gm'),
(182, 'mitha dahi curd', '12', '2019-08-11', 'curd_1.jpg', 'curds', 'The little devbhog  dahi  are so named owing to its unique heart shape design that still draws a lot of attention to it. The swirling lines on the dahi  covered in a generous sprinkling of sugar make it extremely tempting.', '60 kg', 'Available', 'Devbhog', 'mukeshpurnea6@gmail.com', '100 gm'),
(183, 'devbhog mitha dahi', '12', '2019-08-12', 'curd_3.jpg', 'curds', ' The only place which I loved was the DEVBHOG PIZZA. ..... HEALTHY MUESLI AND DATE YOGURT PARFAIT  . INGREDIENTS . 1. Gaia Dahi - 100 grms... 2. ... In a bowl add sprouts of your preference, chopped vegetables, I have added carrots and beetroot, boiled sweet corn. . 2.', '50 kg', 'Available', 'Devbhog', 'mukeshpurnea6@gmail.com', '100 ml'),
(184, 'chello curd dahi 150 ml', '40', '2019-08-12', 'curd-small.jpg', 'curds', 'Chello Dairy Products (Pvt) Ltd brings you the Family Nourishment of Goodness. Working ... It s better than every yoghurt product! double quote close. five stars.\r\nÃ¢â‚¬Å½Careers Videos Ã¢â‚¬Å½Our Story Ã‚Â· Ã¢â‚¬Å½Chairman s Message', '50 kg', 'Available', 'chello', 'mukeshpurnea6@gmail.com', '150 gm'),
(185, 'Jersey curd dahi', '52', '2019-08-12', 'f5-500x500 (1).jpg', 'curds', 'jersey Toned Milk - Curd. Jersey Toned Milk Curd is hygienically formulated from pure milk, does not have at all preservatives and is a rich supply of protein and calcium. It is fresh, safe, tasty and hygienic product that has all nutritious goodness of milk. This is extremely helpful in treating indigestion.', '20 kg', 'Available', 'Jersey', 'mukeshpurnea6@gmail.com', '250 ml'),
(186, 'Jersey curd dahi sweet & testy', '300 ml', '2019-08-12', 'f5-500x500.jpg', 'curds', 'ersey Toned Milk - Curd. Jersey Toned Milk Curd is hygienically formulated from pure milk, does not have at all preservatives and is a rich supply of protein and calcium. It is fresh, safe, tasty and hygienic product that has all nutritious goodness of milk. This is extremely helpful in treating indigestion.', '20', 'Available', 'Jersey', 'mukeshpurnea6@gmail.com', '65'),
(187, 'Nanak dahi curd', '34', '2019-08-12', 'images (1).jpg', 'curds', 'Nanak Dahi is scoopable and can be lifted as a moon crescent from the cup. Dahi is more easily digested and adds variety to our daily menu for healthful living.', '20 kg', 'Available', 'Nank', 'mukeshpurnea6@gmail.com', '150 ml'),
(188, 'hatson dahi curd', '1 kg', '2019-08-12', 'hatsun_curd_1kg.jpg', 'curds', 'Hatsun Curd. Thick, creamy and delicious, Hatsun Curd is the perfect companion for afternoon meals. Especially on hot summer days.R. G. Chandramogan is a dairyman and entrepreneur from Tamil Nadu', '60 kg', 'Available', 'hatson', 'mukeshpurnea6@gmail.com', '107'),
(189, 'sweet curn veg soup', '50', '2019-08-12', 'abc.jpeg', 'vegetable', 'egetable Soup Mix. Knorr Vegetable Soup Mix is a garden medley blend of carrots, onions, tomatoes, celery root, leeks, potatoes, cabbage, pleas, broccoli and garlic. It is delicious served as a soup or when added to your favourite recipes, like our classic Spinach Dip.', '50 kg', 'Available', 'Knorr', 'mukeshpurnea6@gmail.com', '150 gm'),
(191, 'Onion pyaj', '22', '2019-08-12', 'onion.jpeg', 'vegetable', 'An onion is a round vegetable with a brown skin that grows underground. It has many white layers on its inside which have a strong, sharp smell and taste.', '60 kg', 'Available', 'non', 'mukeshpurnea6@gmail.com', ' 1 kg'),
(194, ' red chilli mirch', '90', '2019-08-12', 'red hot chilli.jpeg', 'vegetable', 'Chilli is a fruit which belongs to Capsicum genus. It has many varieties which are differentiated on its pungency measured on Scoville Scale. Chilli fruit when ripened and dried becomes red chilli, which is further grounded to form red chilli powder. These are categorized as hot pepper.', '10', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(195, 'tamato tamater', '40 ', '2019-08-11', 'tamato.jpeg', 'vegetable', 'Tomato, Lycopersicum esculentum (syn. Solanum lycopersicum and Lycopersicon lycopersicumis an herbaceous annual in the family Solanaceae grown for its edible fruit. The plant can be erect with short stems or vine-like with long, spreading stems.', '15 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(196, 'Cauliflower kobi', '35', '2019-08-12', 'kobi.jpeg', 'vegetable', 'Cauliflower is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the family Brassicaceae.The cauliflower head is composed of a white inflorescence meristem. Cauliflower heads resemble those in broccoli, which differs in having flower buds as the edible portion.', '25 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(197, 'bitter gourd  karela', '30', '2019-08-12', 'krela.jpeg', 'vegetable', 'bitter gourd or karela is not really a vegetable but a fruit? The part of the plant that is used for consumption and for various medicinal purposes is the fruit of the bitter squash.', '10 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(198, 'radish muli', '25', '2019-08-12', 'hj.jpeg', 'vegetable', 'Radish, Raphanus sativus, is an herbaceous annual or biennial plant in the family Brassicaceae, grown for its edible taproot. The radish plant has a short hairy stem and a rosette (ground level horizontal and circular leaves) of oblong shaped leaves which measure 5Ã¢â‚¬â€œ30 cm (2Ã¢â‚¬â€œ12 in) in length.', '10 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(199, 'sem beans', '34', '2019-08-12', 'milk.jpeg', 'vegetable', 'em ki Phalli (Sem beans) are known as flat beans. They are wide and 2to 3long. These beans are delicious and nutritious. Compared to Green Beans Sem Beans have a more prominent beany taste and the seeds inside are plump and sweet.', '20 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(200, 'mushroom toadstool', '500 ', '2019-08-12', 'masroom.jpeg', 'vegetable', 'A mushroom, or toadstool, is the fleshy, spore-bearing fruiting body of a fungus, typically produced above ground on soil or on its food source. ... These gills produce microscopic spores that help the fungus spread across the ground or its occupant surface.', '15 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1kg'),
(201, 'Carrot gajar', '120', '2019-08-12', 'chantenay-carrots.jpg', 'vegetable', 'The carrot (Daucus carota subsp. sativus) is a root vegetable, usually orange in colour, though purple, black, red, white, and yellow cultivars exist. ... The carrot is a biennial plant in the umbellifer family Apiaceae. At first, it grows a rosette of leaves while building up the enlarged taproot.', '50 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(202, 'Brinjal baigan', '35', '2019-08-12', '220px-Eleven_long_purple_eggplants.jpg', 'vegetable', 'Brinjal is classified as a herb because of its non-woody stem. Its simple leaves are oblong to oval, slightly lobed, with its underside a paler green than the upper surface. Both leaves and stem are covered with fine hairs. Its flowers sprout singly or in small clusters from the leaf axils.', '50 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(203, 'potato aalu', '20', '2019-08-12', 'patato.jpg', 'vegetable', 'Potato, Solanum tuberosum, is an herbaceous perennial plant in the family Solanaceae which is grown for its edible tubers. The potato plant has a branched stem and alternately arranged leaves consisting of leaflets which are both of unequal size and shape.', '19 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1kg'),
(204, 'Parwal  pointed gourd', '45', '2019-08-12', '10000366_9-fresho-parwal.jpg', 'vegetable', 'Parwal, known as pointed gourd in english. It is a vine plant in the Cucurbitaceae family, similar to cucumber and squash. Pointed gourd is a good source of vitamins and minerals.', '12 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(205, 'bhindi laddies finger', '25', '2019-08-12', 'bhindi.jpg', 'vegetable', 'Bhindi masala is a healthy dish made of okra, spices, onions & tomatoes. This semi dry curry made with ladies finger or okra goes very well with rice or roti. Bhindi masala is mildly spicy, hot & full of flavors that comes from the pan fried bhindi and garam masal.', '', 'Available', '', 'mukeshpurnea6@gmail.com', '1kg'),
(206, 'barbati cowpea', '35', '2019-08-12', 'barbati.jpg', 'vegetable', 'Barbati is a favorite traditional high value vegetable of Bangladesh. It is grown throughout Bangladesh for its long green pods as vegetables, seeds as pules and filiage as fodder. It is rich in nutritive value.', '11 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(207, 'pea mater', '34', '2019-08-16', '114031-pea-blue-bantam.jpg', 'vegetable', 'The pea is most commonly the small spherical seed or the seed-pod of the pod fruit Pisum sativum. Each pod contains several peas, which can be green or yellow. Pea pods are botanically fruit, since they contain seeds and develop from the ovary of a (pea) flower.', '50 kg', 'Available', 'non', 'mukeshpurnea6@gmail.com', '1 kg'),
(208, ' turnip salgam ', '75', '2019-08-16', 'Vegetable-Seeds-Shalgam-Vegetable-Seeds-SDL467033311-1-e2be0.jpg', 'vegetable', 'Description. The most common type of turnip is mostly white-skinned apart from the upper 1Ã¢â‚¬â€œ6 centimetres (0.39Ã¢â‚¬â€œ2.36 in), which protrude above the ground and are purple or red or greenish where the sun has hit. This above-ground part develops from stem tissue, but is fused with the root.', '30 kg', 'Available', '', 'mukeshpurnea6@gmail.com', '1 kg'),
(209, 'sandora juice ', '50', '2019-08-16', 'sandora.jpg', 'juice', 'Pineapple juice is the most rich in nutrients among all other fruit juices. It provides lots of health benefits and contains high amount of vitamin ÃÂ¡ and minerals.', '10 L', 'Available', 'sandora', 'mukeshpurnea6@gmail.com', '300 ml'),
(210, 'Coconut', '30', '0000-00-00', '60207166.png', 'fruits', '', '60 piece', 'Available', '---', 'shilpajha@gmail.com', '1 piece'),
(211, 'cavins-milkshake-chocolate', '27', '2019-09-12', 'cavins-milkshake-chocolate.jpg', 'milk', '', '60 piece', 'Available', 'cavins', 'shilpajha@gmail.com', '500 ml'),
(212, 'pressery Milk', '34', '2019-09-14', 'pressery Milk.jpg', 'milk', '', '80 L', 'Available', 'pressery', 'shilpajha@gmail.com', '1 L');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `v_id` int(6) NOT NULL,
  `v_f_name` varchar(100) NOT NULL,
  `v_phn` bigint(10) NOT NULL,
  `v_email` varchar(30) NOT NULL,
  `v_add` text NOT NULL,
  `v_pin` int(10) NOT NULL,
  `v_pass` varchar(200) DEFAULT NULL,
  `v_img` varchar(2000) DEFAULT NULL,
  `v_L_name` varchar(100) NOT NULL,
  `v_age` int(20) NOT NULL,
  `v_gen` char(10) NOT NULL,
  `v_city` varchar(100) NOT NULL,
  `v_state` varchar(100) NOT NULL,
  `v_status` varchar(200) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`v_id`, `v_f_name`, `v_phn`, `v_email`, `v_add`, `v_pin`, `v_pass`, `v_img`, `v_L_name`, `v_age`, `v_gen`, `v_city`, `v_state`, `v_status`) VALUES
(1, 'sominto charlie', 4366547, 'charlie1801@gmail.com', 'teachers colony, rajni chowk', 1, 'sominto', 'Sominto.jpg', 'charlie', 1, '', '', '', 'Disabled'),
(4, 'divy73847086865, 'divya164@gmail.com', 'teachers colony, rajni chowk', 854301, '38464bf083d958b53580c63c01e56707fd043588', 'amul box butter.jpg', 'suman', 22, 'male', 'Purnea', 'Bihar', 'Disabled'),
(5, 'rahul', 8739253426, 'rahul@gmail.com', 'teachers colony, rajni chowk', 110537, '38464bf083d958b53580c63c01e56707fd043588', 'alpino peanut butter.jpeg', 'kumar', 33, 'male', 'Purnea', 'Bihar', 'Active'),
(6, 'shilp73847086865, 'shilpajha@gmail.com', 'teachers colony, rajni chowk', 854301, '9f7138cf6f6dded54979277454b4edc6513e400e', 'divya.jpg', 'jha', 20, 'female', 'Purnea', 'Bihar', 'Active'),
(7, 'vendor', 1234, 'vendor1@gmail.com', 'teachers colony, rajni chowk', 854301, '356a192b7913b04c54574d18c28d46e6395428ab', '68000f8e87a05c44d996d884bf4317ec.jpg', '1', 12, 'female', 'Purnea', 'panjab', 'Disabled'),
(8, 'mukesh', 8739253426, 'mukesh@gmail.com', 'teachers colony, rajni chowk', 110537, '256d23ebdfeb388c10a3019a2c223ca5c90edfcc', 'Mukesh.jpeg', 'kumar', 20, 'male', 'Purnea', 'Bihar', 'Active'),
(9, 'bittu', 76234567, 'bittu@gmail.com', 'teachers colony, rajni chowk', 854301, '912ef7e89a3251690a5bd06acc9f148694b697f9', 'photo-1438798332373-fecca6ea42ce.jpeg', 'kumar', 23, 'male', 'Purnea', 'Bihar', 'Active'),
(10, 'ritika', 8084587458, 'ritik@gmail.com', 'navratan hatta, purnea', 854201, '59c5329b271a4545002914ca97211007f5a078cb', '1Armie.jpg', 'raj', 24, 'male', 'Purnea', 'Bihar', 'Active'),
(11, 'abishek ', 7058745896, 'abishek@gmail.com', 'sipahi tola, purnea', 852412, '0637f3689d2e39358cdbcae2f5dcb2b9bc8a1335', 'oakes.jpg', 'hasda', 26, 'male', 'Purnea', 'Bihar', 'Active'),
(12, 'Banty', 8545758458, 'banty@gmail.com', 'bari bazar, katihar', 854306, '9fc971d0c56457d04975da86306d64ca0684eb66', 'happu.jpg', 'chouhan', 22, 'male', 'Katihar', 'Bihar', 'Active'),
(14, 'shreya', 6324125423, 'shreya@gmail.com', 'sipahi tola', 854301, 'f575a125efb975ab44be12ef7eb4e15de2e3a76f', 'profile.png', 'shree', 35, 'female', 'Purnea', 'Bihar', 'Active'),
(15, 'Ravi', 9876234512, 'ravi@gmail.com', 'MG-market', 854301, 'aa153b5d1fcb55096034df7a27565f4297f195d2', '1200px-Pierre-Person.jpg', 'Raj', 35, 'male', 'Katihar', 'Bihar', 'Active'),
(16, 'shaurya', 6299672313, 'shaurya@gmail.com', 'teachers colony, rajni chowk', 854301, 'f45b70b7cbc39eaf49d11e1c5cf8859d6ea482bc', 'BeautyPlus_20181026175920966_save.jpg', 'jha', 23, 'female', 'Purnea', 'Bihar', 'Active'),
(17, 'roshni', 8765092314, 'roshni@gmail.com', 'MG-market', 854301, '1a8253f9e73297824cce1eadd456c44ab4fd9316', 'alina.jpg', 'sharma', 32, 'female', 'Katihar', 'Bihar', 'Active'),
(18, 'Uttam', 9931926868, 'uttamsir@gmail.com', 'teachers colony, rajni chowk', 854301, 'd1fd7a9c76f9ff855a0665235144f3940b9d5022', 'cover.jpeg', 'sir', 50, 'male', 'Purnea', 'Bihar', 'Active'),
(19, 'Mukesh', 7004384071, 'mukeshpurnea6@gmail.com', 'Maranga', 854303, '119ad2c6ce1e50efcf4c16c2eac702e150a4158f', 'B612_20171218_115626-01.jpeg', 'Kumar', 21, 'male', 'Purnea', 'Bihar', 'Active'),
(20, 'divy73847086865, 'divyasuman164@gmail.com', 'teachers colony, rajni chowk', 854301, 'bdc7d4a93198f6a360c93c6e6b9200d729cbaff9', 'di.jpg', 'suman', 34, 'female', '', '', 'Active'),
(21, 'rich73847086865, 'richa@gmail.com', 'suddin chowk', 854301, '6abfa67492625d865847950d3425e386ecc192ea', 'BeautyPlus_20181026175920966_save.jpg', 'jha', 23, '', 'Purnea', 'Bihar', 'Active'),
(22, 'nish73847086865, 'nisha@gmail.com', 'kasba', 854330, '87762fc57b6495e8d3d311f6a0bfc154a60cec86', 'strawberry1.png', 'jha', 46, 'female', 'Purnea', 'Bihar', 'Active'),
(23, 'sim73847086865, 'sima@gmail.com', 'suddin chowk', 854301, '4f75089f0f264bd5f79a8198740717b8711ea859', '', 'jha', 45, 'female', 'Purnea', 'Bihar', 'Active'),
(24, 'mu73847086865, 'mum@gmail.com', 'suddin chowk', 854301, '2523b26dbae277dcf4470dfb8ae3507b0fd39015', '', 'mum', 46, 'female', 'Purnea', 'Bihar', 'Active'),
(25, 'c73847086865, 'ck@gmail.com', 'kasba', 854330, 'c8c2ca9fed1a7c345d7dbc1b7d985364870c874a', '', 'jha', 49, 'male', 'Purnea', 'Bihar', 'Active'),
(26, 'saumy73847086865, 'saumya@gmail.com', 'suddin chowk', 854301, '5262a3eec512fcdebe6790e222cda49fc1862c46', '', 'suman', 25, 'female', 'Purnea', 'Bihar', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`A_username`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `v_id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
