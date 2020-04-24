-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2020 at 07:23 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `translationpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `ENGLISH` varchar(255) NOT NULL,
  `ESPAGNOL` varchar(255) NOT NULL,
  `ARABIC` varchar(255) NOT NULL,
  `URDU` varchar(255) NOT NULL,
  `RUSSIAN` varchar(255) NOT NULL,
  `ITALIAN` varchar(255) NOT NULL,
  `FRENCH` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `ENGLISH`, `ESPAGNOL`, `ARABIC`, `URDU`, `RUSSIAN`, `ITALIAN`, `FRENCH`) VALUES
(1, 'hello', 'hola', 'مرحبا', 'ہیلو', 'привет', 'Ciao', 'bonjour'),
(2, 'good', 'buena', 'جيد', 'اچھی', 'хорошо', 'bene', 'bon'),
(3, 'i', 'quiero', 'انا', 'میں', 'я', 'io', 'je'),
(4, 'will', 'yo tengo', 'س', 'کریں گے', 'буду', 'farò', 'vais'),
(5, 'i\\\'am', 'yo soy', 'انا', 'میں ہوں', 'я', 'sono', 'je suis'),
(6, 'today', 'hoy', 'اليوم', 'آج', 'сегодня', 'oggi', 'aujourd\\\'huie'),
(7, 'understand', 'entender', 'افهم', 'سمجھ', 'Понимаю', 'capire', 'comprendre'),
(8, 'world', 'mundo', 'عالم', 'دنیا', 'жизнь', 'mondo', 'monde'),
(9, 'the', 'la', 'ال', 'ال', '\'\'', 'la', 'le'),
(10, 'to be', 'ser', 'ان يكون', 'بننا', 'быть', 'essere', 'étre'),
(11, 'better', 'mejor', 'احسن', 'بہتر', 'лучше', 'meglio', 'milleur'),
(18, 'he', 'li', 'هو', 'وہ', 'он', 'lui', 'il'),
(19, 'she', 'ŝi', 'هي', 'وہ', 'она', 'lei', 'elle'),
(20, 'is', 'estas', 'يكون', 'ہے', 'является', 'è', 'est'),
(21, 'father', 'الآب', 'الآب', 'باپ', 'отец', 'padre', 'père'),
(22, 'mother', 'patrino', 'أم', 'ماں', 'мать', 'madre', 'mère'),
(23, 'caring', 'zorgado', 'رعاية', 'دیکھ بھال', 'заботливая', 'cura', 'soins');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
