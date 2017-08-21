-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2017 at 09:46 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year_publication` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `title`, `description`, `year_publication`, `path`) VALUES
(4, 'Film 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas suscipit elit odio, cursus fermentum nisi egestas vitae. Sed vestibulum nunc ut ipsum eleifend accumsan. Sed id elementum mi. Donec ultricies turpis libero, et pretium tortor placerat nec. Suspendisse potenti. Integer vehicula, risus quis sagittis tristique, massa velit porttitor ipsum, quis scelerisque velit metus et ante. Sed rutrum suscipit orci at laoreet. Fusce sit amet sapien in metus cursus fermentum egestas ac enim. Fusce id tellus consequat, ornare diam at, vestibulum est.', '1998', 'hancock.jpg'),
(6, 'Film 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas suscipit elit odio, cursus fermentum nisi egestas vitae. Sed vestibulum nunc ut ipsum eleifend accumsan. Sed id elementum mi. Donec ultricies turpis libero, et pretium tortor placerat nec. Suspendisse potenti. Integer vehicula, risus quis sagittis tristique, massa velit porttitor ipsum, quis scelerisque velit metus et ante. Sed rutrum suscipit orci at laoreet. Fusce sit amet sapien in metus cursus fermentum egestas ac enim. Fusce id tellus consequat, ornare diam at, vestibulum est.', '2000', 'M_M_smith.jpg'),
(8, 'Film 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas suscipit elit odio, cursus fermentum nisi egestas vitae. Sed vestibulum nunc ut ipsum eleifend accumsan. Sed id elementum mi. Donec ultricies turpis libero, et pretium tortor placerat nec. Suspendisse potenti. Integer vehicula, risus quis sagittis tristique, massa velit porttitor ipsum, quis scelerisque velit metus et ante. Sed rutrum suscipit orci at laoreet. Fusce sit amet sapien in metus cursus fermentum egestas ac enim. Fusce id tellus consequat, ornare diam at, vestibulum est.', '1992', '10155112_837363036328128_2392618459993446788_n.jpg'),
(9, 'Film 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas suscipit elit odio, cursus fermentum nisi egestas vitae. Sed vestibulum nunc ut ipsum eleifend accumsan. Sed id elementum mi. Donec ultricies turpis libero, et pretium tortor placerat nec. Suspendisse potenti. Integer vehicula, risus quis sagittis tristique, massa velit porttitor ipsum, quis scelerisque velit metus et ante. Sed rutrum suscipit orci at laoreet. Fusce sit amet sapien in metus cursus fermentum egestas ac enim. Fusce id tellus consequat, ornare diam at, vestibulum est.', '2012', 'ocean_13.jpg'),
(10, 'Film 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas suscipit elit odio, cursus fermentum nisi egestas vitae. Sed vestibulum nunc ut ipsum eleifend accumsan. Sed id elementum mi. Donec ultricies turpis libero, et pretium tortor placerat nec. Suspendisse potenti. Integer vehicula, risus quis sagittis tristique, massa velit porttitor ipsum, quis scelerisque velit metus et ante. Sed rutrum suscipit orci at laoreet. Fusce sit amet sapien in metus cursus fermentum egestas ac enim. Fusce id tellus consequat, ornare diam at, vestibulum est.', '2010', 'MIBII.jpg'),
(11, 'Film 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas suscipit elit odio, cursus fermentum nisi egestas vitae. Sed vestibulum nunc ut ipsum eleifend accumsan. Sed id elementum mi. Donec ultricies turpis libero, et pretium tortor placerat nec. Suspendisse potenti. Integer vehicula, risus quis sagittis tristique, massa velit porttitor ipsum, quis scelerisque velit metus et ante. Sed rutrum suscipit orci at laoreet. Fusce sit amet sapien in metus cursus fermentum egestas ac enim. Fusce id tellus consequat, ornare diam at, vestibulum est.', '1985', 'ocean_11.jpg'),
(12, 'Film 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas suscipit elit odio, cursus fermentum nisi egestas vitae. Sed vestibulum nunc ut ipsum eleifend accumsan. Sed id elementum mi. Donec ultricies turpis libero, et pretium tortor placerat nec. Suspendisse potenti. Integer vehicula, risus quis sagittis tristique, massa velit porttitor ipsum, quis scelerisque velit metus et ante. Sed rutrum suscipit orci at laoreet. Fusce sit amet sapien in metus cursus fermentum egestas ac enim. Fusce id tellus consequat, ornare diam at, vestibulum est.', '2017', '10402758_837845196279912_6048699737922855032_n.jpg'),
(13, 'Film 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas suscipit elit odio, cursus fermentum nisi egestas vitae. Sed vestibulum nunc ut ipsum eleifend accumsan. Sed id elementum mi. Donec ultricies turpis libero, et pretium tortor placerat nec. Suspendisse potenti. Integer vehicula, risus quis sagittis tristique, massa velit porttitor ipsum, quis scelerisque velit metus et ante. Sed rutrum suscipit orci at laoreet. Fusce sit amet sapien in metus cursus fermentum egestas ac enim. Fusce id tellus consequat, ornare diam at, vestibulum est.', '2014', 'Dragon_ball_z_3.jpg'),
(14, 'Film 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas suscipit elit odio, cursus fermentum nisi egestas vitae. Sed vestibulum nunc ut ipsum eleifend accumsan. Sed id elementum mi. Donec ultricies turpis libero, et pretium tortor placerat nec. Suspendisse potenti. Integer vehicula, risus quis sagittis tristique, massa velit porttitor ipsum, quis scelerisque velit metus et ante. Sed rutrum suscipit orci at laoreet. Fusce sit amet sapien in metus cursus fermentum egestas ac enim. Fusce id tellus consequat, ornare diam at, vestibulum est.', '2011', '10155112_837363036328128_2392618459993446788_n.jpg'),
(16, 'Film 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque feugiat lobortis efficitur. Pellentesque fringilla ipsum ut tincidunt viverra. In euismod, metus in vehicula consequat, tortor eros vestibulum nibh, ac luctus mi turpis sit amet orci. Phasellus ligula leo, egestas quis venenatis a, auctor at mi. Pellentesque sodales, eros a iaculis interdum, leo dui pharetra erat, at rhoncus orci nisl in eros. Morbi imperdiet libero sed diam lacinia molestie. Ut id accumsan purus. Sed eget cursus ante.', '1994', 'one_piece.jpg'),
(20, 'Film 11', 'test', '1991', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `film_persons`
--

CREATE TABLE `film_persons` (
  `film_id` int(11) NOT NULL,
  `persons_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `film_persons`
