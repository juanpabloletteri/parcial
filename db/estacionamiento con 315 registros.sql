-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2016 a las 19:16:02
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estacionamiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autos`
--

CREATE TABLE `autos` (
  `id` int(11) NOT NULL,
  `patente` varchar(7) COLLATE utf8_spanish_ci NOT NULL,
  `ingreso` datetime NOT NULL,
  `esta` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `autos`
--

INSERT INTO `autos` (`id`, `patente`, `ingreso`, `esta`) VALUES
(17, 'ajr453', '2016-11-07 18:55:34', 1),
(19, 'pef544', '2016-11-07 18:56:04', 1),
(33, 'fys168', '2016-11-07 19:15:16', 1),
(34, 'opq332', '2016-11-07 19:15:24', 1),
(35, 'mna452', '2016-11-07 19:15:35', 1),
(36, 'olx443', '2016-11-07 19:15:44', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id` int(11) NOT NULL,
  `patente` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tiempo` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `dia` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id`, `patente`, `tiempo`, `monto`, `dia`) VALUES
(2, 'pef594', 1, 10, '2016-11-07 17:39:44'),
(3, 'pef936', 5, 50, '2016-11-07 17:39:44'),
(4, 'pef913', 2, 20, '2016-11-07 17:39:44'),
(5, 'pef214', 11, 100, '2016-11-07 17:39:44'),
(6, 'pef183', 11, 100, '2016-11-07 17:39:44'),
(7, 'pef903', 4, 40, '2016-11-07 17:39:44'),
(8, 'pef963', 9, 100, '2016-11-07 17:39:44'),
(9, 'pef838', 7, 70, '2016-11-07 17:39:44'),
(10, 'pef863', 3, 30, '2016-11-07 17:39:44'),
(11, 'pef104', 3, 30, '2016-11-07 17:39:44'),
(12, 'pef640', 7, 70, '2016-11-07 17:39:44'),
(13, 'pef134', 2, 20, '2016-11-07 17:39:44'),
(14, 'pef607', 7, 70, '2016-11-07 17:39:44'),
(15, 'pef113', 10, 100, '2016-11-07 17:39:44'),
(16, 'pef620', 5, 50, '2016-11-07 17:39:44'),
(17, 'pef576', 4, 40, '2016-11-07 17:39:44'),
(18, 'pef990', 9, 100, '2016-11-07 17:39:44'),
(19, 'pef706', 11, 100, '2016-11-07 17:39:44'),
(20, 'pef677', 10, 100, '2016-11-07 17:39:44'),
(21, 'pef139', 9, 100, '2016-11-07 17:39:44'),
(23, 'ajr272', 7, 70, '2016-11-07 17:39:53'),
(24, 'ajr131', 7, 70, '2016-11-07 17:39:53'),
(25, 'ajr565', 2, 20, '2016-11-07 17:39:53'),
(26, 'ajr783', 6, 60, '2016-11-07 17:39:53'),
(27, 'ajr527', 10, 100, '2016-11-07 17:39:53'),
(28, 'ajr751', 2, 20, '2016-11-07 17:39:53'),
(29, 'ajr691', 9, 100, '2016-11-07 17:39:53'),
(30, 'ajr344', 4, 40, '2016-11-07 17:39:53'),
(31, 'ajr241', 4, 40, '2016-11-07 17:39:53'),
(32, 'ajr323', 2, 20, '2016-11-07 17:39:53'),
(33, 'ajr613', 6, 60, '2016-11-07 17:39:53'),
(34, 'ajr995', 5, 50, '2016-11-07 17:39:53'),
(35, 'ajr989', 9, 100, '2016-11-07 17:39:53'),
(36, 'ajr422', 4, 40, '2016-11-07 17:39:53'),
(37, 'ajr105', 2, 20, '2016-11-07 17:39:53'),
(38, 'ajr711', 7, 70, '2016-11-07 17:39:53'),
(39, 'ajr745', 1, 10, '2016-11-07 17:39:53'),
(40, 'ajr823', 5, 50, '2016-11-07 17:39:53'),
(41, 'ajr744', 5, 50, '2016-11-07 17:39:53'),
(42, 'ajr167', 7, 70, '2016-11-07 17:39:53'),
(43, 'fys', 0, 10, '2016-11-07 17:48:05'),
(44, 'fys994', 4, 40, '2016-11-07 17:48:05'),
(45, 'fys204', 5, 50, '2016-11-07 17:48:05'),
(46, 'fys704', 11, 100, '2016-11-07 17:48:05'),
(47, 'fys507', 10, 100, '2016-11-07 17:48:05'),
(48, 'fys749', 8, 80, '2016-11-07 17:48:05'),
(49, 'fys963', 11, 100, '2016-11-07 17:48:05'),
(50, 'fys653', 11, 100, '2016-11-07 17:48:05'),
(51, 'fys869', 9, 100, '2016-11-07 17:48:05'),
(52, 'fys385', 8, 80, '2016-11-07 17:48:05'),
(53, 'fys872', 11, 100, '2016-11-07 17:48:05'),
(54, 'fys369', 1, 10, '2016-11-07 17:48:05'),
(55, 'fys268', 7, 70, '2016-11-07 17:48:05'),
(56, 'fys577', 11, 100, '2016-11-07 17:48:05'),
(57, 'fys604', 4, 40, '2016-11-07 17:48:05'),
(58, 'fys529', 9, 100, '2016-11-07 17:48:05'),
(59, 'fys278', 1, 10, '2016-11-07 17:48:05'),
(60, 'fys199', 4, 40, '2016-11-07 17:48:05'),
(61, 'fys836', 7, 70, '2016-11-07 17:48:05'),
(62, 'fys907', 11, 100, '2016-11-07 17:48:05'),
(63, 'fys675', 11, 100, '2016-11-07 17:48:05'),
(64, 'gtf', 0, 10, '2016-11-07 17:48:14'),
(65, 'gtf826', 6, 60, '2016-11-07 17:48:14'),
(66, 'gtf442', 8, 80, '2016-11-07 17:48:14'),
(67, 'gtf378', 5, 50, '2016-11-07 17:48:14'),
(68, 'gtf334', 11, 100, '2016-11-07 17:48:14'),
(69, 'gtf434', 4, 40, '2016-11-07 17:48:14'),
(70, 'gtf997', 4, 40, '2016-11-07 17:48:14'),
(71, 'gtf516', 9, 100, '2016-11-07 17:48:14'),
(72, 'gtf829', 10, 100, '2016-11-07 17:48:14'),
(73, 'gtf597', 6, 60, '2016-11-07 17:48:14'),
(74, 'gtf477', 3, 30, '2016-11-07 17:48:14'),
(75, 'gtf198', 10, 100, '2016-11-07 17:48:14'),
(76, 'gtf136', 6, 60, '2016-11-07 17:48:14'),
(77, 'gtf191', 8, 80, '2016-11-07 17:48:14'),
(78, 'gtf455', 2, 20, '2016-11-07 17:48:14'),
(79, 'gtf997', 5, 50, '2016-11-07 17:48:14'),
(80, 'gtf730', 5, 50, '2016-11-07 17:48:14'),
(81, 'gtf790', 9, 100, '2016-11-07 17:48:14'),
(82, 'gtf708', 10, 100, '2016-11-07 17:48:14'),
(83, 'gtf890', 2, 20, '2016-11-07 17:48:14'),
(84, 'gtf586', 6, 60, '2016-11-07 17:48:14'),
(85, 'fds', 1, 20, '2016-11-07 18:55:16'),
(86, 'pef544', 0, 10, '2016-11-07 18:55:55'),
(87, 'hyj', 0, 10, '2016-11-07 19:10:38'),
(88, 'hyj669', 6, 60, '2016-11-07 19:10:38'),
(89, 'hyj287', 2, 20, '2016-11-07 19:10:38'),
(90, 'hyj993', 10, 100, '2016-11-07 19:10:38'),
(91, 'hyj476', 8, 80, '2016-11-07 19:10:38'),
(92, 'hyj112', 8, 80, '2016-11-07 19:10:38'),
(93, 'hyj235', 4, 40, '2016-11-07 19:10:38'),
(94, 'hyj812', 3, 30, '2016-11-07 19:10:38'),
(95, 'hyj322', 5, 50, '2016-11-07 19:10:38'),
(96, 'hyj927', 7, 70, '2016-11-07 19:10:38'),
(97, 'hyj148', 7, 70, '2016-11-07 19:10:38'),
(98, 'hyj541', 4, 40, '2016-11-07 19:10:38'),
(99, 'hyj471', 2, 20, '2016-11-07 19:10:38'),
(100, 'hyj188', 3, 30, '2016-11-07 19:10:39'),
(101, 'hyj700', 8, 80, '2016-11-07 19:10:40'),
(102, 'hyj852', 10, 100, '2016-11-07 19:10:40'),
(103, 'hyj696', 6, 60, '2016-11-07 19:10:40'),
(104, 'hyj369', 2, 20, '2016-11-07 19:10:40'),
(105, 'hyj768', 4, 40, '2016-11-07 19:10:40'),
(106, 'hyj623', 7, 70, '2016-11-07 19:10:40'),
(107, 'hyj774', 4, 40, '2016-11-07 19:10:40'),
(108, 'hfs', 0, 10, '2016-11-07 19:10:54'),
(109, 'hfs347', 3, 30, '2016-11-07 19:10:54'),
(110, 'hfs125', 3, 30, '2016-11-07 19:10:54'),
(111, 'hfs527', 5, 50, '2016-11-07 19:10:54'),
(112, 'hfs480', 4, 40, '2016-11-07 19:10:54'),
(113, 'hfs796', 2, 20, '2016-11-07 19:10:54'),
(114, 'hfs347', 3, 30, '2016-11-07 19:10:54'),
(115, 'hfs339', 11, 100, '2016-11-07 19:10:54'),
(116, 'hfs487', 3, 30, '2016-11-07 19:10:54'),
(117, 'hfs591', 8, 80, '2016-11-07 19:10:54'),
(118, 'hfs309', 1, 10, '2016-11-07 19:10:54'),
(119, 'hfs735', 11, 100, '2016-11-07 19:10:54'),
(120, 'hfs572', 10, 100, '2016-11-07 19:10:54'),
(121, 'hfs407', 8, 80, '2016-11-07 19:10:54'),
(122, 'hfs686', 5, 50, '2016-11-07 19:10:54'),
(123, 'hfs590', 3, 30, '2016-11-07 19:10:54'),
(124, 'hfs510', 10, 100, '2016-11-07 19:10:54'),
(125, 'hfs919', 8, 80, '2016-11-07 19:10:54'),
(126, 'hfs353', 1, 10, '2016-11-07 19:10:54'),
(127, 'hfs579', 6, 60, '2016-11-07 19:10:54'),
(128, 'hfs974', 2, 20, '2016-11-07 19:10:54'),
(129, 'nte', 0, 10, '2016-11-07 19:11:08'),
(130, 'nte103', 7, 70, '2016-11-07 19:11:08'),
(131, 'nte884', 9, 100, '2016-11-07 19:11:08'),
(132, 'nte476', 6, 60, '2016-11-07 19:11:08'),
(133, 'nte842', 3, 30, '2016-11-07 19:11:08'),
(134, 'nte432', 2, 20, '2016-11-07 19:11:08'),
(135, 'nte256', 4, 40, '2016-11-07 19:11:08'),
(136, 'nte956', 11, 100, '2016-11-07 19:11:08'),
(137, 'nte786', 1, 10, '2016-11-07 19:11:08'),
(138, 'nte782', 1, 10, '2016-11-07 19:11:08'),
(139, 'nte942', 4, 40, '2016-11-07 19:11:08'),
(140, 'nte895', 8, 80, '2016-11-07 19:11:08'),
(141, 'nte583', 4, 40, '2016-11-07 19:11:08'),
(142, 'nte929', 1, 10, '2016-11-07 19:11:08'),
(143, 'nte918', 9, 100, '2016-11-07 19:11:08'),
(144, 'nte968', 5, 50, '2016-11-07 19:11:08'),
(145, 'nte907', 9, 100, '2016-11-07 19:11:08'),
(146, 'nte647', 10, 100, '2016-11-07 19:11:08'),
(147, 'nte859', 2, 20, '2016-11-07 19:11:08'),
(148, 'nte949', 10, 100, '2016-11-07 19:11:08'),
(149, 'nte633', 2, 20, '2016-11-07 19:11:08'),
(150, 'lol', 0, 10, '2016-11-07 19:11:28'),
(151, 'lol610', 5, 50, '2016-11-07 19:11:28'),
(152, 'lol540', 5, 50, '2016-11-07 19:11:28'),
(153, 'lol614', 10, 100, '2016-11-07 19:11:28'),
(154, 'lol437', 2, 20, '2016-11-07 19:11:28'),
(155, 'lol595', 3, 30, '2016-11-07 19:11:28'),
(156, 'lol635', 3, 30, '2016-11-07 19:11:28'),
(157, 'lol638', 1, 10, '2016-11-07 19:11:28'),
(158, 'lol993', 8, 80, '2016-11-07 19:11:28'),
(159, 'lol376', 3, 30, '2016-11-07 19:11:28'),
(160, 'lol921', 4, 40, '2016-11-07 19:11:28'),
(161, 'lol795', 3, 30, '2016-11-07 19:11:28'),
(162, 'lol277', 4, 40, '2016-11-07 19:11:28'),
(163, 'lol628', 1, 10, '2016-11-07 19:11:28'),
(164, 'lol271', 5, 50, '2016-11-07 19:11:28'),
(165, 'lol860', 3, 30, '2016-11-07 19:11:28'),
(166, 'lol762', 10, 100, '2016-11-07 19:11:28'),
(167, 'lol226', 6, 60, '2016-11-07 19:11:28'),
(168, 'lol261', 5, 50, '2016-11-07 19:11:28'),
(169, 'lol610', 7, 70, '2016-11-07 19:11:28'),
(170, 'lol426', 2, 20, '2016-11-07 19:11:28'),
(171, 'fda', 0, 10, '2016-11-07 19:11:37'),
(172, 'fda745', 5, 50, '2016-11-07 19:11:37'),
(173, 'fda666', 10, 100, '2016-11-07 19:11:37'),
(174, 'fda718', 4, 40, '2016-11-07 19:11:37'),
(175, 'fda841', 10, 100, '2016-11-07 19:11:37'),
(176, 'fda161', 4, 40, '2016-11-07 19:11:37'),
(177, 'fda361', 8, 80, '2016-11-07 19:11:37'),
(178, 'fda959', 11, 100, '2016-11-07 19:11:37'),
(179, 'fda884', 8, 80, '2016-11-07 19:11:37'),
(180, 'fda947', 2, 20, '2016-11-07 19:11:37'),
(181, 'fda920', 7, 70, '2016-11-07 19:11:37'),
(182, 'fda209', 4, 40, '2016-11-07 19:11:37'),
(183, 'fda329', 6, 60, '2016-11-07 19:11:37'),
(184, 'fda180', 7, 70, '2016-11-07 19:11:37'),
(185, 'fda320', 3, 30, '2016-11-07 19:11:37'),
(186, 'fda943', 3, 30, '2016-11-07 19:11:37'),
(187, 'fda752', 11, 100, '2016-11-07 19:11:37'),
(188, 'fda333', 4, 40, '2016-11-07 19:11:37'),
(189, 'fda134', 6, 60, '2016-11-07 19:11:37'),
(190, 'fda235', 5, 50, '2016-11-07 19:11:37'),
(191, 'fda127', 10, 100, '2016-11-07 19:11:37'),
(192, 'qrt', 0, 10, '2016-11-07 19:11:51'),
(193, 'qrt240', 6, 60, '2016-11-07 19:11:51'),
(194, 'qrt538', 3, 30, '2016-11-07 19:11:51'),
(195, 'qrt987', 6, 60, '2016-11-07 19:11:51'),
(196, 'qrt837', 3, 30, '2016-11-07 19:11:51'),
(197, 'qrt663', 10, 100, '2016-11-07 19:11:51'),
(198, 'qrt334', 7, 70, '2016-11-07 19:11:51'),
(199, 'qrt591', 10, 100, '2016-11-07 19:11:51'),
(200, 'qrt124', 5, 50, '2016-11-07 19:11:51'),
(201, 'qrt742', 6, 60, '2016-11-07 19:11:51'),
(202, 'qrt854', 4, 40, '2016-11-07 19:11:51'),
(203, 'qrt638', 11, 100, '2016-11-07 19:11:51'),
(204, 'qrt921', 4, 40, '2016-11-07 19:11:51'),
(205, 'qrt251', 3, 30, '2016-11-07 19:11:51'),
(206, 'qrt973', 1, 10, '2016-11-07 19:11:51'),
(207, 'qrt903', 7, 70, '2016-11-07 19:11:51'),
(208, 'qrt306', 6, 60, '2016-11-07 19:11:51'),
(209, 'qrt766', 10, 100, '2016-11-07 19:11:51'),
(210, 'qrt467', 6, 60, '2016-11-07 19:11:51'),
(211, 'qrt262', 4, 40, '2016-11-07 19:11:51'),
(212, 'qrt752', 11, 100, '2016-11-07 19:11:51'),
(213, 'hgf', 0, 10, '2016-11-07 19:12:12'),
(214, 'hgf261', 1, 10, '2016-11-07 19:12:12'),
(215, 'hgf909', 6, 60, '2016-11-07 19:12:12'),
(216, 'hgf288', 2, 20, '2016-11-07 19:12:12'),
(217, 'hgf235', 3, 30, '2016-11-07 19:12:12'),
(218, 'hgf312', 6, 60, '2016-11-07 19:12:12'),
(219, 'hgf276', 9, 100, '2016-11-07 19:12:12'),
(220, 'hgf757', 7, 70, '2016-11-07 19:12:12'),
(221, 'hgf330', 2, 20, '2016-11-07 19:12:12'),
(222, 'hgf693', 2, 20, '2016-11-07 19:12:12'),
(223, 'hgf143', 1, 10, '2016-11-07 19:12:12'),
(224, 'hgf544', 6, 60, '2016-11-07 19:12:12'),
(225, 'hgf811', 6, 60, '2016-11-07 19:12:12'),
(226, 'hgf280', 6, 60, '2016-11-07 19:12:12'),
(227, 'hgf283', 2, 20, '2016-11-07 19:12:12'),
(228, 'hgf324', 7, 70, '2016-11-07 19:12:12'),
(229, 'hgf554', 11, 100, '2016-11-07 19:12:12'),
(230, 'hgf647', 7, 70, '2016-11-07 19:12:12'),
(231, 'hgf473', 8, 80, '2016-11-07 19:12:12'),
(232, 'hgf772', 8, 80, '2016-11-07 19:12:12'),
(233, 'hgf234', 5, 50, '2016-11-07 19:12:12'),
(234, 'iii', 0, 10, '2016-11-07 19:12:25'),
(235, 'iii670', 10, 100, '2016-11-07 19:12:25'),
(236, 'iii486', 7, 70, '2016-11-07 19:12:25'),
(237, 'iii763', 6, 60, '2016-11-07 19:12:25'),
(238, 'iii526', 5, 50, '2016-11-07 19:12:25'),
(239, 'iii123', 4, 40, '2016-11-07 19:12:25'),
(240, 'iii999', 6, 60, '2016-11-07 19:12:25'),
(241, 'iii972', 9, 100, '2016-11-07 19:12:25'),
(242, 'iii304', 10, 100, '2016-11-07 19:12:25'),
(243, 'iii582', 7, 70, '2016-11-07 19:12:25'),
(244, 'iii887', 2, 20, '2016-11-07 19:12:25'),
(245, 'iii274', 3, 30, '2016-11-07 19:12:25'),
(246, 'iii244', 5, 50, '2016-11-07 19:12:25'),
(247, 'iii921', 6, 60, '2016-11-07 19:12:25'),
(248, 'iii823', 4, 40, '2016-11-07 19:12:25'),
(249, 'iii244', 8, 80, '2016-11-07 19:12:25'),
(250, 'iii121', 10, 100, '2016-11-07 19:12:25'),
(251, 'iii915', 8, 80, '2016-11-07 19:12:25'),
(252, 'iii584', 9, 100, '2016-11-07 19:12:25'),
(253, 'iii657', 9, 100, '2016-11-07 19:12:25'),
(254, 'iii609', 1, 10, '2016-11-07 19:12:25'),
(255, 'qsd', 0, 10, '2016-11-07 19:12:33'),
(256, 'qsd340', 11, 100, '2016-11-07 19:12:33'),
(257, 'qsd844', 3, 30, '2016-11-07 19:12:33'),
(258, 'qsd387', 5, 50, '2016-11-07 19:12:33'),
(259, 'qsd585', 7, 70, '2016-11-07 19:12:33'),
(260, 'qsd771', 1, 10, '2016-11-07 19:12:33'),
(261, 'qsd478', 6, 60, '2016-11-07 19:12:33'),
(262, 'qsd111', 3, 30, '2016-11-07 19:12:33'),
(263, 'qsd721', 3, 30, '2016-11-07 19:12:33'),
(264, 'qsd181', 9, 100, '2016-11-07 19:12:33'),
(265, 'qsd161', 4, 40, '2016-11-07 19:12:33'),
(266, 'qsd503', 1, 10, '2016-11-07 19:12:33'),
(267, 'qsd795', 9, 100, '2016-11-07 19:12:33'),
(268, 'qsd148', 9, 100, '2016-11-07 19:12:33'),
(269, 'qsd569', 4, 40, '2016-11-07 19:12:33'),
(270, 'qsd438', 6, 60, '2016-11-07 19:12:33'),
(271, 'qsd580', 1, 10, '2016-11-07 19:12:33'),
(272, 'qsd445', 11, 100, '2016-11-07 19:12:33'),
(273, 'qsd576', 5, 50, '2016-11-07 19:12:33'),
(274, 'qsd591', 6, 60, '2016-11-07 19:12:33'),
(275, 'qsd752', 8, 80, '2016-11-07 19:12:33'),
(276, 'mgn', 0, 10, '2016-11-07 19:12:50'),
(277, 'mgn847', 10, 100, '2016-11-07 19:12:50'),
(278, 'mgn857', 3, 30, '2016-11-07 19:12:50'),
(279, 'mgn736', 7, 70, '2016-11-07 19:12:50'),
(280, 'mgn186', 5, 50, '2016-11-07 19:12:50'),
(281, 'mgn230', 5, 50, '2016-11-07 19:12:50'),
(282, 'mgn287', 8, 80, '2016-11-07 19:12:50'),
(283, 'mgn650', 9, 100, '2016-11-07 19:12:50'),
(284, 'mgn457', 1, 10, '2016-11-07 19:12:50'),
(285, 'mgn168', 4, 40, '2016-11-07 19:12:50'),
(286, 'mgn442', 4, 40, '2016-11-07 19:12:50'),
(287, 'mgn106', 7, 70, '2016-11-07 19:12:50'),
(288, 'mgn439', 5, 50, '2016-11-07 19:12:50'),
(289, 'mgn437', 4, 40, '2016-11-07 19:12:50'),
(290, 'mgn195', 11, 100, '2016-11-07 19:12:50'),
(291, 'mgn681', 10, 100, '2016-11-07 19:12:50'),
(292, 'mgn808', 2, 20, '2016-11-07 19:12:50'),
(293, 'mgn811', 2, 20, '2016-11-07 19:12:50'),
(294, 'mgn223', 5, 50, '2016-11-07 19:12:50'),
(295, 'mgn349', 5, 50, '2016-11-07 19:12:50'),
(296, 'mgn438', 11, 100, '2016-11-07 19:12:50'),
(297, 'mag', 0, 10, '2016-11-07 19:13:01'),
(298, 'mag166', 6, 60, '2016-11-07 19:13:01'),
(299, 'mag300', 5, 50, '2016-11-07 19:13:01'),
(300, 'mag684', 10, 100, '2016-11-07 19:13:01'),
(301, 'mag906', 8, 80, '2016-11-07 19:13:01'),
(302, 'mag976', 3, 30, '2016-11-07 19:13:01'),
(303, 'mag202', 7, 70, '2016-11-07 19:13:01'),
(304, 'mag563', 1, 10, '2016-11-07 19:13:01'),
(305, 'mag185', 2, 20, '2016-11-07 19:13:01'),
(306, 'mag316', 1, 10, '2016-11-07 19:13:01'),
(307, 'mag602', 10, 100, '2016-11-07 19:13:01'),
(308, 'mag659', 8, 80, '2016-11-07 19:13:01'),
(309, 'mag751', 11, 100, '2016-11-07 19:13:01'),
(310, 'mag662', 8, 80, '2016-11-07 19:13:01'),
(311, 'mag377', 11, 100, '2016-11-07 19:13:01'),
(312, 'mag748', 6, 60, '2016-11-07 19:13:01'),
(313, 'mag578', 10, 100, '2016-11-07 19:13:01'),
(314, 'mag889', 11, 100, '2016-11-07 19:13:01'),
(315, 'mag201', 6, 60, '2016-11-07 19:13:01'),
(316, 'mag606', 4, 40, '2016-11-07 19:13:01'),
(317, 'mag342', 9, 100, '2016-11-07 19:13:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `usuario`, `pass`, `mail`, `admin`) VALUES
(1, '0', '0', '', 0),
(2, '1', '1', '', 1),
(3, 'admin', 'admin', '', 1),
(4, 'usuario', 'usuario', '', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autos`
--
ALTER TABLE `autos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patente` (`patente`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autos`
--
ALTER TABLE `autos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;
--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
