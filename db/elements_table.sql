-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Lut 2017, 15:59
-- Wersja serwera: 10.1.21-MariaDB
-- Wersja PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `api_elements`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `elements_table`
--

CREATE TABLE `elements_table` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `elements_table`
--

INSERT INTO `elements_table` (`id`, `name`, `description`, `amount`) VALUES
(1, 'test', 'test test test test', 3),
(2, 'test1', 'test1 test1 test1 test1', 5),
(3, 'justo', 'Lorem ipsum dolor sit amet, consectetuer', 3880),
(4, 'sed', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 2860),
(5, 'lorem', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 9075),
(6, 'ut,', 'Lorem ipsum dolor', 1450),
(7, 'et,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 9674),
(8, 'arcu.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 7045),
(9, 'purus', 'Lorem ipsum dolor sit amet,', 8218),
(10, 'vel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1528),
(11, 'facilisis.', 'Lorem', 6592),
(12, 'in', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 2009),
(13, 'nibh', 'Lorem ipsum dolor', 3199),
(14, 'consequat', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 9216),
(15, 'leo', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 512),
(16, 'lorem', 'Lorem ipsum', 6320),
(17, 'vulputate', 'Lorem ipsum dolor', 3015),
(18, 'adipiscing', 'Lorem ipsum dolor sit amet, consectetuer', 9859),
(19, 'purus,', 'Lorem', 4709),
(20, 'consectetuer', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 9349),
(21, 'accumsan', 'Lorem ipsum dolor sit amet,', 7109),
(22, 'urna', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 5855),
(23, 'ridiculus', 'Lorem ipsum dolor', 5923),
(24, 'lectus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 4177),
(25, 'Suspendisse', 'Lorem ipsum dolor sit', 2561),
(26, 'Donec', 'Lorem', 868),
(27, 'montes,', 'Lorem ipsum dolor sit amet, consectetuer', 1081),
(28, 'id,', 'Lorem', 9848),
(29, 'nec', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 7790),
(30, 'dolor.', 'Lorem ipsum dolor sit', 2578),
(31, 'arcu', 'Lorem ipsum dolor sit', 5262),
(32, 'venenatis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 9780),
(33, 'Duis', 'Lorem', 8345),
(34, 'ipsum', 'Lorem ipsum dolor', 3088),
(35, 'sit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 8659),
(36, 'ultricies', 'Lorem ipsum dolor sit amet, consectetuer', 5415),
(37, 'mauris', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 2845),
(38, 'hendrerit.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 2200),
(39, 'Fusce', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 6575),
(40, 'sem', 'Lorem ipsum', 2357),
(41, 'vulputate,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 3500),
(42, 'Aliquam', 'Lorem ipsum dolor sit', 2681),
(43, 'amet,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 4940),
(44, 'sed', 'Lorem ipsum dolor sit', 8944),
(45, 'ac', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 4640),
(46, 'ut', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 9439),
(47, 'dui.', 'Lorem ipsum dolor', 5270),
(48, 'amet,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 6238),
(49, 'arcu', 'Lorem ipsum dolor sit amet,', 754),
(50, 'ad', 'Lorem ipsum', 8144),
(51, 'Vivamus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 3507),
(52, 'sapien', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 1686),
(53, 'natoque', 'Lorem ipsum dolor sit', 8254),
(54, 'est.', 'Lorem ipsum', 354),
(55, 'tincidunt.', 'Lorem ipsum dolor', 5658),
(56, 'arcu', 'Lorem ipsum', 9327),
(57, 'a,', 'Lorem ipsum dolor', 6716),
(58, 'libero.', 'Lorem ipsum dolor sit amet,', 9698),
(59, 'Etiam', 'Lorem ipsum dolor sit amet,', 5483),
(60, 'in', 'Lorem', 4686),
(61, 'ante.', 'Lorem ipsum dolor sit amet, consectetuer', 2975),
(62, 'Cras', 'Lorem ipsum dolor sit', 719),
(63, 'ut', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 6826),
(64, 'nonummy', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 2578),
(65, 'magnis', 'Lorem ipsum dolor sit amet, consectetuer', 5925),
(66, 'Donec', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1926),
(67, 'massa.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 2870),
(68, 'sapien.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 3925),
(69, 'ac,', 'Lorem ipsum', 734),
(70, 'Maecenas', 'Lorem', 6177),
(71, 'non', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 5065),
(72, 'In', 'Lorem ipsum dolor sit', 8990),
(73, 'Sed', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 6601),
(74, 'arcu.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 6705),
(75, 'ornare.', 'Lorem ipsum dolor', 8081),
(76, 'magna.', 'Lorem ipsum dolor sit amet, consectetuer', 766),
(77, 'sit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 6083),
(78, 'mauris.', 'Lorem ipsum dolor sit', 1871),
(79, 'dignissim', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 4955),
(80, 'Curabitur', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 4246),
(81, 'purus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 4670),
(82, 'in', 'Lorem ipsum dolor sit amet,', 9863),
(83, 'purus.', 'Lorem ipsum dolor', 5526),
(84, 'volutpat.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1553),
(85, 'penatibus', 'Lorem', 6432),
(86, 'neque.', 'Lorem ipsum', 6950),
(87, 'Integer', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 602),
(88, 'tellus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 779),
(89, 'Cras', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 5870),
(90, 'convallis', 'Lorem ipsum dolor sit', 6213),
(91, 'ligula.', 'Lorem ipsum', 8420),
(92, 'ligula.', 'Lorem', 3923),
(93, 'volutpat', 'Lorem ipsum dolor sit amet,', 7024),
(94, 'magna.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 2731),
(95, 'tincidunt,', 'Lorem ipsum dolor sit amet, consectetuer', 3695),
(96, 'facilisis', 'Lorem ipsum', 5883),
(97, 'amet', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 9619),
(98, 'feugiat.', 'Lorem ipsum', 6233),
(99, 'aliquam', 'Lorem', 1918),
(100, 'quam', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 3472),
(101, 'facilisis', 'Lorem ipsum dolor sit', 9486),
(102, 'auctor,', 'Lorem ipsum dolor', 1921);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `elements_table`
--
ALTER TABLE `elements_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `elements_table`
--
ALTER TABLE `elements_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
