-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 19 2023 г., 20:24
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `reka`
--

-- --------------------------------------------------------

--
-- Структура таблицы `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `list`
--

INSERT INTO `list` (`id`, `name`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Привет', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'sadsad', '2023-06-17 12:27:04', '2023-06-17 12:27:04', 5),
(3, 'Тренировки', '2023-06-17 12:27:49', '2023-06-17 12:27:49', 1),
(4, 'DSfdsf', '2023-06-17 12:44:58', '2023-06-17 12:44:58', 7),
(5, '123', '2023-06-17 17:13:49', '2023-06-17 17:13:49', 7),
(6, 'dsfsdf', '2023-06-17 17:18:29', '2023-06-17 17:18:29', 7),
(7, 'dfffff', '2023-06-17 17:18:40', '2023-06-17 17:18:40', 7),
(8, 'sdfdf', '2023-06-17 18:29:44', '2023-06-17 18:29:44', 7),
(9, 'sdfdf', '2023-06-17 18:29:50', '2023-06-17 18:29:50', 7),
(10, 'sdd', '2023-06-17 18:30:48', '2023-06-17 18:30:48', 7),
(11, 'asdsa', '2023-06-17 18:31:09', '2023-06-17 18:31:09', 7),
(12, 'asdsa', '2023-06-17 18:31:11', '2023-06-17 18:31:11', 7),
(13, '213321123', '2023-06-17 18:31:32', '2023-06-17 18:31:32', 7),
(14, 'erewr', '2023-06-17 18:31:46', '2023-06-17 18:31:46', 7),
(15, 'fdgfdg', '2023-06-17 18:57:36', '2023-06-17 18:57:36', 7),
(16, 'fdgfdg', '2023-06-17 18:57:42', '2023-06-17 18:57:42', 7),
(17, '123123', '2023-06-17 18:58:03', '2023-06-17 18:58:03', 7),
(18, '123123', '2023-06-17 18:58:09', '2023-06-17 18:58:09', 7),
(19, 'fdgdfg', '2023-06-17 18:59:56', '2023-06-17 18:59:56', 7),
(20, 'sadasd', '2023-06-17 19:00:07', '2023-06-17 19:00:07', 7),
(21, 'ssssssss', '2023-06-17 19:00:19', '2023-06-17 19:00:19', 7),
(22, 'ssssssss', '2023-06-17 19:00:22', '2023-06-17 19:00:22', 7),
(23, '123', '2023-06-17 19:00:41', '2023-06-17 19:00:41', 7),
(24, '123', '2023-06-17 19:00:44', '2023-06-17 19:00:44', 7),
(25, '234324', '2023-06-17 19:02:11', '2023-06-17 19:02:11', 7),
(26, 'asdasd', '2023-06-17 19:39:44', '2023-06-17 19:39:44', 7),
(27, 'qwe', '2023-06-18 08:12:54', '2023-06-18 08:12:54', 7),
(28, 'qwe', '2023-06-18 08:12:59', '2023-06-18 08:12:59', 7),
(29, 'asd', '2023-06-18 13:32:49', '2023-06-18 13:32:49', 7),
(30, 'qwe', '2023-06-18 14:28:15', '2023-06-18 14:28:15', 7),
(31, 'tttttttt', '2023-06-18 15:33:17', '2023-06-18 15:33:17', 7),
(32, '123', '2023-06-18 18:07:58', '2023-06-18 18:07:58', 7),
(33, '123', '2023-06-18 18:23:21', '2023-06-18 18:23:21', 7),
(34, 'wwww', '2023-06-18 18:24:17', '2023-06-18 18:24:17', 7),
(35, 'eee', '2023-06-18 18:24:41', '2023-06-18 18:24:41', 7),
(36, 'eee', '2023-06-18 18:24:46', '2023-06-18 18:24:46', 7),
(37, '123', '2023-06-18 18:24:56', '2023-06-18 18:24:56', 7),
(38, 'www', '2023-06-18 18:26:07', '2023-06-18 18:26:07', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `list_id` int(11) NOT NULL,
  `checked` int(11) NOT NULL DEFAULT 0,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `note`
--

INSERT INTO `note` (`id`, `name`, `created_at`, `updated_at`, `list_id`, `checked`, `image`) VALUES
(1, 'Убраться', '0000-00-00 00:00:00', '2023-06-18 14:28:22', 4, 1, NULL),
(2, 'sdfdsfsddd', '2023-06-17 16:47:56', '2023-06-17 16:47:56', 4, 0, NULL),
(3, 'sadsad', '2023-06-17 16:48:12', '2023-06-17 16:48:12', 4, 0, NULL),
(4, 'sdfdsfsddd', '2023-06-17 16:49:18', '2023-06-17 16:49:18', 4, 0, NULL),
(5, 'sdfdsfsddd', '2023-06-17 16:49:22', '2023-06-17 16:49:22', 4, 0, NULL),
(6, 'убрать', '2023-06-17 16:53:08', '2023-06-17 16:53:08', 4, 0, NULL),
(7, '1234', '2023-06-17 17:13:56', '2023-06-17 17:13:56', 4, 0, NULL),
(8, '1245342', '2023-06-17 17:13:59', '2023-06-17 17:13:59', 4, 0, NULL),
(9, '111111111111111', '2023-06-17 17:39:04', '2023-06-17 17:39:04', 7, 0, NULL),
(10, '111111111111111', '2023-06-17 17:50:23', '2023-06-17 17:50:23', 7, 0, NULL),
(11, 'ergrergegr', '2023-06-17 18:06:19', '2023-06-17 18:06:19', 7, 0, NULL),
(12, 'awdawd', '2023-06-17 18:06:38', '2023-06-17 18:06:38', 4, 0, NULL),
(13, 'aaaaa', '2023-06-17 18:06:46', '2023-06-17 18:06:46', 4, 0, NULL),
(14, 'csssdfdf', '2023-06-17 18:09:18', '2023-06-17 18:09:18', 6, 0, NULL),
(15, '11111', '2023-06-17 18:09:29', '2023-06-17 18:09:29', 7, 0, NULL),
(16, '123123', '2023-06-17 18:09:42', '2023-06-17 18:09:42', 4, 0, NULL),
(17, '1111231232', '2023-06-17 18:09:52', '2023-06-17 18:09:52', 5, 0, NULL),
(18, 'dsfsdf', '2023-06-17 18:25:19', '2023-06-17 18:25:19', 5, 0, NULL),
(19, 'dsffdsf', '2023-06-17 18:29:29', '2023-06-17 18:29:29', 5, 0, NULL),
(20, 'werwer', '2023-06-17 18:32:18', '2023-06-17 18:32:18', 14, 0, NULL),
(21, 'dfdf', '2023-06-17 18:32:26', '2023-06-17 18:32:26', 14, 0, NULL),
(31, 'adasd', '2023-06-17 19:02:28', '2023-06-17 19:02:28', 25, 1, NULL),
(32, 'sdf', '2023-06-17 19:02:59', '2023-06-17 20:35:16', 25, 0, NULL),
(33, 'sdf', '2023-06-17 19:04:13', '2023-06-17 19:04:13', 25, 1, NULL),
(34, 'dfdf', '2023-06-17 19:05:09', '2023-06-17 19:05:09', 25, 0, NULL),
(35, 'dddd', '2023-06-17 19:05:21', '2023-06-17 19:05:21', 25, 0, NULL),
(36, 'sdfdsf', '2023-06-17 19:08:04', '2023-06-17 19:08:04', 25, 0, NULL),
(37, 'dsfdsfsdf', '2023-06-17 19:17:21', '2023-06-17 19:17:21', 25, 0, NULL),
(38, 'gfdfd', '2023-06-17 19:19:25', '2023-06-17 19:19:25', 25, 0, NULL),
(39, 'erewr', '2023-06-17 19:23:25', '2023-06-17 19:23:25', 25, 0, NULL),
(40, 'sdfdsf', '2023-06-17 19:25:07', '2023-06-17 19:25:07', 25, 0, NULL),
(41, 'qweqwe', '2023-06-17 19:34:53', '2023-06-17 20:45:09', 24, 0, NULL),
(42, 'sadasd', '2023-06-17 19:39:54', '2023-06-17 19:39:54', 25, 0, NULL),
(43, 'qwe', '2023-06-17 19:44:04', '2023-06-17 19:44:04', 25, 0, NULL),
(44, '123', '2023-06-17 19:50:17', '2023-06-17 19:50:17', 25, 0, NULL),
(45, 'wer', '2023-06-17 19:50:50', '2023-06-18 08:05:42', 25, 1, NULL),
(46, 'ergrergegr', '2023-06-17 20:44:42', '2023-06-17 20:44:42', 7, 0, NULL),
(47, 'sadasd', '2023-06-17 20:44:46', '2023-06-17 20:49:41', 24, 1, NULL),
(48, 'asdsad', '2023-06-17 20:49:34', '2023-06-17 20:50:27', 24, 0, NULL),
(49, 'qweqwe', '2023-06-17 20:50:18', '2023-06-17 20:50:36', 24, 0, NULL),
(50, 'qwewqe', '2023-06-17 20:50:30', '2023-06-17 20:50:30', 24, 0, NULL),
(51, 'asd', '2023-06-17 20:51:24', '2023-06-17 20:51:24', 24, 1, NULL),
(52, 'asdsa', '2023-06-17 20:51:45', '2023-06-17 20:51:45', 24, 0, NULL),
(53, 'asdasd', '2023-06-17 20:52:25', '2023-06-17 20:52:31', 24, 0, NULL),
(54, '2132133', '2023-06-17 20:52:31', '2023-06-17 20:52:38', 24, 1, NULL),
(55, 'qwewqe', '2023-06-17 20:53:57', '2023-06-17 20:53:57', 24, 1, NULL),
(56, 'qweqwe', '2023-06-17 20:54:05', '2023-06-17 20:54:06', 24, 1, NULL),
(57, 'asdsad', '2023-06-17 20:54:32', '2023-06-17 20:54:38', 24, 0, NULL),
(58, 'cxvxc', '2023-06-17 20:54:42', '2023-06-17 20:54:42', 24, 1, NULL),
(59, 'ddd', '2023-06-17 20:54:49', '2023-06-17 20:55:08', 24, 1, NULL),
(60, '123', '2023-06-17 20:55:08', '2023-06-17 20:55:59', 24, 1, NULL),
(61, 'qwewqe', '2023-06-17 20:55:59', '2023-06-17 20:56:40', 24, 0, NULL),
(62, 'sdfdsf', '2023-06-17 20:56:32', '2023-06-17 20:56:38', 24, 1, NULL),
(64, 'апврваппав', '2023-06-18 08:06:11', '2023-06-18 08:06:57', 25, 1, NULL),
(66, 'укц', '2023-06-18 08:07:16', '2023-06-18 08:07:16', 25, 1, NULL),
(74, 'awdwad', '2023-06-18 13:31:53', '2023-06-18 13:31:53', 10, 0, NULL),
(75, 'awdwad', '2023-06-18 13:31:56', '2023-06-18 13:32:03', 10, 1, NULL),
(76, 'awdwad', '2023-06-18 13:31:56', '2023-06-18 13:31:56', 10, 0, NULL),
(77, 'awdwad', '2023-06-18 13:31:57', '2023-06-18 13:31:57', 10, 0, NULL),
(78, 'ewqe', '2023-06-18 13:32:07', '2023-06-18 13:32:08', 10, 1, NULL),
(79, 'asdsad', '2023-06-18 13:32:59', '2023-06-18 17:10:56', 29, 1, NULL),
(81, 'asdsad', '2023-06-18 13:33:40', '2023-06-18 13:33:48', 29, 1, NULL),
(82, 'asdsadss', '2023-06-18 13:33:42', '2023-06-18 13:33:42', 29, 0, NULL),
(87, 'asdsad', '2023-06-18 13:34:56', '2023-06-18 13:34:56', 29, 0, NULL),
(88, 'asdsad', '2023-06-18 13:34:57', '2023-06-18 13:34:57', 29, 0, NULL),
(94, 'dsfdsf', '2023-06-18 14:29:23', '2023-06-18 14:29:25', 30, 0, NULL),
(95, 'dsfdsf', '2023-06-18 14:29:25', '2023-06-18 14:29:25', 30, 0, NULL),
(96, 'sdf', '2023-06-18 14:29:32', '2023-06-18 14:29:32', 30, 1, NULL),
(97, 'sad', '2023-06-18 14:30:39', '2023-06-18 14:30:43', 30, 0, NULL),
(100, 'wewqe', '2023-06-18 14:31:00', '2023-06-18 14:31:00', 30, 0, NULL),
(104, 'dfgdfg', '2023-06-18 14:43:22', '2023-06-18 14:43:22', 30, 1, NULL),
(105, 'fgdfg', '2023-06-18 14:44:24', '2023-06-18 14:44:24', 29, 0, NULL),
(106, '1111111111111111111', '2023-06-18 15:21:36', '2023-06-18 15:21:37', 29, 1, NULL),
(108, 'asdsad', '2023-06-18 17:59:54', '2023-06-18 17:59:54', 25, 0, NULL),
(111, 'wwww', '2023-06-18 18:01:59', '2023-06-18 18:01:59', 27, 0, NULL),
(112, '3433333', '2023-06-18 18:07:38', '2023-06-18 18:07:38', 27, 0, NULL),
(113, '213213', '2023-06-18 18:18:36', '2023-06-18 18:18:36', 8, 0, NULL),
(115, '213123', '2023-06-18 18:33:56', '2023-06-18 19:10:45', 38, 0, NULL),
(116, 'wwww', '2023-06-18 19:14:58', '2023-06-18 19:14:58', 38, 0, NULL),
(117, 'wwwwdd', '2023-06-18 19:18:56', '2023-06-18 19:51:58', 38, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tag`
--

