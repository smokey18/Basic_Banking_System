
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- `transaction` Table

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table structure for table `users`

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Adding user data in table

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Ali', 'ali@email.com', 100),
(2, 'Hassan', 'hassan@email.com', 200),
(3, 'Rayan', 'Rayan@email.com', 150),
(4, 'Aliha', 'Aliha@email.com', 125),
(5, 'Nimra', 'Nimra@email.com', 350),
(6, 'Shahid', 'Shahid@email.com', 265),
(7, 'Ahsan', 'Ahsan@email.com', 450),
(8, 'Jamil', 'Jamil@email.com', 520),
(9, 'Kashif', 'Kashif@email.com', 655),
(10, 'Hadiya', 'Hadiya@email.com', 630);


-- table `transaction`

ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

-- table `users`

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;