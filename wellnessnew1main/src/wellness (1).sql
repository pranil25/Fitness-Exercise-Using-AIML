-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2022 at 02:38 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wellness`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_ID` int(11) NOT NULL,
  `ArticleTitle` varchar(255) NOT NULL,
  `ArticleAuthors` varchar(255) NOT NULL,
  `urls` varchar(225) NOT NULL,
  `ArticleTopic_1` varchar(225) DEFAULT NULL,
  `ArticleTopic_2` varchar(225) DEFAULT NULL,
  `ArticleTopic_3` varchar(225) DEFAULT NULL,
  `ArticleTag_1` varchar(225) DEFAULT NULL,
  `ArticleTag_2` varchar(225) DEFAULT NULL,
  `ArticleTag_3` varchar(225) DEFAULT NULL,
  `ArticleTag_4` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_ID`, `ArticleTitle`, `ArticleAuthors`, `urls`, `ArticleTopic_1`, `ArticleTopic_2`, `ArticleTopic_3`, `ArticleTag_1`, `ArticleTag_2`, `ArticleTag_3`, `ArticleTag_4`) VALUES
(1, 'Diet Plans for Obese People', 'KELSEY CASSELBURY', 'https://www.livestrong.com/article/304859-diet-plans-for-obese-people/', 'obese', 'food', 'diet plan', 'healthy', 'eating', 'lose weight', 'null'),
(2, 'Exercise for Obese People', 'Shirley Armstrong', 'https://www.healthline.com/health/fitness-exercise/exercise-for-obese-people#4', 'obese', 'exercise', 'fitness plan', 'healthy', 'fit', 'lose weight', 'null'),
(3, '10 Exercise to keep you healthy and fit', 'Tom MacMurry', 'https://www.daimanuel.com/2014/03/02/top-10-best-exercises-to-keep-you-healthy-and-fit/', 'fitness', 'food', 'exercise', 'healthy', 'stay fit', 'lose weight', 'null'),
(4, 'How to strengthen the lower back', ' Bethany Cadman', 'https://www.medicalnewstoday.com/articles/323204', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cardiotracker`
--

