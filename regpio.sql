-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2020 at 05:15 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `regpio`
--

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE IF NOT EXISTS `record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `nid` varchar(20) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `mobile` int(20) NOT NULL,
  `unionp` varchar(255) NOT NULL,
  `village` int(10) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `name`, `nid`, `mobile`, `unionp`, `village`, `type`, `date`) VALUES
(1, 'Ajgor Ali', '1885', 0, '5', 1, 'Home', '10/12/2019'),
(2, 'Al Amin', '1771', 0, '1', 2, 'Solar', '22/12/2019'),
(3, 'Ajgor Ali', '1885', 0, '6', 1, 'Tin', '22/01/20120'),
(5, 'Solim Ullah', '1990', 0, '1', 4, 'Solar', '31/01/2019'),
(6, 'Sal', '888', 0, '2', 6, 'Solar', '2018-2019'),
(7, 'Sal', '555', 0, '6', 5, 'Solar', '2019-2020'),
(8, 'Sal', '444', 0, '1', 2, 'Solar', '2019-2020'),
(9, 'Sal', '555', 0, '1', 2, 'Tin', '2018-2019'),
(10, 'Sal', '55555', 0, '1', 1, 'Solar', '2019-2020'),
(11, 'Sal', '222', 0, '1', 3, 'Tin', '2019-2020'),
(12, 'Sal', '444', 0, '1', 1, 'VGF', '2018-2019'),
(13, 'Sal', '23', 0, '1', 1, 'VGF', '2018-2019'),
(14, 'Funny', '444', 0, '1', 1, 'Solar', '2019-2020'),
(15, 'yy', '444', 0, '1', 1, 'Solar', '2018-2019'),
(16, 'Tara', '890', 0, '1', 1, 'Solar', '2018-2019'),
(17, 'Afroza Khatun', '2845011523', 0, '1', 1, 'VGF', '2019-2020'),
(18, 'Nasima', '321', 0, '1', 1, 'Corona Relief', '2019-2020'),
(19, 'tre', '321', 0, '1', 1, 'Corona Relief', '2019-2020'),
(20, 'dfg', '4545', 0, '1', 1, 'Corona Relief', '2019-2020'),
(21, 'oe', '45451', 0, '1', 1, 'Corona Relief', '2019-2020'),
(22, 'One', '7878', 0, '1', 1, 'Corona Relief', '2019-2020'),
(23, 'kamal', '3232', 0, '4', 1, 'tin', '2090'),
(24, 'Amena', '3421', 0, '1', 1, 'Corona Relief', '2019-2020'),
(25, 'Jamil', '234', 0, '4', 1, 'Corona Relief', '2019-2020'),
(26, 'Hema', '567', 0, '1', 1, 'Corona Relief', '2019-2020'),
(27, 'Hobe', '5678', 0, '1', 1, 'Corona Relief', '2019-2020'),
(28, 'Test', '543', 0, '2', 1, 'Corona Relief', '2019-2020'),
(29, 'সুব্রত কুমার বিশ্বাস', '654', 0, '1', 1, 'Corona Relief', '2019-2020'),
(30, 'Final', '332', 0, '1', 1, 'Corona Relief', '2019-2020'),
(31, 'jomser ali', '8695201346', 0, '3', 1, 'Corona Relief', '2019-2020'),
(32, 'asdf', '1234', 1234, '1', 1, 'Corona Relief', '2019-2020'),
(33, 'Unis', '6543', 6543, '1', 1, 'Corona Relief', '2019-2020'),
(34, 'Test', '4567', 12345, '1', 1, 'Corona Relief', '2019-2020'),
(35, 'Youn', '9876', 7777, '1', 1, 'Corona Relief', '2019-2020'),
(36, 'Habibul Bashar', '', 45435, '1', 1, 'Corona Relief', '2019-2020'),
(37, 'dfsd', '34234', 456456, '1', 1, 'Corona Relief', '2019-2020'),
(38, 'সুব্রত বিশ্বাস', '9988', 7766, '1', 1, 'Corona Relief', '2019-2020'),
(39, 'গোউতম', '4455', 3322, '2', 2, 'Corona Relief', '2019-2020'),
(40, 'সামউলস', '345345', 34545435, '2', 2, 'Corona Relief', '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `unionpori`
--

CREATE TABLE IF NOT EXISTS `unionpori` (
  `id` int(3) NOT NULL,
  `union_name` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unionpori`
--

INSERT INTO `unionpori` (`id`, `union_name`) VALUES
(1, 'পৌরসভা'),
(2, 'আমঝুপি'),
(3, 'পিরোজপুর'),
(4, 'কতুবপুর'),
(5, 'আমদহ'),
(6, 'বুড়িপোতা');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE IF NOT EXISTS `village` (
  `id` int(10) NOT NULL,
  `name` varchar(222) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `unionp` int(10) NOT NULL,
  `word` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`id`, `name`, `unionp`, `word`) VALUES
(1, 'শ্যামপুর', 1, 3),
(2, 'মামুদানিপুর', 2, 1),
(3, 'পিরোজপুর', 1, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
