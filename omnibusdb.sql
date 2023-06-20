-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 19 Ιουν 2023 στις 21:34:26
-- Έκδοση διακομιστή: 10.4.28-MariaDB
-- Έκδοση PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `omnibusdb`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `arithmos_kykloforias` varchar(255) DEFAULT NULL,
  `etos_kykloforias` varchar(255) DEFAULT NULL,
  `kyvika` int(11) DEFAULT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `marka` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `xoritikotita` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `bus`
--

INSERT INTO `bus` (`id`, `arithmos_kykloforias`, `etos_kykloforias`, `kyvika`, `lat`, `lng`, `marka`, `model`, `xoritikotita`) VALUES
(1, '12334', '2000', 2000, 38.2266, 21.7465, 'Mercendes', 'A10', 50),
(2, '14444', '2000', 2000, 38.2311, 21.7394, 'Mercendes', 'A12', 50);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `bus_driver`
--

CREATE TABLE `bus_driver` (
  `id` int(11) NOT NULL,
  `dt` date DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `bus_driver_seq`
--

CREATE TABLE `bus_driver_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `bus_driver_seq`
--

INSERT INTO `bus_driver_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `bus_seq`
--

CREATE TABLE `bus_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `bus_seq`
--

INSERT INTO `bus_seq` (`next_val`) VALUES
(3);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `driver`
--

CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `afm` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `driver_seq`
--

CREATE TABLE `driver_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `driver_seq`
--

INSERT INTO `driver_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `line`
--

CREATE TABLE `line` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `line_bus`
--

CREATE TABLE `line_bus` (
  `id` int(11) NOT NULL,
  `bid` int(11) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `line_bus_seq`
--

CREATE TABLE `line_bus_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `line_bus_seq`
--

INSERT INTO `line_bus_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `line_seq`
--

CREATE TABLE `line_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `line_seq`
--

INSERT INTO `line_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `comment1` varchar(255) DEFAULT NULL,
  `comment2` varchar(255) DEFAULT NULL,
  `dt` date DEFAULT NULL,
  `grade_driver` int(11) DEFAULT NULL,
  `gradebus` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `rate_seq`
--

CREATE TABLE `rate_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `rate_seq`
--

INSERT INTO `rate_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `station`
--

INSERT INTO `station` (`id`, `lat`, `lng`, `title`) VALUES
(1, 38.2317, 21.7384, 'ergatikes katikoies'),
(2, 38.223, 21.7532, 'Panpeloponisiako'),
(3, 38.2182, 21.7518, 'koukouli'),
(4, 38.22, 21.7414, 'glafkos');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `station_seq`
--

CREATE TABLE `station_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `station_seq`
--

INSERT INTO `station_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `ticket_num` int(11) DEFAULT NULL,
  `ekdosi` date DEFAULT current_timestamp(),
  `type` varchar(255) DEFAULT NULL,
  `used_date` date DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_num`, `ekdosi`, `type`, `used_date`, `lid`, `uid`) VALUES
(1, 77941, NULL, 'kanoniko', NULL, NULL, 102);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `ticket_seq`
--

CREATE TABLE `ticket_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `ticket_seq`
--

INSERT INTO `ticket_seq` (`next_val`) VALUES
(51);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `afm` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `user`
--

INSERT INTO `user` (`id`, `afm`, `email`, `fullname`, `password`) VALUES
(1, NULL, 'admin@admin.gr', 'test', '1234234'),
(52, '1234', 'p22@pp.gr', 'pppp3', '1234'),
(53, '1234', 'p2@pp.gr', 'p1', '1234'),
(102, '1234', 'a@user.gr', 'aaaa', '1234');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user_seq`
--

CREATE TABLE `user_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `user_seq`
--

INSERT INTO `user_seq` (`next_val`) VALUES
(201);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `bus_driver`
--
ALTER TABLE `bus_driver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbc6lfwt95jdrpfht9rty58d8t` (`bid`),
  ADD KEY `FK3up26shim7v7rh1m42qh8mmi0` (`did`);

--
-- Ευρετήρια για πίνακα `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `line_bus`
--
ALTER TABLE `line_bus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqn6ptp3m5d5365q3p88jhm479` (`bid`),
  ADD KEY `FK9b1m5lfh6v5n3lppo9k17ouo7` (`lid`);

--
-- Ευρετήρια για πίνακα `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKelcoh7wrlcahppgnpnbu5makd` (`bid`),
  ADD KEY `FKaq47dvc9qop0k7dr6bx7uhpvf` (`did`),
  ADD KEY `FKo79xjmve8lpxilveqcxo7mi9` (`uid`);

--
-- Ευρετήρια για πίνακα `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkwmw7y8jr6c7a10307symo2sq` (`lid`),
  ADD KEY `FKpt3d9ysx2b08160ec6vncbjhl` (`uid`);

--
-- Ευρετήρια για πίνακα `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `bus_driver`
--
ALTER TABLE `bus_driver`
  ADD CONSTRAINT `FK3up26shim7v7rh1m42qh8mmi0` FOREIGN KEY (`did`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `FKbc6lfwt95jdrpfht9rty58d8t` FOREIGN KEY (`bid`) REFERENCES `bus` (`id`);

--
-- Περιορισμοί για πίνακα `line_bus`
--
ALTER TABLE `line_bus`
  ADD CONSTRAINT `FK9b1m5lfh6v5n3lppo9k17ouo7` FOREIGN KEY (`lid`) REFERENCES `line` (`id`),
  ADD CONSTRAINT `FKqn6ptp3m5d5365q3p88jhm479` FOREIGN KEY (`bid`) REFERENCES `bus` (`id`);

--
-- Περιορισμοί για πίνακα `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `FKaq47dvc9qop0k7dr6bx7uhpvf` FOREIGN KEY (`did`) REFERENCES `driver` (`id`),
  ADD CONSTRAINT `FKelcoh7wrlcahppgnpnbu5makd` FOREIGN KEY (`bid`) REFERENCES `bus` (`id`),
  ADD CONSTRAINT `FKo79xjmve8lpxilveqcxo7mi9` FOREIGN KEY (`uid`) REFERENCES `user` (`id`);

--
-- Περιορισμοί για πίνακα `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FKkwmw7y8jr6c7a10307symo2sq` FOREIGN KEY (`lid`) REFERENCES `line` (`id`),
  ADD CONSTRAINT `FKpt3d9ysx2b08160ec6vncbjhl` FOREIGN KEY (`uid`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
