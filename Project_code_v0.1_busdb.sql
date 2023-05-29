
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `busdb`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `arithmos_kykloforias` varchar(40) NOT NULL,
  `xronos_protis_kykloforias` int(4) NOT NULL,
  `kyvika` int(10) NOT NULL,
  `xoritikotita` int(10) NOT NULL,
  `marka` varchar(200) NOT NULL,
  `montelo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `busline`
--

CREATE TABLE `busline` (
  `id` int(11) NOT NULL,
  `line` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `bus_driver`
--

CREATE TABLE `bus_driver` (
  `id` int(11) NOT NULL,
  `id_bus` int(11) NOT NULL,
  `id_driver` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `afm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `fullname` int(11) NOT NULL,
  `afm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `historybus`
--

CREATE TABLE `historybus` (
  `id` int(11) NOT NULL,
  `lat` double(10,2) NOT NULL,
  `lng` double(10,2) NOT NULL,
  `id_bus` int(11) NOT NULL,
  `datetime1` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `line_bus`
--

CREATE TABLE `line_bus` (
  `id_bus` int(11) NOT NULL,
  `id_line` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `datetime` date NOT NULL,
  `gradebus` double(10,2) NOT NULL,
  `gradedriver` double(10,2) NOT NULL,
  `id_bus` int(11) NOT NULL,
  `id_driver` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `cost` double(10,2) NOT NULL,
  `date1` datetime NOT NULL,
  `used` datetime NOT NULL,
  `type` varchar(20) NOT NULL,
  `busline` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `afm` varchar(10) NOT NULL,
  `phone` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `busline`
--
ALTER TABLE `busline`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `bus_driver`
--
ALTER TABLE `bus_driver`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_driver` (`id_driver`),
  ADD KEY `id_bus` (`id_bus`);

--
-- Ευρετήρια για πίνακα `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `historybus`
--
ALTER TABLE `historybus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bus` (`id_bus`);

--
-- Ευρετήρια για πίνακα `line_bus`
--
ALTER TABLE `line_bus`
  ADD KEY `id_bus` (`id_bus`),
  ADD KEY `id_line` (`id_line`);

--
-- Ευρετήρια για πίνακα `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bus` (`id_bus`),
  ADD KEY `id_driver` (`id_driver`);

--
-- Ευρετήρια για πίνακα `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `busline` (`busline`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `busline`
--
ALTER TABLE `busline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `bus_driver`
--
ALTER TABLE `bus_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `historybus`
--
ALTER TABLE `historybus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `bus_driver`
--
ALTER TABLE `bus_driver`
  ADD CONSTRAINT `bus_driver_ibfk_2` FOREIGN KEY (`id_driver`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `bus_driver_ibfk_3` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id`);

--
-- Περιορισμοί για πίνακα `historybus`
--
ALTER TABLE `historybus`
  ADD CONSTRAINT `historybus_ibfk_1` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id`);

--
-- Περιορισμοί για πίνακα `line_bus`
--
ALTER TABLE `line_bus`
  ADD CONSTRAINT `line_bus_ibfk_1` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id`),
  ADD CONSTRAINT `line_bus_ibfk_2` FOREIGN KEY (`id_line`) REFERENCES `busline` (`id`);

--
-- Περιορισμοί για πίνακα `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`id_driver`) REFERENCES `drivers` (`id`);

--
-- Περιορισμοί για πίνακα `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`busline`) REFERENCES `busline` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
