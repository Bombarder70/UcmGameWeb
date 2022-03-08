-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 08, 2022 at 06:00 PM
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
  `structure` text NOT NULL,
  `id_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generator`
--

INSERT INTO `generator` (`id`, `structure`, `id_room`) VALUES
(1, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(2, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(3, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(4, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(5, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(6, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(7, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(8, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(9, '[{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]},{\"id\":99,\"otazka\":\"dsadasadsads\",\"typ\":1,\"odpovede\":[{\"odpoved\":\"dasdasda\"}]}]', 0),
(10, '[{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(11, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(12, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(13, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(14, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]}]', 0),
(15, '[{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[]},{\"id\":99,\"otazka\":\"fdgfdgfdg\",\"typ\":1,\"odpovede\":[{\"odpoved\":\"hghg\"}]}]', 0),
(16, '[{\"id\":1,\"otazka\":\"Testovacia otazka cislo 1\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"Ostrov\"},{\"id\":2,\"odpoved\":\"Lod\"}]},{\"id\":2,\"otazka\":\"10 + 10 = ?\",\"typ\":1,\"odpovede\":[{\"id\":1,\"odpoved\":\"20\"}]},{\"id\":3,\"otazka\":\"Testovacia otazka cislo 2\",\"typ\":2,\"odpovede\":[{\"id\":1,\"odpoved\":\"Odpoved 1\",\"typ\":true},{\"id\":2,\"odpoved\":\"Odpoved 2\",\"typ\":false}]},{\"id\":99,\"otazka\":\"jhjhj\",\"typ\":1,\"odpovede\":[{\"odpoved\":\"hjj\"}]}]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `nickname` varchar(55) NOT NULL,
  `score` int(10) NOT NULL,
  `deaths` int(11) NOT NULL,
  `last_played` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `nickname`, `score`, `deaths`, `last_played`) VALUES
(1, 'Pirat2', 310, 4, '2022-02-28 12:43:59'),
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
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `uid` varchar(55) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `uid`, `id_user`) VALUES
(1, 'TRIEDA_6', 1),
(2, 'TRIEDA_5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
