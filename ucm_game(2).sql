-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 06, 2022 at 08:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ucm_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `generator`
--

CREATE TABLE `generator` (
  `id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_slovak_ci NOT NULL,
  `structure` text COLLATE utf8_slovak_ci NOT NULL,
  `id_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `generator`
--

INSERT INTO `generator` (`id`, `name`, `structure`, `id_room`) VALUES
(1, 'Matematika', '{\"quests\":[{\"id\":1,\"otazka\":\"Spravny pirat musi vediet dobre pocitat. Lup si predsa treba nejako rozdelit, no nie? Obcas sa teda pirat nevyhne ani desatinnych cislam. Zvladnes tieto vyrazy zapisat desatinnym cislom? Vzor: 3 cele 23 tisicin = 3,023. 205 celych 4 desattisiciny ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"205.0004\"}],\"zobrazena\":false,\"odpoved\":false},{\"id\":2,\"otazka\":\"Kapitan Kidd  byva od pristavu, kde kotvi jeho piratska lod, 357 metrov. Jeho krok je dlhy 0,51 m. Vypocitaj, kolko krokov musi urobit, aby sa dostal ku svojej lodi.\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":700}],\"zobrazena\":false,\"odpoved\":false},{\"id\":3,\"otazka\":\"Nasiel si list zo zapisnika kapitana Barbadosa. Stoji v nom: ,,AAAch ta cvarga!!! Nasa posledna korist bola 1040 zlatych minci. Na oslavu tohto lupu sme minuli 80 minci. Zvysnu korist sme si rozdelili medzi 12 clennu posadku. Niekto mi, ale z mejej koristi ukradol 38 minci. Ja ho dostanem !!! Teraz mi zostalo len. Koniec vety nedokazes precitat. Zvladnes vypocitat kolko zlatych minci Barbadosovi nakoniec zostalo?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":42}],\"zobrazena\":false,\"odpoved\":false},{\"id\":4,\"otazka\":\"Priprava kvalitneho rumu ma svoj postup. Rovnako ako matematicke operacie. Pamatas si este, ktore operacie maju prednost? Vypocitaj pocet sudov. (2+12) - 3*3 + (15/3) * 2 = \",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":15}],\"zobrazena\":false,\"odpoved\":false},{\"id\":5,\"otazka\":\"Ako chces najst poklad, ked nevies vylustit jednoduchu hadanku? Alebo vies? Ukaz co je v tebe! Napis desatinne cislo, ktore ma na mieste jednotiek 5, na mieste desatin 0, na mieste desiatok 3 a na mieste stotin 7. Potom toto cislo zvacsi o 3.\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":38.07}],\"zobrazena\":false,\"odpoved\":false}]}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `nickname` varchar(55) COLLATE utf8_slovak_ci NOT NULL,
  `score` int(10) NOT NULL,
  `deaths` int(11) NOT NULL DEFAULT 0,
  `last_played` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `uid` varchar(20) COLLATE utf8_slovak_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `nickname`, `score`, `deaths`, `last_played`, `uid`) VALUES
(1, 'Pirat-2', 50, 0, '2022-04-06 09:29:35', 'xdadadada'),
(3, 'Pirat-3', 50, 0, '2022-04-06 09:31:44', 'xdadadadaRx'),
(4, 'Pirat-4', 50, 0, '2022-04-06 09:31:55', 'xfdsfds'),
(5, 'Pirat-5', 50, 0, '2022-04-06 11:13:09', 'aaadda');

-- --------------------------------------------------------

--
-- Table structure for table `players_generators`
--

CREATE TABLE `players_generators` (
  `id` int(11) NOT NULL,
  `id_player` int(11) NOT NULL,
  `id_generator` int(11) NOT NULL,
  `structure` text CHARACTER SET utf8mb4 COLLATE utf8mb4_slovak_ci NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `is_completed` int(1) NOT NULL DEFAULT 0,
  `deaths` int(11) NOT NULL DEFAULT 0,
  `correct_answers` int(2) NOT NULL DEFAULT 0,
  `uncorrect_answers` int(2) NOT NULL DEFAULT 0,
  `killed_skeletons` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players_generators`
--

INSERT INTO `players_generators` (`id`, `id_player`, `id_generator`, `structure`, `score`, `is_completed`, `deaths`, `correct_answers`, `uncorrect_answers`, `killed_skeletons`) VALUES
(1, 1, 1, '{\"quests\":[{\"id\":1,\"otazka\":\"Spravny pirat musi vediet dobre pocitat. Lup si predsa treba nejako rozdelit, no nie? Obcas sa teda pirat nevyhne ani desatinnych cislam. Zvladnes tieto vyrazy zapisat desatinnym cislom? Vzor: 3 cele 23 tisicin = 3,023. 205 celych 4 desattisiciny ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"205.0004\"}],\"zobrazena\":true,\"odpoved\":true},{\"id\":2,\"otazka\":\"Kapitan Kidd  byva od pristavu, kde kotvi jeho piratska lod, 357 metrov. Jeho krok je dlhy 0,51 m. Vypocitaj, kolko krokov musi urobit, aby sa dostal ku svojej lodi.\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":700}],\"zobrazena\":true,\"odpoved\":true},{\"id\":3,\"otazka\":\"Nasiel si list zo zapisnika kapitana Barbadosa. Stoji v nom: ,,AAAch ta cvarga!!! Nasa posledna korist bola 1040 zlatych minci. Na oslavu tohto lupu sme minuli 80 minci. Zvysnu korist sme si rozdelili medzi 12 clennu posadku. Niekto mi, ale z mejej koristi ukradol 38 minci. Ja ho dostanem !!! Teraz mi zostalo len. Koniec vety nedokazes precitat. Zvladnes vypocitat kolko zlatych minci Barbadosovi nakoniec zostalo?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":42}],\"zobrazena\":true,\"odpoved\":true},{\"id\":4,\"otazka\":\"Priprava kvalitneho rumu ma svoj postup. Rovnako ako matematicke operacie. Pamatas si este, ktore operacie maju prednost? Vypocitaj pocet sudov. (2+12) - 3*3 + (15/3) * 2 = \",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":15}],\"zobrazena\":true,\"odpoved\":true},{\"id\":5,\"otazka\":\"Ako chces najst poklad, ked nevies vylustit jednoduchu hadanku? Alebo vies? Ukaz co je v tebe! Napis desatinne cislo, ktore ma na mieste jednotiek 5, na mieste desatin 0, na mieste desiatok 3 a na mieste stotin 7. Potom toto cislo zvacsi o 3.\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":38.07000000000000028421709430404007434844970703125}],\"zobrazena\":true,\"odpoved\":true}]}', 600, 1, 0, 6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `uid` varchar(55) COLLATE utf8_slovak_ci NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `uid`, `id_user`) VALUES
(1, 'TRIEDA_6', 1),
(2, 'TRIEDA_5', 1),
(3, 'SDSDSADSA', 1),
(4, 'XDdsadsa', 0),
(5, 'dsadsa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `avatar` varchar(55) COLLATE utf8_slovak_ci DEFAULT 'avatar.png',
  `first_name` varchar(25) COLLATE utf8_slovak_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_slovak_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_slovak_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_slovak_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'admin.jpg', 'Admin', 'Admin', 'admin@dia.sk', '$2y$10$.tSU76T5uTw40vRifEB1z.bmFCJkQuoNEUOch8O0zSHqUYeIsB3WO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `generator`
--
ALTER TABLE `generator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players_generators`
--
ALTER TABLE `players_generators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_player` (`id_player`),
  ADD KEY `id_generator` (`id_generator`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid_unique` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `generator`
--
ALTER TABLE `generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `players_generators`
--
ALTER TABLE `players_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players_generators`
--
ALTER TABLE `players_generators`
  ADD CONSTRAINT `generator_index` FOREIGN KEY (`id_generator`) REFERENCES `generator` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_index` FOREIGN KEY (`id_player`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
