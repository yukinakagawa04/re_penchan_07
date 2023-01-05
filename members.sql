-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 05 日 15:04
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `mydb`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`) VALUES
(1, 'potepen', 'test@gmail.com', '$2y$10$L4DIaS73n.2fmDJIWJGZ8uc4V5rKxmLauLT.2/JLi8cGjWRsIgfBm'),
(15, 'yuyu', 'yuyu@com', '$2y$10$c4c922NPZUvjmzROBF8UpO91aNUe.E0QYy7mH11.uMiEYhVVGwWg.'),
(16, 'yuuki', '99@com', '$2y$10$cF6.MO4eIEiEaSL9DNITc.SRdaKRfU5aw7hO0bDSkGZKAKvWa3Cj6'),
(18, 'unkonow', 'unknown@gmail.com', '$2y$10$IFLQqzYw4not1WFJrYwjNOdIgKc6MNu6K3GOVi/PbQetyqfrXdxme');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