CREATE TABLE `cardiotracker` (
  `username` varchar(255) NOT NULL,
  `cardio_date` date NOT NULL,
  `cardio_minutes` int(11) DEFAULT NULL,
  `cardio_heartrate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cardiotracker`
--

INSERT INTO `cardiotracker` (`username`, `cardio_date`, `cardio_minutes`, `cardio_heartrate`) VALUES
('Frank', '2019-06-02', 30, 90),
('Frank', '2019-06-04', 30, 92),
('Frank', '2019-06-05', 35, 90),
('Frank', '2019-06-06', 30, 90),
('Frank', '2019-06-08', 35, 96),
('Frank', '2019-06-09', 36, 96),
('Frank', '2019-06-10', 37, 97),
('Frank', '2019-06-12', 35, 95),
('Frank', '2019-06-14', 33, 94),
('Frank', '2019-06-16', 30, 100),
('Frank', '2019-06-18', 29, 102),
('Frank', '2019-06-20', 35, 99),
('Frank', '2019-06-22', 37, 102),
('Frank', '2019-06-24', 40, 105),
('Frank', '2019-06-25', 44, 100),
('Frank', '2019-06-26', 40, 102),
('Frank', '2019-06-28', 38, 103),
('Frank', '2019-06-30', 42, 105),
('jeff25', '2022-09-06', 60, 80);

-- --------------------------------------------------------

--
-- Table structure for table `challenges`
--

CREATE TABLE `challenges` (
  `username` varchar(225) NOT NULL,
  `challenge_name` varchar(255) NOT NULL,
  `submission` text NOT NULL,
  `points_granted` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `diettracker`
--

CREATE TABLE `diettracker` (
  `username` varchar(255) NOT NULL,
  `diet_date` date NOT NULL,
  `calories_consumed` int(11) DEFAULT 0,
  `weight` int(11) DEFAULT NULL,
  `gProteinConsumed` int(11) DEFAULT 0,
  `gCarbsConsumed` int(11) DEFAULT 0,
  `gFatConsumed` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diettracker`
--

INSERT INTO `diettracker` (`username`, `diet_date`, `calories_consumed`, `weight`, `gProteinConsumed`, `gCarbsConsumed`, `gFatConsumed`) VALUES
('Frank', '2019-06-02', 2000, 96, 92, 122, 36),
('Frank', '2019-06-04', 2300, 93, 103, 107, 29),
('Frank', '2019-06-06', 1977, 95, 77, 155, 27),
('Frank', '2019-06-10', 1700, 95, 90, 122, 42),
('Frank', '2019-06-12', 1888, 94, 66, 150, 39),
('Frank', '2019-06-14', 2300, 92, 90, 88, 57),
('Frank', '2019-06-18', 1987, 94, 99, 120, 40),
('Frank', '2019-06-20', 1866, 93, 88, 120, 29),
('Frank', '2019-06-24', 1923, 91, 103, 122, 29),
('jeff25', '2022-08-01', 95, 54, 1, 25, 0),
('jeff25', '2022-09-07', 777, 55, 37, 50, 13),
('jeff25', '2022-09-09', 0, 55, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `exID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `muscleGroup` varchar(20) DEFAULT NULL,
  `equipment` varchar(100) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`exID`, `name`, `muscleGroup`, `equipment`, `videoURL`, `imagePath`) VALUES
(1, 'Flat BB Bench Press', 'Chest', 'Barbell, Flat Bench Press', 'https://www.youtube.com/watch?v=rT7DgCr-3pg', 'https://i.imgur.com/BDDHOpM.png'),
(2, 'Incline BB Bench Press', 'Chest', 'Barbell, Incline Bench Press', 'https://www.youtube.com/watch?v=jPLdzuHckI8', 'https://i.imgur.com/cieS3wL.png'),
(3, 'Decline BB Bench Press', 'Chest', 'Barbell, Decline Bench Press', 'https://www.youtube.com/watch?v=NM5lbuq92Aw', 'https://i.imgur.com/hvykA7S.png'),
(4, 'Flat DB Bench Press', 'Chest', 'Dumbells, Flat Bench', 'https://www.youtube.com/watch?v=ZzFblmTUxYU', 'https://i.imgur.com/vnanS8C.png'),
(5, 'Incline DB Bench Press', 'Chest', 'Dumbells, Incline Bench', 'https://www.youtube.com/watch?v=hChjZQhX1Ls', 'https://i.imgur.com/HhVKYVN.png'),
(6, 'Decline DB Bench Press', 'Chest', 'Dumbells, Decline Bench', 'https://www.youtube.com/watch?v=Pf1nDoqx_1A', 'https://i.imgur.com/juLutMO.png'),
(7, 'Flat DB Fly', 'Chest', 'Dumbells, Flat Bench', 'https://www.youtube.com/watch?v=MxfVDZrsdZ0', 'https://i.imgur.com/2qBwFYD.png'),
(8, 'Incline DB Fly', 'Chest', 'Dumbells, Incline Bench', 'https://www.youtube.com/watch?v=ajdFwa-qM98', 'https://i.imgur.com/1A9licU.png'),
(9, 'Decline DB Fly', 'Chest', 'Dumbells, Decline Bench', 'https://www.youtube.com/watch?v=IMALXhhHRKM', 'https://i.imgur.com/otHNldC.png'),
(10, 'Cable Fly', 'Chest', 'Dual Cable Machine', 'https://www.youtube.com/watch?v=WEM9FCIPlxQ', 'https://i.imgur.com/JpEmGrW.png'),
(11, 'Bent Over BB Row', 'Back', 'Barbell', 'https://www.youtube.com/watch?v=axoeDmW0oAY&t=255s', 'https://i.imgur.com/p0v0EVg.png'),
(12, 'Bent Over DB Row', 'Back', 'Dumbells, Flat Bench', 'https://www.youtube.com/watch?v=djKXLt7kv7Q', 'https://i.imgur.com/jmbemqf.png'),
(13, 'Seated Cable Row', 'Back', 'Cable Machine, Grip Attachment', 'https://www.youtube.com/watch?v=4mRy8U542Fo', 'https://i.imgur.com/dE5VJeu.png'),
(14, 'Lat Pull Down (Wide)', 'Back', 'Lat Pull Down Machine, Wide Bar Attachment', 'https://www.youtube.com/watch?v=lueEJGjTuPQ', 'https://i.imgur.com/4vHMIk1.png'),
(15, 'Lat Pull Down (Close)', 'Back', 'Lat Pull Down Machine, V-Grip Attachment', 'https://www.youtube.com/watch?v=ecRF8ERf2q4', 'https://i.imgur.com/9FsHrzx.png'),
(16, 'Cable Lat Push Down', 'Back', 'Single Cable, Flat Bar Attachment', 'https://www.youtube.com/watch?v=aXTKdnCIyWA', 'https://i.imgur.com/Ds4qBiY.png'),
(17, 'Deadlift', 'Back', 'Barbell', 'https://www.youtube.com/watch?v=VL5Ab0T07e4', 'https://i.imgur.com/te1Gt4y.png'),
(18, 'DB Kickback', 'Triceps', 'Dumbells', 'https://www.youtube.com/watch?v=m9me06UBPKc', 'https://i.imgur.com/2yAqJsK.png'),
(19, 'Skull Crusher', 'Triceps', 'EZ-Curl Bar, Flat Bench', 'https://www.youtube.com/watch?v=NIWKqcmpBug', 'https://i.imgur.com/OcrzGEG.png'),
(20, 'Cable Pushdown', 'Triceps', 'Single Cable Machine, Bar Attachment', 'https://www.youtube.com/watch?v=8CbJK7mmisE', 'https://i.imgur.com/CbqnXER.png'),
(21, 'Close Grip BB Bench Press', 'Triceps', 'Flat Bench Press, Barbell', 'https://www.youtube.com/watch?v=cXbSJHtjrQQ', 'https://i.imgur.com/LQ0kLBW.png'),
(22, 'Dips', 'Triceps', 'Dip Machine/Two Benches', 'https://www.youtube.com/watch?v=6MwtkyNC2ZY', 'https://i.imgur.com/9idxeW7.png'),
(23, 'Overhead Extensions', 'Triceps', 'Dumbell', 'https://www.youtube.com/watch?v=-Vyt2QdsR7E', 'https://i.imgur.com/OBfROOW.png'),
(24, 'One Arm Overhead Extensions', 'Triceps', 'Dumbell', 'https://www.youtube.com/watch?v=_gsUck-7M74', 'https://i.imgur.com/aZibfL4.png'),
(25, 'Alternating DB Curl', 'Biceps', 'Dumbells', 'https://www.youtube.com/watch?v=pzBgFa7cZ_g', 'https://i.imgur.com/U033iS6.png'),
(26, 'BB Curl', 'Biceps', 'Barbell', 'https://www.youtube.com/watch?v=dDI8ClxRS04', 'https://i.imgur.com/6VNnnCz.png'),
(27, 'Seated Incline DB Curl', 'Biceps', 'Inclined Bench, Dumbells', 'https://www.youtube.com/watch?v=t-gztaNpemg', 'https://i.imgur.com/uoC0iez.png'),
(28, 'Hammer Curl', 'Biceps', 'Dumbells', 'https://www.youtube.com/watch?v=0IAM2YtviQY', 'https://i.imgur.com/h5BI7ri.png'),
(29, 'Cable Curl', 'Biceps', 'Single Cable Machine, Bar Attachment', 'https://www.youtube.com/watch?v=840rgLSw-84', 'https://i.imgur.com/fyzvIrD.png'),
(30, 'BB Preacher Curl', 'Biceps', 'Barbell, Preacher Curl Bench', 'https://www.youtube.com/watch?v=Gydpcouclx8', 'https://i.imgur.com/s536IwS.png'),
(31, 'DB Preacher Curl', 'Biceps', 'Dumbell, Preacher Curl Bench', 'https://www.youtube.com/watch?v=vngli9UR6Hw', 'https://i.imgur.com/Qscml4u.png'),
(32, 'Back Squat', 'Legs', 'Barbell, Squat Rack', 'https://www.youtube.com/watch?v=bEv6CCg2BC8', 'https://i.imgur.com/XPa1Skq.png'),
(33, 'Front Squat', 'Legs', 'Barbell, Squat Rack', 'https://www.youtube.com/watch?v=v-mQm_droHg', 'https://i.imgur.com/SPkfTSt.png'),
(34, 'Quad Extensions', 'Legs', 'Quad Extension Machine', 'https://www.youtube.com/watch?v=ljO4jkwv8wQ', 'https://i.imgur.com/vfNWllI.png'),
(35, 'Leg Press', 'Legs', 'Leg Press Machine', 'https://www.youtube.com/watch?v=W1SD96lrudY', 'https://i.imgur.com/mR0OScX.png'),
(36, 'Hamstring Extensions', 'Legs', 'Hamstring Extension Machine', 'https://www.youtube.com/watch?v=Mv_8-XwVMFQ', 'https://i.imgur.com/ZuLY0xv.png'),
(37, 'BB Lunges', 'Legs', 'Barbell', 'https://www.youtube.com/watch?v=ci4rsmlOk24', 'https://i.imgur.com/Co34ffj.png'),
(38, 'DB Lunges', 'Legs', 'Dumbells', 'https://www.youtube.com/watch?v=auyE2hZGB9k', 'https://i.imgur.com/KtZceFg.png'),
(39, 'BB Calf Raise', 'Legs', 'Barbell, Platform', 'https://www.youtube.com/watch?v=BIRC4Qj7tsw', 'https://i.imgur.com/mBiWi5h.png'),
(40, 'DB Calf Raise', 'Legs', 'Dumbells, Platform', 'https://www.youtube.com/watch?v=wxwY7GXxL4k', 'https://i.imgur.com/pEbbddQ.png'),
(41, 'Seated DB Shoulder Press', 'Shoulders', 'Back-Supporting Bench, Dumbells', 'https://www.youtube.com/watch?v=lfb3ffbrd4Q', 'https://i.imgur.com/J6eyRg5.png'),
(42, 'Arnolds', 'Shoulders', 'Back-Suppoirting Bench, Dumbells', 'https://www.youtube.com/watch?v=6Z15_WdXmVw', 'https://i.imgur.com/M01tiSN.png'),
(43, 'Lateral Raises', 'Shoulders', 'Dumbells', 'https://www.youtube.com/watch?v=b_LEX4n9lOs', 'https://i.imgur.com/TriLsBm.png'),
(44, 'DB Front Delt Raises', 'Shoulders', 'Dumbells', 'https://www.youtube.com/watch?v=ALxDJEStRCA', 'https://i.imgur.com/foSqKxM.png'),
(45, 'EZ-Curl Front Delt Raises', 'Shoulders', 'EZ-Curl Bar', 'https://www.youtube.com/watch?v=sxeY7kMYhLc', 'https://i.imgur.com/RyBuhAT.png'),
(46, 'Bent Over Rear Delt Fly', 'Shoulders', 'Dumbells', 'https://www.youtube.com/watch?v=EA7u4Q_8HQ0', 'https://i.imgur.com/TA2iiCr.png'),
(47, 'Rear Delt Cable Fly', 'Shoulders', 'Dual Cable Machines, Hand Grip Attachment', 'https://www.youtube.com/watch?v=JENKmsEZQO8', 'https://i.imgur.com/EUf3Mrw.png'),
(48, 'Seated BB Military Press', 'Shoulders', 'Back-Supporting Bench, Barbell', 'https://www.youtube.com/watch?v=uiYOYMDiA44', 'https://i.imgur.com/wAE4F5F.png'),
(49, 'Standing BB Military Press', 'Shoulders', 'Barbell', 'https://www.youtube.com/watch?v=_RlRDWO2jfg', 'https://i.imgur.com/xmWQfaI.png');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(255) NOT NULL,
  `fromEmail` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `followedexercises`
--

CREATE TABLE `followedexercises` (
  `username` varchar(255) NOT NULL,
  `user_exercise1_name` varchar(255) DEFAULT NULL,
  `user_exercise2_name` varchar(255) DEFAULT NULL,
  `user_exercise3_name` varchar(255) DEFAULT NULL,
  `user_exercise4_name` varchar(255) DEFAULT NULL,
  `user_exercise5_name` varchar(255) DEFAULT NULL,
  `user_exercise6_name` varchar(255) DEFAULT NULL,
  `user_exercise7_name` varchar(255) DEFAULT NULL,
  `user_exercise8_name` varchar(255) DEFAULT NULL,
  `user_exercise9_name` varchar(255) DEFAULT NULL,
  `user_exercise10_name` varchar(255) DEFAULT NULL,
  `user_exercise11_name` varchar(255) DEFAULT NULL,
  `user_exercise12_name` varchar(255) DEFAULT NULL,
  `user_exercise13_name` varchar(255) DEFAULT NULL,
  `user_exercise14_name` varchar(255) DEFAULT NULL,
  `user_exercise15_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `followedexercises`
--

INSERT INTO `followedexercises` (`username`, `user_exercise1_name`, `user_exercise2_name`, `user_exercise3_name`, `user_exercise4_name`, `user_exercise5_name`, `user_exercise6_name`, `user_exercise7_name`, `user_exercise8_name`, `user_exercise9_name`, `user_exercise10_name`, `user_exercise11_name`, `user_exercise12_name`, `user_exercise13_name`, `user_exercise14_name`, `user_exercise15_name`) VALUES
('admin101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Claire_Bear', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Frank', 'Standing Press', 'Squat', 'Bench Press', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Jeff25', 'PULL UPS', 'Dumbell Press', 'bicep curls', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Natasha_BornToTrumpet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Pankti_coolBean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Steven_Swag', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fooditem`
--

CREATE TABLE `fooditem` (
  `name` varchar(225) NOT NULL,
  `quantity` varchar(225) NOT NULL,
  `calories` int(11) NOT NULL,
  `gProtein` int(11) NOT NULL,
  `gFat` int(11) NOT NULL,
  `gCarbs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fooditem`
--

INSERT INTO `fooditem` (`name`, `quantity`, `calories`, `gProtein`, `gFat`, `gCarbs`) VALUES
('Apple', 'One apple(95g)', 95, 1, 0, 25),
('Banana', 'Banana (118g)', 105, 1, 0, 27),
('Brussel Sprouts', '100g', 43, 3, 0, 9),
('Carrot', '100g', 41, 1, 0, 10),
('Chicken', '100g', 239, 54, 4, 0),
('Corn', '100g', 96, 3, 2, 21),
('Eggs', 'One egg', 78, 6, 5, 1),
('Milk', 'Cup', 103, 8, 2, 12),
('Mushroom', '100g', 22, 3, 0, 3),
('Potato', '100g', 77, 2, 0, 17),
('Roti', '100g', 264, 8, 0, 20),
('Salmon', '100g', 208, 20, 13, 0),
('Spinach', '100g', 23, 3, 0, 4),
('Tomato', '100g', 18, 1, 0, 4),
('White bread', 'Slice', 79, 3, 1, 15),
('Whole wheat bread', 'Slice', 69, 4, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `listofchallenges`
--

CREATE TABLE `listofchallenges` (
  `challenge_name` varchar(225) NOT NULL,
  `challenge_description` varchar(225) NOT NULL,
  `points_submission` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listofchallenges`
--

INSERT INTO `listofchallenges` (`challenge_name`, `challenge_description`, `points_submission`) VALUES
('Bike to work', 'Bike to work 5 times a month', '25'),
('Running 10 km', 'Run 10 km five times a month', '15'),
('Swimming 15 km', 'Swim 15 km twice this month', '15'),
('Take a hike', 'Take a hike and let us know where you went!', '10');

-- --------------------------------------------------------

--
-- Table structure for table `userpoints`
--

CREATE TABLE `userpoints` (
  `username` varchar(225) NOT NULL,
  `points` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `password`, `first_name`, `last_name`) VALUES
('admin101', 'admin@well.com', 'admin2', 'admin', 'admin'),
('Claire_Bear', 'claire@gmail.com', '6F5393979D674DE36C433B47B7D8908E', 'Claire', 'Delany'),
('Frank', 'frank@gmail.com', '912ec803b2ce49e4a541068d495ab570', 'Frank', 'Guy'),
('Jeff25', 'pranilspy25@gmail.com', '3d833e4f1ef8f47aa09b8f92e3e6b086', 'Jeff', 'P'),
('Natasha_BornToTrumpet', 'natasha@gmail.com', '6F5393979D674DE36C433B47B7D8908E', 'Natasha', 'Born'),
('Pankti_coolBean', 'pankti@gmail.com', '6F5393979D674DE36C433B47B7D8908E', 'Pankti', 'Shah'),
('Steven_Swag', 'steven@gmail.com', '6F5393979D674DE36C433B47B7D8908E', 'Steven', 'Taylor');

-- --------------------------------------------------------

--
-- Table structure for table `userwellnesstest`
--

CREATE TABLE `userwellnesstest` (
  `testID` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `Age` int(11) NOT NULL,
  `Height_cm` varchar(225) NOT NULL,
  `Weight_kg` varchar(225) NOT NULL,
  `BMI_calculated` varchar(225) NOT NULL,
  `Test_Date` date NOT NULL,
  `Sex` varchar(225) NOT NULL,
  `ActivityLevel` varchar(225) NOT NULL,
  `WeightGoal` varchar(225) NOT NULL,
  `restingPulse` varchar(225) NOT NULL,
  `MaxHeartRate` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userwellnesstest`
--

INSERT INTO `userwellnesstest` (`testID`, `username`, `Age`, `Height_cm`, `Weight_kg`, `BMI_calculated`, `Test_Date`, `Sex`, `ActivityLevel`, `WeightGoal`, `restingPulse`, `MaxHeartRate`) VALUES
(1, 'Jeff25', 20, '1.9', '52', '14.404432132964', '2022-09-07', 'M', '4', '3', '80', '120'),
(2, 'jeff25', 20, '1.78', '55', '17.358919328368', '2022-09-23', 'M', '3', '3', '80', '200'),
(3, 'jeff25', 21, '1.85', '56', '16.3623082542', '2022-09-10', 'M', '5', '3', '90', '190'),
(4, 'jeff25', 0, '0', '56', 'INF', '2022-09-08', 'A', '3', '45', 'uhh', 'hjbhjb');

-- --------------------------------------------------------

--
-- Table structure for table `weightliftingtracker`
--

CREATE TABLE `weightliftingtracker` (
  `username` varchar(255) NOT NULL,
  `weights_date` date NOT NULL,
  `user_exercise1_name` varchar(255) DEFAULT NULL,
  `user_exercise1_weight` int(11) DEFAULT NULL,
  `user_exercise1_reps` int(11) DEFAULT NULL,
  `user_exercise2_name` varchar(255) DEFAULT NULL,
  `user_exercise2_weight` int(11) DEFAULT NULL,
  `user_exercise2_reps` int(11) DEFAULT NULL,
  `user_exercise3_name` varchar(255) DEFAULT NULL,
  `user_exercise3_weight` int(11) DEFAULT NULL,
  `user_exercise3_reps` int(11) DEFAULT NULL,
  `user_exercise4_name` varchar(255) DEFAULT NULL,
  `user_exercise4_weight` int(11) DEFAULT NULL,
  `user_exercise4_reps` int(11) DEFAULT NULL,
  `user_exercise5_name` varchar(255) DEFAULT NULL,
  `user_exercise5_weight` int(11) DEFAULT NULL,
  `user_exercise5_reps` int(11) DEFAULT NULL,
  `user_exercise6_name` varchar(255) DEFAULT NULL,
  `user_exercise6_weight` int(11) DEFAULT NULL,
  `user_exercise6_reps` int(11) DEFAULT NULL,
  `user_exercise7_name` varchar(255) DEFAULT NULL,
  `user_exercise7_weight` int(11) DEFAULT NULL,
  `user_exercise7_reps` int(11) DEFAULT NULL,
  `user_exercise8_name` varchar(255) DEFAULT NULL,
  `user_exercise8_weight` int(11) DEFAULT NULL,
  `user_exercise8_reps` int(11) DEFAULT NULL,
  `user_exercise9_name` varchar(255) DEFAULT NULL,
  `user_exercise9_weight` int(11) DEFAULT NULL,
  `user_exercise9_reps` int(11) DEFAULT NULL,
  `user_exercise10_name` varchar(255) DEFAULT NULL,
  `user_exercise10_weight` int(11) DEFAULT NULL,
  `user_exercise10_reps` int(11) DEFAULT NULL,
  `user_exercise11_name` varchar(255) DEFAULT NULL,
  `user_exercise11_weight` int(11) DEFAULT NULL,
  `user_exercise11_reps` int(11) DEFAULT NULL,
  `user_exercise12_name` varchar(255) DEFAULT NULL,
  `user_exercise12_weight` int(11) DEFAULT NULL,
  `user_exercise12_reps` int(11) DEFAULT NULL,
  `user_exercise13_name` varchar(255) DEFAULT NULL,
  `user_exercise13_weight` int(11) DEFAULT NULL,
  `user_exercise13_reps` int(11) DEFAULT NULL,
  `user_exercise14_name` varchar(255) DEFAULT NULL,
  `user_exercise14_weight` int(11) DEFAULT NULL,
  `user_exercise14_reps` int(11) DEFAULT NULL,
  `user_exercise15_name` varchar(255) DEFAULT NULL,
  `user_exercise15_weight` int(11) DEFAULT NULL,
  `user_exercise15_reps` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weightliftingtracker`
--

INSERT INTO `weightliftingtracker` (`username`, `weights_date`, `user_exercise1_name`, `user_exercise1_weight`, `user_exercise1_reps`, `user_exercise2_name`, `user_exercise2_weight`, `user_exercise2_reps`, `user_exercise3_name`, `user_exercise3_weight`, `user_exercise3_reps`, `user_exercise4_name`, `user_exercise4_weight`, `user_exercise4_reps`, `user_exercise5_name`, `user_exercise5_weight`, `user_exercise5_reps`, `user_exercise6_name`, `user_exercise6_weight`, `user_exercise6_reps`, `user_exercise7_name`, `user_exercise7_weight`, `user_exercise7_reps`, `user_exercise8_name`, `user_exercise8_weight`, `user_exercise8_reps`, `user_exercise9_name`, `user_exercise9_weight`, `user_exercise9_reps`, `user_exercise10_name`, `user_exercise10_weight`, `user_exercise10_reps`, `user_exercise11_name`, `user_exercise11_weight`, `user_exercise11_reps`, `user_exercise12_name`, `user_exercise12_weight`, `user_exercise12_reps`, `user_exercise13_name`, `user_exercise13_weight`, `user_exercise13_reps`, `user_exercise14_name`, `user_exercise14_weight`, `user_exercise14_reps`, `user_exercise15_name`, `user_exercise15_weight`, `user_exercise15_reps`) VALUES
('Frank', '2019-06-01', 'Standing Press', 40, 25, 'Squat', 95, 25, 'Bench Press', 70, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Frank', '2019-06-03', 'Standing Press', 40, 25, 'Squat', 100, 25, 'Bench Press', 75, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Frank', '2019-06-06', 'Standing Press', 45, 25, 'Squat', 105, 25, 'Bench Press', 75, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Frank', '2019-06-10', 'Standing Press', 45, 25, 'Squat', 110, 25, 'Bench Press', 80, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Frank', '2019-06-15', 'Standing Press', 50, 25, 'Squat', 115, 25, 'Bench Press', 80, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Frank', '2019-06-18', 'Standing Press', 55, 25, 'Squat', 115, 25, 'Bench Press', 85, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Frank', '2019-06-22', 'Standing Press', 55, 25, 'Squat', 120, 25, 'Bench Press', 90, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Frank', '2019-06-26', 'Standing Press', 60, 25, 'Squat', 125, 25, 'Bench Press', 90, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Frank', '2019-06-30', 'Standing Press', 60, 25, 'Squat', 130, 25, 'Bench Press', 95, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('jeff25', '2022-09-06', 'PULL UPS', 10, 5, 'Dumbell Press', 20, 12, 'bicep curls', 20, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('jeff25', '2022-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Jeff25', '2022-09-09', NULL, NULL, NULL, 'Dumbell Press', 20, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_ID`),
  ADD UNIQUE KEY `urls` (`urls`);

--
-- Indexes for table `cardiotracker`
--
ALTER TABLE `cardiotracker`
  ADD PRIMARY KEY (`username`,`cardio_date`);

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD KEY `username` (`username`),
  ADD KEY `challenge_name` (`challenge_name`);

--
-- Indexes for table `diettracker`
--
ALTER TABLE `diettracker`
  ADD PRIMARY KEY (`username`,`diet_date`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`exID`);

--
-- Indexes for table `followedexercises`
--
ALTER TABLE `followedexercises`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `fooditem`
--
ALTER TABLE `fooditem`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `listofchallenges`
--
ALTER TABLE `listofchallenges`
  ADD PRIMARY KEY (`challenge_name`);

--
-- Indexes for table `userpoints`
--
ALTER TABLE `userpoints`
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `userwellnesstest`
--
ALTER TABLE `userwellnesstest`
  ADD PRIMARY KEY (`testID`);

--
-- Indexes for table `weightliftingtracker`
--
ALTER TABLE `weightliftingtracker`
  ADD PRIMARY KEY (`username`,`weights_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `exID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `userwellnesstest`
--
ALTER TABLE `userwellnesstest`
  MODIFY `testID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cardiotracker`
--
ALTER TABLE `cardiotracker`
  ADD CONSTRAINT `cardiotracker_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `challenges`
--
ALTER TABLE `challenges`
  ADD CONSTRAINT `challenges_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `challenges_ibfk_2` FOREIGN KEY (`challenge_name`) REFERENCES `listofchallenges` (`challenge_name`);

--
-- Constraints for table `diettracker`
--
ALTER TABLE `diettracker`
  ADD CONSTRAINT `diettracker_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `followedexercises`
--
ALTER TABLE `followedexercises`
  ADD CONSTRAINT `followedexercises_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `userpoints`
--
ALTER TABLE `userpoints`
  ADD CONSTRAINT `userpoints_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `weightliftingtracker`
--
ALTER TABLE `weightliftingtracker`
  ADD CONSTRAINT `weightliftingtracker_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