--

INSERT INTO `film_persons` (`film_id`, `persons_id`) VALUES
(4, 13),
(4, 14),
(4, 15),
(6, 19),
(6, 20),
(6, 21),
(8, 14),
(8, 15),
(8, 16),
(9, 14),
(9, 21),
(9, 22),
(10, 13),
(10, 15),
(10, 17),
(10, 20),
(11, 14),
(11, 16),
(11, 19),
(12, 13),
(12, 14),
(12, 15),
(13, 13),
(13, 15),
(13, 17),
(13, 20),
(14, 13),
(14, 14),
(14, 15),
(16, 13),
(16, 14),
(16, 15),
(20, 13);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `role_id`, `name`, `surname`, `date_birth`) VALUES
(13, 8, 'John', 'Doe(producer)', '1945-04-08'),
(14, 9, 'John1', 'Doe2(director)', '1957-08-10'),
(15, 7, 'John3', 'Doe3(actor)', '1982-10-15'),
(16, 8, 'John2', 'Doe2(producer)', '1930-06-06'),
(17, 7, 'Žika', 'Pavlović(actor)', '1930-05-09'),
(18, 7, 'Dragan', 'Bjelogrlić(actor)', '1974-04-09'),
(19, 7, 'Ljubiša', 'Samarđić(actor)', '1930-06-08'),
(20, 7, 'John4', 'Doe4(director)', '1920-01-01'),
(21, 8, 'John5', 'Doe5(producer)', '2006-07-22'),
(22, 7, 'John6', 'Doe6(actor)', '1927-07-09'),
(23, 9, 'Pero', 'Peric(director)', '1976-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(7, 'actor'),
(8, 'producer'),
(9, 'director');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8244BE222B36786B` (`title`),
  ADD UNIQUE KEY `UNIQ_8244BE22DE31B982` (`year_publication`);

--
-- Indexes for table `film_persons`
--
ALTER TABLE `film_persons`
  ADD PRIMARY KEY (`film_id`,`persons_id`),
  ADD KEY `IDX_956E3E94567F5183` (`film_id`),
  ADD KEY `IDX_956E3E94FE812AD` (`persons_id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A25CC7D3D60322AC` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `film_persons`
--
ALTER TABLE `film_persons`
  ADD CONSTRAINT `FK_956E3E94567F5183` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_956E3E94FE812AD` FOREIGN KEY (`persons_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `FK_A25CC7D3D60322AC` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
