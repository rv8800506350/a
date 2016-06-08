-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2016 at 05:05 PM
-- Server version: 5.7.9
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_payment_details`
--

DROP TABLE IF EXISTS `admission_payment_details`;
CREATE TABLE IF NOT EXISTS `admission_payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `adm_id` varchar(30) NOT NULL,
  `cheq_no` varchar(255) NOT NULL,
  `cheq_dt` date NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission_payment_details`
--

INSERT INTO `admission_payment_details` (`id`, `stu_id`, `adm_id`, `cheq_no`, `cheq_dt`, `bank_name`, `created_at`) VALUES
(1, 3, '3', '8484848484', '2016-05-27', 'sbi', '2016-05-19 13:45:05'),
(2, 3, '3', '8484848484', '2016-05-27', 'sbi', '2016-05-19 13:46:56'),
(3, 3, '3', '8484848484', '2016-05-27', 'sbi', '2016-05-19 13:47:20'),
(4, 7, '7', '454564', '2016-05-31', 'sbi', '2016-05-24 14:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `archieved_students`
--

DROP TABLE IF EXISTS `archieved_students`;
CREATE TABLE IF NOT EXISTS `archieved_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `adm_no` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `bloog_group` varchar(12) DEFAULT NULL,
  `stu_email` varchar(244) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `fname` varchar(222) NOT NULL,
  `mname` varchar(222) NOT NULL,
  `f_occupation` varchar(200) NOT NULL,
  `m_occupation` varchar(200) NOT NULL,
  `parent_contact` varchar(225) NOT NULL,
  `parent_email` varchar(255) DEFAULT NULL,
  `cur_h_no` varchar(255) NOT NULL,
  `cur_street_address` text NOT NULL,
  `cur_area` varchar(255) NOT NULL,
  `cur_po` varchar(255) NOT NULL,
  `cur_district` int(11) NOT NULL,
  `cur_state` int(11) NOT NULL,
  `cur_pincode` int(11) NOT NULL,
  `cur_contact` varchar(255) NOT NULL,
  `per_h_no` varchar(255) NOT NULL,
  `per_street_address` text NOT NULL,
  `per_area` varchar(255) NOT NULL,
  `per_po` varchar(255) NOT NULL,
  `per_district` int(11) NOT NULL,
  `per_state` int(11) NOT NULL,
  `per_pincode` int(11) NOT NULL,
  `per_contact` varchar(255) NOT NULL,
  `class` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `transport_status` enum('school','self') NOT NULL DEFAULT 'self',
  `catagory` int(11) NOT NULL,
  `physically_disabled` int(11) NOT NULL COMMENT '0:no;1:yes',
  `special_discount` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee_payment_details`
--

DROP TABLE IF EXISTS `fee_payment_details`;
CREATE TABLE IF NOT EXISTS `fee_payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `adm_id` varchar(30) NOT NULL,
  `cheq_no` varchar(255) NOT NULL,
  `cheq_dt` date NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1462951553),
