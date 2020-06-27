-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2020 at 09:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minders`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` date NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speakers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`speakers`)),
  `speakerimage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`speakerimage`)),
  `description` varchar(6000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formlink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agenda` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`agenda`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `cover`, `time`, `state`, `place`, `speakers`, `speakerimage`, `description`, `formlink`, `agenda`, `created_at`, `updated_at`) VALUES
(1, 'Out Of Loop', 'event_Out Of Loop.png', '2014-12-12', 'Closed', 'Cultural Center quarter', '[\"Mohamed Ezzat\",\"Ahmed Gamal\",\"Ahmed Gawesh\",\"Ibrahim Mahgob\"]', '[\"Out Of Loop_speaker1.jpg\",\"Out Of Loop_speaker2.jpg\",\"Out Of Loop_speaker3.jpg\",\"Out Of Loop_speaker4.jpg\"]', 'The main idea to help the students know better about entrepreneurship and how to start your own business.', NULL, '[\"Mohamed Ezzat 10:30 to 11:30\",\"Ibrahim Mahgob 12:30 to 1:20\",\"Ahmed Gamal 1:30 to 1:50\",\"Break\",\"Ahmed Gawesh 3:00 to 3:50\"]', '2020-06-21 08:50:05', '2020-06-21 08:50:05'),
(2, 'Majors Day', 'event_Majors Day.jpg', '2015-09-02', 'Closed', 'Hall 7 - FCAIH', '[\"Eng Ahmed M. Farrag\",\"Ahmed Maher\",\"Ahmed Mostafa\",\"Andrew Adel\",\"Dr Mai Hamdalla\",\"Dr Taha Mahdy\",\"Mohamed Maghrabi\"]', '[\"Majors Day_speaker1.jpg\",\"Majors Day_speaker2.png\",\"Majors Day_speaker3.jpg\",\"Majors Day_speaker4.png\",\"Majors Day_speaker5.png\",\"Majors Day_speaker6.jpg\",\"Majors Day_speaker7.png\"]', 'The main idea is to get level 1 students know about the college system, the subjects that they will study it and how the college life differ from the school life.', NULL, '[\"Registeration\",\"Ahmed Maher 10:00 to 10:30\",\"Mohamed Maghrabi 10:30 to 11:00\",\"Andrew Adel 11:00 to 11:30\",\"Dr Mai Hamdalla 12:00 to 12:30\",\"Dr Taha Mahdy 1:00 to 1:30\",\"Eng Ahmed M. Farrag 1:30 to 2:00\",\"Ahmed Mostafa 2:00 to 2:30\"]', '2020-06-21 08:55:52', '2020-06-21 08:55:52'),
(3, 'First Step 2', 'event_First Step 2.jpg', '2015-09-16', 'Closed', 'Hall 1 - FCAIH', '[\"Asmaa Hamdy\",\"Mohamed El-Saied\",\"Mohamed Hagag\",\"Mohamed Hassan\",\"Mohamed Refaat\",\"Mohamed Yasser\",\"Mohamed Yousry\",\"Nada Shawky\",\"Tarek El Shahawy\"]', '[\"First Step 2_speaker1.jpg\",\"First Step 2_speaker2.jpg\",\"First Step 2_speaker3.jpg\",\"First Step 2_speaker4.jpg\",\"First Step 2_speaker5.jpg\",\"First Step 2_speaker6.jpg\",\"First Step 2_speaker7.jpg\",\"First Step 2_speaker8.jpg\",\"First Step 2_speaker9.jpg\"]', 'The main idea is to get level 1 students know about the college system, the subjects that they will study it and how the college life differ from the school life.', NULL, '[\"Registeration\",\"President Talk 10:30 to 10:45\",\"Dr Mohamed Haggag 10:45 to 11:00\",\"Students in faculty 11:00 to 12:00\",\"Break\",\"Mohamed Refaat 1:30 to 1:45\",\"Mohamed El-Saied 1:45 to 2:00\",\"Tarek Elshahawy 2:00 to 2:15\",\"Mohamed Hassan 2:30 to 2:45\"]', '2020-06-21 09:01:49', '2020-06-21 09:01:49'),
(4, 'Scoop With Data', 'event_Scoop With Data.png', '2016-03-10', 'Closed', 'Hall 5 - FCAIH', '[\"Ahmed Bahaa\",\"Mohamed Sweillem\",\"Mostafa Adel\"]', '[\"Scoop With Data_speaker1.jpg\",\"Scoop With Data_speaker2.png\",\"Scoop With Data_speaker3.png\"]', 'The main idea to help students to know more about cloud computing , big data and data visualization . This event helped the students to know new tools to use in their work and what the labour market need these days.', NULL, '[\"Mohammed Sweilem 12:00 to 1:30\",\"Mostafa Adel 1:30 to 3:00\",\"Break\",\"Ahmed Bahaa 3:30 to 5:00\"]', '2020-06-21 09:05:46', '2020-06-21 09:05:46'),
(7, 'Minders\'18 Workshops || Lighting A Neuron\r\n', 'event_Minders 18 Workshops.jpg', '2018-02-10', 'Closed', 'Ebda3', '[\"Ahmed Mostafa\",\"Ahmed Saad\",\"Hamza Nabil\",\"Hossam Ahmed\"]', '[\"Minders\'18 Workshops_speaker1.png\",\"Minders\'18 Workshops_speaker2.jpg\",\"Minders\'18 Workshops_speaker3.png\",\"Minders\'18 Workshops_speaker4.png\"]', 'Welcome to one of our annual events held this year, Minders\'18 workshops. As a student activity that aims to decrease your steps into starting a micro business, we represent you this variety of workshops that are technical and non-technical to find or develop a passion even if it\'s not related to your study to help you make your dreams a living reality.', NULL, NULL, '2020-06-21 09:53:31', '2020-06-21 10:04:45'),
(8, 'Rise Of The Dragons III: Journey Around Egypt\r\n', 'event_Rise Of The Dragons III.png', '2016-12-20', 'Closed', 'Hall 7 - FCAIH', '[\"Abdelrahman Atia\",\"Ahmed Muhammed\",\"Nour El Rashidy\"]', '[\"Rise Of The Dragons III_speaker1.jpg\",\"Rise Of The Dragons III_speaker2.jpg\",\"Rise Of The Dragons III_speaker3.jpg\"]', 'It was a shared event between minders and acmAscis to introduce ACM competition to computer science and information system students', NULL, '[\"Registration\",\"Ahmed Muhammed 2:00 to 3:00\",\"Nour El Rashidy 3:00 to 4:00\",\"Break\",\"Abderahman Atia 4:30 to 5:30\"]', '2020-06-21 09:56:43', '2020-06-21 09:56:43'),
(9, 'Minders\'17 Opening Day (Workshops)', 'event_Minders 17 Workshops Opening.jpg', '2017-02-01', 'Closed', 'Beach Club, Maadi Corniche.', '[\"Ahmed Mostafa\",\"Asmaa Hamdy\",\"Mohamed Abdallah\",\"Mohamed Ibrahem\"]', '[\"Minders\'17 Workshops Opening_speaker1.jpg\",\"Minders\'17 Workshops Opening_speaker2.jpg\",\"Minders\'17 Workshops Opening_speaker3.jpg\",\"Minders\'17 Workshops Opening_speaker4.jpg\"]', 'The main point from this event was introduce what the purpose of the workshops that minders present to the new participates and to start its season.', NULL, '[\"Registration\",\"Asmaa Hamdy 11:15 to 11:45\",\"Mohamed Abdallah 10:00 to 11:00\",\"Mohamed Ibrahem 12:10 to 12:30\",\"Ahmed Mostafa 12:30 to 1:15\",\"The End\"]', '2020-06-21 10:00:20', '2020-06-21 10:00:20'),
(10, 'Minders Workshops\'19 - اللي فتوا ماتوا\r\n', 'event_Minders Workshops 19.png', '2019-03-01', 'Closed', 'FCAIH', NULL, NULL, 'Haven\'t you become sick of hearing words that have no sense of truth? I mean we all know it is in our blood since the beginning of time but still! However, there\'s no denying that hearing past experiences have given us a lot of helpful shortcuts. Though not to the extent that everyone has become a master in everything like they\'re legends. Which is why Minders had to step in this year... This year you\'ll know for yourself who was true in his words and well, who played them well. All you have to do for now is anticipate our form to join us.', NULL, NULL, '2020-06-21 10:03:19', '2020-06-21 10:03:19'),
(11, 'OUT OF LOOP II', 'event_OUT OF LOOP II.png', '2018-08-16', 'Closed', 'Bee Cell', '[\"Alaa Ayman\",\"Asmaa Hamdy\",\"Nurhan Abu Bakr\",\"Ahmed Badran\",\"Eslam Bakr\",\"Mohamed Green\"]', '[\"OUT OF LOOP II_speaker1.jpg\",\"OUT OF LOOP II_speaker2.png\",\"OUT OF LOOP II_speaker3.png\",\"OUT OF LOOP II_speaker4.png\",\"OUT OF LOOP II_speaker5.png\",\"OUT OF LOOP II_speaker6.png\"]', 'Well, fear nothing my friend, Minders will guide you through every part in our annual event, \"Out Of Loop\" in a 3 day workshop where you\'ll practice almost all the basics you need so there\'s no dilemma any more.', NULL, '[\"Registeration 9:30AM to 10:00AM\",\"Orientation 10:00AM to 10:15AM\",\"Entrepreneurship 10:15AM to 11:15AM\",\"Brainstorming 11:15AM to 11:45AM\",\"Activity 11:45AM to 12:00PM\",\"How to get an idea 12:00PM to 12:30PM\",\"Activity 12:30PM to 1:00PM\"]', '2020-06-21 10:09:28', '2020-06-21 10:09:28'),
(12, 'Out Of Loop 3', 'event_Out Of Loop 3.png', '2019-09-19', 'Closed', 'Idea Space', '[\"Omar Hamdy\",\"Ahmed Elassi\",\"Alaa Ayman\",\"Samer Awad\",\"Hossam Abdelfattah\",\"Mostafa Ibrahem\",\"Nada Abdelwahab\",\"Mohamed Green\",\"Omar Mokhtar\"]', '[\"Out Of Loop 3_speaker1.jpg\",\"Out Of Loop 3_speaker2.jpg\",\"Out Of Loop 3_speaker3.jpg\",\"Out Of Loop 3_speaker4.jpg\",\"Out Of Loop 3_speaker5.jpg\",\"Out Of Loop 3_speaker6.jpg\",\"Out Of Loop 3_speaker7.jpg\",\"Out Of Loop 3_speaker8.jpg\",\"Out Of Loop 3_speaker9.jpg\"]', 'Well, fear nothing my friend, Minders will guide you through every part in our annual event, \"Out Of Loop\" in a 3 day workshop where you\'ll practice almost all the basics you need so there\'s no dilemma any more.', NULL, '[\"Registeration 9:30AM to 10:00AM\",\"Orientation 10:00AM to 10:15AM\",\"Entrepreneurship 10:15AM to 11:15AM\",\"Brainstorming 11:15AM to 11:45AM\",\"Activity 11:45AM to 12:00PM\",\"How to get an idea 12:00PM to 12:30PM\",\"Activity 12:30PM to 1:00PM\"]', '2020-06-21 10:15:55', '2020-06-21 10:15:55'),
(13, 'Minders\'20 Recruitment', 'event_Minders 2020 Recruitment.png', '2019-10-21', 'Closed', 'FCAIH', NULL, NULL, 'Superman? Or Spiderman?? Many heroes around us, left their impacts in our souls, when we remember them, we not only remember their names, but also their achievements and their good impacts in our souls Many of us wish to be a hero , what if I tell you that your opportunity to be a superhero and mention your name in Minders\'s history is on? Minders has opened the recruitments and we are waiting for the heroes. How? Minders has 11 committee in more than a field, Minders is a long-standing place founded grocery years, which serves many students from different universities, if you see yourself a champion Register your name in the history of the champions of minders.', NULL, NULL, '2020-06-21 10:19:34', '2020-06-21 10:20:13'),
(14, 'Minders\'20 Workshops - اتقل تكمل\r\n', 'event_Minders 20 Workshops.png', '2020-02-22', 'Closed', 'FCAIH', NULL, NULL, 'Hello from the most important campaigns that Minders & Ultras FCI introduced to thier audience. ‏Hello again from the fourth version of Minders\' workshops. Have you ever thought about learning new things that many companies are looking for these days? You tried so hard but didn\'t know how to start? Well, All you have to do for now is anticipate our form to join us.', NULL, NULL, '2020-06-21 10:22:30', '2020-06-21 10:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jobTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `image`, `phone_number`, `gmail`, `postion`, `created_at`, `updated_at`, `jobTitle`) VALUES
(0, 'Seif Alden Hany', 'member_Seif Alden Hany.jpg', '01157461116', 'seifaldenhany@gmail.com', 'HB', '2020-06-21 12:43:13', '2020-06-21 12:43:13', 'President'),
(3, 'Nada Mostafa', 'member_Nada Mostafa.jpg', '0000000000', 'nadamostafa.fcih@gmail.com', 'HB', '2020-06-21 12:46:21', '2020-06-21 12:46:21', 'Organization Director '),
(4, 'Yousef Mahfouz', 'member_Yousef Mahfouz.jpg', '01019147836', 'youseff199959@gmail.com', 'HB', '2020-06-21 12:49:52', '2020-06-21 12:49:52', 'Marketing Director'),
(5, 'Asmaa Mahmoud', 'member_Asmaa Mahmoud.png', '01140862754', 'asmaa329917@gmail.com', 'HB', '2020-06-21 12:52:05', '2020-06-21 12:52:05', 'IT Head'),
(6, 'Abdelrahman Sobhy', 'member_Abdelrahman Sobhy.jpeg', '01017102408', 'abdosobhy1200@gmail.com', 'HB', '2020-06-21 12:59:42', '2020-06-21 12:59:42', 'IT Vice-Head'),
(7, 'Salma Hany', 'member_Salma Hany.jpg', '01143915622', 'Salmahanyfarh177@gmail.com', 'HB', '2020-06-21 12:58:14', '2020-06-21 12:58:14', 'IT Vice-Head'),
(9, 'Abdelrahman Salama', 'member_Abdelrahman Salama.jpg', '01012347575', 'abdelrahmansalamafcih@gmail.com', 'HB', '2020-06-21 13:03:16', '2020-06-21 13:03:16', 'HR Head'),
(10, 'Mohamed Yehia', 'member_Mohamed Yehia.jpg', '01145500816', 'mohamedyehie0@gmail.com', 'HB', '2020-06-21 13:08:22', '2020-06-21 13:08:22', 'HR Vice-Head'),
(11, 'Sarah Mohamed', 'member_Sarah Mohamed.JPG', '01127600979', 'sarahazim038@gmail.com', 'HB', '2020-06-25 13:24:30', '2020-06-25 13:24:30', 'HR Vice-Head'),
(12, 'Mohamed Tarek', 'member_Mohamed Tarek.jpg', '01210451406', 'mahammedtarek555@gmail.com', 'HB', '2020-06-21 13:09:31', '2020-06-21 13:09:31', 'QM Head'),
(13, 'Mina Yousef', 'member_Mina Yousef.jpg', '01280144008', 'minayoussif1@gmail.com', 'HB', '2020-06-21 13:10:42', '2020-06-21 13:10:42', 'QM Vice-Head'),
(14, 'Marwa Rifaat', 'member_Marwa Rifaat.jpg', '01152060047', 'marwariffatt@gmail.com', 'HB', '2020-06-21 13:41:06', '2020-06-21 13:41:06', 'QM Vice-Head'),
(15, 'Noura Ahmed', 'member_Noura Ahmed.jpg', '01142058297', 'nouraahmed404@gmail.com', 'HB', '2020-06-21 13:21:05', '2020-06-21 13:21:05', 'P&V Head'),
(16, 'Mohamed Mohey', 'member_Mohamed Mohey.jpg', '01112711562', 'mohamedmoheyezzat@gmail.com', 'HB', '2020-06-21 13:18:43', '2020-06-21 13:18:43', 'P&V Vice-Head'),
(17, 'Amira Zakria', 'member_Amira Zakria.jpg', '01154100897', 'amirazakaria2019@gmail.com', 'HB', '2020-06-21 13:17:45', '2020-06-21 13:17:45', 'P&V Vice-Head'),
(18, 'Eman El Qady', 'member_Eman El Qady.jpg', '01026474122', 'qadyeman@gmail.com', 'HB', '2020-06-21 13:32:57', '2020-06-21 13:32:57', 'PR Head'),
(19, 'Dalia Ahmed', 'member_Dalia Ahmed.jpg', '01113636436', 'dalia.ahmeed.ibrahim@gmail.com', 'HB', '2020-06-21 13:24:02', '2020-06-21 13:24:02', 'PR Vice-Head'),
(20, 'Mahmoud Ahmed', 'member_Mahmoud Ahmed.jpg', '01158289200', 'mahmoudsalah.pr@gmail.com', 'HB', '2020-06-21 13:36:04', '2020-06-21 13:36:04', 'PR Vice-Head'),
(21, 'Hager Hany', 'member_Hager Hany.jpg', '01147748622', 'hanyhager120@gmail.com', 'HB', '2020-06-21 13:33:53', '2020-06-21 13:33:53', 'FR Head'),
(22, 'Marwan Mohamed', 'member_Marwan Mohamed.jpg', '01000307120', 'Marawanmuhamed99@gmail.com', 'HB', '2020-06-21 13:41:59', '2020-06-21 13:41:59', 'FR Vice-Head'),
(23, 'Ahmed Hegazy', 'member_Ahmed Hegazy.jpg', '01144607700', 'mido.hegazy99@gmail.com', 'HB', '2020-06-21 13:13:32', '2020-06-21 13:13:32', 'FR Vice-Head'),
(25, 'Abderahman Mamdouh', 'member_Abderahman Mamdouh.jpg', '011 41213016', 'bedoronaldo272@gmail.com', 'IT', '2020-06-21 14:33:49', '2020-06-21 14:33:49', NULL),
(26, 'Hassan Hany', 'member_Hassan Hany.jpg', '01012420753', 'hassan.hany99.hh@gmail.com', 'HB', '2020-06-21 13:34:59', '2020-06-21 13:34:59', 'GD Vice-Head'),
(27, 'Donia Wael', 'member_Donia Wael.jpg', '01157858880', 'doniawaelsamir@gmail.com', 'HB', '2020-06-21 13:25:53', '2020-06-21 13:25:53', 'GD Vice-Head'),
(28, 'Ahmed Alaa', 'member_Ahmed Alaa.jpg', '01142510014', 'ahmedshikhtawel@gmail.com', 'HB', '2020-06-21 13:11:27', '2020-06-21 13:11:27', 'OC Head'),
(29, 'Nadeen Adel', 'member_Nadeen Adel.jpg', '01285611972', 'nadeennadel7@gmail.com', 'HB', '2020-06-21 13:43:35', '2020-06-21 13:43:35', 'OC Vice-Head'),
(30, 'Mariem Mostafa', 'member_Mariem Mostafa.jpg', '01149983528', 'marim.meromostafa199@gmail.com', 'HB', '2020-06-21 13:40:09', '2020-06-21 13:40:09', 'AC Head'),
(31, 'Ahmed Khaled', 'member_Ahmed KhaledHB.jpg', '01093990716', 'ahmedegypt.ak@gmail.com', 'HB', '2020-06-21 13:48:14', '2020-06-21 13:48:14', 'AC Vice-Head'),
(32, 'Sandra El Qomos', 'member_Sandra El Qomos.jpg', '01024196555', 'sandrael_quiss@yahoo.com', 'HB', '2020-06-21 13:46:25', '2020-06-21 13:46:25', 'AC Vice-Head'),
(33, 'Abdelrahman Mostafa', 'member_Abdelrahman Mostafa.jpg', '011 46425301', 'abdobeat0@gmail.com', 'IT', '2020-06-21 14:34:52', '2020-06-21 14:34:52', NULL),
(34, 'Ali El Sayed', 'member_Ali El Sayed.jpg', '012 71259786', 'aliotaku241@gmail.com', 'IT', '2020-06-21 14:35:59', '2020-06-21 14:35:59', NULL),
(35, 'Anas Magdy', 'member_Anas Magdy.jpg', '01141831771', 'anasmagdy80@gmail.com', 'IT', '2020-06-21 15:55:10', '2020-06-21 15:55:10', NULL),
(36, 'Aya Khaled', 'member_Aya Khaled.jpg', '012 10957937', 'ayasharaf444@yahoo.com', 'IT', '2020-06-21 15:56:05', '2020-06-21 15:56:05', NULL),
(37, 'Fatma Saber', 'member_Fatma Saber.jpg', '011 24988965', 'fatma.baraka@yahoo.com', 'IT', '2020-06-21 15:56:53', '2020-06-21 15:56:53', NULL),
(38, 'Hadeer Sayed', 'member_Hadeer Sayed.jpg', '011 44300985', 'HadeerSayed986@gmail.com', 'IT', '2020-06-21 15:57:43', '2020-06-21 15:57:43', NULL),
(39, 'Hamed Serag', 'member_Hamed Serag.jpg', '011 14098476', 'mokiserag@gmail.com', 'IT', '2020-06-21 15:58:34', '2020-06-21 15:58:34', NULL),
(40, 'Mostafa Ahmed', 'member_Mostafa Ahmed.jpg', '011 51557489', 'tamoz1997@gmail.com', 'IT', '2020-06-21 15:59:19', '2020-06-21 15:59:19', NULL),
(41, 'Nermeen Mamdouh', 'member_Nermeen Mamdouh.jpg', '011 10993843', 'Nermeen.mamdouh44@gmail.com', 'IT', '2020-06-21 16:00:10', '2020-06-21 16:00:10', NULL),
(42, 'Reham Hesham', 'member_Reham Hesham.jpg', '011 26681992', 'rehamhisham24@gmail.com', 'IT', '2020-06-21 16:00:52', '2020-06-21 16:00:52', NULL),
(43, 'Sara Ibrahem', 'member_Sara Ibrahem.jpg', '011 13331240', 'saraalsharkawy8@gmail.com', 'IT', '2020-06-21 16:01:33', '2020-06-21 16:01:33', NULL),
(44, 'Shada Ashraf', 'member_Shada Ashraf.jpg', '011 42504570', 'shadaashraf122@yahoo.com', 'IT', '2020-06-21 16:02:16', '2020-06-21 16:02:16', NULL),
(45, 'Waleed Ahmed', 'member_Waleed Ahmed.jpg', '010 68519789', 'waleed18waleed42001@gmail.com', 'IT', '2020-06-21 16:03:00', '2020-06-21 16:03:00', NULL),
(46, 'Abdelrahman Feysal', 'member_Abdelrahman Feysal.jpg', '01145344713', 'bidofeysl@gmail.com', 'PR', '2020-06-21 16:07:27', '2020-06-21 16:07:27', NULL),
(47, 'Habiba Ahmed', 'member_Habiba Ahmed.jpg', '01033636234', 'habiba.badreldeen490@gmail.com', 'PR', '2020-06-21 16:08:29', '2020-06-21 16:08:29', NULL),
(48, 'Haidy Abozaid', 'member_Haidy Abozaid.jpg', '01032863732', 'haidyhesham2012@gmail.com', 'PR', '2020-06-21 16:09:30', '2020-06-21 16:09:30', NULL),
(49, 'Hossam Khaled', 'member_Hossam Khaled.jpg', '01141436384', 'hossam5801@gmail.com', 'PR', '2020-06-21 16:10:13', '2020-06-21 16:10:13', NULL),
(50, 'Ibrahem Mohamed', 'member_Ibrahem Mohamed.jpg', '01090937212', 'ibrahim.m.afify99@gmail.com', 'PR', '2020-06-21 16:10:56', '2020-06-21 16:10:56', NULL),
(51, 'Khloud Abdelfatah', 'member_Khloud Abdelfatah.jpg', '01141425660', 'Khokhalolo78@gmail.com', 'PR', '2020-06-21 16:11:44', '2020-06-21 16:11:44', NULL),
(52, 'Mahmoud Khairy', 'member_Mahmoud Khairy.jpg', '01126117346', 'mahmoudkhairy171@gmail.com', 'PR', '2020-06-21 16:12:42', '2020-06-21 16:12:42', NULL),
(53, 'Muhammed Hussien', 'member_Muhammed Hussien.jpg', '01283617041', 'sembaeusf@gmail.com', 'PR', '2020-06-21 16:13:37', '2020-06-21 16:13:37', NULL),
(54, 'Mustafa Adel', 'member_Mustafa Adel.jpg', '01157753900', 'mustafa.adel.hanafy@gmail.com', 'PR', '2020-06-21 16:14:53', '2020-06-21 16:14:53', NULL),
(55, 'Nouran Saad', 'member_Nouran Saad.jpg', '01113880035', 'Nouransaad95@gmail.com', 'PR', '2020-06-21 16:15:47', '2020-06-21 16:15:47', NULL),
(56, 'Rahma Usama', 'member_Rahma Usama.jpg', '01220122970', 'rahma.usama17@gmail.com', 'PR', '2020-06-21 16:17:46', '2020-06-21 16:17:46', NULL),
(57, 'Ahmed Gamal', 'member_Ahmed Gamal.jpg', '01021507490', 'agmomran@gmail.com', 'QM', '2020-06-21 16:20:26', '2020-06-21 16:20:26', NULL),
(58, 'Esraa Mahmoud', 'member_Esraa Mahmoud.jpg', '01121886802', 'esraa.mahmoud627@outlook.com', 'QM', '2020-06-21 16:23:55', '2020-06-21 16:23:55', NULL),
(59, 'Fady Fayek', 'member_Fady Fayek.jpg', '01204799882', 'fadyfayek777@gmail.com', 'QM', '2020-06-21 16:24:41', '2020-06-21 16:24:41', NULL),
(60, 'Hager Hamdy', 'member_Hager Hamdy.jpg', '01158847837', 'hagerhamdy141@gamil.com', 'QM', '2020-06-21 16:25:22', '2020-06-21 16:25:22', NULL),
(61, 'Menna Essam', 'member_Menna Essam.jpg', '01140905282', 'mennaamer204@gmail.com', 'QM', '2020-06-21 16:26:19', '2020-06-21 16:26:19', NULL),
(62, 'Mohamed Galal', 'member_Mohamed Galal.jpg', '01154245798', 'medo_jalal@hotmail.com', 'QM', '2020-06-21 16:27:09', '2020-06-21 16:27:09', NULL),
(63, 'Mohamed Soliman', 'member_Mohamed Soliman.jpg', '01114720662', 'mohamedsoli2512@gmail.com', 'QM', '2020-06-21 16:28:03', '2020-06-21 16:28:03', NULL),
(64, 'Mustafa Alaa', 'member_Mustafa Alaa.jpg', '01119173080', 'elaskary609@gmail.com', 'QM', '2020-06-21 16:28:45', '2020-06-21 16:28:45', NULL),
(65, 'Nourhan Magdy', 'member_Nourhan Magdy.jpg', '01095120095', 'nourmagdy245@gmail.com', 'QM', '2020-06-21 16:29:33', '2020-06-21 16:29:33', NULL),
(66, 'Salma Amr', 'member_Salma Amr.jpg', '01125441171', 'Salmaamr135@gmail.com', 'QM', '2020-06-21 16:30:46', '2020-06-21 16:30:46', NULL),
(67, 'Ahmed Hassan', 'member_Ahmed Hassan.jpg', '01280331080', 'mr.dongwan15@gmail.com', 'FR', '2020-06-21 16:32:30', '2020-06-21 16:32:30', NULL),
(68, 'Ahmed Khaled', 'member_Ahmed Khaled.jpg', '01206202163', 'ahmed22589688khaled@gmail.com', 'FR', '2020-06-21 16:33:26', '2020-06-21 16:33:26', NULL),
(69, 'Ali Ahmed', 'member_Ali Ahmed.jpg', '0111 3393046', 'Aliahgad12345@gmail.com', 'FR', '2020-06-21 16:34:31', '2020-06-21 16:34:31', NULL),
(70, 'Aya Alaa', 'member_Aya Alaa.jpg', '01016924298', 'ayaalaa215@gmail.com', 'FR', '2020-06-21 16:35:10', '2020-06-21 16:35:10', NULL),
(71, 'Ezz Elden Ahmed', 'member_Ezz Elden Ahmed.jpg', '01146612348', 'ezza76308@gmail.com', 'FR', '2020-06-21 16:36:04', '2020-06-21 16:36:04', NULL),
(72, 'Dalia Shawky', 'member_Dalia Shawky.jpg', '01148045952', 'daliashawky98@gmail.com', 'FR', '2020-06-21 16:36:49', '2020-06-21 16:36:49', NULL),
(73, 'Hend Mansour', 'member_Hend Mansour.jpg', '01100609058', 'Hend.mansour189@gmail.com', 'FR', '2020-06-21 16:38:05', '2020-06-21 16:38:05', NULL),
(74, 'Ibrahim Rashwan', 'member_Ibrahim Rashwan.jpg', '01114001553', '18001@stemegypt.edu.eg', 'FR', '2020-06-21 16:38:53', '2020-06-21 16:38:53', NULL),
(75, 'Mennahtallah Haitham', 'member_Mennahtallah Haitham.jpg', '01141463200', 'mennahaitham66@gmail.com', 'FR', '2020-06-21 16:39:43', '2020-06-21 16:39:43', NULL),
(76, 'Mohamed Mustafa', 'member_Mohamed Mustafa.jpg', '01118993205', 'muhammedanaas8@gmail.com', 'FR', '2020-06-21 16:40:23', '2020-06-21 16:40:23', NULL),
(77, 'Momen Mohamed', 'member_Momen Mohamed.jpg', '01122649630', 'momen.mohamed5120@gmail.com', 'FR', '2020-06-21 16:41:14', '2020-06-21 16:41:14', NULL),
(78, 'Nermeen Abbas', 'member_Nermeen Abbas.jpg', '01129001659', 'aa2278135@gmail.com', 'FR', '2020-06-21 16:42:01', '2020-06-21 16:42:01', NULL),
(79, 'Nourhan Abdellah', 'member_Nourhan Abdellah.jpg', '01128324854', 'nourhanabdelah@gmail.com', 'FR', '2020-06-21 16:42:47', '2020-06-21 16:42:47', NULL),
(80, 'Shereen Kamal', 'member_Shereen Kamal.jpg', '01206127121', 'Sherykamal22@gmail.com', 'FR', '2020-06-21 16:43:24', '2020-06-21 16:43:24', NULL),
(81, 'Soha Abdelbaset', 'member_Soha Abdelbaset.jpg', '01090181686', 'sohaabdo5000@gmail.com', 'FR', '2020-06-21 16:44:05', '2020-06-21 16:44:05', NULL),
(82, 'Yousef Salah', 'member_Yousef Salah.jpg', '01220111839', 'yousefsalah959@gmail.com', 'FR', '2020-06-21 16:44:42', '2020-06-21 16:44:42', NULL),
(83, 'Mohamed Abbas', 'member_Mohamed Abbas.jpg', '01020383655', 'mo1861999@gmail.com', 'GD', '2020-06-21 16:46:31', '2020-06-21 16:46:31', NULL),
(84, 'Mohamed Aboalam', 'member_Mohamed Aboalam.jpg', '01004229937', 'etsh.aboalam@gmail.com', 'GD', '2020-06-21 16:47:35', '2020-06-21 16:47:35', NULL),
(85, 'Mohamed Adil', 'member_Mohamed Adil.jpg', '01006706473', 'mohamad.adil241@gmail.com', 'GD', '2020-06-21 16:48:22', '2020-06-21 16:48:22', NULL),
(86, 'Ahmed Samir', 'member_Ahmed Samir.jpg', '01149859581', 'egahmedsamir255@gmail.com', 'GD', '2020-06-21 16:49:35', '2020-06-21 16:49:35', NULL),
(87, 'Aya Hassan', 'member_Aya Hassan.jpg', '01011076441', 'hassanaya520@gmail.com', 'GD', '2020-06-21 16:50:13', '2020-06-21 16:50:13', NULL),
(88, 'Baher Tamer', 'member_Baher Tamer.jpg', '01066080210', 'baherfcai@gmail.com', 'GD', '2020-06-21 16:50:47', '2020-06-21 16:50:47', NULL),
(89, 'Bassel Hagag', 'member_Bassel Hagag.jpg', '01221069582', 'basselhagag@gmail.com', 'GD', '2020-06-21 16:51:23', '2020-06-21 16:51:23', NULL),
(90, 'Mariam Ghani', 'member_Mariam Ghani.jpg', '01016481120', 'mariomghani66@gmail.com', 'GD', '2020-06-21 16:52:16', '2020-06-21 16:52:16', NULL),
(91, 'Momen Ahmed', 'member_Momen Ahmed.jpg', '01062251864', 'memo9040056@gmail.com', 'GD', '2020-06-21 16:53:05', '2020-06-21 16:53:05', NULL),
(92, 'Moaz Fouad', 'member_Moaz Fouad.jpg', '01110895721', 'moaz.younis52@gmail.com', 'GD', '2020-06-21 16:53:49', '2020-06-21 16:53:49', NULL),
(93, 'Mohanad Darwesh', 'member_Mohanad Darwesh.jpg', '01117521556', 'dmohanad872@gmail.com', 'GD', '2020-06-21 16:54:41', '2020-06-21 16:54:41', NULL),
(94, 'Moustafa Aly', 'member_Moustafa Aly.jpg', '01067991649', 'malyfathy2002@gmail.com', 'GD', '2020-06-21 16:55:31', '2020-06-21 16:55:31', NULL),
(95, 'Osama Mohamed', 'member_Osama Mohamed.jpg', '01015304516', 'Om639551@gmail.com', 'GD', '2020-06-21 16:56:41', '2020-06-21 16:56:41', NULL),
(96, 'Rania Mossad', 'member_Rania Mossad.jpg', '01144636035', 'amrmossad344@gmail.com', 'GD', '2020-06-21 16:57:26', '2020-06-21 16:57:26', NULL),
(97, 'Mohamed Sayed', 'member_Mohamed Sayed.jpg', '01140926167', 'mohamedsayed37000@gmail.com', 'GD', '2020-06-21 16:58:15', '2020-06-21 16:58:15', NULL),
(98, 'Mohamed Refaat', 'member_Mohamed Refaat.jpg', '010 96267069', 'mo.rifaat10@gmail.com', 'GD', '2020-06-21 16:59:38', '2020-06-21 16:59:38', NULL),
(99, 'Ashraf Mohamed', 'member_Ashraf Mohamed.JPG', '01015238224', 'elfar2385@GBmail.com', 'SM', '2020-06-21 17:09:10', '2020-06-21 17:09:10', NULL),
(100, 'Fady Nabil', 'member_Fady Nabil.JPG', '01203242323', 'fady.nabel10@gmail.com', 'SM', '2020-06-21 17:10:02', '2020-06-21 17:10:02', NULL),
(101, 'Menna Magdy', 'member_Menna Magdy.JPG', '01067806988', 'mennamagdy9988@gmail.com', 'SM', '2020-06-21 17:10:54', '2020-06-21 17:10:54', NULL),
(102, 'Abdelrahman Sayed', 'member_Abdelrahman Sayed.jpg', '01551470821', 'bodasayed2511@gmail.com', 'SM', '2020-06-21 17:11:37', '2020-06-21 17:11:37', NULL),
(103, 'Alaa Mohamed', 'member_Alaa Mohamed.jpg', '01140789245', 'alaamohamedibrahim20@gmail.com', 'SM', '2020-06-21 17:12:34', '2020-06-21 17:12:34', NULL),
(104, 'Aya Hesham', 'member_Aya Hesham.jpg', '01124500224', 'ayahesham743@gmail.com', 'SM', '2020-06-21 17:13:29', '2020-06-21 17:13:29', NULL),
(105, 'Dai Nader', 'member_Dai Nader.jpeg', '01120400938', 'dainader267@gmail.com', 'SM', '2020-06-21 17:14:15', '2020-06-21 17:14:15', NULL),
(106, 'Ibrahem Refaat', 'member_Ibrahem Refaat.jpg', '01129326153', 'ibrahimrefaat57@gmail.com', 'SM', '2020-06-21 17:15:18', '2020-06-21 17:15:18', NULL),
(107, 'Karem Hassan', 'member_Karem Hassan.jpg', '01015302267', 'karim16hassan@gmail.com', 'SM', '2020-06-21 17:16:01', '2020-06-21 17:16:01', NULL),
(108, 'Mahmoud Abdelazim', 'member_Mahmoud Abdelazim.jpg', '01125401805', 'mahmoud2011989@gmail.com', 'SM', '2020-06-21 17:17:04', '2020-06-21 17:17:04', NULL),
(109, 'Mariem Ashraf', 'member_Mariem Ashraf.jpg', '01020346083', 'miro20017@gmail.com', 'SM', '2020-06-21 17:17:48', '2020-06-21 17:17:48', NULL),
(110, 'Mohamed Kamal', 'member_Mohamed Kamal.jpg', '01099158812', 'mokamal17997@gmail.com', 'SM', '2020-06-21 17:18:27', '2020-06-21 17:18:27', NULL),
(111, 'Nada Adel', 'member_Nada Adel.jpg', '01119965631', 'nada_adel28@yahoo.com', 'SM', '2020-06-21 17:25:49', '2020-06-21 17:25:49', NULL),
(112, 'Nada Salah', 'member_Nada Salah.png', '01111166722', 'nadasalah370@gmail.com', 'SM', '2020-06-21 17:26:50', '2020-06-21 17:26:50', NULL),
(113, 'Menna Khaled', 'member_Menna Khaled.JPG', '01150466765', 'mennaakh6@gmail.com', 'HB', '2020-06-21 17:28:10', '2020-06-21 17:28:10', 'SM Head'),
(114, 'Dina Hosny', 'member_Dina Hosny.JPG', '01020714597', 'Dinahosnys@gmail.com', 'HB', '2020-06-21 17:28:59', '2020-06-21 17:28:59', 'SM Vice-Head'),
(115, 'Eman Mohsen', 'member_Eman Mohsen.jpg', '01145605648', 'emanelzahaby342@gmail.com', 'AC', '2020-06-21 17:31:27', '2020-06-21 17:31:27', NULL),
(116, 'Mohamed Ahmed', 'member_Mohamed Ahmed.jpg', '01019971064', 'bebom6397@gmail.com', 'AC', '2020-06-21 17:32:20', '2020-06-21 17:32:20', NULL),
(117, 'Ahmed Maged', 'member_Ahmed Maged.png', '01145412162', 'A7med-Magid@hotmail.com', 'AC', '2020-06-21 17:33:00', '2020-06-21 17:33:00', NULL),
(118, 'Bassem Osama', 'member_Bassem Osama.jpg', '01550207373', 'bassemosama1212@gmail.com', 'AC', '2020-06-21 17:33:42', '2020-06-21 17:33:42', NULL),
(119, 'Belal Hesham', 'member_Belal Hesham.jpg', '01111404576', 'heshambebo997@gmail.com', 'AC', '2020-06-21 17:34:24', '2020-06-21 17:34:24', NULL),
(120, 'Haidy Ashraf', 'member_Haidy Ashraf.jpg', '01151285107', 'ashrafhaidy166@gmail.com', 'AC', '2020-06-21 17:35:21', '2020-06-21 17:35:21', NULL),
(121, 'Haidy Mohamed', 'member_Haidy Mohamed.jpg', '01276188490', 'haidy7222@gmail.com', 'AC', '2020-06-21 17:36:09', '2020-06-21 17:36:09', NULL),
(122, 'Mohamed Nader', 'member_Mohamed Nader.jpg', '01550539956', 'meshmeshnader555@gmail.com', 'AC', '2020-06-21 17:36:45', '2020-06-21 17:36:45', NULL),
(123, 'Nour Hossam', 'member_Nour Hossam.jpg', '01001413862', 'noorhossamkotb333@gmail.com', 'AC', '2020-06-21 17:37:40', '2020-06-21 17:37:40', NULL),
(124, 'Omar Amgad', 'member_Omar Amgad.jpg', '01062449721', 'Omaramgad89@gmail.com', 'AC', '2020-06-21 17:38:39', '2020-06-21 17:38:39', NULL),
(125, 'Nour Ahmed', 'member_Nour Ahmed.jpg', '0000000000', 'nour@gmail.com', 'AC', '2020-06-21 17:39:24', '2020-06-21 17:39:24', NULL),
(126, 'Uanna alkas', 'member_Uanna alkas.jpg', '01020225725', 'uannauouo@gmail.com', 'AC', '2020-06-21 17:40:24', '2020-06-21 17:40:24', NULL),
(127, 'Yara Samy', 'member_Yara Samy.jpg', '01114184089', 'yara.samy171@gmail.com', 'AC', '2020-06-21 17:41:03', '2020-06-21 17:41:03', NULL),
(128, 'Yousef Abdelfatah', 'member_Yousef Abdelfatah.jpg', '01552910823', 'khatawat58@gmail.com', 'AC', '2020-06-21 17:42:03', '2020-06-21 17:42:03', NULL),
(129, 'Ahmed Abdallah', 'member_Ahmed Abdallah.jpg', '01156177066', 'a.abdallah.aa91@gmail.com', 'HR', '2020-06-21 17:45:57', '2020-06-21 17:45:57', NULL),
(130, 'Donia Mohamed', 'member_Donia Mohamed.jpg', '01023265583', 'doniasakr3@gmail.com', 'HR', '2020-06-21 17:46:40', '2020-06-21 17:46:40', NULL),
(131, 'Gehad Essam', 'member_Gehad Essam.jpg', '01122490948', 'gehadessam343@gmail.com', 'HR', '2020-06-21 17:47:23', '2020-06-21 17:47:23', NULL),
(132, 'Habiba Khaled', 'member_Habiba Khaled.jpg', '01147393194', 'hk3957696@gmail.com', 'HR', '2020-06-21 17:48:05', '2020-06-21 17:48:05', NULL),
(133, 'Hagar Atef', 'member_Hagar Atef.jpg', '01111556256', 'hagaratefmahmoud2@gmail.com', 'HR', '2020-06-21 17:49:05', '2020-06-21 17:49:05', NULL),
(134, 'Karima Ali', 'member_Karima Ali.jpg', '01129525696', 'karimahussien6@gmail.com', 'HR', '2020-06-21 17:50:36', '2020-06-21 17:50:36', NULL),
(135, 'Loay Magdy', 'member_Loay Magdy.jpg', '01153511445', 'loaymagdy120@gmail.com', 'HR', '2020-06-21 17:51:24', '2020-06-21 17:51:24', NULL),
(136, 'Marwa Magdy', 'member_Marwa Magdy.jpg', '01152669221', 'marwamagdy1999a.z@gmail.com', 'HR', '2020-06-21 17:52:08', '2020-06-21 17:52:08', NULL),
(137, 'Mohamed Reda', 'member_Mohamed Reda.jpg', '01110095089', 'mido111299@gmail.com', 'HR', '2020-06-21 17:52:58', '2020-06-21 17:52:58', NULL),
(138, 'Mohamed Shawky', 'member_Mohamed Shawky.jpg', '01119568031', 'mohamedalwan2000@gmail.com', 'HR', '2020-06-21 17:53:59', '2020-06-21 17:53:59', NULL),
(139, 'Mona Sayed', 'member_Mona Sayed.jpg', '01110664780', 'Monaaa.sayed98@gmail.com', 'HR', '2020-06-21 17:54:48', '2020-06-21 17:54:48', NULL),
(140, 'Nada Mohamed', 'member_Nada Mohamed.jpg', '01011451165', 'Nadashebl25@gmail.com', 'HR', '2020-06-21 17:55:45', '2020-06-21 17:55:45', NULL),
(141, 'Nouran Mohamed', 'member_Nouran Mohamed.jpg', '01141766558', 'nm904722@gmail.com', 'HR', '2020-06-21 17:56:36', '2020-06-21 17:56:36', NULL),
(142, 'Omar Aborehab', 'member_Omar Aborehab.jpg', '01271343072', 'omar012713@gmail.com', 'HR', '2020-06-21 17:57:35', '2020-06-21 17:57:35', NULL),
(143, 'Radwa Bayoumi', 'member_Radwa Bayoumi.jpg', '01148311487', 'mradwa515@gmail.com', 'HR', '2020-06-21 17:58:29', '2020-06-21 17:58:29', NULL),
(144, 'Sama Sayed', 'member_Sama Sayed.jpg', '01155735191', 'Samasayedshaban106@gmail.com', 'HR', '2020-06-21 17:59:14', '2020-06-21 17:59:14', NULL),
(145, 'Yasmeen Waleed', 'member_Yasmeen Waleed.jpg', '012 77943899', 'yassmin.walid55@gmail.com', 'HR', '2020-06-21 18:00:00', '2020-06-21 18:00:00', NULL),
(146, 'Ahmed Khaled', 'member_Ahmed Khaled.jpg', '01099208670', 'ara.hand@yahoo.com', 'OC', '2020-06-21 18:07:11', '2020-06-21 18:07:11', NULL),
(147, 'Doha Magdy', 'member_Doha Magdy.jpg', '01155906566', 'dohamagdy039@gmail.com', 'OC', '2020-06-21 18:08:57', '2020-06-21 18:08:57', NULL),
(148, 'Ezz Khalel', 'member_Ezz Khalel.jpg', '01554173325', '01272051819e@gmail.com', 'OC', '2020-06-21 18:09:44', '2020-06-21 18:09:44', NULL),
(149, 'Farah Ehab', 'member_Farah Ehab.jpg', '01147423267', 'farahehab16@yahoo.com', 'OC', '2020-06-21 18:10:33', '2020-06-21 18:10:33', NULL),
(150, 'Fatma Magdy', 'member_Fatma Magdy.jpg', '01097800373', 'fatmamagdy616@yahoo.com', 'OC', '2020-06-21 18:11:55', '2020-06-21 18:11:55', NULL),
(151, 'Mai Rezk', 'member_Mai Rezk.jpg', '01121419769', 'anamoza8851@yahoo.com', 'OC', '2020-06-21 18:12:44', '2020-06-21 18:12:44', NULL),
(152, 'Malk Rezk', 'member_Malk Rezk.jpg', '01141964274', 'malkrizk@gmail.com', 'OC', '2020-06-21 18:13:45', '2020-06-21 18:13:45', NULL),
(153, 'Maram Mohamed', 'member_Maram Mohamed.jpg', '01110907880', 'maram.m.ebrahim7@gmail.com', 'OC', '2020-06-21 18:14:43', '2020-06-21 18:14:43', NULL),
(154, 'Mayada Mostafa', 'member_Mayada Mostafa.jpg', '01144783865', 'mmayada375@gmail.com', 'OC', '2020-06-21 18:15:25', '2020-06-21 18:15:25', NULL),
(155, 'Nahla Hassan', 'member_Nahla Hassan.jpg', '01128092270', 'nahlahassan309@gmail.com', 'OC', '2020-06-21 18:16:10', '2020-06-21 18:16:10', NULL),
(156, 'Neama Zenhum', 'member_Neama Zenhum.jpg', '01114583493', 'neama.zinhom.12345@gmail.com', 'OC', '2020-06-21 18:17:12', '2020-06-21 18:17:12', NULL),
(157, 'Radwa Ahmed', 'member_Radwa Ahmed.jpg', '01126072585', 'rawdaahmed165@gmail.com', 'OC', '2020-06-21 18:17:56', '2020-06-21 18:17:56', NULL),
(158, 'Salma Ahmed', 'member_Salma Ahmed.jpg', '01005896365', 'sa0659939@gmail.com', 'OC', '2020-06-21 18:18:41', '2020-06-21 18:18:41', NULL),
(159, 'Sara Mazhar', 'member_Sara Mazhar.jpg', '01022726677', 'saramazhar286@gmail.com', 'OC', '2020-06-21 18:19:34', '2020-06-21 18:19:34', NULL),
(160, 'Steve Adel', 'member_Steve Adel.jpg', '01288001914', 'steveadel1211@icloud.com', 'OC', '2020-06-21 18:20:32', '2020-06-21 18:20:32', NULL),
(161, 'Abdelrahman Ashraf', 'member_Abdelrahman Ashraf.jpg', '01143557272', 'Ashrakat2jgs@gmail.com', 'PV', '2020-06-21 18:23:15', '2020-06-21 18:23:15', NULL),
(162, 'Dalia Nasser', 'member_Dalia Nasser.jpg', '01100624781', 'ea3014876@gmail.com', 'PV', '2020-06-21 18:24:04', '2020-06-21 18:24:04', NULL),
(163, 'Fatma Abdelmoneim', 'member_Fatma Abdelmoneim.jpg', '01068485392', 'fabdelmonaem@gmail.com', 'PV', '2020-06-21 18:25:06', '2020-06-21 18:25:06', NULL),
(164, 'Hazem Elseify', 'member_Hazem Elseify.jpg', '01155055133', 'hazem.hassan.11.hh@gmail.com', 'PV', '2020-06-21 18:26:10', '2020-06-21 18:26:10', NULL),
(165, 'Kareem Ashraf', 'member_Kareem Ashraf.jpg', '01094655992', 'karim11ashraf@gmail.com', 'PV', '2020-06-21 18:26:49', '2020-06-21 18:26:49', NULL),
(166, 'Mohamed Ayman', 'member_Mohamed Ayman.jpg', '01128694321', 'mohamedayman18286@gmail.com', 'PV', '2020-06-21 18:27:46', '2020-06-21 18:27:46', NULL),
(167, 'Safaa Nasr', 'member_Safaa Nasr.jpg', '01126755824', 'Safaanasr302@gmail.com', 'PV', '2020-06-21 18:28:26', '2020-06-21 18:28:26', NULL),
(168, 'Samaa Eid', 'member_Samaa Eid.jpg', '01142171087', 'samaa.eiada@gmail.com', 'PV', '2020-06-21 18:29:03', '2020-06-21 18:29:03', NULL),
(169, 'Yara Mohamed', 'member_Yara Mohamed.jpg', '01098256980', 'yara8484@yahoo.com', 'PV', '2020-06-21 18:30:17', '2020-06-21 18:30:17', NULL),
(170, 'Ahmed Adel', 'member_Ahmed Adel.jpg', '01120373470', 'ahmaddola10@yahoo.com', 'PV', '2020-06-21 18:31:00', '2020-06-21 18:31:00', NULL),
(171, 'Ahmed El Sayed', 'member_Ahmed El Sayed.jpg', '01128611570', 'ahmmedelsaayed@gmail.com', 'PV', '2020-06-21 18:31:46', '2020-06-21 18:31:46', NULL),
(172, 'Anas Essam', 'member_Anas Essam.jpg', '01094201827', 'nansans200@gmail.com', 'PV', '2020-06-21 18:32:31', '2020-06-21 18:32:31', NULL),
(173, 'Hazem El Jafry', 'member_Hazem El Jafry.jpg', '01100058663', 'hazemhamada525@gmail.com', 'PV', '2020-06-21 18:35:12', '2020-06-21 18:35:12', NULL),
(174, 'Mohamed Adel', 'member_Mohamed Adel.jpg', '01555348880', 'm.adel.elhefnawy@gmail.com', 'PV', '2020-06-21 18:36:09', '2020-06-21 18:36:09', NULL),
(175, 'Shaza Motaz', 'member_Shaza Motaz.jpg', '01004477919', 'shazamotaz12@gmail.com', 'PV', '2020-06-21 18:36:52', '2020-06-21 18:36:52', NULL),
(176, 'Amany Shaaban', 'member_Amany Shaaban.jpg', '01141056952', 'amanyshaban221@gmail.com', 'Magazine', '2020-06-21 18:38:40', '2020-06-21 18:38:40', NULL),
(177, 'Mariem Ahmed', 'member_Mariem Ahmed.jpg', '01002048953', 'mariem@gmail.com', 'Magazine', '2020-06-21 18:39:30', '2020-06-21 18:39:30', NULL),
(178, 'Salma Samir', 'member_Salma Samir.jpg', '01021848004', 'salmasamir822@gmail.com', 'Magazine', '2020-06-21 18:40:37', '2020-06-21 18:40:37', NULL),
(179, 'Shahinaz Shawkat', 'member_Shahinaz Shawkat.jpg', '01280817776', 'shahinazshawkat.44@gmail.com', 'Magazine', '2020-06-21 18:41:23', '2020-06-21 18:41:23', NULL),
(180, 'Sohaila Ehab', 'member_Sohaila Ehab.jpg', '01148890477', 'sohailaehab137@gmail.com', 'Magazine', '2020-06-21 18:41:59', '2020-06-21 18:41:59', NULL),
(181, 'Yasmine el shabrawy', 'member_Yasmine el shabrawy.jpg', '0115 7088992', 'yaly2442@gmail.com', 'Magazine', '2020-06-21 18:43:04', '2020-06-21 18:43:04', NULL),
(182, 'Mohamed Saeed', 'member_Mohamed Saeed.jpg', '01143354928', 'saeedmuhammad728@gmail.com', 'HB', '2020-06-21 13:44:42', '2020-06-21 13:44:42', 'Magazine Writer'),
(183, 'Mai Abdelhamed', 'member_Mai Abdelhamed.jpg', '01122773774', 'mayoymohamed24@gmail.com', 'HB', '2020-06-21 13:36:44', '2020-06-21 13:36:44', 'Magazine Editor');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2020_03_28_081253_create_events_table', 1),
(11, '2020_03_28_081333_create_members_table', 1),
(12, '2020_03_28_225447_create_contacts_table', 1),
(13, '2020_06_25_215204_add_job_title_to_members_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Minders', 'Minders@2020', NULL, '$2y$10$ckpw6Ia0VqtuXheOm84DpOcZqwZ/Xy5UUu3uPjMeWD2BsUONYyoTm', NULL, '2020-06-21 08:45:45', '2020-06-21 08:45:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
