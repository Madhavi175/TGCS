-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2025 at 02:28 PM
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
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '123', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `message`, `created_at`) VALUES
(1, 'hi', '2025-04-05 22:31:18'),
(2, 'ok', '2025-04-05 22:31:27'),
(3, 'hi', '2025-04-05 22:33:22'),
(4, 'hi', '2025-04-05 23:13:34'),
(5, 'hi', '2025-04-06 21:00:49'),
(6, 'hi', '2025-04-07 09:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2020-07-08 06:38:36', 2, 'u', '2020-07-08 06:53:45'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 06:43:25', 1, NULL, '2020-07-08 06:52:44'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2020-07-08 06:44:39', 2, 'a', '2020-07-08 06:49:55'),
(4, 1, 'madhavidhobale17@gmail.com', '2025-03-25', '2025-03-31', 'hiiiiiiiiiiiiii', '2025-03-27 16:30:22', 2, 'a', '2025-04-05 15:37:28'),
(5, 9, 'madhavi123@gmail.com', '2025-04-05', '2025-04-10', 'please provide as soon as possible', '2025-04-05 15:42:52', 1, 'admin', '2025-04-05 15:49:25'),
(6, 6, 'arya@gmail.com', '2025-04-17', '2025-04-30', 'email regarding this process', '2025-04-05 16:13:09', 1, NULL, '2025-04-05 16:13:28'),
(7, 1, 'madhavidhobale17@gmail.com', '2025-04-16', '2025-04-29', 'email me ', '2025-04-06 12:47:18', 1, NULL, '2025-04-06 12:47:46'),
(8, 8, 'madhavidhobale17@gmail.com', '2025-04-07', '2025-04-15', 'book this slots', '2025-04-07 03:43:51', 1, NULL, '2025-04-07 03:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2020-07-08 06:30:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2020-07-08 06:31:38', NULL),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2020-07-08 06:32:41', 1),
(4, 'madhavi', 'madhavidhobale2005@gmail.com', '9322465817', 'hiee', 'hello', '2025-03-17 08:15:37', NULL),
(5, 'madhavi', 'madhavidhobale2005@gmail.com', '9322465817', 'hiee', 'hello', '2025-03-17 08:15:45', 1),
(6, 'madhavi', 'madhavidhobale2005@gmail.com', '9322465817', 'hiee', 'hello', '2025-03-17 08:15:54', NULL),
(7, 'madhavi', 'madhavidhobale2005@gmail.com', '9322465817', 'hiee', 'hello', '2025-03-17 08:21:03', NULL),
(8, 'madhavi', 'madhavidhobale17@gmail.com', '9322465867', 'bye', 'hi', '2025-03-17 08:21:46', 1),
(9, 'madhavi', 'madhavidhobale2005@gmail.com', '9322465817', 'Regarding THE ENQUIRY', 'PLEASE CONTACT AS SOON AS POSSIBLE.\r\n', '2025-04-07 04:22:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2020-07-08 06:36:03', 'Ok, We will fix the issue asap', '2020-07-08 06:55:22'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 06:56:29', NULL, NULL),
(8, NULL, NULL, NULL, '2025-02-28 06:44:54', NULL, NULL),
(9, NULL, NULL, NULL, '2025-03-18 14:23:41', NULL, NULL),
(10, 'madhavidhobale17@gmail.com', 'Cancellation', 'gjii', '2025-03-18 14:25:53', NULL, NULL),
(11, NULL, NULL, NULL, '2025-03-26 14:53:38', NULL, NULL),
(12, 'madhavidhobale17@gmail.com', 'Cancellation', 'gjii', '2025-03-27 16:29:47', 'okkk we wil fix this\r\n', '2025-04-05 15:57:21'),
(13, 'madhavi123@gmail.com', 'Cancellation', 'i would not want to came up with  you guys', '2025-04-05 15:59:15', NULL, NULL),
(14, 'madhavi123@gmail.com', 'Refund', 'please refund my money', '2025-04-05 15:59:36', 'ok wee will refund you as soon\r\n as possible', '2025-04-05 16:00:40'),
(15, NULL, NULL, NULL, '2025-04-05 16:04:26', NULL, NULL),
(16, 'madhavidhobale17@gmail.com', 'Refund', 'please refund my money as soon as possible\r\n', '2025-04-06 12:15:48', 'Yes sir we will update you as soon possible\r\n', '2025-04-06 12:29:31'),
(17, 'madhavidhobale17@gmail.com', 'Cancellation', 'please cancel my tickets', '2025-04-07 03:55:45', 'ok look forward on this', '2025-04-07 03:57:12'),
(18, NULL, NULL, NULL, '2025-04-07 03:58:55', NULL, NULL),
(19, NULL, NULL, NULL, '2025-04-07 04:00:27', NULL, NULL),
(20, NULL, NULL, NULL, '2025-04-07 04:02:55', NULL, NULL),
(21, NULL, NULL, NULL, '2025-04-07 04:06:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\n										'),
(3, 'aboutus', '<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled Shreya Tour &amp; Travels to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------J-890 Dwarka House New Delhi-110096</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Swiss Paris Delight Premium 2020 (Group Package)', 'Group Package', 'Paris and Switzerland', 6000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights in scenic Switzerland - Enjoy continental breakfasts every morning - Enjoy 5 Indian dinners in Mainland Europe - Exp', 'Pick this holiday for a relaxing vacation in Paris and Switzerland. Your tour embarks from Paris. Enjoy an excursion to popular attractions like the iconic Eiffel Tower. After experiencing the beautiful city, you will drive past mustard fields through Burgundy to reach Switzerland. While there, you can opt for a tour to Interlaken and then to the Trummelbach Falls. Photostop at Zurich Lake and a cable car ride to Mt. Titlis are the main highlights of the holiday.', '1581490262_2_1.jpg', '2020-07-08 05:21:58', NULL),
(2, 'Bhutan Holidays - Thimphu and Paro Special', 'Family Package', 'Bhutan', 3000, 'Free Wi-fi, Free Breakfast, Free Pickup and drop facility ', 'Visit to Tiger\'s Nest Monastery | Complimentary services of a Professional Guide', 'BHUTAN-THIMPU-PARO-PUNAKHA-TOUR-6N-7D.jpeg', '2020-07-08 05:37:40', '2020-07-08 06:09:01'),
(3, 'Soulmate Special Bali - 7 Nights', 'Couple Package', 'Indonesia(Bali)', 5000, 'Free Pickup and drop facility, Free Wi-fi , Free professional guide', 'Airport transfers by private car | Popular Sightseeing included | Suitable for Couple and budget travelers', '1583140977_5_11.jpg', '2020-07-08 05:41:07', '2020-07-09 05:23:27'),
(4, 'Kerala - A Lovers Paradise - Value Added', 'Family Package', 'Kerala', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Matupetty Dam, tea plantation and a spice garden | View sunset in Kanyakumari | AC Car at disposal for 2hrs extra (once per city)', 'images (2).jpg', '2020-07-08 05:45:58', NULL),
(5, 'Short Trip To Dubai', 'Family', 'Dubai', 4500, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'A Holiday Package for the entire family.', 'unnamed.jpg', '2020-07-08 05:49:13', NULL),
(6, 'Sikkim Delight with Darjeeling (customizable)', 'Group', 'Sikkim', 3500, 'Free Breakfast, Free Pick up drop facility', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'download (2).jpg', '2020-07-08 05:51:26', NULL),
(7, '6 Days in Guwahati and Shillong With Cherrapunji Excursion', 'Family Package', 'Guwahati(Sikkim)', 4500, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'After arrival at Guwahati airport meet our representative & proceed for Shillong. Shillong is the capital and hill station of Meghalaya, also known as Abode of Cloud, one of the smallest states in India. En route visit Barapani lake. By afternoon reach at Shillong. Check in to the hotel. Evening is leisure. Spent time as you want. Visit Police bazar. Overnight stay at Shillong.', '95995.jpg', '2020-07-08 05:54:42', NULL),
(8, 'Grand Week in North East - Lachung, Lachen and Gangtok', 'Domestic Packages', 'Sikkim', 4500, 'Free Breakfast, Free Wi-fi', 'Changu Lakeand New Baba Mandir excursion | Yumthang Valley tour | Gurudongmar Lake excursion | Night stay in Lachen', 'download (3).jpg', '2020-07-08 06:05:24', NULL),
(9, 'Gangtok & Darjeeling Holiday (Without Flights)', 'Family Package', 'Sikkim', 2000, 'Free Wi-fi, Free pickup and drop facility', 'Ideal tour for Family | Sightseeing in Gangtok and Darjeeling | Full day excursion to idyllic Changu Lake | Visit to Ghoom Monastery', '1540382781_shutterstock_661867435.jpg.jpg', '2020-07-08 06:07:48', '2025-04-05 15:45:05'),
(10, 'Nagpur seminary hills', 'both', 'Nagpur,India', 10, 'Free Wi-fi, Free pickup and drop facility with best staff', 'mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm', 'tours.jpg', '2025-04-05 16:18:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:20', NULL),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:56', NULL),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:34:20', NULL),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:34:38', NULL),
(5, 'Test', '1987894654', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-07-08 06:35:06', '2021-05-11 04:37:41'),
(8, 'Madhavi Dhobale', '9665687710', 'madhavi@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-02-28 06:44:54', NULL),
(9, 'madhavi', '9322465817', 'madhavidhobale17@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-03-18 14:23:41', NULL),
(10, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2025-03-18 14:25:53', NULL),
(11, 'Madhavi Dhobale', '9665687710', 'madhavi123@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-03-26 14:53:38', NULL),
(12, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2025-03-27 16:29:47', NULL),
(13, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2025-04-05 15:59:15', NULL),
(14, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2025-04-05 15:59:35', NULL),
(15, 'Arya', '9665687710', 'arya@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-04-05 16:04:26', NULL),
(16, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2025-04-06 12:15:48', NULL),
(17, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2025-04-07 03:55:45', NULL),
(18, 'Leena Suryawanshi', '8446438947', 'shrutisuryawanshi343@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-04-07 03:58:55', NULL),
(19, 'priti', '9768879342', 'priti@gmaii.com', '202cb962ac59075b964b07152d234b70', '2025-04-07 04:00:27', NULL),
(20, 'Pihu', '96658179', 'pihu@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-04-07 04:02:55', NULL),
(21, 'madhu', '9322465817', 'madhu@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-04-07 04:06:10', NULL),
(22, 'Khushi', '983274565', 'khushi@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-04-07 04:17:55', NULL),
(23, 'Khushi', '983274565', 'khushi@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-04-07 04:18:06', NULL),
(24, 'Khushi', '983274565', 'khushi@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-04-07 04:19:34', NULL),
(25, 'Khushi', '983274565', 'khushi@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-04-07 04:19:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
