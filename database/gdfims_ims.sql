-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 09:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gdfims_ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `absentees`
--

CREATE TABLE `absentees` (
  `student_reg_no` varchar(150) CHARACTER SET latin1 NOT NULL,
  `absent_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aits_student_login`
--

CREATE TABLE `aits_student_login` (
  `user` varchar(10) NOT NULL,
  `result` varchar(22) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `f_name` varchar(10) NOT NULL,
  `l_name` varchar(10) NOT NULL,
  `ft_name` varchar(10) NOT NULL,
  `m_name` varchar(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `adhar` varchar(4) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `phn` int(11) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_loc` varchar(50) NOT NULL,
  `s_addres` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `district` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aits_student_login`
--

INSERT INTO `aits_student_login` (`user`, `result`, `pass`, `f_name`, `l_name`, `ft_name`, `m_name`, `date`, `adhar`, `gender`, `category`, `mail`, `phn`, `s_name`, `s_loc`, `s_addres`, `city`, `district`, `state`, `pin`) VALUES
('20012301', '', 'babylucifer', 'sahil', 'none', 'suleman', 'kaise', '2001-12-02', '1234', 'male', 'obc', '1sahilsulemna@gmail.com', 7303, 'sbv', 'sbv a block vikas puri', 'vikas puri ', 'new delhi', 'delhi', 'delhi', 110059),
('20012302', '', '2001@baby', 'akash', 'nishad', 'xyz', 'mxyz', '2001-12-02', '4567', 'male', 'st', '1akash@gmail.com', 123456789, 'sdjj', 'sjnsdjnsjdnsdjnjsdcnsdjcsjdcnj', 'vnslsklnskljs', 'skcnsdjkcnsdjknc', 'delhi', 'delhi', 110058);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batch_id` int(11) NOT NULL,
  `branch_id` int(5) NOT NULL,
  `member_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `batch_time` varchar(20) CHARACTER SET latin1 NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `remark` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_active` int(11) NOT NULL,
  `baatch_days` varchar(20) CHARACTER SET latin1 NOT NULL,
  `exam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `student_reg_no` varchar(30) CHARACTER SET latin1 NOT NULL,
  `course_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `course_fee` varchar(255) CHARACTER SET latin1 NOT NULL,
  `course_duration` varchar(255) CHARACTER SET latin1 NOT NULL,
  `course_hours` varchar(255) CHARACTER SET latin1 NOT NULL,
  `class_mode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `job_after_course` varchar(255) CHARACTER SET latin1 NOT NULL,
  `course_description` varchar(400) CHARACTER SET latin1 NOT NULL,
  `course_exam` varchar(255) CHARACTER SET latin1 NOT NULL,
  `course_main_content` varchar(255) CHARACTER SET latin1 NOT NULL,
  `upgradation_after_course` varchar(255) CHARACTER SET latin1 NOT NULL,
  `student_type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `pre_requisites` varchar(255) CHARACTER SET latin1 NOT NULL,
  `category` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_active` int(11) NOT NULL,
  `course_seats` int(11) NOT NULL,
  `is_composite` int(11) NOT NULL,
  `no_of_exam` int(11) NOT NULL,
  `regNo` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `student_reg_no`, `course_name`, `course_fee`, `course_duration`, `course_hours`, `class_mode`, `job_after_course`, `course_description`, `course_exam`, `course_main_content`, `upgradation_after_course`, `student_type`, `pre_requisites`, `category`, `is_active`, `course_seats`, `is_composite`, `no_of_exam`, `regNo`) VALUES
(222222, '05LITEXPL120201234', 'tally accounting', '30000', '2.1 year', '1 hour', 'morning', 'non', 'non', 'non', ' non', 'non', 'girl', 'non', 'non', 1234, 1234, 1234, 1234, '05LITEXPL120201234'),
(120207974, '05LITEXPL120207974', 'IT EXPERT', '25000', '', '', '', '', '', 'IT EXPERT', '', '', '', '', '', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `course_module`
--

CREATE TABLE `course_module` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `module_duration` varchar(30) CHARACTER SET latin1 NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_module`
--

INSERT INTO `course_module` (`module_id`, `module_name`, `module_duration`, `course_id`) VALUES
(1, 'CCC PLUS\r\n', '11', 120207974),
(2, 'tally accounting\r\n', '12', 222222);

-- --------------------------------------------------------

--
-- Table structure for table `demo_class`
--

CREATE TABLE `demo_class` (
  `id` int(11) NOT NULL,
  `full__name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `contact_no` bigint(11) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_address` varchar(255) NOT NULL,
  `home_address` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `branch_time` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `enter_number` bigint(11) NOT NULL,
  `verfy_otp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demo_class`
--

INSERT INTO `demo_class` (`id`, `full__name`, `father_name`, `contact_no`, `school_name`, `school_address`, `home_address`, `branch`, `branch_time`, `course`, `enter_number`, `verfy_otp`) VALUES
(1, 'SAHIL', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'sdcvsdcsdds', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '9:30AM-10:30AM', 'Computer Teacher Training', 0, 0),
(2, 'SAHIL', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'sdcvsdcsdds', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '9:30AM-10:30AM', 'Computer Teacher Training', 0, 0),
(3, 'SAHIL', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'sdcvsdcsdds', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '9:30AM-10:30AM', 'Computer Teacher Training', 0, 0),
(4, 'SAHIL', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'sdcvsdcsdds', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '11:00AM-12:00PM', 'Computer Teacher Training', 0, 0),
(5, '', '', 0, '', '', '', '', '', '', 0, 0),
(6, 'newone', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'sdcvsdcsdds', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', '1665, Najafgarh Thana Rd, near Nawada bazar, Prem Nagar, Najafgarh, Delhi, 110043', '9:30AM-10:30AM', 'MDSE', 0, 0),
(7, 'newone', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'sdcvsdcsdds', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', '1665, Najafgarh Thana Rd, near Nawada bazar, Prem Nagar, Najafgarh, Delhi, 110043', '9:30AM-10:30AM', 'MDSE', 0, 0),
(8, 'ptt', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'as,al', 'sdmnaskl', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'apposite State Bank of India, L-5, 1st Floor, L Block Mahaveer Enclave, Main, Palam - Dabri Marg, Palam, Delhi, 110045', '9:30AM-10:30AM', 'Computer Teacher Training', 0, 0),
(9, 'ptt', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'as,al', 'sdmnaskl', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'apposite State Bank of India, L-5, 1st Floor, L Block Mahaveer Enclave, Main, Palam - Dabri Marg, Palam, Delhi, 110045', '9:30AM-10:30AM', 'Computer Teacher Training', 0, 0),
(10, 'cbsdjcasjkc', 'ascbsk j', 0, 'jkb', 'bjk', 'jbjk', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '4:00PM-5:00PM', 'MDSE', 0, 0),
(11, 'soahil', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'dcsdsd', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '9:30AM-10:30AM', 'Business Aanalyst', 0, 0),
(12, 'sasasdsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'dcsdsd', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '9:30AM-10:30AM', 'Business Aanalyst', 0, 0),
(13, 'sasasdsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'dcsdsd', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '9:30AM-10:30AM', 'Business Aanalyst', 0, 0),
(14, 'sasasdsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'dcsdsd', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '9:30AM-10:30AM', 'Business Aanalyst', 0, 0),
(15, 'sasasdsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 0, 'dcsdsd', 'sdvsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '9:30AM-10:30AM', 'Business Aanalyst', 0, 0),
(16, '', '', 0, '', '', '', '', '', '', 0, 0),
(17, '', '', 0, '', '', '', '', '', '', 0, 0),
(18, 'SAHIL', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 7303680988, 'dcsdsd', 'sdcsdsdsd', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', '2', '9:30AM-10:30AM', 'Data Analyst', 0, 0),
(19, 'SAHIL', 'suleman', 917303680988, 'sd', 'LDVKSDMKKL', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', '1665, Najafgarh Thana Rd, near Nawada bazar, Prem Nagar, Najafgarh, Delhi, 110043', '9:30AM-10:30AM', 'Data Analyst', 0, 0),
(20, 'SAHIL', 'suleman', 7303680988, 'jkb', 'LDVKSDMKKL', 'D 40 Bhagwativihar uttam nagar', '	A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', '11:00AM-12:00PM', 'Data Analyst', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dtse`
--

CREATE TABLE `dtse` (
  `sno` int(11) NOT NULL,
  `student_code` varchar(20) NOT NULL,
  `student_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `student_father_name` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `student_mother_name` varchar(120) CHARACTER SET latin1 DEFAULT NULL,
  `pincode` int(11) NOT NULL,
  `school` varchar(255) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `exam_date` date NOT NULL,
  `visit_status` varchar(255) NOT NULL DEFAULT '0',
  `close_enq` varchar(255) NOT NULL DEFAULT '1',
  `certi` varchar(25) NOT NULL,
  `dateofvisit` date NOT NULL,
  `branch` varchar(120) NOT NULL,
  `formid` varchar(120) NOT NULL,
  `counselor_id` int(11) NOT NULL,
  `basemember_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dtse`
--

INSERT INTO `dtse` (`sno`, `student_code`, `student_name`, `student_father_name`, `student_mother_name`, `pincode`, `school`, `phone`, `exam_date`, `visit_status`, `close_enq`, `certi`, `dateofvisit`, `branch`, `formid`, `counselor_id`, `basemember_id`) VALUES
(1, '345', 'sahil', 'suleman', NULL, 110059, '', 7303680988, '0000-00-00', '', '', '', '2022-05-11', '1234', '', 2, 0),
(2, '234', 'ashu', 'jha', NULL, 110069, '', 9250740684, '0000-00-00', '', '', '', '2022-05-02', '4321', '', 1, 0),
(3, '235', 'jake', 'kann', 'rita', 110098, '', 7303680988, '2022-05-05', '0', '1', '899', '2022-05-12', '4677', 'newone', 3, 7),
(4, '056', 'jake', 'kann', 'rita', 110098, '', 7303680988, '2022-05-05', '0', '1', '899', '2022-05-12', '4677', 'newone', 3, 7),
(5, '687', 'ashu', 'jha', NULL, 110069, '', 9250740684, '2022-07-25', '', '', '', '2022-05-31', '4321', '', 1, 0),
(6, '456', 'jake', 'kann', 'rita', 110098, '', 7303680988, '2022-05-05', '0', '1', '899', '2022-05-12', '4677', 'newone', 3, 7),
(7, '345', 'jake', 'kann', 'rita', 110098, '', 7303680988, '2022-05-05', '0', '1', '899', '2022-05-12', '4677', 'newone', 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `exam_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_active` int(11) NOT NULL,
  `exam_type` int(11) NOT NULL,
  `is_online` int(11) NOT NULL,
  `exam_module` varchar(255) CHARACTER SET latin1 NOT NULL,
  `exam_total_marks` int(11) NOT NULL,
  `exam_created_date` date NOT NULL,
  `exam_modified_date` date NOT NULL,
  `course_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `exam_topic_covered` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

CREATE TABLE `exam_question` (
  `s_no` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `o1` varchar(20) NOT NULL,
  `o2` varchar(20) NOT NULL,
  `o3` varchar(20) NOT NULL,
  `o4` varchar(20) NOT NULL,
  `answer` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_question`
--

INSERT INTO `exam_question` (`s_no`, `question`, `o1`, `o2`, `o3`, `o4`, `answer`) VALUES
(1, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(2, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(3, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(4, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(5, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(6, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(7, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(8, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(9, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(10, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(11, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(12, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(13, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(14, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(15, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(16, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(17, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(18, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(19, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(20, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(21, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(22, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(23, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(24, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(25, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(26, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(27, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(28, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(29, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(30, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(31, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(32, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(33, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(34, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(35, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(36, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(37, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(38, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(39, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(40, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(41, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(42, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(43, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(44, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(45, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(46, 'chouse right option ', 'a', 'b', 'c', 'd', 'b'),
(47, 'chouse right option ', 'a', 'b', 'c', 'd', 'c'),
(48, 'chouse right option ', 'a', 'b', 'c', 'd', 'd'),
(49, 'chouse right option ', 'a', 'b', 'c', 'd', 'a'),
(50, 'chouse right option ', 'a', 'b', 'c', 'd', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `feedetaile`
--

CREATE TABLE `feedetaile` (
  `s.no.` int(11) NOT NULL,
  `regno` varchar(25) NOT NULL,
  `phone` int(11) NOT NULL,
  `feetype` varchar(25) NOT NULL,
  `feepaid` varchar(25) NOT NULL,
  `transactionid` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedetaile`
--

INSERT INTO `feedetaile` (`s.no.`, `regno`, `phone`, `feetype`, `feepaid`, `transactionid`) VALUES
(1, '3000', 2147483647, 'Installment Fees', '60000', '73933993'),
(2, '123456', 2147483647, 'Installment Fees', '5000000', 'it@#2sjdncjj2nmsm2');

-- --------------------------------------------------------

--
-- Table structure for table `franchise`
--

CREATE TABLE `franchise` (
  `s.no.` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `gen` varchar(25) NOT NULL,
  `age` varchar(25) NOT NULL,
  `phon` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `pin` int(11) NOT NULL,
  `center` varchar(25) NOT NULL,
  `running_center` varchar(5) NOT NULL,
  `lan` varchar(10) NOT NULL,
  `info` varchar(50) NOT NULL,
  `invest` varchar(10) NOT NULL,
  `wopn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `franchise`
--

INSERT INTO `franchise` (`s.no.`, `name`, `gen`, `age`, `phon`, `mail`, `loc`, `city`, `state`, `pin`, `center`, `running_center`, `lan`, `info`, `invest`, `wopn`) VALUES
(1, 'sahilsulemsd', 'Male', '17', 2147483647, '1sahilsuleman@gmail.com', 'asovns', 'ksdk', 'sdjcnsdjk', 100000, 'Software Training Centre', 'no', 'hindi', 'this si asjvhidosdv', 'snsdkl', 'dcdc'),
(2, 'sailsuleman', 'Female', '17', 524524, '1sahilsuleman@gmail.com', 'asovns', 'ksdk', 'asjkcnasj', 110059, 'GDF Skills Franchise Cent', 'yes', 'english', 'asjcnasjkc', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `home_appliedscholar`
--

CREATE TABLE `home_appliedscholar` (
  `id` int(11) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `adhar` bigint(20) NOT NULL,
  `father_name` varchar(120) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `mother_name` varchar(120) NOT NULL,
  `category` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tenth_institution` varchar(255) NOT NULL,
  `tenth_board` varchar(255) NOT NULL,
  `tenth_marks` int(11) NOT NULL,
  `tenth_percentage` int(11) NOT NULL,
  `tenth_year` int(11) NOT NULL,
  `twelfth_institution` varchar(255) NOT NULL,
  `twelfth_board` varchar(255) NOT NULL,
  `twelfth_marks` varchar(4) NOT NULL,
  `twelfth_percentage` varchar(2) NOT NULL,
  `twelfth_year` varchar(4) NOT NULL,
  `grad_institution` varchar(255) NOT NULL,
  `grad_board` varchar(255) NOT NULL,
  `grad_marks` varchar(4) NOT NULL,
  `gard_percentage` varchar(2) NOT NULL,
  `grad_year` varchar(4) NOT NULL,
  `postgrad_institution` varchar(255) NOT NULL,
  `postgrad_board` varchar(255) NOT NULL,
  `postgrad_marks` varchar(4) NOT NULL,
  `postgrad_percentage` varchar(2) NOT NULL,
  `postgrad_year` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_appliedscholar`
--

INSERT INTO `home_appliedscholar` (`id`, `firstname`, `lastname`, `dob`, `gender`, `mobile`, `phone`, `email`, `adhar`, `father_name`, `occupation`, `mother_name`, `category`, `address`, `tenth_institution`, `tenth_board`, `tenth_marks`, `tenth_percentage`, `tenth_year`, `twelfth_institution`, `twelfth_board`, `twelfth_marks`, `twelfth_percentage`, `twelfth_year`, `grad_institution`, `grad_board`, `grad_marks`, `gard_percentage`, `grad_year`, `postgrad_institution`, `postgrad_board`, `postgrad_marks`, `postgrad_percentage`, `postgrad_year`) VALUES
(9, '', '', '0000-00-00', '', 0, '', '', 0, '', '', '', '', '', '', '', 0, 0, 2001, '', '', '', '', '2001', '', '', '', '', '2001', '', '', '', '', '2001'),
(10, 'SAHIL', 'SULEMAN', '2022-05-05', 'female', 2147483647, '7303680988', '1sahilsuleman9999.1@gmail.com', 0, 'Suleman', 'kjhk', 'fdvd', 'General', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', '', '', 0, 0, 2001, '', '', '', '', '2001', '', '', '', '', '2001', '', '', '', '', '2001'),
(11, '', '', '0000-00-00', '', 0, '', '', 0, '', '', '', '', '', '', '', 0, 0, 2001, '', '', '', '', '2001', '', '', '', '', '2001', '', '', '', '', '2001'),
(12, '', '', '0000-00-00', '', 0, '', '', 0, '', '', '', '', '', '', '', 0, 0, 2001, '', '', '', '', '2001', '', '', '', '', '2001', '', '', '', '', '2001'),
(13, 'SAHIL', 'SULEMAN', '2022-06-17', 'male', 2147483647, '9234394839', '1sahilsuleman9999.1@gmail.com', 0, 'Suleman', 'kjhk', 'fdvd', 'General', 'D 40 BHAGWATI VIHAR UTTAM NAGAR', 'knjkn', 'nkjkn', 67, 76, 1900, '', '', '', '', '2001', '', '', '', '', '2001', '', '', '', '', '2001');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` longblob NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `created`) VALUES
(1, 0xffd8ffe000104a46494600010201004800480000ffe109274578696600004d4d002a000000080007011200030000000100010000011a00050000000100000062011b0005000000010000006a012800030000000100020000013100020000001c0000007201320002000000140000008e8769000400000001000000a4000000d0000afc8000002710000afc800000271041646f62652050686f746f73686f70204353332057696e646f777300323031393a30343a32352031313a33323a34380000000003a00100030000000100010000a00200040000000100000050a003000400000001000000500000000000000006010300030000000100060000011a0005000000010000011e011b0005000000010000012601280003000000010002000002010004000000010000012e0202000400000001000007f10000000000000048000000010000004800000001ffd8ffe000104a46494600010200004800480000ffed000c41646f62655f434d0001ffee000e41646f626500648000000001ffdb0084000c08080809080c09090c110b0a0b11150f0c0c0f1518131315131318110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c010d0b0b0d0e0d100e0e10140e0e0e14140e0e0e0e14110c0c0c0c0c11110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc00011080050005003012200021101031101ffdd00040005ffc4013f0000010501010101010100000000000000030001020405060708090a0b0100010501010101010100000000000000010002030405060708090a0b1000010401030204020507060805030c33010002110304211231054151611322718132061491a1b14223241552c16233347282d14307259253f0e1f163733516a2b283264493546445c2a3743617d255e265f2b384c3d375e3f3462794a485b495c4d4e4f4a5b5c5d5e5f55666768696a6b6c6d6e6f637475767778797a7b7c7d7e7f711000202010204040304050607070605350100021103213112044151617122130532819114a1b14223c152d1f0332462e1728292435315637334f1250616a2b283072635c2d2449354a317644555367465e2f2b384c3d375e3f34694a485b495c4d4e4f4a5b5c5d5e5f55666768696a6b6c6d6e6f62737475767778797a7b7c7ffda000c03010002110311003f00efd284eb3faef58c6e8dd36dcdc83f40115d7ddef3f42b6a2b5e43fc60fd6cbf1de3a574cbb63a2726d61d75ff0000d77fe7c5c3e1e0f53cafd250c7ddfca1a37fce3f495ae938195d7baa59979209ab797dcfec49fa3537fd7e82f41c4c7a29adaca9a00688d14339eb4cf08696f095fd57ebb9066d636a6f6ddfea546ffabbd5b1584dad0fac731ae9ff0054bd1880070856358e110a3332bc403e77d37abe7f44b7763bf68065d5b84b4fc17a1fd5bfae98bd4ea2dcb2da2edd0d3c3483c7776d5ce7d61e858f752fbeb1e9dad04c8eeb88aadb31ec3b1c5aee3c3952639d8639c28bf40029d73bf52facd7d4ba457539e5d9388057703cc7f837ff0029ae5d10530d45b11d1fffd0f412b8dff1972ee914d65a361b7739e624068276b07f2d764ee1723fe3170edc9e8f5ba9fa4db434eb10d772ed7f776a52d8aa3bb8dd13230f0ba4e307fb4b9bbcb5a24fbb5980b6303abf4ec9b0535b8b5e780f696cff0057780b07a6bb228c47b7d2df6577ba8ac1fa2dad81bb0bd68e3e65d7e0b5d938c31ec27e8f79046d236fef2ae46e5b03a3b3937578ec2e2c2ff003bfdeaa51977e635c6bc6d9b4c0dc627fe8a8646411731806d7d8df6cebf4794b11994c971739c6675991ed8d3f376ee4a3c24eba051b011e493617e35ec35bcb4e87f82f3ccfa1b8f94e9896b8b1df10bd36d65f6b01b4b77804eee4ebc2f39facd88ec6eac59bb736c01f3dfddf4bfe9250a12206c896a1e8ff00c595af3d4b29ad115fa4379f9fb5bff497a505e63fe2d6cb8f54bab0d2dac56e759f105ad6af4d6ab11d9825bbffd1f4270d164f5fe9dfb4ba564626e2d1630c0004970f733fabee5ae509c9c878ee9b50fb1d0e734979634da46a4bc00c7177f9a8f751bdccdcd0c05c3683ce9aee447b4e266db8e46d125f5f9b5c6745573ed1923d3697073780c3065559756cc53e4d7e9dac77d21dc771fca57995ba01696907b91aac8181eff51e5c5e3424bc8241fcc0d9daaf7db056e159058340101a24eabe63db5b63c7bae55dd30f50eb6ec8b5a1f4d2c0ddbfca3eed56e751c826f1536248eeb3ba5e7067573d3456e75f96eded7b621ad60daf75b3f9a80b24d22c01abbff57ba6d58d9195935d62aaecdb5d4d02346cbdff00f4deba1605568adac6b58d101bc2b8c1a2b5115101ad236497ffd2f44286f0a6a2ee1396bcff00d67adccc6af2dbff0069dfef3fc977fdf772e7afa466d2ff00b3643ea3ba1ed61831ff0054bb9c8aabb6b7d56343ebb016bda7820f2179b759c7ccfab7d46cfb3b8bf0dc43aa73b5da08fe6adfdefe43d439617a866c53ad3b37a9e935bdadaac7bdd0227b9fedabafa303a6e391b66d2342e25ceffa52a9b3afe27a74bcbda1f6092e91a1f05ce756ebed7b9e2bb0daf768defe4544224b34f269d9d3cefac150b83dadfd290011c42e97eabf4daeba3edf636736f1b6c79e5ad9dfe9b7fcff007ae2beaf741befbdb95960ed690e6b1df86e5e91d1c4e2fc1ee1f91498c0e3a1d98664f0fd5d0adaac0e10d811070a7617ffd3f435171d165757fad1d13a30233b29adb40918ecf7da7feb6dfa3ff5c5c1f5bff1a7d43241aba3d23098641bac87da7fa8dfe6aaff00c11396bdc759facbd17a33d95f50c915d8fd454d05ef8fdf756cf7359a7d25c7e2fd6de9bd77a8645198d1432d7018acb48873236ec73be8fabbbdeb81cacac8cabecc8c9b5d75cf82fb1e4b9c634d5ce403aa6c8710a5d13c26df46cafa8fd30d9bda1c1a750d0602b585f56ba5e290ea71c36c1f9e7dcefbdd2b83e9df597adf4d019464b9d4b7fc0dbef67c83bdccfec2e8f13fc63d7b437330cb48e5d4b811fe6d9b7fead45284bbdb209c7c9ec198cca69802161f51ebbd5ba2bd9998845d875bf6e5e2b8082d747e9ab7fd363dab3f33fc63619af6e26258f778da5ad6ff00d0f51cb96ea7d7fa875225b738575133e957a37fb5f9cf423090903b2a5289046efb963645391536ea5edb2b700439a4386be6d4695e09d2facf51e8f94dc9c0b9d53c11bd93ec789fa16d7f45ed72f4ae8dfe32ba366b5acea00f4fbcf25d2ea8fc2c6fb99ff5c6a9d8a9ffd9ffed0e2250686f746f73686f7020332e30003842494d04040000000000071c020000022e89003842494d0425000000000010a8a71021e689fb7af53a913edf938c833842494d042f00000000004a430001002c0100002c0100000000000000000000b80b0000ca0800006affffff6affffff4e0c000060090000000128050000fc03000001000f27010072002d00640070002e006a0070003842494d03ed000000000010004800000001000200480000000100023842494d042600000000000e000000000000000000003f8000003842494d040d0000000000040000001e3842494d04190000000000040000001e3842494d03f3000000000009000000000000000001003842494d040a00000000000100003842494d271000000000000a000100000000000000023842494d03f5000000000048002f66660001006c66660006000000000001002f6666000100a1999a0006000000000001003200000001005a00000006000000000001003500000001002d000000060000000000013842494d03f80000000000700000ffffffffffffffffffffffffffffffffffffffffffff03e800000000ffffffffffffffffffffffffffffffffffffffffffff03e800000000ffffffffffffffffffffffffffffffffffffffffffff03e800000000ffffffffffffffffffffffffffffffffffffffffffff03e800003842494d0408000000000010000000010000024000000240000000003842494d041e000000000004000000003842494d041a00000000033b0000000600000000000000000000005000000050000000030074006500330000000100000000000000000000000000000000000000010000000000000000000000500000005000000000000000000000000000000000010000000000000000000000000000000000000010000000010000000000006e756c6c0000000200000006626f756e64734f626a6300000001000000000000526374310000000400000000546f70206c6f6e6700000000000000004c6566746c6f6e67000000000000000042746f6d6c6f6e670000005000000000526768746c6f6e670000005000000006736c69636573566c4c73000000014f626a6300000001000000000005736c6963650000001200000007736c69636549446c6f6e67000000000000000767726f757049446c6f6e6700000000000000066f726967696e656e756d0000000c45536c6963654f726967696e0000000d6175746f47656e6572617465640000000054797065656e756d0000000a45536c6963655479706500000000496d672000000006626f756e64734f626a6300000001000000000000526374310000000400000000546f70206c6f6e6700000000000000004c6566746c6f6e67000000000000000042746f6d6c6f6e670000005000000000526768746c6f6e67000000500000000375726c54455854000000010000000000006e756c6c54455854000000010000000000004d7367655445585400000001000000000006616c74546167544558540000000100000000000e63656c6c54657874497348544d4c626f6f6c010000000863656c6c546578745445585400000001000000000009686f727a416c69676e656e756d0000000f45536c696365486f727a416c69676e0000000764656661756c740000000976657274416c69676e656e756d0000000f45536c69636556657274416c69676e0000000764656661756c740000000b6267436f6c6f7254797065656e756d0000001145536c6963654247436f6c6f7254797065000000004e6f6e6500000009746f704f75747365746c6f6e67000000000000000a6c6566744f75747365746c6f6e67000000000000000c626f74746f6d4f75747365746c6f6e67000000000000000b72696768744f75747365746c6f6e6700000000003842494d042800000000000c000000013ff00000000000003842494d0414000000000004000000013842494d040c00000000080d000000010000005000000050000000f000004b00000007f100180001ffd8ffe000104a46494600010200004800480000ffed000c41646f62655f434d0001ffee000e41646f626500648000000001ffdb0084000c08080809080c09090c110b0a0b11150f0c0c0f1518131315131318110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c010d0b0b0d0e0d100e0e10140e0e0e14140e0e0e0e14110c0c0c0c0c11110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc00011080050005003012200021101031101ffdd00040005ffc4013f0000010501010101010100000000000000030001020405060708090a0b0100010501010101010100000000000000010002030405060708090a0b1000010401030204020507060805030c33010002110304211231054151611322718132061491a1b14223241552c16233347282d14307259253f0e1f163733516a2b283264493546445c2a3743617d255e265f2b384c3d375e3f3462794a485b495c4d4e4f4a5b5c5d5e5f55666768696a6b6c6d6e6f637475767778797a7b7c7d7e7f711000202010204040304050607070605350100021103213112044151617122130532819114a1b14223c152d1f0332462e1728292435315637334f1250616a2b283072635c2d2449354a317644555367465e2f2b384c3d375e3f34694a485b495c4d4e4f4a5b5c5d5e5f55666768696a6b6c6d6e6f62737475767778797a7b7c7ffda000c03010002110311003f00efd284eb3faef58c6e8dd36dcdc83f40115d7ddef3f42b6a2b5e43fc60fd6cbf1de3a574cbb63a2726d61d75ff0000d77fe7c5c3e1e0f53cafd250c7ddfca1a37fce3f495ae938195d7baa59979209ab797dcfec49fa3537fd7e82f41c4c7a29adaca9a00688d14339eb4cf08696f095fd57ebb9066d636a6f6ddfea546ffabbd5b1584dad0fac731ae9ff0054bd1880070856358e110a3332bc403e77d37abe7f44b7763bf68065d5b84b4fc17a1fd5bfae98bd4ea2dcb2da2edd0d3c3483c7776d5ce7d61e858f752fbeb1e9dad04c8eeb88aadb31ec3b1c5aee3c3952639d8639c28bf40029d73bf52facd7d4ba457539e5d9388057703cc7f837ff0029ae5d10530d45b11d1fffd0f412b8dff1972ee914d65a361b7739e624068276b07f2d764ee1723fe3170edc9e8f5ba9fa4db434eb10d772ed7f776a52d8aa3bb8dd13230f0ba4e307fb4b9bbcb5a24fbb5980b6303abf4ec9b0535b8b5e780f696cff0057780b07a6bb228c47b7d2df6577ba8ac1fa2dad81bb0bd68e3e65d7e0b5d938c31ec27e8f79046d236fef2ae46e5b03a3b3937578ec2e2c2ff003bfdeaa51977e635c6bc6d9b4c0dc627fe8a8646411731806d7d8df6cebf4794b11994c971739c6675991ed8d3f376ee4a3c24eba051b011e493617e35ec35bcb4e87f82f3ccfa1b8f94e9896b8b1df10bd36d65f6b01b4b77804eee4ebc2f39facd88ec6eac59bb736c01f3dfddf4bfe9250a12206c896a1e8ff00c595af3d4b29ad115fa4379f9fb5bff497a505e63fe2d6cb8f54bab0d2dac56e759f105ad6af4d6ab11d9825bbffd1f4270d164f5fe9dfb4ba564626e2d1630c0004970f733fabee5ae509c9c878ee9b50fb1d0e734979634da46a4bc00c7177f9a8f751bdccdcd0c05c3683ce9aee447b4e266db8e46d125f5f9b5c6745573ed1923d3697073780c3065559756cc53e4d7e9dac77d21dc771fca57995ba01696907b91aac8181eff51e5c5e3424bc8241fcc0d9daaf7db056e159058340101a24eabe63db5b63c7bae55dd30f50eb6ec8b5a1f4d2c0ddbfca3eed56e751c826f1536248eeb3ba5e7067573d3456e75f96eded7b621ad60daf75b3f9a80b24d22c01abbff57ba6d58d9195935d62aaecdb5d4d02346cbdff00f4deba1605568adac6b58d101bc2b8c1a2b5115101ad236497ffd2f44286f0a6a2ee1396bcff00d67adccc6af2dbff0069dfef3fc977fdf772e7afa466d2ff00b3643ea3ba1ed61831ff0054bb9c8aabb6b7d56343ebb016bda7820f2179b759c7ccfab7d46cfb3b8bf0dc43aa73b5da08fe6adfdefe43d439617a866c53ad3b37a9e935bdadaac7bdd0227b9fedabafa303a6e391b66d2342e25ceffa52a9b3afe27a74bcbda1f6092e91a1f05ce756ebed7b9e2bb0daf768defe4544224b34f269d9d3cefac150b83dadfd290011c42e97eabf4daeba3edf636736f1b6c79e5ad9dfe9b7fcff007ae2beaf741befbdb95960ed690e6b1df86e5e91d1c4e2fc1ee1f91498c0e3a1d98664f0fd5d0adaac0e10d811070a7617ffd3f435171d165757fad1d13a30233b29adb40918ecf7da7feb6dfa3ff5c5c1f5bff1a7d43241aba3d23098641bac87da7fa8dfe6aaff00c11396bdc759facbd17a33d95f50c915d8fd454d05ef8fdf756cf7359a7d25c7e2fd6de9bd77a8645198d1432d7018acb48873236ec73be8fabbbdeb81cacac8cabecc8c9b5d75cf82fb1e4b9c634d5ce403aa6c8710a5d13c26df46cafa8fd30d9bda1c1a750d0602b585f56ba5e290ea71c36c1f9e7dcefbdd2b83e9df597adf4d019464b9d4b7fc0dbef67c83bdccfec2e8f13fc63d7b437330cb48e5d4b811fe6d9b7fead45284bbdb209c7c9ec198cca69802161f51ebbd5ba2bd9998845d875bf6e5e2b8082d747e9ab7fd363dab3f33fc63619af6e26258f778da5ad6ff00d0f51cb96ea7d7fa875225b738575133e957a37fb5f9cf423090903b2a5289046efb963645391536ea5edb2b700439a4386be6d4695e09d2facf51e8f94dc9c0b9d53c11bd93ec789fa16d7f45ed72f4ae8dfe32ba366b5acea00f4fbcf25d2ea8fc2c6fb99ff5c6a9d8a9ffd9003842494d042100000000005500000001010000000f00410064006f00620065002000500068006f0074006f00730068006f00700000001300410064006f00620065002000500068006f0074006f00730068006f0070002000430053003300000001003842494d04060000000000070004000000010100ffe10ebd687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f003c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e203c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d2241646f626520584d5020436f726520342e312d633033362034362e3237363732302c204d6f6e2046656220313920323030372032323a34303a30382020202020202020223e203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e203c7264663a4465736372697074696f6e207264663a61626f75743d222220786d6c6e733a7861703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f2220786d6c6e733a64633d22687474703a2f2f7075726c2e6f72672f64632f656c656d656e74732f312e312f2220786d6c6e733a70686f746f73686f703d22687474703a2f2f6e732e61646f62652e636f6d2f70686f746f73686f702f312e302f2220786d6c6e733a7861704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f2220786d6c6e733a746966663d22687474703a2f2f6e732e61646f62652e636f6d2f746966662f312e302f2220786d6c6e733a657869663d22687474703a2f2f6e732e61646f62652e636f6d2f657869662f312e302f22207861703a437265617465446174653d22323031392d30342d31375431373a32373a34362b30353a333022207861703a4d6f64696679446174653d22323031392d30342d32355431313a33323a34382b30353a333022207861703a4d65746164617461446174653d22323031392d30342d32355431313a33323a34382b30353a333022207861703a43726561746f72546f6f6c3d2241646f62652050686f746f73686f70204353332057696e646f7773222064633a666f726d61743d22696d6167652f6a706567222070686f746f73686f703a436f6c6f724d6f64653d2233222070686f746f73686f703a49434350726f66696c653d22735247422049454336313936362d322e31222070686f746f73686f703a486973746f72793d2222207861704d4d3a496e7374616e636549443d22757569643a30363132444641443146363745393131423144424338453842423137314343442220746966663a4f7269656e746174696f6e3d22312220746966663a585265736f6c7574696f6e3d223732303030302f31303030302220746966663a595265736f6c7574696f6e3d223732303030302f31303030302220746966663a5265736f6c7574696f6e556e69743d22322220746966663a4e61746976654469676573743d223235362c3235372c3235382c3235392c3236322c3237342c3237372c3238342c3533302c3533312c3238322c3238332c3239362c3330312c3331382c3331392c3532392c3533322c3330362c3237302c3237312c3237322c3330352c3331352c33333433323b30423142324538454132424537444635373645424135333830433336463843462220657869663a506978656c5844696d656e73696f6e3d2238302220657869663a506978656c5944696d656e73696f6e3d2238302220657869663a436f6c6f7253706163653d22312220657869663a4e61746976654469676573743d2233363836342c34303936302c34303936312c33373132312c33373132322c34303936322c34303936332c33373531302c34303936342c33363836372c33363836382c33333433342c33333433372c33343835302c33343835322c33343835352c33343835362c33373337372c33373337382c33373337392c33373338302c33373338312c33373338322c33373338332c33373338342c33373338352c33373338362c33373339362c34313438332c34313438342c34313438362c34313438372c34313438382c34313439322c34313439332c34313439352c34313732382c34313732392c34313733302c34313938352c34313938362c34313938372c34313938382c34313938392c34313939302c34313939312c34313939322c34313939332c34313939342c34313939352c34313939362c34323031362c302c322c342c352c362c372c382c392c31302c31312c31322c31332c31342c31352c31362c31372c31382c32302c32322c32332c32342c32352c32362c32372c32382c33303b4545313043333530373234424530333035323630323935454243463535354239222f3e203c2f7264663a5244463e203c2f783a786d706d6574613e2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c3f787061636b657420656e643d2277223f3effe20c584943435f50524f46494c4500010100000c484c696e6f021000006d6e74725247422058595a2007ce00020009000600310000616373704d5346540000000049454320735247420000000000000000000000000000f6d6000100000000d32d4850202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001163707274000001500000003364657363000001840000006c77747074000001f000000014626b707400000204000000147258595a00000218000000146758595a0000022c000000146258595a0000024000000014646d6e640000025400000070646d6464000002c400000088767565640000034c0000008676696577000003d4000000246c756d69000003f8000000146d6561730000040c0000002474656368000004300000000c725452430000043c0000080c675452430000043c0000080c625452430000043c0000080c7465787400000000436f70797269676874202863292031393938204865776c6574742d5061636b61726420436f6d70616e790000646573630000000000000012735247422049454336313936362d322e31000000000000000000000012735247422049454336313936362d322e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595a20000000000000f35100010000000116cc58595a200000000000000000000000000000000058595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf64657363000000000000001649454320687474703a2f2f7777772e6965632e636800000000000000000000001649454320687474703a2f2f7777772e6965632e63680000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000064657363000000000000002e4945432036313936362d322e312044656661756c742052474220636f6c6f7572207370616365202d207352474200000000000000000000002e4945432036313936362d322e312044656661756c742052474220636f6c6f7572207370616365202d20735247420000000000000000000000000000000000000000000064657363000000000000002c5265666572656e63652056696577696e6720436f6e646974696f6e20696e2049454336313936362d322e3100000000000000000000002c5265666572656e63652056696577696e6720436f6e646974696f6e20696e2049454336313936362d322e31000000000000000000000000000000000000000000000000000076696577000000000013a4fe00145f2e0010cf140003edcc0004130b00035c9e0000000158595a2000000000004c09560050000000571fe76d6561730000000000000001000000000000000000000000000000000000028f0000000273696720000000004352542063757276000000000000040000000005000a000f00140019001e00230028002d00320037003b00400045004a004f00540059005e00630068006d00720077007c00810086008b00900095009a009f00a400a900ae00b200b700bc00c100c600cb00d000d500db00e000e500eb00f000f600fb01010107010d01130119011f0125012b01320138013e0145014c0152015901600167016e0175017c0183018b0192019a01a101a901b101b901c101c901d101d901e101e901f201fa0203020c0214021d0226022f02380241024b0254025d02670271027a0284028e029802a202ac02b602c102cb02d502e002eb02f50300030b03160321032d03380343034f035a03660372037e038a039603a203ae03ba03c703d303e003ec03f9040604130420042d043b0448045504630471047e048c049a04a804b604c404d304e104f004fe050d051c052b053a05490558056705770586059605a605b505c505d505e505f6060606160627063706480659066a067b068c069d06af06c006d106e306f507070719072b073d074f076107740786079907ac07bf07d207e507f8080b081f08320846085a086e0882089608aa08be08d208e708fb09100925093a094f09640979098f09a409ba09cf09e509fb0a110a270a3d0a540a6a0a810a980aae0ac50adc0af30b0b0b220b390b510b690b800b980bb00bc80be10bf90c120c2a0c430c5c0c750c8e0ca70cc00cd90cf30d0d0d260d400d5a0d740d8e0da90dc30dde0df80e130e2e0e490e640e7f0e9b0eb60ed20eee0f090f250f410f5e0f7a0f960fb30fcf0fec1009102610431061107e109b10b910d710f511131131114f116d118c11aa11c911e81207122612451264128412a312c312e31303132313431363138313a413c513e5140614271449146a148b14ad14ce14f01512153415561578159b15bd15e0160316261649166c168f16b216d616fa171d17411765178917ae17d217f7181b18401865188a18af18d518fa19201945196b199119b719dd1a041a2a1a511a771a9e1ac51aec1b141b3b1b631b8a1bb21bda1c021c2a1c521c7b1ca31ccc1cf51d1e1d471d701d991dc31dec1e161e401e6a1e941ebe1ee91f131f3e1f691f941fbf1fea20152041206c209820c420f0211c2148217521a121ce21fb22272255228222af22dd230a23382366239423c223f0241f244d247c24ab24da250925382568259725c725f726272657268726b726e827182749277a27ab27dc280d283f287128a228d429062938296b299d29d02a022a352a682a9b2acf2b022b362b692b9d2bd12c052c392c6e2ca22cd72d0c2d412d762dab2de12e162e4c2e822eb72eee2f242f5a2f912fc72ffe3035306c30a430db3112314a318231ba31f2322a3263329b32d4330d3346337f33b833f1342b3465349e34d83513354d358735c235fd3637367236ae36e937243760379c37d738143850388c38c839053942397f39bc39f93a363a743ab23aef3b2d3b6b3baa3be83c273c653ca43ce33d223d613da13de03e203e603ea03ee03f213f613fa23fe24023406440a640e74129416a41ac41ee4230427242b542f7433a437d43c044034447448a44ce45124555459a45de4622466746ab46f04735477b47c04805484b489148d7491d496349a949f04a374a7d4ac44b0c4b534b9a4be24c2a4c724cba4d024d4a4d934ddc4e254e6e4eb74f004f494f934fdd5027507150bb51065150519b51e65231527c52c75313535f53aa53f65442548f54db5528557555c2560f565c56a956f75744579257e0582f587d58cb591a596959b85a075a565aa65af55b455b955be55c355c865cd65d275d785dc95e1a5e6c5ebd5f0f5f615fb36005605760aa60fc614f61a261f56249629c62f06343639763eb6440649464e9653d659265e7663d669266e8673d679367e9683f689668ec6943699a69f16a486a9f6af76b4f6ba76bff6c576caf6d086d606db96e126e6b6ec46f1e6f786fd1702b708670e0713a719571f0724b72a67301735d73b87414747074cc7528758575e1763e769b76f8775677b37811786e78cc792a798979e77a467aa57b047b637bc27c217c817ce17d417da17e017e627ec27f237f847fe5804780a8810a816b81cd8230829282f4835783ba841d848084e3854785ab860e867286d7873b879f8804886988ce8933899989fe8a648aca8b308b968bfc8c638cca8d318d988dff8e668ece8f368f9e9006906e90d6913f91a89211927a92e3934d93b69420948a94f4955f95c99634969f970a977597e0984c98b89924999099fc9a689ad59b429baf9c1c9c899cf79d649dd29e409eae9f1d9f8b9ffaa069a0d8a147a1b6a226a296a306a376a3e6a456a4c7a538a5a9a61aa68ba6fda76ea7e0a852a8c4a937a9a9aa1caa8fab02ab75abe9ac5cacd0ad44adb8ae2daea1af16af8bb000b075b0eab160b1d6b24bb2c2b338b3aeb425b49cb513b58ab601b679b6f0b768b7e0b859b8d1b94ab9c2ba3bbab5bb2ebba7bc21bc9bbd15bd8fbe0abe84beffbf7abff5c070c0ecc167c1e3c25fc2dbc358c3d4c451c4cec54bc5c8c646c6c3c741c7bfc83dc8bcc93ac9b9ca38cab7cb36cbb6cc35ccb5cd35cdb5ce36ceb6cf37cfb8d039d0bad13cd1bed23fd2c1d344d3c6d449d4cbd54ed5d1d655d6d8d75cd7e0d864d8e8d96cd9f1da76dafbdb80dc05dc8add10dd96de1cdea2df29dfafe036e0bde144e1cce253e2dbe363e3ebe473e4fce584e60de696e71fe7a9e832e8bce946e9d0ea5beae5eb70ebfbec86ed11ed9cee28eeb4ef40efccf058f0e5f172f1fff28cf319f3a7f434f4c2f550f5def66df6fbf78af819f8a8f938f9c7fa57fae7fb77fc07fc98fd29fdbafe4bfedcff6dffffffee000e41646f626500640000000001ffdb0084000604040405040605050609060506090b080606080b0c0a0a0b0a0a0c100c0c0c0c0c0c100c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c010707070d0c0d18101018140e0e0e14140e0e0e0e14110c0c0c0c0c11110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc00011080050005003011100021101031101ffdd0004000affc401a20000000701010101010000000000000000040503020601000708090a0b0100020203010101010100000000000000010002030405060708090a0b1000020103030204020607030402060273010203110400052112314151061361227181143291a10715b14223c152d1e1331662f0247282f12543345392a2b26373c235442793a3b33617546474c3d2e2082683090a181984944546a4b456d355281af2e3f3c4d4e4f465758595a5b5c5d5e5f566768696a6b6c6d6e6f637475767778797a7b7c7d7e7f738485868788898a8b8c8d8e8f82939495969798999a9b9c9d9e9f92a3a4a5a6a7a8a9aaabacadaeafa110002020102030505040506040803036d0100021103042112314105511361220671819132a1b1f014c1d1e1234215526272f1332434438216925325a263b2c20773d235e2448317549308090a18192636451a2764745537f2a3b3c32829d3e3f38494a4b4c4d4e4f465758595a5b5c5d5e5f5465666768696a6b6c6d6e6f6475767778797a7b7c7d7e7f738485868788898a8b8c8d8e8f839495969798999a9b9c9d9e9f92a3a4a5a6a7a8a9aaabacadaeafaffda000c03010002110311003f00efd439260d53157827fce417e6c5f584a9e59f2f5dfa32712753bb85806ab6c2056f96f271ff00572b9cba36463d5e1fa4685e67d48faf6704b775352e0718ebfeb1fb5f4651294437c624b20b6fcaff003d5fb72b9892da21d04a457e5dce43c588e4cbc3279acbdfcbcf36e9d0b1b88d66817662a799e23a1fe6db078b16431943f96fcddaef93eeb9d8cbc1037292ddc7243ee3b8ebf64659195b54a0fa1bf2e3f3a34bf31da94d51a3b2bc12048dfa44e1ba5492dc5abfcc72f13e85a4c3b9e9c18100f51db2c6b5d5ae2aff00ffd0f40d324c18f79e7ce1a6794bcb777ac5f303e92916f057e29a623e08d7fd63d7f95701952622df22f94f42d53cefe679f54d4158db194cb772ee1496355897fa7eca662e59f08f32e5e2859be8fa0b4ad3ecad608e1b7882ac600000a014cc3720a62eaa074eb8a843dc2432271e3bf71912c83cd7f30bc89a7ddd94f796e9e8dcc6a5b92ec1be63278a64144e2087895b5d5c585c37a4ed1ca2aa00dba8a1ad333f9b83c9f5ff00e4bf9ca0f307946ded9e62fa96968905e237daa11fbb7ff29580a72fe65cb319b0d731bbd0d72c60ff00ffd1f411c93078e7fce4b7393ca1690945101b9f5259c91c95634278a0eb573f0d72aca6a9b31862be49bfd1f48f2969892911b491999a340598f324d4802b985304973a1b065da179bfcbda85c2da4323a4cdf65258de22dfeaf302b8386b9aa71a95e5b5842d2189a6343c514804d3c09db0d0509558ead7daac6ed0e9a61e0683d4722a4f4a12a06486032e48e3039a0351669da7d3ef21682668cfc2de04750475cc7944c4eed8082367cf5afd94763aa4a1b8f28e4689c1f119998cd871b20a2f55ff009c66ba9cf997538e35a41f561eab6fd435557c3ab3119763e6d33e4fa4d32f697fffd2f41bd00c930790ff00ce4568f75a87942de4b5fef23b91131a80024a376de83e1e395661c8b6e2ea181796a4d46cf4a9a3169eb5cdbdebd940ac0848e08557817dba53f6a8dc99b3167cdca872643a7eb37979a1c726a1a72d85c3353d2db9860c3891c7a723f08a7c5919d014376500799d938d42fd85dc30a0e12cf11f4ab56dd3aedbee01caecb3e15ba4c5aac45a4677725b955aa197e0a6d4f84af2f8b7ccac5944472ddab24493cf6465d437d730ab5d14f59149120156dfa0df31f2c8c8d965100727ce9f997a4c9a7f9b1e1327349d5660db56ae4f2aff00b2cbf09f4b5651ea67ff00f38d7717a7cd17702a14b716f2497029fb4195577fd59743ea699f27d33165ed2fffd3f41c83e1c9b0629e7ff2e9f30795751d2cc8504f0b710a0125d4724a13f67e219198b0ca268b00f2ddb2fe86b291e36699e2437440e4cd30408c587f35577cd7cb72e6c76475ed8facf0f38c44a5c7056a16db7e47c3db2326c8aed4edcdbdd43213cd47da00ee00fda195914598dd3d86090a068d919580a39535a7d0465e0b510976b12a5ba71ea48249ee4f8e5591945e5927965b5df3b4b7d72826b4b4855380dcf3356dfb536deb844aa3490071597a9fe5f7972d74fd4353bfb7816de0b8f4adeda35000e11d5dfa7f96f999a58fa6dc3d4cbd54f43841db325c77ffd4f4330a8c9b042ca295c55e672a1d2f59bab16528858cb01e8191cd6a3e9cd7ce3c24b9d0958052bd7ae93505f4237904b190544248626be232926db86ca69a013309e532b4c3667694a1643bf00a0f13d3734c3c29e229d8d6120956065310a002bf86374c79a4fe62d40b5f25b250b3293be44a8639e58d7521f37bf97d6da492f75493d58e58f8958e38578bb4b53f6452a3fcacb2188c9ae59045ed9616f1c51a4518e28828a336511429c026cda7108a0c2aff00ffd5f439e99362a1328c50c0bf3360922d36df548c6f61283291b5237d8d4ff2f2a5728cf1b16db86545e7b7d649ac5a4ffa3f509addf9d268a260ad4eb4269cbbf639af36ecb1117ba9d9f94ede68e3b69e69a4a2f1e46a1cf8d5c6ff0071c788b7c8c06fbc9389ac740f2f69eca12b7457e06762f26dd3762682b869c69e4e22c275dfcc0b45bd59510fd65940715a0523b0f1c98c64b51980f48fcaff002d5bdbd8fe9bb88abacdf2f09e56fb491f22fe9af86eff001ff366669c6ce2e7e6f47b74a532f694c13618abffd6f4364d82c945462a96dfdadbdd5bcb6d711acb04c8639626150cac2841c4857cdbe72d3f57fcbdf314e6c6469b477657b5924f88c4081fba97bb01d11f30b2407153978e66ad3f87cffa40b7b495a68d679d7934b514069b8a93f0e51c05c8e30f38f3679fa3964992dee0dd4ee42a0ea09a1049a7f0cba18da2793b95ff002f7c877f7b7f1ea7aa2304422448a4ee6b50581c19327409843a97d21e4f5074b34e82671fab2fd2fd0d1a8fa99444b4a66434a2074c55ffd7f42d72c60b243b62ac37ce7f995e4bf29cd141aeea2b05ccdbadb46ad34c108243b469565434d99b02bc7f4bfcdaf2df9d35fbfb3d5516ca1b990269915c95e2f0850bc19bec894b067e3fe5f1fd9cc3d440dd872b0cc014bb55fc8ff2cbdc7ac8922c4df108d1885df7ec7f5655e248367044a67a37e5af95b4d224b3d3d5271d267abbfd05ab4c819c8f36422032e834e8ad2cc850057a8c15b2db09f31f9e7cd9e519a0d5b4b65bbd1a098a6ada54814064723f7d1bd39a3af4ebc7fc9cbb4d968f096bcf8ec5bdc74ebfb3beb64bab49927b79143249132bafc42b4aa922b99ee1a3396d4c55ffd0eb3e6ffccff24794d1c6b3a9c4976aa596c223eadcbfb08d7ecd7fe2ce0b963078379d7fe72975fd451adbcab6634884d435ecfc67b923b145a7a517fc946c169a7896abaa6a1a95fcf7da85ccb7979310d2dc4ce5e46236dd9b7c8a506d461e38ab26f2efe65f9d7cbea91596a2f2da274b3b9fdf434f001be24ff60cb909630590990f47d2bfe723e0e0a9ab68ec8e29ca4b475607fd8c9c48ff0083ca4e9cf42da33044eb1ff391ba435bf0d334ab8965236372c91a57df81918e0f00f529f18773cb3ccbe7df30f985992ea4582d19b9fd5200552bdb9124b3ff00b2396e3c318f26b9e53250f2bf9cfcc7e54d4e3d4743bc7b69548f561049865506a5258fecbab7fc17f2e5ad6fa57c99ff003929e4dd6234875c56d0ef8d3933d65b527c448a3927fcf45ff6792b453fffd9, '2022-04-15 17:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `job_list`
--

CREATE TABLE `job_list` (
  `id` int(11) NOT NULL,
  `j_list` varchar(255) NOT NULL,
  `j_posted` date NOT NULL,
  `j_cate` varchar(55) NOT NULL,
  `c_name` varchar(25) NOT NULL,
  `j_expe` varchar(50) NOT NULL,
  `j_locat` varchar(255) NOT NULL,
  `j_qulif` varchar(25) NOT NULL,
  `j_salary` varchar(25) NOT NULL,
  `j_description` varchar(255) NOT NULL,
  `timing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_list`
--

INSERT INTO `job_list` (`id`, `j_list`, `j_posted`, `j_cate`, `c_name`, `j_expe`, `j_locat`, `j_qulif`, `j_salary`, `j_description`, `timing`) VALUES
(1, 'IT Professional', '2022-06-01', 'IT Profesinal', 'Parment', '0-2years', 'A- 8 & 9, Block A, Sector 60, Noida, Uttar Pradesh 201301', 'Guradution', '15k-20k', 'Basic knowledge of procurement,Communication skills,Basic excel', '9:00-6:00 PM'),
(2, 'Accounting', '2022-06-01', 'accounting', 'manager', '1yre', 'No:3, Madipakkam Main Road, Velachery, Chennai, Tamil Nadu 600042', '10+2', '12k-20k', 'Basic knowledge of procurement,Communication skills,Basic excel', '9:00-6:00 PM'),
(3, 'Digital Marketing', '2022-06-01', 'digital markatin', 'manager', '3yrs', 'S NO 197, MANTRI DEVELOPERS PRIVATE LIMITED, , Pune, Maharashtra, 411014, PUNE, Maharashtra, India', '10+2', '3k-4k', 'Basic knowledge of procurement,Communication skills,Basic excel', '9:00-6:00 PM'),
(4, 'Web Designed & Developeme', '2022-06-01', 'web development and desgi', 'developer', '1yre', 'No:3, Madipakkam Main Road, Velachery, Chennai, Tamil Nadu 600042', '10+2', '12k-20k', 'Basic knowledge of procurement,Communication skills,Basic excel', '9:00-6:00 PM'),
(5, 'Other', '2022-06-01', 'calling', 'callers', '3yrs', 'sdcjasdjcandj', '10+2', '3k-4k', 'cnkasjocasci', '9:00-6:00 PM'),
(6, 'IT Professional', '2022-06-28', 'Search Engine Marketing S', 'LivNest Technologies Priv', '2 years', 'Varun Arcade 1B 112, Manpada. Opp. R Mall, THANE, Maharashtra, India', 'Any Graduate', '4,50,000 - 7,50,000 P.A.', 'Plan, create, and manage PPC campaigns across a variety of channels', '9:00AM to 6:00 PM'),
(7, 'IT Professional', '2022-06-28', 'HCL IS HIRING FOR INVOICE', 'HCL', '0 - 3 years', 'A- 8 & 9, Block A, Sector 60, Noida, Uttar Pradesh 201301', 'Any Graduate', '?2,25,000 - 4,00,000 P.A.', 'Basic knowledge of procurement,Communication skills,Basic excel', '12:00PM to 5:00 PM'),
(8, 'IT Professional', '2022-06-29', 'Talent Researcher- StackR', 'StackRank Search Labs Pvt', '1 - 4 years', 'No:3, Madipakkam Main Road, Velachery, Chennai, Tamil Nadu 600042', 'Any Graduate', '?2,25,000 - 4,00,000 P.A.', 'If you\'re ready for a change or ready to start the new chapter in your career with a company that is Focused, Passionate & Intentional about Delivering Excellence, then StackRank is the company! If your serious about having fun but even more serious about', '12:00PM to 5:00 PM'),
(9, 'IT Professional', '2022-06-29', 'Integration Engineer', 'QualSquad Infotech Pvt Lt', '1 - 5 years', 'S NO 197, MANTRI DEVELOPERS PRIVATE LIMITED, , Pune, Maharashtra, 411014, PUNE, Maharashtra, India', 'Any Graduate', '5,00,000 - 8,00,000 P.A.', 'Bash script,Python,MySQL & Elastic Search,REST, JSON, XML', '12:00PM to 5:00 PM'),
(10, 'IT Professional', '2022-06-09', 'ITeS Executive', 'MG Tathya Solutions Pvt L', '0 - 1  years', 'PREMISES NO. 02-360,E-5, 5TH FLOOR,,RISHI TECH PAR, K,NEW TOWN, Kolkata, West Bengal, India', 'Any Graduate', '1,00,000 - 1,25,000 P.A.', 'Candidates must have a good knowledge of MS Office (Word, Excel),?', '9:00AM to 6:00 PM'),
(11, 'IT Professional', '2022-06-09', 'IT Recruiter- Salary upto', 'TUTREE INDIA TECHNOLOGIES', '1 - 2  years', 'B-55, Sector-2, Noida, Uttar Pradesh 201301 Contact HR- 8527867004', 'B.Tech/B.E. in Computers', 'Not Disclosed', 'Manage full cycle recruiting for multiple, complex searches, creating innovative sourcing strategies and engagement to bring the best talent to each role.', '9:00AM to 6:00 PM'),
(12, 'IT Professional', '2022-06-28', 'SEO Executive', 'CEDCOSS Technologies Pvt ', '0-1years', '3/460, Vishwas Khand Rd, Opposite to Nehru Enclave, Vishwas Khand, Gomti Nagar, Lucknow, Uttar Pradesh 226010', 'Any Graduate', '1,25,000 - 2,50,000 P.A.', '?Knowledge of on-page, off-page and link building.- Familiar with niche-based guest posting.- Perform keyword research for SEO.- Experience in managing relevant SEO tools.', '9:00AM to 6:00 PM'),
(13, 'IT Professional', '2022-06-28', 'Integration Engineer', 'QualSquad Infotech Pvt Lt', '1-5years', 'S NO 197, MANTRI DEVELOPERS PRIVATE LIMITED, , Pune, Maharashtra, 411014, PUNE, Maharashtra, India', 'Any Graduate', '?2,25,000 - 4,00,000 P.A.', 'Bash script,Python,MySQL & Elastic Search,REST, JSON, XML', '12:00PM to 5:00 PM'),
(14, 'IT Professional', '2022-06-29', 'US IT Recruitement Team L', 'Technologies India Privat', '1-5years', 'No:3, Madipakkam Main Road, Velachery, Chennai, Tamil Nadu 600042', 'Any Graduate', '?2,25,000 - 4,00,000 P.A.', 'If you\'re ready for a change or ready to start the new chapter in your career with a company that is Focused, Passionate & Intentional about Delivering Excellence, then StackRank is the company! If your serious about having fun but even more serious about', '12:00PM to 5:00 PM'),
(15, 'IT Professional', '2022-06-29', 'US IT Recruitement Team L', 'Technologies India Privat', '1 - 5 years', 'S NO 197, MANTRI DEVELOPERS PRIVATE LIMITED, , Pune, Maharashtra, 411014, PUNE, Maharashtra, India', 'Any Graduate', '5,00,000 - 8,00,000 P.A.', 'Bash script,Python,MySQL & Elastic Search,REST, JSON, XML', '12:00PM to 5:00 PM'),
(16, 'IT Professional', '2022-06-09', 'SEO Analyst In MNC IT', 'ABP EMPOWER', '0 - 1  years', 'PREMISES NO. 02-360,E-5, 5TH FLOOR,,RISHI TECH PAR, K,NEW TOWN, Kolkata, West Bengal, India', 'Any Graduate', '1,00,000 - 1,25,000 P.A.', 'Candidates must have a good knowledge of MS Office (Word, Excel),?', '9:00AM to 6:00 PM'),
(17, 'IT Professional', '2022-06-09', 'Sr. Leadership role- Head', 'Symmetrical Global Search', '1 - 2  years', 'B-55, Sector-2, Noida, Uttar Pradesh 201301 Contact HR- 8527867004', 'B.Tech/B.E. in Computers', 'Not Disclosed', 'Manage full cycle recruiting for multiple, complex searches, creating innovative sourcing strategies and engagement to bring the best talent to each role.', '9:00AM to 6:00 PM'),
(18, 'Accounting', '2022-06-28', 'Public Financial Manageme', 'NATHAN ECONOMIC CONSULTIN', '6-10years', 'Adwave Towers, Block D, 3rd Floor, No. 9, South Boag Road, T Nagar, Chennai - 600017.', 'MBA/PGDM in Finance, ICWA', 'Not Disclosed', 'Nathan is seeking a Public Financial Management Expert (PFME) with experience in publicprivate partnerships and multi-sectoral engagement in the context of TB elimination program.', '9:00AM to 6:00 PM'),
(19, 'Accounting', '2022-06-28', 'Integration Engineer', 'QualSquad Infotech Pvt Lt', '1-5years', 'S NO 197, MANTRI DEVELOPERS PRIVATE LIMITED, , Pune, Maharashtra, 411014, PUNE, Maharashtra, India', 'Any Graduate', '?2,25,000 - 4,00,000 P.A.', 'Bash script,Python,MySQL & Elastic Search,REST, JSON, XML', '12:00PM to 5:00 PM'),
(20, 'Accounting', '2022-06-29', 'Station Manager', 'Super Vault Private Limit', '0-3years', '21, Ground Floor, Kapila, 1st Main Road,, Bengaluru, Bengaluru Urban, Karnataka,, 560097, BANGALORE, Karnataka, India', 'Any Graduate', '?2,25,000 - 4,00,000 P.A.', 'Collaborate with the Finance and Purchase department to maintain accounts payable/receivable.', '12:00PM to 5:00 PM'),
(21, 'Accounting', '2022-06-29', 'Account Executive', 'ANTINO LABS PRIVATE LIMIT', '1-4years', 'Gurgaon/Gurugram( Sohna ),?Delhi / NCR', 'Any Graduate', '5,00,000 - 8,00,000 P.A.', 'Maintain all records like Vouchers, Receipts, Bills, and Payments.', '12:00PM to 5:00 PM'),
(22, 'Accounting', '2022-06-29', 'Account Executive', 'Apple Auto Agency Pvt.Ltd', '1-3years', 'Bangalore/Bengaluru( Banashankari, Giri Nagar, Srinagar, Raja Rajeshwari Nagar, Kanakpura Road, BTM Layout, Madiwala, 9th Block Jayanagar )', 'Any Graduate', '5,00,000 - 8,00,000 P.A.', 'maintaining books of accounts, maintaining Cashier and Account Payables.', '12:00PM to 5:00 PM'),
(23, 'Accounting', '2022-06-29', 'Account Executive', 'Apple Auto Agency Pvt.Ltd', '1-4years', 'Gurgaon/Gurugram( Sohna ),?Delhi / NCR', 'Any Graduate', '5,00,000 - 8,00,000 P.A.', 'accounts and Financial Statements', '12:00PM to 5:00 PM'),
(24, 'Accounting', '2022-07-04', 'Account Executive', 'Zen Lifestyle Private Lim', '1 - 3 years', 'B Wing, 1701, Mondeal Heights Near Novotel Hotel, S.G. Highway Ahmedabad 380015 Gujarat, India', 'Any Graduate', '20k-30k', 'Maintain all records like Vouchers, Receipts, Bills, and Payments. Bank Reconciliation, Payment Collection. Monthly GST Working. Reconciliation of Sundry Debtors & Creditors Payment follows up by telephonic & mailing Daily Stock maintains. Handling petty ', '9:00AM - 9:40PM'),
(25, 'Accounting', '2022-07-04', 'Account Executive', 'Zen Lifestyle Private Lim', '1 - 3 years', 'B Wing, 1701, Mondeal Heights Near Novotel Hotel, S.G. Highway Ahmedabad 380015 Gujarat, India', 'Any Graduate', '20k-30k', 'Maintain all records like Vouchers, Receipts, Bills, and Payments. Bank Reconciliation, Payment Collection. Monthly GST Working. Reconciliation of Sundry Debtors & Creditors Payment follows up by telephonic & mailing Daily Stock maintains. Handling petty ', '9:00AM - 9:40PM'),
(26, 'Accounting', '2022-07-01', 'Accounts Executive Receiv', 'Lamiwood ( TRADEMARK OF V', '1 - 3 years', 'DEV CINEMA COMPLEX,,,MEHRAULI RAOD,GURGAON, GURGAON, Haryana, India', 'Any Graduate', '20k-30k', 'Monitor accounts to identify outstanding debts Update the payment in Tally Investigate historical data for each debt or bill Find and contact clients to ask about their overdue payments Take actions to encourage timely debt payments Process payments and r', '11.00 AM - 4.30 PM'),
(27, 'Other', '2022-07-01', 'Hiring For Account Manage', 'Anand Rathi Shares & Stoc', '1 - 2 years', '10 TH FLOOR,A-WING,10 TH FLOOR,A-WING,EXPRESS ZONE, MUMBAI, Maharashtra, India', 'Any Graduate', '3,75,000 - 4,25,000 P.A.', 'Prospecting - Existing inactive base and new partners Fixing the meeting with Prospect & BDM (One to one or Webinar) Shortlisting interested Partners Handover to Farmer for Training Follow up for activation Account opening support / Documentation related ', '11.00 AM - 4.30 PM'),
(28, 'Accounting', '2022-07-01', 'Accountant and Data Entry', 'Rotomac Infoservices', '2 yr', 'Kanpur, Lucknow, Delhi / NCR (WFH during Covid)', 'Any Graduate', '3,75,000 - 4,25,000 P.A.', 'We are Looking For Accounts Executive Candidate Should Be Have Good Knowledge OF Accounts Activty Have Knowledge Of GSt Work Have Knowledge Of Tally ERP', '11.00 AM - 4.30 PM'),
(29, 'Accounting', '2022-07-01', 'Accountant', 'Trijotech Software Consul', '1 - 4 years', 'Noida, New Delhi', 'Any Graduate', 'dis closed', 'Manage all day to day accounting transactions -Handle monthly, quarterly and annual closings -Reconcile accounts payable and receivable -Compute taxes and prepare tax returns, GST Fillings -Manage balance sheets and profit/loss statements', '09.00 AM - 5.30 PM'),
(30, 'Accounting', '2022-07-01', 'Accountant', 'NEONIX SOLUTIONS', '0 - 5 years', 'Hyderabad/Secunderabad, Delhi / NCR, Mumbai (All Areas) (WFH during Covid)', 'Any Graduate', '₹ 1,50,000 - 4,50,000 P.A', 'Roles and Responsibilities:  1. To maintain data entry and books of accounts  2. Book Keeping  3. Coordinating meetings with stakeholders.  4.Handle the responsibility of plant', '9:00AM - 5:40PM'),
(31, 'Accounting', '2022-07-02', 'Office Assistant & Accoun', 'Global Corporate Xcellenc', '1 - 2 years', 'Delhi / NCR', 'Any Graduate', '1,25,000 - 2,00,000 P.A.', 'A leading organization based in West Delhi engaged in organizing corporate level conferences, training and award programs is urgently looking for Graduates having 2-3 years experience, English Typing min. 40 w.p.m., excellent communication skills in Hindi', '09:00AM - 06:40PM'),
(32, 'Other', '2022-07-22', 'Junior Accountant', 'Newone', '1 - 2 years', 'DEV CINEMA COMPLEX,,,MEHRAULI RAOD,GURGAON, GURGAON, Haryana, India', 'Any Graduate', 'Not Disclosed', 'kcghghlctyclgh', '9:30-9:40'),
(77, 'Accounting', '2022-07-01', 'Accountant and Office Adm', 'New Bharat Impex', '1 - 3 years', 'New Delhi( Netaji Subhash Place )', 'Any Graduate', '2,00,000 - 2,50,000 P.A.', '1) Defining and implementing front desk (reception) objectives and procedures.  2) Tending to guests, questions, and providing customer service.  3) Maintaining front desk, office supplies, and equipment.  4) Managing budgets, records, and contracts.  5) ', '09.00 AM - 5.30 PM'),
(78, 'Accounting', '2022-07-02', 'Accountant and Office Adm', 'E.BIZ SOLUTION PRIVATE LI', '1 - 3 years', 'Noida, Delhi / NCR', 'IT Professional', '₹ 2,00,000 - 5,00,000 P.A', ' Collecting & entering data in databases and maintaining accurate records of valuable company information Entering, doing research & sorting data in a particular format into computer system,Verifies & corrects errors to ensure accuracy of completed work,A', '9:00AM - 5:40PM'),
(79, 'Accounting', '2022-07-02', 'Sales Coordinator Female', 'E.BIZ SOLUTION PRIVATE LI', '0 - 3 years', 'Noida, Delhi / NCR', 'IT Professional', '₹ 1,00,000 - 6,00,000 P.A', 'Job Title: SALES CoordinatorBusiness Unit:Radio FEMALE ONLY DivisionDomain:TelecommunicationsLocation:Delhi,NCRDegree of Travel required to:MediumDepartment:CRM / Customer Support/ TechnicalCTC3 to 4 lacsNumber of openings3 Purpose of JobResponsible for e', '9:00AM - 5:40PM'),
(80, 'Digital Marketing', '2022-07-02', 'Digital Marketing Executive', 'EduSpace Technologies Pvt', '0 - 1 years', 'Noida', 'IT Professional', 'Not Disclosed', 'Managing social media accounts. Assisting in blogs and media postings. Knowledge about Google algorithm updates. Knowledge of marketing analysis and competitor analysis Working on on-page and off-page optimization', '9:00AM - 5:40PM'),
(81, 'Digital Marketing', '2022-07-02', 'Digital Marketer Executive', 'BigStep Technologies Pvt.', '0 - 4 years', 'Remote (Hiring office located in Gurgaon/Gurugram)', 'IT Professional', 'Not Disclosed', '', '-Strong understanding of current online marketing concepts, strategy and best practices -Strong Interpersonal, Decision making, and Problem solving skills -Experience in ecommerce, SEO, PPC, Email marketing, and social media -Impeccable command over gramm'),
(82, 'Digital Marketing', '2022-07-02', 'Digital Marketing Executive', 'Adaan Digital Solutions P', '1 - 3 years', 'Delhi / NCR', 'IT Professional', 'Not Disclosed', 'Good with collecting quantitative and qualitative data from marketing campaigns Knowledge of social platforms and analytics tools like Google Analytics and Facebook Insights The candidate must have Good English Communication skills, both oral and written.', '9:00AM - 5:40PM'),
(83, 'Digital Marketing', '2022-07-02', 'Freshers- Urgent hiring For Digital Marketing Executive', 'TechSense Labs Pvt Ltd4.6', '0 - 1 years', 'Noida( Sector-142 Noida )', 'IT Professional', '1,25,000 - 2,50,000 P.A.', '- Hiring for MBA/B.Tech Freshers. 2021-2020 passouts - Manage company Linkiedin marketing, email marketing nd other marketing activities.', '9:00AM - 5:40PM'),
(84, 'Digital Marketing', '2022-07-02', 'Digital Marketing Executive', 'Spectrum Infra Ventures P', '1 - 4 years', 'New Delhi', '', ' 1,00,000 - 2,50,000 P.A.', 'Basic Knowledge of Social Media + Digital Marketing Overseeing and developing creative marketing campaigns Maintaining websites, SEO, health and status of websites Managing campaigns on social media, monitor progress and optimize when needed Run social me', '9:00AM - 5:40PM'),
(85, 'Digital Marketing', '2022-07-02', 'Digital Marketing Intern', 'SG Services', '0 - 1 years', 'Noida, Delhi / NCR', 'IT Professional', '₹ 50,000 - 60,000 P.A.', 'Call / Whats App Deepika - 8810431517   Unpaid Internship   Job Summary 1. Creating new concepts to enhance visibility. 2. Making SEO plans and executing them to build traffic on the website. 3. Working on on-page and off-page optimization. 4. Assisting i', '9:00AM - 5:40PM'),
(86, 'Digital Marketing', '2022-07-02', 'Associate-Digital Marketing', 'Accenture4.2(29529 Review', '0 - 1 years', 'Gurgaon/Gurugram', 'IT Professional', 'Not Disclosed', 'Accenture is a global professional services company with leading capabilities in digital, cloud and security. Combining unmatched experience and specialized skills across more than 40 industries, we offer Strategy and Consulting, Technology and Operations', '9:00AM - 5:40PM'),
(87, 'Digital Marketing', '2022-07-02', 'Digital Marketer', 'Excellence Technosoft Pri', '0 - 1 years', 'Noida', 'IT Professional', '1,50,000 - 2,50,000 P.A.', 'FRESHER GRADUATES FOR DIGITAL MARKETING Graduate: Any Experience: Fresher MALE candidates Employment: Full-Time Joining: Immediate Contact: 9870413312 or mail isha@excellencetechnologies.in', '9:00AM - 5:40PM'),
(88, 'Digital Marketing', '2022-07-02', 'Hiring For Paid Internship Female Digital Marketing - W', 'JCI4.0(1941 Reviews)', '0 - 1 years', 'Noida', 'IT Professional', 'Not Disclosed', 'Call / Whats App - 8800431517   Urgently Hiring For Paid Internship   Duration - 3 Months   Stipend - 2 K   Need Candidate with basic knowledge   Excellent Communication Required', '9:00AM - 5:40PM'),
(89, 'Digital Marketing', '2022-07-02', 'Digital Marketing Executive (Immediate joiner)', 'Venture Supply Chain Pvt.', '0 - 1 years', 'Delhi / NCR( Mahipalpur Extension )', 'IT Professional', '₹ 2,00,000 - 3,75,000 P.A', 'Creating a strong performance marketing strategy & executing the plan across platforms ( Facebook, Google Search, Display, Youtube, Whatsapp, Telegram, etc.) RoleDigital Marketing - Other Industry TypeCourier / Logistics Functional AreaMarketing & Communi', '9:00AM - 5:40PM'),
(90, 'Digital Marketing', '2022-07-02', 'Internship Trainee Digital Marketing & Tourism', 'MORNIS INTERNATIONAL LLP3', '0 - 1 years', 'A-148,DDA FLATS,,BLOCK-A Uttam Nagar , NEW DELHI, Delhi, India', 'IT Professional', '₹ 50,000 - 70,000 P.A.', 'Job Summary ( Internship given by Experience person )  1. Creating new concepts to enhance visibility.  2. Making SEO plans and executing them to build traffic on the website.  3. Working on on-page and off-page optimization.  4. Assisting in the developm', '9:00AM - 5:40PM'),
(91, 'Digital Marketing', '2022-07-02', 'Digital Marketing Intern', 'A Media Company', '0 - 1 years', 'Gurgaon/Gurugram( Sohna Road )', 'IT Professional', '₹ 1,50,000 - 2,00,000 P.A', 'We are looking for graduated freshers for Digital Marketing Intern role having good understanding of social media platforms. The intern will be responsible for planning and publishing content on all of our social media platforms.', '9:00AM - 5:40PM'),
(92, 'Digital Marketing', '2022-07-02', 'Digital Marketing Managers, SEO & ORM Executives & Grap', 'Orion PR and Digital Pvt.', '0 - 1 years', 'New Delhi, Hyderabad/Secunderabad, Mumbai (All Areas)', 'IT Professional', 'Not Disclosed', 'We are looking for high potential candidates across functions in Digital Marketing and Social media with decent experience in:   1. Digital Marketing and Social Media Management with good exposure to developing Digital Strategies & Campaigns and Client Se', '9:00AM - 5:40PM'),
(93, 'Digital Marketing', '2022-07-02', 'Digital Marketing Intern', '', 'SGS4.1(929 Reviews)', 'Noida', 'IT Professional', '₹ 50,000 - 60,000 P.A.', 'Call / Whats App - 8800431517  This Internship is unpaid  With Bonus of 5 K  Track, report, and analyze campaign performance to foresee and resolve issues before they occur daily and proactively Lead and manage media campaigns with definite conclusions an', '9:00AM - 5:40PM'),
(94, 'Digital Marketing', '2022-07-02', 'Digital Marketing Intern', 'Global Solution Enterpris', '0 - 1 years', 'New Delhi, Gurgaon/Gurugram, Delhi / NCR (WFH during Covid)', 'IT Professional', '₹ 3,75,000 - 5,50,000 P.A', 'Create email and social media campaigns. Identify, prepare and deliver appropriate and engaging content and marketing messages to the target market groups. Acquire, retain and convert customers as the primary goal.', '9:00AM - 5:40PM'),
(95, 'Digital Marketing', '2022-07-02', 'Digital Marketing Executive', 'Saffron Institute', '0 - 1 years', 'Faridabad, Delhi / NCR', 'IT Professional', '₹ 2,75,000 - 3,00,000 P.A', '3+yrs exp Develop Strong &Innovative Digital Marketing Strategies using SEO,SMO, PPC ,increase website traffic, create & update Graphic & Video Content applying Latest Marketing tech,lead generation & analysis, dynamic personality local Resident pref', '9:00AM - 5:40PM'),
(96, 'Digital Marketing', '2022-07-02', 'Digital Marketing Executive', 'VIANAM HEALTHTECH PRIVATE', '0 - 1 years', 'Gurgaon/Gurugram', 'IT Professional', 'Not Disclosed', 'About the role: As an SEM executive, you will be a part of the Digital Marketing team and will be responsible for developing, managing, and implementing paid search, display, social, and retargeting campaigns across google and other paid platforms. Workin', '9:00AM - 5:40PM'),
(97, 'Digital Marketing', '2022-07-02', 'Digital Marketing Specialist', 'GLOBIRA MEDICAL SERVICES ', '0 - 1 years', 'Delhi / NCR', 'IT Professional', ' 1,25,000 - 2,00,000 P.A.', 'Planning digital marketing campaigns, including web, SEO/SEM, email, social media and display advertising Maintaining our social media presence across all digital channels Measuring and reporting on the performance of all digital marketing campaigns', '9:00AM - 5:40PM'),
(98, 'Digital Marketing', '2022-07-02', 'Digital Marketing Specialist', '', '0 - 1 years', 'New Delhi( Rohini, AD Block Pitampura, Wazirpur )', '', '₹ 1,75,000 - 3,00,000 P.A', '₹ 1,75,000 - 3,00,000 P.A.', '9:00AM - 5:40PM'),
(99, 'Digital Marketing', '2022-07-02', 'Digital Marketer - Internet/Online', 'Primo Hiring Hiring for L', '0 - 1 years', 'Delhi / NCR', 'IT Professional', 'Not Disclosed', 'Delhi / NCR', '9:00AM - 5:40PM'),
(100, 'Web Designed & Developeme', '2022-07-02', 'Frontend Web Developer', 'Mixpanel', '0 - 1 years', 'Remote', 'IT Professional', 'Not Disclosed', 'Mixpanel engineering is a team that works quickly, prioritizing getting value to customers and iterating to make those experiences even better We offer the most powerful product analytics tool while still focusing on making the user experience delightful ', '9:00AM - 5:40PM'),
(101, 'Web Designed & Developeme', '2022-07-02', 'PHP Web Developer', 'Spirant Communication Pvt', '0 - 1 years', 'Noida( Sector-132 Noida )', 'IT Professional', 'Not Disclosed', 'Write \"clean\", well-designed code  Experience in developing and designing websites  Contribute in all phases of the development lifecycle  Able to work independently  Well versed in database management', '9:00AM - 5:40PM'),
(102, 'Web Designed & Developeme', '2022-07-02', 'Web Developer', 'Alligator Hub', '0 - 1 years', 'Kolkata', 'IT Professional', 'Not Disclosed', 'Kolkata', '9:00AM - 5:40PM'),
(103, 'Web Designed & Developeme', '2022-07-02', 'Web developer 01-03yrs Noida', 'INSTATE MEDIA PRIVATE LIM', '0 - 1 years', 'Noida', 'IT Professional', '₹ 2,00,000 - 3,00,000 P.A', 'Good Knowledge of HTML, PHP, Word Press, CSS3 practices for designing modern, responsive scalable websites and mobile apps, SEO visual communication design Excellent comprehension of the English language is a must Quick & meet the deadlines is a must', '9:00AM - 5:40PM'),
(104, 'Web Designed & Developeme', '2022-07-02', 'Urgent requirement For Jr. Web Developer', 'ISAS SYSTEMS', '0 - 1 years', 'Pune( Koregaon Park )', 'IT Professional', 'Not Disclosed', '0-2 years of PHP/MySQL experience. Basic Knowledge of HTML, CSS, JavaScript, jQuery,, etc. Experience in Web Design & Development will be added advantage Basic knowledge of PHP, MySQL .', '9:00AM - 5:40PM'),
(105, 'Web Designed & Developeme', '2022-07-02', 'PHP Web Developer - Laravel/CodeIgniter', 'Sit Pvt Ltd2.1(4 Reviews)', '0 - 1 years', 'Chandigarh', 'IT Professional', 'Not Disclosed', ' Must have good Knowledge of PHP Frameworks Laravel, CI, Magento.  - Good knowledge of version control tools, and experience collaborating with a large team of developers.  - Full stack - back end through front end experience. React JS experience a nice p', '9:00AM - 5:40PM'),
(106, 'Web Designed & Developeme', '2022-07-02', 'Web Developer- Wordpress', 'VEERWAL GETWORK SERVICES ', '0 - 1 years', 'Remote (Hiring office located in Noida)', 'IT Professional', '₹ 2,00,000 - 2,50,000 P.A', '₹ 2,00,000 - 2,50,000 P.A.', '9:00AM - 5:40PM'),
(107, 'Web Designed & Developeme', '2022-07-02', 'PHP Web Developer', 'Interpole Technologies Pv', '0 - 1 years', 'Mumbai', 'IT Professional', '₹ 2,25,000 - 4,00,000 P.A', 'Job description  We are looking to hire a talented PHP developer to manage our back-end services and ensure a seamless interchange of data between the server and our users. Your primary focus will be the development of all server-side logic, definition an', '9:00AM - 5:40PM'),
(108, 'Web Designed & Developeme', '2022-07-02', 'Hiring For PHP Web Developer (laravel)', 'Balj services pvt ltd4.4(', '1 - 2 years', 'Balj services pvt ltd4.4(8 Reviews)', 'IT Professional', '₹ 2,00,000 - 3,00,000 P.A', '1. Candidate must have min 1+ years experience of developing complex web applications on Laravel(live project). 2. Good knowledge in Core PHP and Laravel all versions with REST API. 3. Knowledge of MySQL and ability to write/maintain complex queries.', '9:00AM - 5:40PM'),
(109, 'Web Designed & Developeme', '2022-07-02', 'Web DeveloperWeb Developer - Laravel, Shopify, WordPres', 'Asesa Soft', '1 - 3 years', 'Kolhapur', 'IT Professional', '₹ 1,00,000 - 2,50,000 P.A', 'Asesa Soft is a leading web application development company, working in custom eCcommerce development, Fully dynamic & custom web applications having offices in Kolhapur & Pune. We have multiple open positions for a Web Developer with a min. 1 year of exp', '9:00AM - 5:40PM'),
(110, 'Web Designed & Developeme', '2022-07-02', 'Urgent opening For Web Developer', 'contact@web-forte.com', '1 - 4 years', 'Mohali, Chandigarh, Panchkula', 'IT Professional', 'Not Disclosed', '11.00 AM - 5.30 PM', '11.00 AM - 5.30 PM'),
(111, 'Web Designed & Developeme', '2022-07-02', 'Fresher / Intern PHP Web Developer', 'Revatics', '1 - 4 years', 'Ahmedabad( Prahlad Nagar )', 'IT Professional', '₹ 1,00,000 - 1,25,000 P.A', 'Basic knowledge about web development using PHP/MySQL Good Analytical Skills Good Programming knowledge is essential Database Queries and Joins. Knowledge about JQuery, HTML,CSS, Bootstrap. Should be hardworking, committed, and willing to learn new skills', '9:00AM - 5:40PM'),
(112, 'Web Designed & Developeme', '2022-07-02', 'Web Developer', 'Teamlease Servcies limite', '1 - 4 years', 'Mumbai (All Areas)', 'IT Professional', '₹ 50,000 - 3,00,000 P.A.', 'Responsibilities  Write well designed, testable, efficient code by using best software development practices Create website layout/user interface by using standard HTML/CSS practices Integrate data from various back-end services and databases Gather and r', '9:00AM - 5:40PM'),
(113, 'Web Designed & Developeme', '2022-07-02', 'Web Developer', 'MALtech Solutions Pvt Ltd', '1 - 4 years', 'Bapatla', 'IT Professional', 'Not Disclosed', 'We are looking for a creative, skilled UI Developer to design websites with functionality and aesthetics in mind. The UI Developer will work with Back-End Developers and Web Developers to ensure that the website is optimized for several devices and presen', '9:00AM - 5:40PM'),
(114, 'Web Designed & Developeme', '2022-07-02', 'Web Developer', 'Webtech developers pvt. L', '1 - 3 years', 'Pune', 'IT Professional', 'Not Disclosed', 'Web Developer Skills Requirement: Excellent communication and writing skills. Strong troubleshooting and problem solving skills. Good knowledge of Python, Database, Html, CSS and JS Strong OOPS concepts JavaScript, jQuery will be preferred', '9:00AM - 5:40PM'),
(115, 'Web Designed & Developeme', '2022-07-02', 'Web Developers', 'ManageEngine', '1 - 4 years', 'REMOTE', 'IT Professional', 'Not Disclosed', 'Develop new components based on design specs. Work independently and write maintainable code. Understand existing code and suggest optimization in terms of functionality and performance. Work on client frameworks for caching and develop reusable component', '9:00AM - 5:40PM'),
(116, 'Web Designed & Developeme', '2022-07-02', 'Wordpress Web Developer', 'Maze Infocom Solutions Pv', '1 - 3 years', 'Mumbai (All Areas)', 'IT Professional', '₹ 2,00,000 - 3,00,000 P.A', 'Should have knowledge of plugin/theme development and customization. Should have knowledge of Themes like Woodmart, Flatsome and other WordPress themes. Should have worked on the Elementor Plugin, Elementor Pro, wp page bakery, etc. Should have knowledge ', '9:00AM - 5:40PM'),
(117, 'Other', '2022-07-02', 'Recruitment Consultant/ Sr Consultant - Near Dwarka -De', 'Minerva HRD Solutions', '1 - 2 years', 'Delhi / NCR( Palam, Uttam Nagar, Mahavir Enclave, Sadh Nagar, Raj Nagar, Dashrath Puri, Pocket-1 Sector 6 Dwarka, Pocket-2 Sector 6 Dwarka, Sagarpur )View More (WFH during Covid)', 'IT Professional', 'Not Disclosed', 'Minerva team has 15+ Years of experience for supporting organisations in hiring, training, developing and preparing talent for future needs. The Minerva Team has proficient level of Experience and understanding of Non-IT & IT Recruitment Industry. Because', '9:00AM - 5:40PM'),
(118, 'Other', '2022-07-02', 'Us IT Recruiter', 'ZETTALOGIX PRIVATE LIMITE', '1 - 4 years', 'Ameerpet', 'IT Professional', 'Not Disclosed', 'Experience in handling the full lifecycle of the recruitment process (sourcing; screening and submitting qualified resumes). Searching resumes in various US Job Portals (Dice, Monster, Indeed, Career Builder, Etc). Matching the profile of the candidate as', '9:00AM - 5:40PM'),
(119, 'Other', '2022-07-02', 'Immediate Opening For IT Recruiter / Sr. IT Recruiter', 'Infoplus Technologies3.8(', '1 - 4 years', 'Unit 6 Capital Business Pk/Manor Way, Borehamwood WD6 1GW,United Kingdom', 'IT Professional', 'Not Disclosed', 'Born in 2000, Infoplus Technologies UK Ltd is a forward-looking Information technology company focused on building products, services, staffing, consulting, and digital transformation, needed for next-generation. We combine the power of technology with ou', '9:00AM - 5:40PM'),
(120, 'Other', '2022-07-02', 'Executive Search', 'Executive Search4.8(2 Rev', '1 - 3 years', 'Delhi / NCR', '', 'Not Disclosed', 'JOB DESCRIPTION: Codify case information and content for contribution to global knowledge base Disguise/ sanitize and repackage content from client presentations Maintain knowledge databases and metrics Track proposal submissions Salary: INR 5, 00, 000 [.', '9:00AM - 5:40PM'),
(121, 'Other', '2022-07-02', 'Manager HRD- Female', 'rasdelta wellness pvt ltd', '1 - 5 years', 'Ghaziabad( Vaishali, Kaushambi ), Delhi / NCR', 'IT Professional', '₹ 2,50,000 - 4,00,000 P.A', 'Roles and Responsibilities : she will be responsible for recruitment , manage and train human resource and look after the administration of office as well.    Desired Candidate Profile : must be graduate in human resource and MBA with 3-5 years experience', '9:00AM - 5:40PM'),
(122, 'Other', '2022-07-02', 'HR - BPO Recruitment', 'JOIN VENTURES SOLUTIONS P', '1 - 3 years', 'Mumbai', 'IT Professional', '₹ 2,00,000 - 3,00,000 P.A', 'Develop and execute recruiting plans. Doing hardcore sourcing and recruitment of customer care executives. Develop and track goals for the recruiting and hiring process. Must be proficient in recruiting techniques like Head Hunting, Calling, --Networking ', '9:00AM - 5:40PM'),
(123, 'Other', '2022-07-02', 'Hiring Technical Recruiter - Madurai | (Freshers)', 'Getinz Techno Services', '0 - 5 years', 'Madurai', 'IT Professional', '₹ 1,25,000 - 2,50,000 P.A', 'Hello ,   We are looking for candidates from any background with strong communication skills and passion to work in the HR recruitment domain can apply for this role.', '9:00AM - 5:40PM'),
(124, 'Other', '2022-07-02', 'Talent Acquisition Executive (Work from Home)', 'Webeltek IT Solutions Hir', '0 - 5 years', 'Remote (Hiring office located in Bangalore/Bengaluru)', 'IT Professional', '₹ 50,000 - 2,00,000 P.A.', 'If you are looking for a fantastic career come join us !!   We as an organization vouch on the following specialties !!   Dynamic and Young work place   We avoid late sittings   Multiple Industry Exposure & Reputed Clients', '9:00AM - 5:40PM'),
(125, 'Other', '2022-07-02', 'Hiring Technical Recruiter - Madurai | (Freshers)', 'Getinz Techno Services', '0 - 5 years', 'Madurai', 'IT Professional', '₹ 1,25,000 - 2,50,000 P.A', 'Hello ,   We are looking for candidates from any background with strong communication skills and passion to work in the HR recruitment domain can apply for this role.', '9:00AM - 5:40PM'),
(126, 'Other', '2022-07-02', 'Recruiter - Financial Services', 'Connexions Hiring for Lea', '0 - 5 years', 'New Delhi, South Delhi', 'IT Professional', 'Not Disclosed', 'Job brief We are looking for an Executive Search Recruiter to source candidates on behalf of our clients for highly specialised positions. The successful candidate will be able to attract first-rate talent and to ensure lasting and successful placements. ', '9:00AM - 5:40PM');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE `job_type` (
  `job_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`job_code`) VALUES
(4),
(2),
(3),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `mail_followup`
--

CREATE TABLE `mail_followup` (
  `mail_id` int(11) NOT NULL,
  `followup_msg` varchar(255) CHARACTER SET latin1 NOT NULL,
  `followup_date` date NOT NULL,
  `membaer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `s.no` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `otp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`s.no`, `phone`, `otp`) VALUES
(1, 9891768667, 6521),
(2, 7303680988, 4732),
(3, 9953560166, 6107),
(4, 7303680988, 2851),
(5, 7303680988, 4213),
(6, 7303680988, 9226),
(7, 7303680988, 7725),
(8, 7303680988, 7174),
(9, 7303680988, 2390),
(10, 7303680988, 7408),
(11, 7303680988, 6181);

-- --------------------------------------------------------

--
-- Table structure for table `performance sheet`
--

CREATE TABLE `performance sheet` (
  `batch_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `batch_topic` varchar(255) CHARACTER SET latin1 NOT NULL,
  `batch_start` time NOT NULL,
  `batch_end` time NOT NULL,
  `attendance_date` date NOT NULL,
  `filling_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resutl`
--

CREATE TABLE `resutl` (
  `s.no.` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `result` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `search_ins`
--

CREATE TABLE `search_ins` (
  `id` int(11) NOT NULL,
  `b_code` varchar(10) NOT NULL,
  `ins_name` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `valid_upto` date NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search_ins`
--

INSERT INTO `search_ins` (`id`, `b_code`, `ins_name`, `address`, `phone`, `valid_upto`, `email`) VALUES
(1, 'DTSE-A', 'GDF Skills', 'A-7A Milap Nagar, 1st floor Uttam nagar east metro gate 2, Uttam Nagar, Delhi, 110059', 9717750164, '2025-06-23', 'mail@gdfskills.com'),
(2, 'DTSE-B', 'GDF Skills', '341/9A,Main Kanti Nagar Chowk metro station, Swami Dayanand Marg, near east azad nagar, Delhi, 110051', 9717750164, '2025-06-17', 'mail@gdfskills.com'),
(3, 'DTSE-C', 'GDF Skills', 'apposite State Bank of India, L-5, 1st Floor, L Block Mahaveer Enclave, Main, Palam - Dabri Marg, Palam, Delhi, 110045', 9717750164, '2026-06-30', 'mail@gdfskills.com'),
(4, 'DTSE-D', 'GDF Skills', '1665, Najafgarh Thana Rd, near Nawada bazar, Prem Nagar, Najafgarh, Delhi, 110043', 9717750164, '2026-06-16', 'mail@gdfskills.com'),
(5, 'DTSE-E', 'KDF Skills', ' 341, Grand Trunk Rd, Prakash Industrial Estate, Sahibabad Industrial Area Site 4, Dilshad Garden, New Delhi, Uttar Pradesh 201005', 9354041008, '2022-06-30', 'mail@kdfskills.com'),
(6, 'DTSE-F', 'IFDA ', 'First Floor, G-33, Kalkaji Main Rd, Kalkaji, Delhi 110019', 0, '2024-06-30', 'MRJKSINGHS[at]GMAIL[dot]COM'),
(7, 'DTSE-G', 'IFDA', 'E 9, 2nd Floor Chandermal Complex, near Police Station, Dharamveer Market, Badarpur, Delhi 110044', 8826943075, '2024-06-30', 'MRJKSINGHS[at]GMAIL[dot]COM'),
(8, 'DTSE-H', 'Digismart Education', 'H-17/246-247, 3rd Floor, Opp. Metro Pillar no.. 422, Near Rohini West Metro, Pocket 17, Sector 7H, Rohini, Delhi 110085', 9718750164, '2022-11-22', 'info@digismartindia.com ');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_reg_no` varchar(30) CHARACTER SET latin1 NOT NULL,
  `student_password` varchar(30) CHARACTER SET latin1 NOT NULL,
  `student_logistic_no` varchar(30) CHARACTER SET latin1 NOT NULL,
  `student_admission_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `student_first_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `student_last_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `student_add_line1` varchar(100) CHARACTER SET latin1 NOT NULL,
  `student_add_line2` varchar(20) CHARACTER SET latin1 NOT NULL,
  `student_city` varchar(25) CHARACTER SET latin1 NOT NULL,
  `student_pincode` varchar(15) CHARACTER SET latin1 NOT NULL,
  `student_course_id` int(5) NOT NULL,
  `student_member_id` int(5) NOT NULL,
  `student_school` varchar(100) CHARACTER SET latin1 NOT NULL,
  `student_type` int(5) NOT NULL,
  `student_phone_no` varchar(15) CHARACTER SET latin1 NOT NULL,
  `student_mobile_no` varchar(15) CHARACTER SET latin1 NOT NULL,
  `student_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `student_dob` varchar(20) CHARACTER SET latin1 NOT NULL,
  `student_sex` varchar(10) CHARACTER SET latin1 NOT NULL,
  `student_father_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `student_mother_name` varchar(40) CHARACTER SET latin1 NOT NULL,
  `student_father_occupation` varchar(30) CHARACTER SET latin1 NOT NULL,
  `student_stream` varchar(20) CHARACTER SET latin1 NOT NULL,
  `student_total_fees` int(20) NOT NULL,
  `student_admission_amount` int(20) NOT NULL,
  `student_total_installments` int(5) NOT NULL,
  `student_installment_amount` int(10) NOT NULL,
  `student_installment_start_date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `student_branch` int(5) NOT NULL,
  `profile` varchar(40) CHARACTER SET latin1 NOT NULL,
  `student_2batch` varchar(10) CHARACTER SET latin1 NOT NULL,
  `class_mode` varchar(10) CHARACTER SET latin1 NOT NULL,
  `referral_code` varchar(15) CHARACTER SET latin1 NOT NULL,
  `class_start_date` varchar(15) CHARACTER SET latin1 NOT NULL,
  `is_online_admission` int(5) NOT NULL,
  `student_batch_id` varchar(10) CHARACTER SET latin1 NOT NULL,
  `school_loc` varchar(100) CHARACTER SET latin1 NOT NULL,
  `course_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_reg_no`, `student_password`, `student_logistic_no`, `student_admission_date`, `student_first_name`, `student_last_name`, `student_add_line1`, `student_add_line2`, `student_city`, `student_pincode`, `student_course_id`, `student_member_id`, `student_school`, `student_type`, `student_phone_no`, `student_mobile_no`, `student_email`, `student_dob`, `student_sex`, `student_father_name`, `student_mother_name`, `student_father_occupation`, `student_stream`, `student_total_fees`, `student_admission_amount`, `student_total_installments`, `student_installment_amount`, `student_installment_start_date`, `student_branch`, `profile`, `student_2batch`, `class_mode`, `referral_code`, `class_start_date`, `is_online_admission`, `student_batch_id`, `school_loc`, `course_name`, `image`) VALUES
('05LITEXPL120201234', '05LITEXPL120201234', '253', '02/01/2022', 'sahilsvasv', 'sulemanscs', 'UP jilaa bijnor', 'jila bijnor', 'delhi', '110059', 222222, 1234, '', 0, '7303680988', '9250740684', '1sohailsuleman9999.1@gmail.com', '2020-07-02', '', 'newone', '', '', '', 0, 0, 0, 0, '', 0, 'IMG_20210321_144611.jpg', '', '', '', '', 0, '', '', '', ''),
('05LITEXPL120207974', '05LITEXPL120207974', '253', '02/01/2022', '', 'suleman', 'this is only for try', 'newone', 'delhi', '110059', 120207974, 120207974, 'S.B.V a block vikas puri new delhi', 0, '7303680988', '9250740684', '1sahilsuleman9999.1@gmail.com', '2022-04-15', 'male', 'sohail', 'kaiser', 'BSES', 'ARTs', 11000, 2000, 6, 2000, '01/01/2022', 73, '', '10:59 am', 'ITEXP', '123', '01/01/2022', 123, '1123456', 'vikas puri uttam nagar', 'IT EXPERT', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam_result`
--

CREATE TABLE `student_exam_result` (
  `sno` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `student_reg_no` varchar(50) CHARACTER SET latin1 NOT NULL,
  `result` varchar(10) CHARACTER SET latin1 NOT NULL,
  `exam_result_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_exam_result`
--

INSERT INTO `student_exam_result` (`sno`, `exam_id`, `student_reg_no`, `result`, `exam_result_date`) VALUES
(0, 1234, '05LITEXPL120201234', '', 0),
(1, 12345, '05LITEXPL120201234', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `fee_id` int(11) NOT NULL,
  `student_reg_no` varchar(150) CHARACTER SET latin1 NOT NULL,
  `fee_paid` int(11) NOT NULL,
  `fee_paid_date` date NOT NULL,
  `next_fee_paid_date` date NOT NULL,
  `fee_receipt_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fee_type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `remark` varchar(255) CHARACTER SET latin1 NOT NULL,
  `branch_type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `receipt_code` varchar(255) CHARACTER SET latin1 NOT NULL,
  `is_cancel` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `is_only_reg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_mail`
--

CREATE TABLE `student_mail` (
  `mail_id` int(11) NOT NULL,
  `student_reg_no` varchar(155) CHARACTER SET latin1 NOT NULL,
  `to _member` varchar(155) CHARACTER SET latin1 NOT NULL,
  `subject` varchar(155) CHARACTER SET latin1 NOT NULL,
  `message` varchar(4000) CHARACTER SET latin1 NOT NULL,
  `mail_date` date NOT NULL,
  `is_active` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_pwd` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `u_phone` bigint(11) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `m_roll` int(11) NOT NULL DEFAULT 1,
  `designation` varchar(25) NOT NULL,
  `address_1` varchar(25) NOT NULL,
  `address_2` varchar(25) NOT NULL,
  `member_city` varchar(25) NOT NULL,
  `member_pincode` int(11) NOT NULL,
  `g_salery` int(11) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `u_name`, `u_pwd`, `branch`, `user_id`, `u_phone`, `u_email`, `m_roll`, `designation`, `address_1`, `address_2`, `member_city`, `member_pincode`, `g_salery`, `remark`) VALUES
(1, 'sahil', 'suleman', 'sdjncso', '1234', 7303680988, 'cajkscjascbsjk', 1, '', '', '', '', 0, 0, ''),
(2, 'Admin', 'Admin123', 'uttam nagar', 'ADminTopCROW', 9250740684, '1sahilsuleman9999.1@gamil.com', 0, '', '', '', '', 0, 0, ''),
(3, 'ashu', 'try123', '9389', 'jha', 7303680988, 'cnjascuasds sdcsdcd', 1, '', '', '', '', 0, 0, ''),
(5, 'parul', 'parul123', '789', 'Graphic123', 7303680988, '1sahilsuleman9999.1@gmail.com', 1, 'Graphic desiner', 'D 40 BHAGWATI VIHAR UTTAM', 'gulab majid d 40', 'NEW DELHI', 110059, 6000, 'newone');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aits_student_login`
--
ALTER TABLE `aits_student_login`
  ADD PRIMARY KEY (`user`),
  ADD KEY `user` (`user`),
  ADD KEY `user_2` (`user`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_module`
--
ALTER TABLE `course_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `demo_class`
--
ALTER TABLE `demo_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dtse`
--
ALTER TABLE `dtse`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `feedetaile`
--
ALTER TABLE `feedetaile`
  ADD PRIMARY KEY (`s.no.`);

--
-- Indexes for table `franchise`
--
ALTER TABLE `franchise`
  ADD PRIMARY KEY (`s.no.`);

--
-- Indexes for table `home_appliedscholar`
--
ALTER TABLE `home_appliedscholar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_list`
--
ALTER TABLE `job_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `resutl`
--
ALTER TABLE `resutl`
  ADD KEY `user` (`user`);

--
-- Indexes for table `search_ins`
--
ALTER TABLE `search_ins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `student_reg_no` (`student_reg_no`);

--
-- Indexes for table `student_exam_result`
--
ALTER TABLE `student_exam_result`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demo_class`
--
ALTER TABLE `demo_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dtse`
--
ALTER TABLE `dtse`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam_question`
--
ALTER TABLE `exam_question`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `feedetaile`
--
ALTER TABLE `feedetaile`
  MODIFY `s.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `franchise`
--
ALTER TABLE `franchise`
  MODIFY `s.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_appliedscholar`
--
ALTER TABLE `home_appliedscholar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_list`
--
ALTER TABLE `job_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `search_ins`
--
ALTER TABLE `search_ins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resutl`
--
ALTER TABLE `resutl`
  ADD CONSTRAINT `resutl_ibfk_1` FOREIGN KEY (`user`) REFERENCES `aits_student_login` (`user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
