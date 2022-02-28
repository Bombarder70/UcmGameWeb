-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Po 28.Feb 2022, 21:06
-- Verzia serveru: 10.4.22-MariaDB
-- Verzia PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `ucm_game`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `generator`
--

CREATE TABLE `generator` (
  `id` int(11) NOT NULL,
  `structure` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `generator`
--

INSERT INTO `generator` (`id`, `structure`) VALUES
(1, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(2, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(3, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(4, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(5, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(6, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(7, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(8, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(9, '[{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]},{\"id\":99,\"otazka\":\"dsadasadsads\",\"typ\":1,\"odpovede\":[{\"odpoved\":\"dasdasda\"}]}]'),
(10, '[{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(11, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(12, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(13, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]'),
(14, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nickname` varchar(55) NOT NULL,
  `score` int(10) NOT NULL,
  `deaths` int(11) NOT NULL,
  `last_played` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `users`
--

INSERT INTO `users` (`id`, `nickname`, `score`, `deaths`, `last_played`) VALUES
(1, 'Pirat2', 310, 4, '2022-02-28 12:43:59'),
(2, 'TopPlayer', 15, 0, '2022-02-24 08:47:23'),
(3, 'Nicitel500', 1500, 2, '2022-02-24 08:47:37'),
(4, 'OOO222', 5550, 5, '2022-02-24 08:47:54'),
(5, 'Destroyer', 250, 0, '2022-02-26 11:00:50'),
(6, 'Igloo', 450, 1, '2022-02-26 11:01:04'),
(7, 'India', 450, 2, '2022-02-26 11:01:21'),
(8, 'B70', 550, 2, '2022-02-26 11:01:36'),
(9, 'EasyWin', 350, 1, '2022-02-26 11:02:17');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `generator`
--
ALTER TABLE `generator`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `generator`
--
ALTER TABLE `generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