('m130524_201442_init', 1462951558);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `sortname` varchar(90) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `start_date`, `end_date`, `sortname`, `status`) VALUES
(1, '2016-04-01', '2017-03-31', '2016-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `special_fee`
--

DROP TABLE IF EXISTS `special_fee`;
CREATE TABLE IF NOT EXISTS `special_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `fee_type_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `pay_mode` int(11) NOT NULL,
  `cheque_dt` date NOT NULL,
  `cheque_no` varchar(220) NOT NULL,
  `bank_name` varchar(220) NOT NULL,
  `paid_amt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_address`
--

DROP TABLE IF EXISTS `student_address`;
CREATE TABLE IF NOT EXISTS `student_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NOT NULL,
  `cur_h_no` varchar(220) NOT NULL,
  `cur_street_address` text NOT NULL,
  `cur_area` varchar(222) NOT NULL,
  `cur_po` varchar(222) NOT NULL,
  `cur_district` int(11) NOT NULL,
  `cur_state` int(11) NOT NULL,
  `cur_pincode` int(11) NOT NULL,
  `cur_contact` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_admission`
--

DROP TABLE IF EXISTS `student_admission`;
CREATE TABLE IF NOT EXISTS `student_admission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `fee_amt` int(11) NOT NULL,
  `paid_fee` int(11) NOT NULL,
  `discount_amt` int(11) NOT NULL,
  `pay_mode` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `discount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_admission`
--

INSERT INTO `student_admission` (`id`, `student_id`, `fee_amt`, `paid_fee`, `discount_amt`, `pay_mode`, `created_at`, `discount`) VALUES
(2, 2, 5500, 4675, 4675, 2, '2016-05-18 09:46:17', 15),
(3, 3, 5000, 4500, 4500, 1, '2016-05-19 08:14:54', 10),
(4, 5, 5500, 4950, 4950, 2, '2016-05-20 23:34:42', 10),
(5, 6, 5000, 4500, 4500, 2, '2016-05-22 00:49:29', 10),
(6, 7, 5000, 4500, 4500, 1, '2016-05-24 08:41:20', 10),
(7, 9, 0, 0, 0, 2, '2016-06-08 11:04:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

DROP TABLE IF EXISTS `student_fee`;
CREATE TABLE IF NOT EXISTS `student_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_type` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `month_count` int(11) NOT NULL,
  `from_month` date NOT NULL,
  `to_month` date NOT NULL,
  `net_amt` int(11) NOT NULL,
  `late_fee` int(11) NOT NULL,
  `total_amt` int(11) NOT NULL,
  `special_discount` int(11) NOT NULL,
  `payment_mode` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `stu_id` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_initial`
--

DROP TABLE IF EXISTS `student_initial`;
CREATE TABLE IF NOT EXISTS `student_initial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `adm_no` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `bloog_group` varchar(12) DEFAULT NULL,
  `stu_email` varchar(244) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `fname` varchar(222) NOT NULL,
  `mname` varchar(222) NOT NULL,
  `f_occupation` varchar(200) NOT NULL,
  `m_occupation` varchar(200) NOT NULL,
  `parent_contact` varchar(225) NOT NULL,
  `parent_email` varchar(255) DEFAULT NULL,
  `cur_h_no` varchar(255) NOT NULL,
  `cur_street_address` text NOT NULL,
  `cur_area` varchar(255) NOT NULL,
  `cur_po` varchar(255) NOT NULL,
  `cur_district` int(11) NOT NULL,
  `cur_state` int(11) NOT NULL,
  `cur_pincode` int(11) NOT NULL,
  `cur_contact` varchar(255) NOT NULL,
  `per_h_no` varchar(255) NOT NULL,
  `per_street_address` text NOT NULL,
  `per_area` varchar(255) NOT NULL,
  `per_po` varchar(255) NOT NULL,
  `per_district` int(11) NOT NULL,
  `per_state` int(11) NOT NULL,
  `per_pincode` int(11) NOT NULL,
  `per_contact` varchar(255) NOT NULL,
  `class` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `transport_status` enum('school','self') NOT NULL DEFAULT 'self',
  `catagory` int(11) NOT NULL,
  `physically_disabled` int(11) NOT NULL COMMENT '0:no;1:yes',
  `special_discount` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_initial`
--

INSERT INTO `student_initial` (`id`, `name`, `adm_no`, `dob`, `gender`, `bloog_group`, `stu_email`, `photo`, `fname`, `mname`, `f_occupation`, `m_occupation`, `parent_contact`, `parent_email`, `cur_h_no`, `cur_street_address`, `cur_area`, `cur_po`, `cur_district`, `cur_state`, `cur_pincode`, `cur_contact`, `per_h_no`, `per_street_address`, `per_area`, `per_po`, `per_district`, `per_state`, `per_pincode`, `per_contact`, `class`, `section`, `roll_no`, `transport_status`, `catagory`, `physically_disabled`, `special_discount`, `created_at`, `session_id`) VALUES
(1, 'gabbar', '20161', '2016-05-05', 'Male', 'A1+', 'di@n.com', 'asd', 'asdmkasdm', 'mk', 'mk', 'mkm', 'km', 'km', '90/2', 'asdasd as dasld as dasm dkamsk mkasm kasmd kmskmd a', 'asdsdas', 'okokoko', 1, 1, 121111, '8484848', '90/2', 'sasdsdasdasdasdasdasdasdas', 'sadasdasdasd', 'asdasdasdasdas', 4, 2, 123123, 'asdasdasd', 1, 2, 1, 'school', 1, 0, NULL, '2016-05-14 09:03:51', 0),
(2, 'Anil', '20161', '2016-05-25', 'Male', 'A1-', 'dfjsdfj@djf.com', 'aasidasd', 'asdijasoidjasoidjoi', 'jio', 'joi', 'joi', 'joi', 'joi', '212312884', '84', '84', '848484', 176, 13, 84, '84', '84848', '48', '48', '8484848', 2, 1, 48, '48', 1, 1, 1, 'school', 2, 0, NULL, '2016-05-18 09:43:24', 0),
(3, 'gababsd', '20162', '2016-05-20', 'Male', 'A1-', 'sas@sdas', 'xxx5151', '5151', '515', '15', '1', '51', '51', '848', '484', '8', '848484', 1, 1, 48484, '48484', '8484', '8484', '8484', '8484', 1, 1, 84484, '8484', 1, 1, 2, 'self', 1, 0, NULL, '2016-05-19 08:14:45', 0),
(5, 'humble', '20164', '2016-05-18', 'Male', 'B+', 'fab@m.com', 'adasdijoi', 'ioijoij', 'oijo', 'ijo', 'ijoij', 'oijoij', 'oijoijoi', '15151', '51515', '5151', '445454', 34, 4, 54545, '545454', '545454', '545', '45', '54545454', 34, 4, 545, '45', 1, 2, 2, 'school', 1, 0, 100, '2016-05-20 23:34:29', 1),
(6, 'yii', '20165', '2016-05-19', 'Male', 'B+', '8484', '84', '8484848', '48', '48', '48', '48', '48', '878787', '878', '78', '87878', 4, 2, 87, '878', '87', '87', '87', '8787', 4, 2, 8787, '8787', 1, 2, 3, 'self', 1, 0, 87878, '2016-05-22 00:49:20', 1),
(7, 'Barak Obama', '20166', '2016-05-31', 'Male', 'O+', 'bobama@gmail.com', 'nahi h', 'asdmkasdm', 'husaini obama', 'business', 'housewife', '9912912313', 'deded', '848', '121219898', '89', '989898', 1, 1, 98, '98', '9898', '98', '98', '8787', 2, 1, 8787, '8787', 1, 2, 4, 'self', 1, 0, NULL, '2016-05-24 08:41:12', 1),
(8, 'raghav', '20167', '2016-06-22', 'Male', 'B+', 'rag@nn.com', 'IMG_20160428_110954.jpg', 'asdasdas', 'newbei', 'assd', 'asdasd', '0909090', 'asds@na.cm', '45/8', 'asdasndin', 'inasidnasid', 'a848484', 2, 1, 84848, '848484', '848484', '8484a8sd4a8sd48asd484', '848484', '84848484', 2, 1, 848484, '84848484', 1, 1, 3, 'school', 1, 0, 10, '2016-06-04 00:35:56', 1),
(9, 'Malhar Trivedi', '20168', '2000-03-02', 'Female', 'O+', '', 'IMG_20160427_084045.jpg', 'sonu trivedi', 'ahilya trivedi', 'business', 'houeswife', '9812989389', '', '45', 'new road', 'bhavnagar', 'deri road', 147, 12, 121515, '55515151', '15151', '515', '1', '5151', 253, 17, 515, '151', 2, 1, 1, 'school', 3, 0, NULL, '2016-06-08 11:04:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_master`
--

DROP TABLE IF EXISTS `student_master`;
CREATE TABLE IF NOT EXISTS `student_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `adm_no` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `bloog_group` varchar(12) DEFAULT NULL,
  `stu_email` varchar(244) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `fname` varchar(222) NOT NULL,
  `mname` varchar(222) NOT NULL,
  `f_occupation` varchar(200) NOT NULL,
  `m_occupation` varchar(200) NOT NULL,
  `parent_contact` varchar(225) NOT NULL,
  `parent_email` varchar(255) DEFAULT NULL,
  `cur_h_no` varchar(255) NOT NULL,
  `cur_street_address` text NOT NULL,
  `cur_area` varchar(255) NOT NULL,
  `cur_po` varchar(255) NOT NULL,
  `cur_district` int(11) NOT NULL,
  `cur_state` int(11) NOT NULL,
  `cur_pincode` int(11) NOT NULL,
  `cur_contact` varchar(255) NOT NULL,
  `per_h_no` varchar(255) NOT NULL,
  `per_street_address` text NOT NULL,
  `per_area` varchar(255) NOT NULL,
  `per_po` varchar(255) NOT NULL,
  `per_district` int(11) NOT NULL,
  `per_state` int(11) NOT NULL,
  `per_pincode` int(11) NOT NULL,
  `per_contact` varchar(255) NOT NULL,
  `class` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `transport_status` enum('school','self') NOT NULL DEFAULT 'self',
  `catagory` int(11) NOT NULL,
  `physically_disabled` int(11) NOT NULL COMMENT '0:no;1:yes',
  `special_discount` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_master`
--

INSERT INTO `student_master` (`id`, `name`, `adm_no`, `dob`, `gender`, `bloog_group`, `stu_email`, `photo`, `fname`, `mname`, `f_occupation`, `m_occupation`, `parent_contact`, `parent_email`, `cur_h_no`, `cur_street_address`, `cur_area`, `cur_po`, `cur_district`, `cur_state`, `cur_pincode`, `cur_contact`, `per_h_no`, `per_street_address`, `per_area`, `per_po`, `per_district`, `per_state`, `per_pincode`, `per_contact`, `class`, `section`, `roll_no`, `transport_status`, `catagory`, `physically_disabled`, `special_discount`, `created_at`, `session_id`) VALUES
(2, 'Anil', '20161', '2016-05-25', 'Male', 'A1-', 'dfjsdfj@djf.com', 'aasidasd', 'asdijasoidjasoidjoi', 'jio', 'joi', 'joi', 'joi', 'joi', '212312884', '84', '84', '848484', 176, 13, 84, '84', '84848', '48', '48', '8484848', 2, 1, 48, '48', 1, 1, 1, 'school', 2, 0, NULL, '2016-05-18 09:43:24', 0),
(3, 'gababsd', '20162', '2016-05-20', 'Male', 'A1-', 'sas@sdas', 'xxx5151', '5151', '515', '15', '1', '51', '51', '848', '484', '8', '848484', 1, 1, 48484, '48484', '8484', '8484', '8484', '8484', 1, 1, 84484, '8484', 1, 1, 2, 'self', 1, 0, NULL, '2016-05-19 08:14:45', 0),
(4, 'humble', '20163', '2016-05-18', 'Male', 'B+', 'fab@m.com', 'adasdijoi', 'ioijoij', 'oijo', 'ijo', 'ijoij', 'oijoij', 'oijoijoi', '15151', '51515', '5151', '445454', 34, 4, 54545, '545454', '545454', '545', '45', '54545454', 34, 4, 545, '45', 1, 2, 1, 'school', 1, 0, 100, '2016-05-20 23:34:01', 1),
(5, 'humble', '20164', '2016-05-18', 'Male', 'B+', 'fab@m.com', 'adasdijoi', 'ioijoij', 'oijo', 'ijo', 'ijoij', 'oijoij', 'oijoijoi', '15151', '51515', '5151', '445454', 34, 4, 54545, '545454', '545454', '545', '45', '54545454', 34, 4, 545, '45', 1, 2, 2, 'school', 1, 0, 100, '2016-05-20 23:34:29', 1),
(6, 'yii', '20165', '2016-05-19', 'Male', 'B+', '8484', '84', '8484848', '48', '48', '48', '48', '48', '878787', '878', '78', '87878', 4, 2, 87, '878', '87', '87', '87', '8787', 4, 2, 8787, '8787', 1, 2, 3, 'self', 1, 0, 87878, '2016-05-22 00:49:20', 1),
(7, 'Barak Obama', '20166', '2016-05-31', 'Male', 'O+', 'bobama@gmail.com', 'nahi h', 'asdmkasdm', 'husaini obama', 'business', 'housewife', '9912912313', 'deded', '848', '121219898', '89', '989898', 1, 1, 98, '98', '9898', '98', '98', '8787', 2, 1, 8787, '8787', 1, 2, 4, 'self', 1, 0, NULL, '2016-05-24 08:41:12', 1),
(8, 'raghav', '20167', '2016-06-22', 'Male', 'B+', 'rag@nn.com', 'IMG_20160428_110954.jpg', 'asdasdas', 'newbei', 'assd', 'asdasd', '0909090', 'asds@na.cm', '45/8', 'asdasndin', 'inasidnasid', 'a848484', 2, 1, 84848, '848484', '848484', '8484a8sd4a8sd48asd484', '848484', '84848484', 2, 1, 848484, '84848484', 1, 1, 3, 'school', 1, 0, 10, '2016-06-04 00:35:56', 1),
(9, 'Malhar Trivedi', '20168', '2000-03-02', 'Female', 'O+', '', 'IMG_20160427_084045.jpg', 'sonu trivedi', 'ahilya trivedi', 'business', 'houeswife', '9812989389', '', '45', 'new road', 'bhavnagar', 'deri road', 147, 12, 121515, '55515151', '15151', '515', '1', '5151', 253, 17, 515, '151', 2, 1, 1, 'school', 3, 0, NULL, '2016-06-08 11:04:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_transport_details`
--

DROP TABLE IF EXISTS `student_transport_details`;
CREATE TABLE IF NOT EXISTS `student_transport_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_transport_details`
--

INSERT INTO `student_transport_details` (`id`, `route_id`, `station_id`, `student_id`, `start_date`, `created_at`) VALUES
(1, 1, 1, 2, '2016-05-24', '2016-05-18 09:51:31'),
(2, 1, 1, 5, '2016-05-31', '2016-05-20 23:34:51'),
(3, 1, 1, 9, '2016-06-30', '2016-06-08 11:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'NeH-55TNiuH_bLFqmD0v_XEqIDK-_7MQ', '$2y$13$ypQpoC0fFQ4BHT20kZvF7eG3ozmt9DDTmM3DP5a/t.GBqyHx8ZygW', NULL, 'admin@admin.com', 10, 1462951562, 1462951562);

-- --------------------------------------------------------

--
-- Table structure for table `_class_master`
--

DROP TABLE IF EXISTS `_class_master`;
CREATE TABLE IF NOT EXISTS `_class_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(9) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_class_master`
--

INSERT INTO `_class_master` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nursery', 1, '2016-05-11 16:46:12', '2016-05-11 16:46:12'),
(2, 'LKG', 1, '2016-05-11 16:46:22', '2016-05-11 16:46:22'),
(3, 'UKG', 1, '2016-05-11 16:46:29', '2016-05-11 16:46:29'),
(4, 'I', 1, '2016-05-11 16:46:36', '2016-05-11 16:46:36'),
(5, 'II', 1, '2016-05-11 16:46:43', '2016-05-11 16:46:43'),
(6, 'III', 1, '2016-05-12 15:02:57', '2016-05-12 15:02:57'),
(7, 'IV', 1, '2016-05-12 15:03:11', '2016-05-12 15:03:11'),
(8, 'V', 1, '2016-05-12 15:03:18', '2016-05-12 15:03:18'),
(9, 'VI', 1, '2016-05-12 15:03:26', '2016-05-12 15:03:26'),
(10, 'VII', 1, '2016-05-12 15:03:34', '2016-05-12 15:03:34'),
(11, 'VIII', 1, '2016-05-12 15:03:45', '2016-05-12 15:03:45'),
(12, 'IX', 1, '2016-05-12 15:03:56', '2016-05-12 15:03:56'),
(13, 'X', 1, '2016-05-12 15:04:07', '2016-05-12 15:04:07'),
(14, 'XI-ARTS', 1, '2016-05-12 15:04:22', '2016-05-12 15:04:51'),
(15, 'XI-COM', 1, '2016-05-12 15:04:32', '2016-05-12 15:05:17'),
(16, 'XI-SCI', 1, '2016-05-12 15:05:30', '2016-05-12 15:05:30'),
(17, 'XII-ART', 1, '2016-05-12 15:05:41', '2016-05-12 15:05:41'),
(18, 'XII-COM', 1, '2016-05-12 15:05:51', '2016-05-12 15:05:51'),
(19, 'XII-SCI', 1, '2016-05-12 15:06:00', '2016-05-12 15:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `_class_section_relation`
--

DROP TABLE IF EXISTS `_class_section_relation`;
CREATE TABLE IF NOT EXISTS `_class_section_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class_id` (`class_id`,`section_id`),
  KEY `section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_class_section_relation`
--

INSERT INTO `_class_section_relation` (`id`, `class_id`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 1, '2016-06-08 21:39:47', '2016-06-08 21:39:47'),
(4, 3, 2, '2016-06-08 21:39:59', '2016-06-08 21:39:59'),
(5, 4, 1, '2016-06-08 21:40:07', '2016-06-08 21:40:07'),
(6, 4, 2, '2016-06-08 21:40:15', '2016-06-08 21:40:15'),
(7, 5, 1, '2016-06-08 21:40:25', '2016-06-08 21:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `_district`
--

DROP TABLE IF EXISTS `_district`;
CREATE TABLE IF NOT EXISTS `_district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=672 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_district`
--

INSERT INTO `_district` (`id`, `name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Nicobar', 1, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(2, 'North and Middle Andaman', 1, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(3, 'South Andaman', 1, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(4, 'Anantapur', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(5, 'Chittoor', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(6, 'Cuddapah', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(7, 'East Godavari', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(8, 'Guntur', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(9, 'Krishna', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(10, 'Kurnool', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(11, 'Nellore', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(12, 'Prakasam', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(13, 'Srikakulam', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(14, 'Visakhapatnam', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(15, 'Vizianagaram', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(16, 'West Godavari', 2, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(17, 'Anjaw', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(18, 'Changlang', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(19, 'Dibang Valley', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(20, 'East Kameng', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(21, 'East Siang', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(22, 'Kurung Kumey', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(23, 'Lohit', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(24, 'Longding', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(25, 'Lower Dibang Valley', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(26, 'Lower Subansiri', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(27, 'Papum Pare', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(28, 'Tawang', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(29, 'Tirap', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(30, 'Upper Siang', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(31, 'Upper Subansiri', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(32, 'West Kameng', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(33, 'West Siang', 3, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(34, 'Baksa', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(35, 'Barpeta', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(36, 'Bongaigaon', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(37, 'Cachar', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(38, 'Chirang', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(39, 'Darrang', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(40, 'Dhemaji', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(41, 'Dhubri', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(42, 'Dibrugarh', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(43, 'Dima Hasao', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(44, 'Goalpara', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(45, 'Golaghat', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(46, 'Hailakandi', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(47, 'Jorhat', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(48, 'Kamrup Metropolitan', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(49, 'Kamrup', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(50, 'Karbi Anglong', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(51, 'Karimganj', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(52, 'Kokrajhar', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(53, 'Lakhimpur', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(54, 'Morigaon', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(55, 'Nagaon', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(56, 'Nalbari', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(57, 'Sivasagar', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(58, 'Sonitpur', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(59, 'Tinsukia', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(60, 'Udalguri', 4, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(61, 'Araria', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(62, 'Arwal', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(63, 'Aurangabad', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(64, 'Banka', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(65, 'Begusarai', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(66, 'Bhagalpur', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(67, 'Bhojpur', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(68, 'Buxar', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(69, 'Darbhanga', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(70, 'East Champaran (Motihari)', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(71, 'Gaya', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(72, 'Gopalganj', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(73, 'Jamui', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(74, 'Jehanabad', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(75, 'Kaimur (Bhabua)', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(76, 'Katihar', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(77, 'Khagaria', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(78, 'Kishanganj', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(79, 'Lakhisarai', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(80, 'Madhepura', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(81, 'Madhubani', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(82, 'Munger (Monghyr)', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(83, 'Muzaffarpur', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(84, 'Nalanda', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(85, 'Nawada', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(86, 'Patna', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(87, 'Purnia (Purnea)', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(88, 'Rohtas', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(89, 'Saharsa', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(90, 'Samastipur', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(91, 'Saran', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(92, 'Sheikhpura', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(93, 'Sheohar', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(94, 'Sitamarhi', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(95, 'Siwan', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(96, 'Supaul', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(97, 'Vaishali', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(98, 'West Champaran', 5, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(99, 'Chandigarh', 6, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(100, 'Balod', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(101, 'Baloda Bazar', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(102, 'Balrampur', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(103, 'Bastar', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(104, 'Bemetara', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(105, 'Bijapur', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(106, 'Bilaspur', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(107, 'Dantewada (South Bastar)', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(108, 'Dhamtari', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(109, 'Durg', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(110, 'Gariaband', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(111, 'Janjgir-Champa', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(112, 'Jashpur', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(113, 'Kabirdham (Kawardha)', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(114, 'Kanker (North Bastar)', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(115, 'Kondagaon', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(116, 'Korba', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(117, 'Korea (Koriya)', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(118, 'Mahasamund', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(119, 'Mungeli', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(120, 'Narayanpur', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(121, 'Raigarh', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(122, 'Raipur', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(123, 'Rajnandgaon', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(124, 'Sukma', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(125, 'Surajpur', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(126, 'Surguja', 7, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(127, 'Dadra & Nagar Haveli', 8, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(128, 'Daman', 9, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(129, 'Diu', 9, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(130, 'Central Delhi', 10, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(131, 'East Delhi', 10, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(132, 'New Delhi', 10, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(133, 'North Delhi', 10, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(134, 'North East Delhi', 10, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(135, 'North West Delhi', 10, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(136, 'South Delhi', 10, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(137, 'South West Delhi', 10, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(138, 'West Delhi', 10, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(139, 'North Goa', 11, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(140, 'South Goa', 11, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(141, 'Ahmedabad', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(142, 'Amreli', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(143, 'Anand', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(144, 'Aravalli', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(145, 'Banaskantha (Palanpur)', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(146, 'Bharuch', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(147, 'Bhavnagar', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(148, 'Botad', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(149, 'Chhota Udepur', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(150, 'Dahod', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(151, 'Dangs (Ahwa)', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(152, 'Devbhoomi Dwarka', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(153, 'Gandhinagar', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(154, 'Gir Somnath', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(155, 'Jamnagar', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(156, 'Junagadh', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(157, 'Kachchh', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(158, 'Kheda (Nadiad)', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(159, 'Mahisagar', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(160, 'Mehsana', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(161, 'Morbi', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(162, 'Narmada (Rajpipla)', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(163, 'Navsari', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(164, 'Panchmahal (Godhra)', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(165, 'Patan', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(166, 'Porbandar', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(167, 'Rajkot', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(168, 'Sabarkantha (Himmatnagar)', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(169, 'Surat', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(170, 'Surendranagar', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(171, 'Tapi (Vyara)', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(172, 'Vadodara', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(173, 'Valsad', 12, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(174, 'Ambala', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(175, 'Bhiwani', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(176, 'Faridabad', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(177, 'Fatehabad', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(178, 'Gurgaon', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(179, 'Hisar', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(180, 'Jhajjar', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(181, 'Jind', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(182, 'Kaithal', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(183, 'Karnal', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(184, 'Kurukshetra', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(185, 'Mahendragarh', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(186, 'Mewat', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(187, 'Palwal', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(188, 'Panchkula', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(189, 'Panipat', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(190, 'Rewari', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(191, 'Rohtak', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(192, 'Sirsa', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(193, 'Sonipat', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(194, 'Yamunanagar', 13, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(195, 'Bilaspur', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(196, 'Chamba', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(197, 'Hamirpur', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(198, 'Kangra', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(199, 'Kinnaur', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(200, 'Kullu', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(201, 'Lahaul & Spiti', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(202, 'Mandi', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(203, 'Shimla', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(204, 'Sirmaur (Sirmour)', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(205, 'Solan', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(206, 'Una', 14, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(207, 'Anantnag', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(208, 'Bandipora', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(209, 'Baramulla', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(210, 'Budgam', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(211, 'Doda', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(212, 'Ganderbal', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(213, 'Jammu', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(214, 'Kargil', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(215, 'Kathua', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(216, 'Kishtwar', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(217, 'Kulgam', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(218, 'Kupwara', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(219, 'Leh', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(220, 'Poonch', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(221, 'Pulwama', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(222, 'Rajouri', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(223, 'Ramban', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(224, 'Reasi', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(225, 'Samba', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(226, 'Shopian', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(227, 'Srinagar', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(228, 'Udhampur', 15, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(229, 'Bokaro', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(230, 'Chatra', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(231, 'Deoghar', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(232, 'Dhanbad', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(233, 'Dumka', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(234, 'East Singhbhum', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(235, 'Garhwa', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(236, 'Giridih', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(237, 'Godda', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(238, 'Gumla', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(239, 'Hazaribag', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(240, 'Jamtara', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(241, 'Khunti', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(242, 'Koderma', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(243, 'Latehar', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(244, 'Lohardaga', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(245, 'Pakur', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(246, 'Palamu', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(247, 'Ramgarh', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(248, 'Ranchi', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(249, 'Sahibganj', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(250, 'Seraikela-Kharsawan', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(251, 'Simdega', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(252, 'West Singhbhum', 16, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(253, 'Bagalkot', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(254, 'Bangalore Rural', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(255, 'Bangalore Urban', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(256, 'Belgaum', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(257, 'Bellary', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(258, 'Bidar', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(259, 'Bijapur', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(260, 'Chamarajanagar', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(261, 'Chickmagalur', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(262, 'Chikballapur', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(263, 'Chitradurga', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(264, 'Dakshina Kannada', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(265, 'Davangere', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(266, 'Dharwad', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(267, 'Gadag', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(268, 'Gulbarga', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(269, 'Hassan', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(270, 'Haveri', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(271, 'Kodagu', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(272, 'Kolar', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(273, 'Koppal', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(274, 'Mandya', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(275, 'Mysore', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(276, 'Raichur', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(277, 'Ramnagara', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(278, 'Shimoga', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(279, 'Tumkur', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(280, 'Udupi', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(281, 'Uttara Kannada (Karwar)', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(282, 'Yadgir', 17, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(283, 'Alappuzha', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(284, 'Ernakulam', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(285, 'Idukki', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(286, 'Kannur', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(287, 'Kasaragod', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(288, 'Kollam', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(289, 'Kottayam', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(290, 'Kozhikode', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(291, 'Malappuram', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(292, 'Palakkad', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(293, 'Pathanamthitta', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(294, 'Thiruvananthapuram', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(295, 'Thrissur', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(296, 'Wayanad', 18, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(297, 'Lakshadweep', 19, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(298, 'Alirajpur', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(299, 'Anuppur', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(300, 'Ashoknagar', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(301, 'Balaghat', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(302, 'Barwani', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(303, 'Betul', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(304, 'Bhind', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(305, 'Bhopal', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(306, 'Burhanpur', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(307, 'Chhatarpur', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(308, 'Chhindwara', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(309, 'Damoh', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(310, 'Datia', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(311, 'Dewas', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(312, 'Dhar', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(313, 'Dindori', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(314, 'Guna', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(315, 'Gwalior', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(316, 'Harda', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(317, 'Hoshangabad', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(318, 'Indore', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(319, 'Jabalpur', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(320, 'Jhabua', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(321, 'Katni', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(322, 'Khandwa', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(323, 'Khargone', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(324, 'Mandla', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(325, 'Mandsaur', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(326, 'Morena', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(327, 'Narsinghpur', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(328, 'Neemuch', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(329, 'Panna', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(330, 'Raisen', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(331, 'Rajgarh', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(332, 'Ratlam', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(333, 'Rewa', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(334, 'Sagar', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(335, 'Satna', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(336, 'Sehore', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(337, 'Seoni', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(338, 'Shahdol', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(339, 'Shajapur', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(340, 'Sheopur', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(341, 'Shivpuri', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(342, 'Sidhi', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(343, 'Singrauli', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(344, 'Tikamgarh', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(345, 'Ujjain', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(346, 'Umaria', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(347, 'Vidisha', 20, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(348, 'Ahmednagar', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(349, 'Akola', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(350, 'Amravati', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(351, 'Aurangabad', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(352, 'Beed', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(353, 'Bhandara', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(354, 'Buldhana', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(355, 'Chandrapur', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(356, 'Dhule', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(357, 'Gadchiroli', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(358, 'Gondia', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(359, 'Hingoli', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(360, 'Jalgaon', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(361, 'Jalna', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(362, 'Kolhapur', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(363, 'Latur', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(364, 'Mumbai City', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(365, 'Mumbai Suburban', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(366, 'Nagpur', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(367, 'Nanded', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(368, 'Nandurbar', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(369, 'Nashik', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(370, 'Osmanabad', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(371, 'Parbhani', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(372, 'Pune', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(373, 'Raigad', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(374, 'Ratnagiri', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(375, 'Sangli', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(376, 'Satara', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(377, 'Sindhudurg', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(378, 'Solapur', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(379, 'Thane', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(380, 'Wardha', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(381, 'Washim', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(382, 'Yavatmal', 21, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(383, 'Bishnupur', 22, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(384, 'Chandel', 22, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(385, 'Churachandpur', 22, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(386, 'Imphal East', 22, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(387, 'Imphal West', 22, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(388, 'Senapati', 22, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(389, 'Tamenglong', 22, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(390, 'Thoubal', 22, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(391, 'Ukhrul', 22, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(392, 'East Garo Hills', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(393, 'East Jaintia Hills', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(394, 'East Khasi Hills', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(395, 'North Garo Hills', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(396, 'Ri Bhoi', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(397, 'South Garo Hills', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(398, 'South West Garo Hills', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(399, 'South West Khasi Hills', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(400, 'West Garo Hills', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(401, 'West Jaintia Hills', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(402, 'West Khasi Hills', 23, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(403, 'Aizawl', 24, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(404, 'Champhai', 24, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(405, 'Kolasib', 24, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(406, 'Lawngtlai', 24, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(407, 'Lunglei', 24, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(408, 'Mamit', 24, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(409, 'Saiha', 24, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(410, 'Serchhip', 24, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(411, 'Dimapur', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(412, 'Kiphire', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(413, 'Kohima', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(414, 'Longleng', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(415, 'Mokokchung', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(416, 'Mon', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(417, 'Peren', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(418, 'Phek', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(419, 'Tuensang', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(420, 'Wokha', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(421, 'Zunheboto', 25, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(422, 'Angul', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(423, 'Balangir', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(424, 'Balasore', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(425, 'Bargarh', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(426, 'Bhadrak', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(427, 'Boudh', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(428, 'Cuttack', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(429, 'Deogarh', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(430, 'Dhenkanal', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(431, 'Gajapati', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(432, 'Ganjam', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(433, 'Jagatsinghapur', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(434, 'Jajpur', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(435, 'Jharsuguda', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(436, 'Kalahandi', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(437, 'Kandhamal', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(438, 'Kendrapara', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(439, 'Kendujhar (Keonjhar)', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(440, 'Khordha', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(441, 'Koraput', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(442, 'Malkangiri', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(443, 'Mayurbhanj', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(444, 'Nabarangpur', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(445, 'Nayagarh', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(446, 'Nuapada', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(447, 'Puri', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(448, 'Rayagada', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(449, 'Sambalpur', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(450, 'Sonepur', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(451, 'Sundargarh', 26, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(452, 'Karaikal', 27, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(453, 'Mahe', 27, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(454, 'Pondicherry', 27, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(455, 'Yanam', 27, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(456, 'Amritsar', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(457, 'Barnala', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(458, 'Bathinda', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(459, 'Faridkot', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(460, 'Fatehgarh Sahib', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(461, 'Fazilka', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(462, 'Ferozepur', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(463, 'Gurdaspur', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(464, 'Hoshiarpur', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(465, 'Jalandhar', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(466, 'Kapurthala', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(467, 'Ludhiana', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(468, 'Mansa', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(469, 'Moga', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(470, 'Muktsar', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(471, 'Nawanshahr', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(472, 'Pathankot', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(473, 'Patiala', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(474, 'Rupnagar', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(475, 'Sangrur', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(476, 'SAS Nagar (Mohali)', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(477, 'Tarn Taran', 28, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(478, 'Ajmer', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(479, 'Alwar', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(480, 'Banswara', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(481, 'Baran', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(482, 'Barmer', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(483, 'Bharatpur', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(484, 'Bhilwara', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(485, 'Bikaner', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(486, 'Bundi', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(487, 'Chittorgarh', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(488, 'Churu', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(489, 'Dausa', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(490, 'Dholpur', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(491, 'Dungarpur', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(492, 'Hanumangarh', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(493, 'Jaipur', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(494, 'Jaisalmer', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(495, 'Jalore', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(496, 'Jhalawar', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(497, 'Jhunjhunu', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(498, 'Jodhpur', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(499, 'Karauli', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(500, 'Kota', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(501, 'Nagaur', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(502, 'Pali', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(503, 'Pratapgarh', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(504, 'Rajsamand', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(505, 'Sawai Madhopur', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(506, 'Sikar', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(507, 'Sirohi', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(508, 'Sri Ganganagar', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(509, 'Tonk', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(510, 'Udaipur', 29, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(511, 'East Sikkim', 30, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(512, 'North Sikkim', 30, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(513, 'South Sikkim', 30, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(514, 'West Sikkim', 30, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(515, 'Ariyalur', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(516, 'Chennai', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(517, 'Coimbatore', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(518, 'Cuddalore', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(519, 'Dharmapuri', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(520, 'Dindigul', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(521, 'Erode', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(522, 'Kanchipuram', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(523, 'Kanyakumari', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(524, 'Karur', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(525, 'Krishnagiri', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(526, 'Madurai', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(527, 'Nagapattinam', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(528, 'Namakkal', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(529, 'Nilgiris', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(530, 'Perambalur', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(531, 'Pudukkottai', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(532, 'Ramanathapuram', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(533, 'Salem', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(534, 'Sivaganga', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(535, 'Thanjavur', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(536, 'Theni', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(537, 'Thoothukudi (Tuticorin)', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(538, 'Tiruchirappalli', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(539, 'Tirunelveli', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(540, 'Tiruppur', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(541, 'Tiruvallur', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(542, 'Tiruvannamalai', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(543, 'Tiruvarur', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(544, 'Vellore', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(545, 'Viluppuram', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(546, 'Virudhunagar', 31, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(547, 'Adilabad', 32, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(548, 'Hyderabad', 32, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(549, 'Karimnagar', 32, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(550, 'Khammam', 32, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(551, 'Mahabubnagar', 32, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(552, 'Medak', 32, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(553, 'Nalgonda', 32, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(554, 'Nizamabad', 32, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(555, 'Rangareddy', 32, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(556, 'Warangal', 32, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(557, 'Dhalai', 33, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(558, 'Gomati', 33, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(559, 'Khowai', 33, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(560, 'North Tripura', 33, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(561, 'Sepahijala', 33, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(562, 'South Tripura', 33, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(563, 'Unakoti', 33, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(564, 'West Tripura', 33, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(565, 'Agra', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(566, 'Aligarh', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(567, 'Allahabad', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(568, 'Ambedkar Nagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(569, 'Auraiya', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(570, 'Azamgarh', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(571, 'Baghpat', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(572, 'Bahraich', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(573, 'Ballia', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(574, 'Balrampur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(575, 'Banda', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(576, 'Barabanki', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(577, 'Bareilly', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(578, 'Basti', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(579, 'Bhim Nagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(580, 'Bijnor', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(581, 'Budaun', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(582, 'Bulandshahr', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(583, 'Chandauli', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(584, 'Chatrapati Sahuji Mahraj Nagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(585, 'Chitrakoot', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(586, 'Deoria', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(587, 'Etah', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(588, 'Etawah', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(589, 'Faizabad', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(590, 'Farrukhabad', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(591, 'Fatehpur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(592, 'Firozabad', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(593, 'Gautam Buddha Nagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(594, 'Ghaziabad', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(595, 'Ghazipur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(596, 'Gonda', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(597, 'Gorakhpur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(598, 'Hamirpur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(599, 'Hardoi', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(600, 'Hathras', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(601, 'Jalaun', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(602, 'Jaunpur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(603, 'Jhansi', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(604, 'Jyotiba Phule Nagar (J.P. Nagar)', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(605, 'Kannauj', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(606, 'Kanpur Dehat', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(607, 'Kanpur Nagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(608, 'Kanshiram Nagar (Kasganj)', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(609, 'Kaushambi', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(610, 'Kushinagar (Padrauna)', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(611, 'Lakhimpur - Kheri', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(612, 'Lalitpur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(613, 'Lucknow', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(614, 'Maharajganj', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(615, 'Mahoba', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(616, 'Mainpuri', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(617, 'Mathura', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(618, 'Mau', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(619, 'Meerut', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(620, 'Mirzapur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(621, 'Moradabad', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(622, 'Muzaffarnagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(623, 'Panchsheel Nagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(624, 'Pilibhit', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(625, 'Prabuddh Nagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(626, 'Pratapgarh', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(627, 'RaeBareli', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(628, 'Rampur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(629, 'Saharanpur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(630, 'Sant Kabir Nagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(631, 'Sant Ravidas Nagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(632, 'Shahjahanpur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(633, 'Shravasti', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(634, 'Siddharth Nagar', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(635, 'Sitapur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(636, 'Sonbhadra', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(637, 'Sultanpur', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(638, 'Unnao', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(639, 'Varanasi', 34, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(640, 'Almora', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(641, 'Bageshwar', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(642, 'Chamoli', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(643, 'Champawat', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(644, 'Dehradun', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(645, 'Haridwar', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(646, 'Nainital', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(647, 'Pauri Garhwal', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(648, 'Pithoragarh', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(649, 'Rudraprayag', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(650, 'Tehri Garhwal', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(651, 'Udham Singh Nagar', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(652, 'Uttarkashi', 35, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(653, 'Bankura', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(654, 'Birbhum', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(655, 'Burdwan (Bardhaman)', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(656, 'Cooch Behar', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(657, 'Dakshin Dinajpur (South Dinajpur)', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(658, 'Darjeeling', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(659, 'Hooghly', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(660, 'Howrah', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(661, 'Jalpaiguri', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(662, 'Kolkata', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(663, 'Malda', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(664, 'Murshidabad', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(665, 'Nadia', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(666, 'North 24 Parganas', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(667, 'Paschim Medinipur (West Medinipur)', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(668, 'Purba Medinipur (East Medinipur)', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(669, 'Purulia', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(670, 'South 24 Parganas', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50'),
(671, 'Uttar Dinajpur (North Dinajpur)', 36, '2016-05-11 16:55:50', '2016-05-11 16:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `_fee_master`
--

DROP TABLE IF EXISTS `_fee_master`;
CREATE TABLE IF NOT EXISTS `_fee_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_fee_master`
--

INSERT INTO `_fee_master` (`id`, `class_id`, `name`, `type_id`, `created_at`, `updated_at`) VALUES
(1, 1, '500', 2, '2016-05-11 17:21:35', '2016-05-11 17:21:35'),
(2, 1, '1200', 1, '2016-05-11 17:21:49', '2016-05-11 17:21:49'),
(3, 1, '5000', 3, '2016-05-14 01:39:51', '2016-05-14 01:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `_fee_type`
--

DROP TABLE IF EXISTS `_fee_type`;
CREATE TABLE IF NOT EXISTS `_fee_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_fee_type`
--

INSERT INTO `_fee_type` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tution', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Transport', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Admission', 1, '2016-05-14 05:18:26', '2016-05-14 07:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `_payment_mode`
--

DROP TABLE IF EXISTS `_payment_mode`;
CREATE TABLE IF NOT EXISTS `_payment_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode` varchar(90) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_payment_mode`
--

INSERT INTO `_payment_mode` (`id`, `mode`, `created_at`, `updated_at`) VALUES
(1, 'Cheque', '2016-05-11 17:23:35', '2016-05-11 17:23:35'),
(2, 'Cash', '2016-05-11 17:23:46', '2016-05-11 17:23:46'),
(3, 'DD', '2016-05-11 17:23:56', '2016-05-11 17:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `_route`
--

DROP TABLE IF EXISTS `_route`;
CREATE TABLE IF NOT EXISTS `_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starting_point` varchar(90) NOT NULL,
  `end_point` varchar(90) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_route`
--

INSERT INTO `_route` (`id`, `starting_point`, `end_point`, `created_at`, `updated_at`) VALUES
(1, 'Sector 37', 'Sector 91', '2016-05-11 17:29:03', '2016-05-11 17:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `_route_immediate_stations`
--

DROP TABLE IF EXISTS `_route_immediate_stations`;
CREATE TABLE IF NOT EXISTS `_route_immediate_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `route_id` (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_route_immediate_stations`
--

INSERT INTO `_route_immediate_stations` (`id`, `route_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Palla', '2016-05-11 17:34:04', '2016-05-11 17:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `_section`
--

DROP TABLE IF EXISTS `_section`;
CREATE TABLE IF NOT EXISTS `_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(9) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_section`
--

INSERT INTO `_section` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'A', '2016-05-10 21:41:00', '2016-05-10 18:30:00'),
(2, 'B', '2016-05-10 18:30:00', '2016-05-10 18:30:00'),
(3, 'C', '2016-05-10 18:30:00', '2016-05-10 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `_state`
--

DROP TABLE IF EXISTS `_state`;
CREATE TABLE IF NOT EXISTS `_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_state`
--

INSERT INTO `_state` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Andaman and Nicobar Island', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(2, 'Andhra Pradesh', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(3, 'Arunachal Pradesh', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(4, 'Assam', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(5, 'Bihar', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(6, 'Chandigarh', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(7, 'Chhattisgarh', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(8, 'Dadra and Nagar Haveli', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(9, 'Daman and Diu', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(10, 'Delhi', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(11, 'Goa', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(12, 'Gujarat', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(13, 'Haryana', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(14, 'Himachal Pradesh', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(15, 'Jammu and Kashmir', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(16, 'Jharkhand', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(17, 'Karnataka', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(18, 'Kerala', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(19, 'Lakshadweep', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(20, 'Madhya Pradesh', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(21, 'Maharashtra', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(22, 'Manipur', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(23, 'Meghalaya', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(24, 'Mizoram', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(25, 'Nagaland', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(26, 'Odisha', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(27, 'Puducherry', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(28, 'Punjab', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(29, 'Rajasthan', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(30, 'Sikkim', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(31, 'Tamil Nadu', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(32, 'Telangana', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(33, 'Tripura', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(34, 'Uttar Pradesh', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(35, 'Uttarakhand', '2016-05-11 16:56:48', '2016-05-11 16:56:48'),
(36, 'West Bengal', '2016-05-11 16:56:48', '2016-05-11 16:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `_student_catagory`
--

DROP TABLE IF EXISTS `_student_catagory`;
CREATE TABLE IF NOT EXISTS `_student_catagory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `discount_in_fee` varchar(11) NOT NULL COMMENT 'in percentage',
  `discount_in_adm` varchar(11) NOT NULL COMMENT 'in percentage',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_student_catagory`
--

INSERT INTO `_student_catagory` (`id`, `name`, `discount_in_fee`, `discount_in_adm`, `created_at`, `updated_at`) VALUES
(1, 'OBC', '10', '10', '2016-05-12 05:15:23', '2016-05-12 16:38:34'),
(2, 'SC', '15', '15', '2016-05-12 11:28:29', '2016-05-12 14:30:42'),
(3, 'GENERAL', '0', '0', '2016-05-12 08:22:32', '2016-05-12 11:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `_transport`
--

DROP TABLE IF EXISTS `_transport`;
CREATE TABLE IF NOT EXISTS `_transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `number_plate` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_transport`
--

INSERT INTO `_transport` (`id`, `name`, `status`, `created_at`, `updated_at`, `number_plate`) VALUES
(1, 'Bus', 1, '2016-05-11 17:46:29', '2016-05-11 17:46:29', 'HR 21 AD 4567');

-- --------------------------------------------------------

--
-- Table structure for table `_transport_route`
--

DROP TABLE IF EXISTS `_transport_route`;
CREATE TABLE IF NOT EXISTS `_transport_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transport_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transport_id` (`transport_id`),
  KEY `route_id` (`route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_transport_route`
--

INSERT INTO `_transport_route` (`id`, `transport_id`, `route_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `_class_section_relation`
--
ALTER TABLE `_class_section_relation`
  ADD CONSTRAINT `_class_section_relation_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `_class_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `_class_section_relation_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `_section` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_district`
--
ALTER TABLE `_district`
  ADD CONSTRAINT `_district_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `_state` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_fee_master`
--
ALTER TABLE `_fee_master`
  ADD CONSTRAINT `_fee_master_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `_fee_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_route_immediate_stations`
--
ALTER TABLE `_route_immediate_stations`
  ADD CONSTRAINT `_route_immediate_stations_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `_route` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_transport_route`
--
ALTER TABLE `_transport_route`
  ADD CONSTRAINT `_transport_route_ibfk_1` FOREIGN KEY (`transport_id`) REFERENCES `_transport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `_transport_route_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `_route` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
