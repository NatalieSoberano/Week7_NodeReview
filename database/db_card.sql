-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 05, 2019 at 04:13 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bio`
--

CREATE TABLE `tbl_bio` (
  `ID` tinyint(4) NOT NULL,
  `FaveID` tinyint(4) DEFAULT NULL,
  `Heading` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bio`
--

INSERT INTO `tbl_bio` (`ID`, `FaveID`, `Heading`, `image`, `description`) VALUES
(1, 1, 'Family', 'fam.png', 'My family is a very important part of my life. Some may say I do not have the typical family. I am the youngest of my blended family, by a lot. I have four older half-siblings, consisting of three sisters and one brother. In addition, I have three brother-in-laws, two nieces, and five nephews. I am often told that I am the glue that bonds my family together, a cherished role I take pride in. The large age gap is just another feature that makes my family anything but typical; my eldest sister and I are sixteen years apart and my sister closest in age to me is nine years older. Growing up, and still today, the word ‘half-sibling’ is only one I use to explain my family to an outsider. This term has no reflection on our bond. My siblings and I are all very close despite the large age gap. Them, alongside my parents, are who I look to for advice, guidance, support, and love.\r\n\r\nAs mentioned earlier in this post, I am lucky enough to be an aunt to seven adorable munchkins. Playing with them brings out my inner child, never failing to put a smile on their faces, and mine. In my opinion, they are four of the cutest kids ever, and each word they say melts my heart (especially when they tell me they love me, or say my name).'),
(2, 2, 'Friends', 'friends.png', 'My friends are also a huge aspect of my life. I have a very close friend group, most of whom I have known since my middle-school or elementary school days. I can always go to my friends for a shoulder to cry on, and generally, a good laugh. My friends and I spend tons of time together from doing school work, eating at cool restaurants, shopping at our favourite stores, seeing movies and even working out. With my friends, there is never a dull moment!'),
(3, 3, 'Traveling', 'travel.png', 'A dream of mine is to one day travel the world. Luckily, I have had the opportunity to travel to far and amazing places like Israel, Australia, Hong Kong, Shanghai, Philippines, Morocco, Vienna, Poland, San Fransisco, Los Angles, Rome, Mexico, Florida, New York and Las Vegas. I hope to continue to travel to new places and experience new cultures.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card`
--

CREATE TABLE `tbl_card` (
  `ID` int(11) NOT NULL,
  `avatar` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `Name` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_card`
--

INSERT INTO `tbl_card` (`ID`, `avatar`, `Name`) VALUES
(1, 'fam.png', 'Family'),
(2, 'friends.png', 'Friends'),
(3, 'travel.png', 'Travel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bio`
--
ALTER TABLE `tbl_bio`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_card`
--
ALTER TABLE `tbl_card`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bio`
--
ALTER TABLE `tbl_bio`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_card`
--
ALTER TABLE `tbl_card`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
