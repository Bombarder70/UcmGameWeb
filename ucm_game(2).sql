-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Po 21.Mar 2022, 15:37
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
  `name` varchar(55) NOT NULL,
  `structure` text NOT NULL,
  `id_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `generator`
--

INSERT INTO `generator` (`id`, `name`, `structure`, `id_room`) VALUES
(1, 'Matematika', '{\"quests\":[{\"id\":1,\"otazka\":\"Ako sa vola velky objekt ktory dokaze plavat na vode?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Lod\"},{\"id\":2,\"odpoved\":\"Pltka\"},{\"id\":3,\"odpoved\":\"Cln\"},{\"id\":4,\"odpoved\":\"Jachta\"}],\"zobrazena\":false,\"odpoved\":false},{\"id\":2,\"otazka\":\"Napis aspon jeden stat ktory hranici so Slovenskom\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ukrajina\"},{\"id\":2,\"odpoved\":\"Cesko\"},{\"id\":3,\"odpoved\":\"Rakusko\"},{\"id\":4,\"odpoved\":\"Madarsko\"},{\"id\":5,\"odpoved\":\"Polsko\"}],\"zobrazena\":false,\"odpoved\":false},{\"id\":3,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":20}],\"zobrazena\":false,\"odpoved\":false}]}', 1),
(2, 'Slovenčina', '{\"quests\":[{\"id\":1,\"otazka\":\"Ako sa vola velky objekt ktory dokaze plavat na vode?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Lod\"},{\"id\":2,\"odpoved\":\"Pltka\"},{\"id\":3,\"odpoved\":\"Cln\"},{\"id\":4,\"odpoved\":\"Jachta\"}],\"zobrazena\":false,\"odpoved\":false},{\"id\":2,\"otazka\":\"Napis aspon jeden stat ktory hranici so Slovenskom\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ukrajina\"},{\"id\":2,\"odpoved\":\"Cesko\"},{\"id\":3,\"odpoved\":\"Rakusko\"},{\"id\":4,\"odpoved\":\"Madarsko\"},{\"id\":5,\"odpoved\":\"Polsko\"}],\"zobrazena\":false,\"odpoved\":false},{\"id\":3,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":20}],\"zobrazena\":false,\"odpoved\":false}]}', 1),
(3, 'Angličtina', '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 1),
(4, 'Geografia', '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 1),
(17, '', '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `nickname` varchar(55) NOT NULL,
  `score` int(10) NOT NULL,
  `deaths` int(11) NOT NULL,
  `last_played` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `players`
--

INSERT INTO `players` (`id`, `nickname`, `score`, `deaths`, `last_played`) VALUES
(1, 'Pirat2', 1600, 4, '2022-03-21 08:41:48'),
(2, 'TopPlayer', 15, 0, '2022-02-24 08:47:23'),
(3, 'Nicitel500', 1500, 2, '2022-02-24 08:47:37'),
(4, 'OOO222', 5550, 5, '2022-02-24 08:47:54'),
(5, 'Destroyer', 250, 0, '2022-02-26 11:00:50'),
(6, 'Igloo', 450, 1, '2022-02-26 11:01:04'),
(7, 'India', 450, 2, '2022-02-26 11:01:21'),
(8, 'B70', 550, 2, '2022-02-26 11:01:36'),
(9, 'EasyWin', 350, 1, '2022-02-26 11:02:17');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `players_generators`
--

CREATE TABLE `players_generators` (
  `id` int(11) NOT NULL,
  `id_player` int(11) NOT NULL,
  `id_generator` int(11) NOT NULL,
  `structure` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `players_generators`
--

INSERT INTO `players_generators` (`id`, `id_player`, `id_generator`, `structure`) VALUES
(3, 1, 1, '{\"quests\":[{\"id\":1,\"otazka\":\"Ako sa vola velky objekt ktory dokaze plavat na vode?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Lod\"},{\"id\":2,\"odpoved\":\"Pltka\"},{\"id\":3,\"odpoved\":\"Cln\"},{\"id\":4,\"odpoved\":\"Jachta\"}],\"zobrazena\":true,\"odpoved\":true},{\"id\":2,\"otazka\":\"Napis aspon jeden stat ktory hranici so Slovenskom\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ukrajina\"},{\"id\":2,\"odpoved\":\"Cesko\"},{\"id\":3,\"odpoved\":\"Rakusko\"},{\"id\":4,\"odpoved\":\"Madarsko\"},{\"id\":5,\"odpoved\":\"Polsko\"}],\"zobrazena\":true,\"odpoved\":true},{\"id\":3,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":20}],\"zobrazena\":true,\"odpoved\":false}]}');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `uid` varchar(55) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `rooms`
--

INSERT INTO `rooms` (`id`, `uid`, `id_user`) VALUES
(1, 'TRIEDA_6', 1),
(2, 'TRIEDA_5', 1),
(3, 'SDSDSADSA', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `avatar` varchar(55) DEFAULT 'avatar.png',
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `users`
--

INSERT INTO `users` (`id`, `avatar`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'admin.jpg', 'Admin', 'Admin', 'admin@dia.sk', '$2y$10$.tSU76T5uTw40vRifEB1z.bmFCJkQuoNEUOch8O0zSHqUYeIsB3WO');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `generator`
--
ALTER TABLE `generator`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `players_generators`
--
ALTER TABLE `players_generators`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `rooms`
--
ALTER TABLE `rooms`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pre tabuľku `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pre tabuľku `players_generators`
--
ALTER TABLE `players_generators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pre tabuľku `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
