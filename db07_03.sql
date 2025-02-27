-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-02-27 02:47:16
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db07_03`
--

-- --------------------------------------------------------

--
-- 資料表結構 `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `level` int(1) UNSIGNED NOT NULL,
  `length` int(3) UNSIGNED NOT NULL,
  `ondate` date NOT NULL,
  `publish` text NOT NULL,
  `director` text NOT NULL,
  `trailer` text NOT NULL,
  `poster` text NOT NULL,
  `intro` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `rank` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `movies`
--

INSERT INTO `movies` (`id`, `name`, `level`, `length`, `ondate`, `publish`, `director`, `trailer`, `poster`, `intro`, `sh`, `rank`) VALUES
(1, '03B01', 1, 1, '2025-01-13', '', '', '03B01v.mp4', '03B01.png', '', 1, 1),
(2, '03B02', 1, 0, '2025-01-13', '', '', '03B02v.mp4', '03B02.png', '', 1, 2),
(3, '03B03', 2, 0, '2025-01-13', '', '', '03B03v.mp4', '03B03.png', '', 1, 3),
(4, '03B04', 3, 0, '2025-01-13', '', '', '03B04v.mp4', '03B04.png', '', 1, 4),
(5, '03B05', 1, 0, '2025-01-13', '', '', '03B05v.mp4', '03B05.png', '', 1, 5),
(6, '03B06', 1, 0, '2025-01-13', '', '', '03B06v.mp4', '03B06.png', '', 1, 7),
(7, '03B07', 1, 2, '2025-01-13', '', '', '03B07v.mp4', '03B07.png', '', 1, 8),
(8, '03B08', 1, 0, '2025-01-13', '', '', '03B08v.mp4', '03B08.png', '', 1, 9),
(9, '03B09', 1, 0, '2025-01-13', '', '', '03B09v.mp4', '03B09.png', '', 1, 10),
(10, '03B10', 3, 0, '2025-01-13', '', '', '03B10v.mp4', '03B10.png', '', 1, 11),
(11, '03B11', 1, 0, '2025-01-13', '', '', '03B11v.mp4', '03B11.png', '', 1, 12),
(12, '03B12', 2, 2, '2025-01-13', '', '', '03B12v.mp4', '03B12.png', '', 1, 13);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '流水號',
  `no` text NOT NULL COMMENT '訂單編號',
  `movie` text NOT NULL COMMENT '電影名稱',
  `date` date NOT NULL COMMENT '觀影日期',
  `session` text NOT NULL COMMENT '場次',
  `qt` int(10) UNSIGNED NOT NULL COMMENT '票數',
  `seats` text NOT NULL COMMENT '座位'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`id`, `no`, `movie`, `date`, `session`, `qt`, `seats`) VALUES
(1, '202501140001', '03B01', '2025-01-14', '18:00~20:00', 4, 'a:4:{i:0;s:1:\"0\";i:1;s:1:\"6\";i:2;s:2:\"12\";i:3;s:2:\"18\";}');

-- --------------------------------------------------------

--
-- 資料表結構 `posters`
--

CREATE TABLE `posters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `rank` int(10) UNSIGNED NOT NULL,
  `ani` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `posters`
--

INSERT INTO `posters` (`id`, `name`, `img`, `sh`, `rank`, `ani`) VALUES
(1, '預告片1', '03A01.jpg', 1, 1, 3),
(2, '預告片2', '03A02.jpg', 1, 2, 1),
(3, '預告片3', '03A03.jpg', 1, 3, 2),
(4, '預告片4', '03A04.jpg', 1, 4, 3),
(5, '預告片5', '03A05.jpg', 1, 5, 3),
(6, '預告片6', '03A06.jpg', 1, 6, 2),
(7, '預告片7', '03A07.jpg', 1, 7, 1),
(8, '預告片8', '03A08.jpg', 1, 8, 1),
(9, '預告片9', '03A09.jpg', 1, 9, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `posters`
--
ALTER TABLE `posters`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `posters`
--
ALTER TABLE `posters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