INSERT INTO `tag` (`id`, `name`, `note_id`, `created_at`, `updated_at`) VALUES
(1, 'ergrergegr', 7, '2023-06-18 11:14:14', '2023-06-18 11:14:14'),
(6, '234324234', 79, '2023-06-18 14:44:18', '2023-06-18 14:44:18'),
(10, '3242342', 111, '2023-06-18 18:02:03', '2023-06-18 18:02:03'),
(12, 'eeeeee', 117, '2023-06-18 19:19:05', '2023-06-18 19:19:05');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patronymic` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `patronymic`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ваыавывыа', 'вываывыа', 'ываваывыав', 'sdfdsf@fs.er', '$2y$10$smoUh6q3QgrfHrGj09.VU.x6W0Ex4WVDddHXGMRqLQM4fUyrtAjbu', NULL, '2023-06-17 09:22:15', '2023-06-17 09:22:15'),
(3, 'Максим', 'Трифонов', 'Николаевич', 'dsfsdf@dfs.fd', '$2y$10$sw4mJPbjBzZiycA1w8OH4uTHN2/.9VMgJkx4YIMqJdRHjAqGJq9Ye', NULL, '2023-06-17 09:22:57', '2023-06-17 09:22:57'),
(4, 'Максим', 'Трифонов', 'Николаевич', 'dsfsdf@dfs.fd', '$2y$10$9xnW64yrvhIuW3EKV6qKKexxbEmsHMKmG8sZE5aGNUCV6tWpnxofS', NULL, '2023-06-17 09:24:36', '2023-06-17 09:24:36'),
(5, 'Максим', 'Трифонов', 'Николаевич', 'sssss@ss.fss', '$2y$10$V3FYHMDbfd8Y80HDUDm50uDpm6X2YnpxB2.v.NmpzYoX1ZhrzenSi', '', '2023-06-17 09:40:07', '2023-06-17 09:40:07'),
(6, 'Максим', 'Трифонов', 'Николаевич', 'erertedf@dfs.fd', '$2y$10$Cp.hFVvdDbNrU1uVA0J9TeLqM2wyIdxmglXJBEz97dCIk0S2opvTG', NULL, '2023-06-17 09:43:53', '2023-06-17 09:43:53'),
(7, 'Максим', 'Трифонов', 'Николаевич', 'sadsadsad@dfs.fd', '$2y$10$ZkUWbVAQFZT25U8wpIkmQO0yRKO7JLFkDWciV9laNwi3YvuzCi4Mm', 'TArCcbwmzNUfa0L4YmpRZb2QO6NobR6keQbmjpn43SYw8fflMrHNTcm7Fc9G', '2023-06-17 09:44:59', '2023-06-17 09:44:59'),
(8, 'ваыавывыа', 'вываывыа', 'ываваывыав', 'sdfcxvxcvdsf@fs.er', '$2y$10$2zVOGJtm5usxfxr9dlmFj.SNPFDCwuPIlX3jNWxq4qyROSg0r1TNm', '4IvouV56Amhfxk14ACFvBg0enOtHHuLWpDEfIBD3pANvgeV9RXe2CL2fL9Ja2Fbk5X9UVAlblbLTd2CA', '2023-06-17 12:25:32', '2023-06-17 12:25:32');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_id` (`list_id`);

--
-- Индексы таблицы `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `note_id` (`note_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT для таблицы `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `list`
--
ALTER TABLE `list`
  ADD CONSTRAINT `list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`note_id`) REFERENCES `note` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
