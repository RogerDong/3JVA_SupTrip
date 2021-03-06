-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-01-17 15:46:35
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `suptrip`
--

-- --------------------------------------------------------

--
-- 表的结构 `bag`
--

CREATE TABLE IF NOT EXISTS `bag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderstate` bigint(20) NOT NULL,
  `trip_fk` bigint(20) DEFAULT NULL,
  `user_fk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK17C08F5648AF5` (`user_fk`),
  KEY `FK17C08BF0074B5` (`trip_fk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `bag`
--

INSERT INTO `bag` (`id`, `orderstate`, `trip_fk`, `user_fk`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 42, 1),
(5, 1, 42, 1),
(6, 1, 42, 1),
(7, 1, 42, 1),
(8, 1, 42, 1),
(9, 1, 42, 1),
(10, 1, 42, 1),
(11, 1, 42, 1),
(12, 1, 41, 1),
(13, 1, 113, 1),
(14, 1, 251, 1),
(15, 1, 1142, 1),
(16, 1, 1159, 1),
(17, 1, 1161, 1),
(18, 1, 1165, 1),
(19, 1, 1165, 1),
(20, 1, 1165, 1),
(21, 0, 1165, 1),
(22, 0, 23, 1),
(23, 0, 317, 1);

-- --------------------------------------------------------

--
-- 表的结构 `campus`
--

CREATE TABLE IF NOT EXISTS `campus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campusName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `campus`
--

INSERT INTO `campus` (`id`, `campusName`) VALUES
(1, 'Beijing'),
(2, 'Bordeaux'),
(3, 'Bruxelles'),
(4, 'Caen'),
(5, 'Casablanca'),
(6, 'Clermont-Ferrand'),
(7, 'Grenoble'),
(8, 'Guadeloupe'),
(9, 'Île-Maurice'),
(10, 'Lille'),
(11, 'Londres'),
(12, 'Luxembourg'),
(13, 'Lyon'),
(14, 'Marseille'),
(15, 'Martinique'),
(16, 'Metz'),
(17, 'Montpellier'),
(18, 'Montreal'),
(19, 'Nantes'),
(20, 'Nice'),
(21, 'Orléans'),
(22, 'Paris'),
(23, 'Rabat'),
(24, 'Reims'),
(25, 'Rennes'),
(26, 'Réunion'),
(27, 'Rio de Janeiro'),
(28, 'Rome'),
(29, 'Sénégal'),
(30, 'Strasbourg'),
(31, 'Suisse'),
(32, 'Tianjin'),
(33, 'Toulouse'),
(34, 'Tours'),
(35, 'Trapani'),
(36, 'Troyes'),
(37, 'Valenciennes'),
(38, 'Zhenjiang');

-- --------------------------------------------------------

--
-- 表的结构 `trip`
--

CREATE TABLE IF NOT EXISTS `trip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fee` float DEFAULT NULL,
  `departure_campus_fk` bigint(20) DEFAULT NULL,
  `destination_campus_fk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK367425EF9F6F44` (`destination_campus_fk`),
  KEY `FK367425D07BCCAA` (`departure_campus_fk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1407 ;

--
-- 转存表中的数据 `trip`
--

INSERT INTO `trip` (`id`, `fee`, `departure_campus_fk`, `destination_campus_fk`) VALUES
(1, 111, 1, 2),
(2, 111, 2, 1),
(3, 111, 1, 3),
(4, 111, 3, 1),
(5, 111, 1, 4),
(6, 111, 4, 1),
(7, 111, 1, 5),
(8, 111, 5, 1),
(9, 111, 1, 6),
(10, 111, 6, 1),
(11, 111, 1, 7),
(12, 111, 7, 1),
(13, 111, 1, 8),
(14, 111, 8, 1),
(15, 111, 1, 9),
(16, 111, 9, 1),
(17, 111, 1, 10),
(18, 111, 10, 1),
(19, 111, 1, 11),
(20, 111, 11, 1),
(21, 111, 1, 12),
(22, 111, 12, 1),
(23, 111, 1, 13),
(24, 111, 13, 1),
(25, 111, 1, 14),
(26, 111, 14, 1),
(27, 111, 1, 15),
(28, 111, 15, 1),
(29, 111, 1, 16),
(30, 111, 16, 1),
(31, 111, 1, 17),
(32, 111, 17, 1),
(33, 111, 1, 18),
(34, 111, 18, 1),
(35, 111, 1, 19),
(36, 111, 19, 1),
(37, 111, 1, 20),
(38, 111, 20, 1),
(39, 111, 1, 21),
(40, 111, 21, 1),
(41, 111, 1, 22),
(42, 111, 22, 1),
(43, 111, 1, 23),
(44, 111, 23, 1),
(45, 111, 1, 24),
(46, 111, 24, 1),
(47, 111, 1, 25),
(48, 111, 25, 1),
(49, 111, 1, 26),
(50, 111, 26, 1),
(51, 111, 1, 27),
(52, 111, 27, 1),
(53, 111, 1, 28),
(54, 111, 28, 1),
(55, 111, 1, 29),
(56, 111, 29, 1),
(57, 111, 1, 30),
(58, 111, 30, 1),
(59, 111, 1, 31),
(60, 111, 31, 1),
(61, 111, 1, 32),
(62, 111, 32, 1),
(63, 111, 1, 33),
(64, 111, 33, 1),
(65, 111, 1, 34),
(66, 111, 34, 1),
(67, 111, 1, 35),
(68, 111, 35, 1),
(69, 111, 1, 36),
(70, 111, 36, 1),
(71, 111, 1, 37),
(72, 111, 37, 1),
(73, 111, 1, 38),
(74, 111, 38, 1),
(75, 111, 2, 3),
(76, 111, 3, 2),
(77, 111, 2, 4),
(78, 111, 4, 2),
(79, 111, 2, 5),
(80, 111, 5, 2),
(81, 111, 2, 6),
(82, 111, 6, 2),
(83, 111, 2, 7),
(84, 111, 7, 2),
(85, 111, 2, 8),
(86, 111, 8, 2),
(87, 111, 2, 9),
(88, 111, 9, 2),
(89, 111, 2, 10),
(90, 111, 10, 2),
(91, 111, 2, 11),
(92, 111, 11, 2),
(93, 111, 2, 12),
(94, 111, 12, 2),
(95, 111, 2, 13),
(96, 111, 13, 2),
(97, 111, 2, 14),
(98, 111, 14, 2),
(99, 111, 2, 15),
(100, 111, 15, 2),
(101, 111, 2, 16),
(102, 111, 16, 2),
(103, 111, 2, 17),
(104, 111, 17, 2),
(105, 111, 2, 18),
(106, 111, 18, 2),
(107, 111, 2, 19),
(108, 111, 19, 2),
(109, 111, 2, 20),
(110, 111, 20, 2),
(111, 111, 2, 21),
(112, 111, 21, 2),
(113, 111, 2, 22),
(114, 111, 22, 2),
(115, 111, 2, 23),
(116, 111, 23, 2),
(117, 111, 2, 24),
(118, 111, 24, 2),
(119, 111, 2, 25),
(120, 111, 25, 2),
(121, 111, 2, 26),
(122, 111, 26, 2),
(123, 111, 2, 27),
(124, 111, 27, 2),
(125, 111, 2, 28),
(126, 111, 28, 2),
(127, 111, 2, 29),
(128, 111, 29, 2),
(129, 111, 2, 30),
(130, 111, 30, 2),
(131, 111, 2, 31),
(132, 111, 31, 2),
(133, 111, 2, 32),
(134, 111, 32, 2),
(135, 111, 2, 33),
(136, 111, 33, 2),
(137, 111, 2, 34),
(138, 111, 34, 2),
(139, 111, 2, 35),
(140, 111, 35, 2),
(141, 111, 2, 36),
(142, 111, 36, 2),
(143, 111, 2, 37),
(144, 111, 37, 2),
(145, 111, 2, 38),
(146, 111, 38, 2),
(147, 111, 3, 4),
(148, 111, 4, 3),
(149, 111, 3, 5),
(150, 111, 5, 3),
(151, 111, 3, 6),
(152, 111, 6, 3),
(153, 111, 3, 7),
(154, 111, 7, 3),
(155, 111, 3, 8),
(156, 111, 8, 3),
(157, 111, 3, 9),
(158, 111, 9, 3),
(159, 111, 3, 10),
(160, 111, 10, 3),
(161, 111, 3, 11),
(162, 111, 11, 3),
(163, 111, 3, 12),
(164, 111, 12, 3),
(165, 111, 3, 13),
(166, 111, 13, 3),
(167, 111, 3, 14),
(168, 111, 14, 3),
(169, 111, 3, 15),
(170, 111, 15, 3),
(171, 111, 3, 16),
(172, 111, 16, 3),
(173, 111, 3, 17),
(174, 111, 17, 3),
(175, 111, 3, 18),
(176, 111, 18, 3),
(177, 111, 3, 19),
(178, 111, 19, 3),
(179, 111, 3, 20),
(180, 111, 20, 3),
(181, 111, 3, 21),
(182, 111, 21, 3),
(183, 111, 3, 22),
(184, 111, 22, 3),
(185, 111, 3, 23),
(186, 111, 23, 3),
(187, 111, 3, 24),
(188, 111, 24, 3),
(189, 111, 3, 25),
(190, 111, 25, 3),
(191, 111, 3, 26),
(192, 111, 26, 3),
(193, 111, 3, 27),
(194, 111, 27, 3),
(195, 111, 3, 28),
(196, 111, 28, 3),
(197, 111, 3, 29),
(198, 111, 29, 3),
(199, 111, 3, 30),
(200, 111, 30, 3),
(201, 111, 3, 31),
(202, 111, 31, 3),
(203, 111, 3, 32),
(204, 111, 32, 3),
(205, 111, 3, 33),
(206, 111, 33, 3),
(207, 111, 3, 34),
(208, 111, 34, 3),
(209, 111, 3, 35),
(210, 111, 35, 3),
(211, 111, 3, 36),
(212, 111, 36, 3),
(213, 111, 3, 37),
(214, 111, 37, 3),
(215, 111, 3, 38),
(216, 111, 38, 3),
(217, 111, 4, 5),
(218, 111, 5, 4),
(219, 111, 4, 6),
(220, 111, 6, 4),
(221, 111, 4, 7),
(222, 111, 7, 4),
(223, 111, 4, 8),
(224, 111, 8, 4),
(225, 111, 4, 9),
(226, 111, 9, 4),
(227, 111, 4, 10),
(228, 111, 10, 4),
(229, 111, 4, 11),
(230, 111, 11, 4),
(231, 111, 4, 12),
(232, 111, 12, 4),
(233, 111, 4, 13),
(234, 111, 13, 4),
(235, 111, 4, 14),
(236, 111, 14, 4),
(237, 111, 4, 15),
(238, 111, 15, 4),
(239, 111, 4, 16),
(240, 111, 16, 4),
(241, 111, 4, 17),
(242, 111, 17, 4),
(243, 111, 4, 18),
(244, 111, 18, 4),
(245, 111, 4, 19),
(246, 111, 19, 4),
(247, 111, 4, 20),
(248, 111, 20, 4),
(249, 111, 4, 21),
(250, 111, 21, 4),
(251, 111, 4, 22),
(252, 111, 22, 4),
(253, 111, 4, 23),
(254, 111, 23, 4),
(255, 111, 4, 24),
(256, 111, 24, 4),
(257, 111, 4, 25),
(258, 111, 25, 4),
(259, 111, 4, 26),
(260, 111, 26, 4),
(261, 111, 4, 27),
(262, 111, 27, 4),
(263, 111, 4, 28),
(264, 111, 28, 4),
(265, 111, 4, 29),
(266, 111, 29, 4),
(267, 111, 4, 30),
(268, 111, 30, 4),
(269, 111, 4, 31),
(270, 111, 31, 4),
(271, 111, 4, 32),
(272, 111, 32, 4),
(273, 111, 4, 33),
(274, 111, 33, 4),
(275, 111, 4, 34),
(276, 111, 34, 4),
(277, 111, 4, 35),
(278, 111, 35, 4),
(279, 111, 4, 36),
(280, 111, 36, 4),
(281, 111, 4, 37),
(282, 111, 37, 4),
(283, 111, 4, 38),
(284, 111, 38, 4),
(285, 111, 5, 6),
(286, 111, 6, 5),
(287, 111, 5, 7),
(288, 111, 7, 5),
(289, 111, 5, 8),
(290, 111, 8, 5),
(291, 111, 5, 9),
(292, 111, 9, 5),
(293, 111, 5, 10),
(294, 111, 10, 5),
(295, 111, 5, 11),
(296, 111, 11, 5),
(297, 111, 5, 12),
(298, 111, 12, 5),
(299, 111, 5, 13),
(300, 111, 13, 5),
(301, 111, 5, 14),
(302, 111, 14, 5),
(303, 111, 5, 15),
(304, 111, 15, 5),
(305, 111, 5, 16),
(306, 111, 16, 5),
(307, 111, 5, 17),
(308, 111, 17, 5),
(309, 111, 5, 18),
(310, 111, 18, 5),
(311, 111, 5, 19),
(312, 111, 19, 5),
(313, 111, 5, 20),
(314, 111, 20, 5),
(315, 111, 5, 21),
(316, 111, 21, 5),
(317, 111, 5, 22),
(318, 111, 22, 5),
(319, 111, 5, 23),
(320, 111, 23, 5),
(321, 111, 5, 24),
(322, 111, 24, 5),
(323, 111, 5, 25),
(324, 111, 25, 5),
(325, 111, 5, 26),
(326, 111, 26, 5),
(327, 111, 5, 27),
(328, 111, 27, 5),
(329, 111, 5, 28),
(330, 111, 28, 5),
(331, 111, 5, 29),
(332, 111, 29, 5),
(333, 111, 5, 30),
(334, 111, 30, 5),
(335, 111, 5, 31),
(336, 111, 31, 5),
(337, 111, 5, 32),
(338, 111, 32, 5),
(339, 111, 5, 33),
(340, 111, 33, 5),
(341, 111, 5, 34),
(342, 111, 34, 5),
(343, 111, 5, 35),
(344, 111, 35, 5),
(345, 111, 5, 36),
(346, 111, 36, 5),
(347, 111, 5, 37),
(348, 111, 37, 5),
(349, 111, 5, 38),
(350, 111, 38, 5),
(351, 111, 6, 7),
(352, 111, 7, 6),
(353, 111, 6, 8),
(354, 111, 8, 6),
(355, 111, 6, 9),
(356, 111, 9, 6),
(357, 111, 6, 10),
(358, 111, 10, 6),
(359, 111, 6, 11),
(360, 111, 11, 6),
(361, 111, 6, 12),
(362, 111, 12, 6),
(363, 111, 6, 13),
(364, 111, 13, 6),
(365, 111, 6, 14),
(366, 111, 14, 6),
(367, 111, 6, 15),
(368, 111, 15, 6),
(369, 111, 6, 16),
(370, 111, 16, 6),
(371, 111, 6, 17),
(372, 111, 17, 6),
(373, 111, 6, 18),
(374, 111, 18, 6),
(375, 111, 6, 19),
(376, 111, 19, 6),
(377, 111, 6, 20),
(378, 111, 20, 6),
(379, 111, 6, 21),
(380, 111, 21, 6),
(381, 111, 6, 22),
(382, 111, 22, 6),
(383, 111, 6, 23),
(384, 111, 23, 6),
(385, 111, 6, 24),
(386, 111, 24, 6),
(387, 111, 6, 25),
(388, 111, 25, 6),
(389, 111, 6, 26),
(390, 111, 26, 6),
(391, 111, 6, 27),
(392, 111, 27, 6),
(393, 111, 6, 28),
(394, 111, 28, 6),
(395, 111, 6, 29),
(396, 111, 29, 6),
(397, 111, 6, 30),
(398, 111, 30, 6),
(399, 111, 6, 31),
(400, 111, 31, 6),
(401, 111, 6, 32),
(402, 111, 32, 6),
(403, 111, 6, 33),
(404, 111, 33, 6),
(405, 111, 6, 34),
(406, 111, 34, 6),
(407, 111, 6, 35),
(408, 111, 35, 6),
(409, 111, 6, 36),
(410, 111, 36, 6),
(411, 111, 6, 37),
(412, 111, 37, 6),
(413, 111, 6, 38),
(414, 111, 38, 6),
(415, 111, 7, 8),
(416, 111, 8, 7),
(417, 111, 7, 9),
(418, 111, 9, 7),
(419, 111, 7, 10),
(420, 111, 10, 7),
(421, 111, 7, 11),
(422, 111, 11, 7),
(423, 111, 7, 12),
(424, 111, 12, 7),
(425, 111, 7, 13),
(426, 111, 13, 7),
(427, 111, 7, 14),
(428, 111, 14, 7),
(429, 111, 7, 15),
(430, 111, 15, 7),
(431, 111, 7, 16),
(432, 111, 16, 7),
(433, 111, 7, 17),
(434, 111, 17, 7),
(435, 111, 7, 18),
(436, 111, 18, 7),
(437, 111, 7, 19),
(438, 111, 19, 7),
(439, 111, 7, 20),
(440, 111, 20, 7),
(441, 111, 7, 21),
(442, 111, 21, 7),
(443, 111, 7, 22),
(444, 111, 22, 7),
(445, 111, 7, 23),
(446, 111, 23, 7),
(447, 111, 7, 24),
(448, 111, 24, 7),
(449, 111, 7, 25),
(450, 111, 25, 7),
(451, 111, 7, 26),
(452, 111, 26, 7),
(453, 111, 7, 27),
(454, 111, 27, 7),
(455, 111, 7, 28),
(456, 111, 28, 7),
(457, 111, 7, 29),
(458, 111, 29, 7),
(459, 111, 7, 30),
(460, 111, 30, 7),
(461, 111, 7, 31),
(462, 111, 31, 7),
(463, 111, 7, 32),
(464, 111, 32, 7),
(465, 111, 7, 33),
(466, 111, 33, 7),
(467, 111, 7, 34),
(468, 111, 34, 7),
(469, 111, 7, 35),
(470, 111, 35, 7),
(471, 111, 7, 36),
(472, 111, 36, 7),
(473, 111, 7, 37),
(474, 111, 37, 7),
(475, 111, 7, 38),
(476, 111, 38, 7),
(477, 111, 8, 9),
(478, 111, 9, 8),
(479, 111, 8, 10),
(480, 111, 10, 8),
(481, 111, 8, 11),
(482, 111, 11, 8),
(483, 111, 8, 12),
(484, 111, 12, 8),
(485, 111, 8, 13),
(486, 111, 13, 8),
(487, 111, 8, 14),
(488, 111, 14, 8),
(489, 111, 8, 15),
(490, 111, 15, 8),
(491, 111, 8, 16),
(492, 111, 16, 8),
(493, 111, 8, 17),
(494, 111, 17, 8),
(495, 111, 8, 18),
(496, 111, 18, 8),
(497, 111, 8, 19),
(498, 111, 19, 8),
(499, 111, 8, 20),
(500, 111, 20, 8),
(501, 111, 8, 21),
(502, 111, 21, 8),
(503, 111, 8, 22),
(504, 111, 22, 8),
(505, 111, 8, 23),
(506, 111, 23, 8),
(507, 111, 8, 24),
(508, 111, 24, 8),
(509, 111, 8, 25),
(510, 111, 25, 8),
(511, 111, 8, 26),
(512, 111, 26, 8),
(513, 111, 8, 27),
(514, 111, 27, 8),
(515, 111, 8, 28),
(516, 111, 28, 8),
(517, 111, 8, 29),
(518, 111, 29, 8),
(519, 111, 8, 30),
(520, 111, 30, 8),
(521, 111, 8, 31),
(522, 111, 31, 8),
(523, 111, 8, 32),
(524, 111, 32, 8),
(525, 111, 8, 33),
(526, 111, 33, 8),
(527, 111, 8, 34),
(528, 111, 34, 8),
(529, 111, 8, 35),
(530, 111, 35, 8),
(531, 111, 8, 36),
(532, 111, 36, 8),
(533, 111, 8, 37),
(534, 111, 37, 8),
(535, 111, 8, 38),
(536, 111, 38, 8),
(537, 111, 9, 10),
(538, 111, 10, 9),
(539, 111, 9, 11),
(540, 111, 11, 9),
(541, 111, 9, 12),
(542, 111, 12, 9),
(543, 111, 9, 13),
(544, 111, 13, 9),
(545, 111, 9, 14),
(546, 111, 14, 9),
(547, 111, 9, 15),
(548, 111, 15, 9),
(549, 111, 9, 16),
(550, 111, 16, 9),
(551, 111, 9, 17),
(552, 111, 17, 9),
(553, 111, 9, 18),
(554, 111, 18, 9),
(555, 111, 9, 19),
(556, 111, 19, 9),
(557, 111, 9, 20),
(558, 111, 20, 9),
(559, 111, 9, 21),
(560, 111, 21, 9),
(561, 111, 9, 22),
(562, 111, 22, 9),
(563, 111, 9, 23),
(564, 111, 23, 9),
(565, 111, 9, 24),
(566, 111, 24, 9),
(567, 111, 9, 25),
(568, 111, 25, 9),
(569, 111, 9, 26),
(570, 111, 26, 9),
(571, 111, 9, 27),
(572, 111, 27, 9),
(573, 111, 9, 28),
(574, 111, 28, 9),
(575, 111, 9, 29),
(576, 111, 29, 9),
(577, 111, 9, 30),
(578, 111, 30, 9),
(579, 111, 9, 31),
(580, 111, 31, 9),
(581, 111, 9, 32),
(582, 111, 32, 9),
(583, 111, 9, 33),
(584, 111, 33, 9),
(585, 111, 9, 34),
(586, 111, 34, 9),
(587, 111, 9, 35),
(588, 111, 35, 9),
(589, 111, 9, 36),
(590, 111, 36, 9),
(591, 111, 9, 37),
(592, 111, 37, 9),
(593, 111, 9, 38),
(594, 111, 38, 9),
(595, 111, 10, 11),
(596, 111, 11, 10),
(597, 111, 10, 12),
(598, 111, 12, 10),
(599, 111, 10, 13),
(600, 111, 13, 10),
(601, 111, 10, 14),
(602, 111, 14, 10),
(603, 111, 10, 15),
(604, 111, 15, 10),
(605, 111, 10, 16),
(606, 111, 16, 10),
(607, 111, 10, 17),
(608, 111, 17, 10),
(609, 111, 10, 18),
(610, 111, 18, 10),
(611, 111, 10, 19),
(612, 111, 19, 10),
(613, 111, 10, 20),
(614, 111, 20, 10),
(615, 111, 10, 21),
(616, 111, 21, 10),
(617, 111, 10, 22),
(618, 111, 22, 10),
(619, 111, 10, 23),
(620, 111, 23, 10),
(621, 111, 10, 24),
(622, 111, 24, 10),
(623, 111, 10, 25),
(624, 111, 25, 10),
(625, 111, 10, 26),
(626, 111, 26, 10),
(627, 111, 10, 27),
(628, 111, 27, 10),
(629, 111, 10, 28),
(630, 111, 28, 10),
(631, 111, 10, 29),
(632, 111, 29, 10),
(633, 111, 10, 30),
(634, 111, 30, 10),
(635, 111, 10, 31),
(636, 111, 31, 10),
(637, 111, 10, 32),
(638, 111, 32, 10),
(639, 111, 10, 33),
(640, 111, 33, 10),
(641, 111, 10, 34),
(642, 111, 34, 10),
(643, 111, 10, 35),
(644, 111, 35, 10),
(645, 111, 10, 36),
(646, 111, 36, 10),
(647, 111, 10, 37),
(648, 111, 37, 10),
(649, 111, 10, 38),
(650, 111, 38, 10),
(651, 111, 11, 12),
(652, 111, 12, 11),
(653, 111, 11, 13),
(654, 111, 13, 11),
(655, 111, 11, 14),
(656, 111, 14, 11),
(657, 111, 11, 15),
(658, 111, 15, 11),
(659, 111, 11, 16),
(660, 111, 16, 11),
(661, 111, 11, 17),
(662, 111, 17, 11),
(663, 111, 11, 18),
(664, 111, 18, 11),
(665, 111, 11, 19),
(666, 111, 19, 11),
(667, 111, 11, 20),
(668, 111, 20, 11),
(669, 111, 11, 21),
(670, 111, 21, 11),
(671, 111, 11, 22),
(672, 111, 22, 11),
(673, 111, 11, 23),
(674, 111, 23, 11),
(675, 111, 11, 24),
(676, 111, 24, 11),
(677, 111, 11, 25),
(678, 111, 25, 11),
(679, 111, 11, 26),
(680, 111, 26, 11),
(681, 111, 11, 27),
(682, 111, 27, 11),
(683, 111, 11, 28),
(684, 111, 28, 11),
(685, 111, 11, 29),
(686, 111, 29, 11),
(687, 111, 11, 30),
(688, 111, 30, 11),
(689, 111, 11, 31),
(690, 111, 31, 11),
(691, 111, 11, 32),
(692, 111, 32, 11),
(693, 111, 11, 33),
(694, 111, 33, 11),
(695, 111, 11, 34),
(696, 111, 34, 11),
(697, 111, 11, 35),
(698, 111, 35, 11),
(699, 111, 11, 36),
(700, 111, 36, 11),
(701, 111, 11, 37),
(702, 111, 37, 11),
(703, 111, 11, 38),
(704, 111, 38, 11),
(705, 111, 12, 13),
(706, 111, 13, 12),
(707, 111, 12, 14),
(708, 111, 14, 12),
(709, 111, 12, 15),
(710, 111, 15, 12),
(711, 111, 12, 16),
(712, 111, 16, 12),
(713, 111, 12, 17),
(714, 111, 17, 12),
(715, 111, 12, 18),
(716, 111, 18, 12),
(717, 111, 12, 19),
(718, 111, 19, 12),
(719, 111, 12, 20),
(720, 111, 20, 12),
(721, 111, 12, 21),
(722, 111, 21, 12),
(723, 111, 12, 22),
(724, 111, 22, 12),
(725, 111, 12, 23),
(726, 111, 23, 12),
(727, 111, 12, 24),
(728, 111, 24, 12),
(729, 111, 12, 25),
(730, 111, 25, 12),
(731, 111, 12, 26),
(732, 111, 26, 12),
(733, 111, 12, 27),
(734, 111, 27, 12),
(735, 111, 12, 28),
(736, 111, 28, 12),
(737, 111, 12, 29),
(738, 111, 29, 12),
(739, 111, 12, 30),
(740, 111, 30, 12),
(741, 111, 12, 31),
(742, 111, 31, 12),
(743, 111, 12, 32),
(744, 111, 32, 12),
(745, 111, 12, 33),
(746, 111, 33, 12),
(747, 111, 12, 34),
(748, 111, 34, 12),
(749, 111, 12, 35),
(750, 111, 35, 12),
(751, 111, 12, 36),
(752, 111, 36, 12),
(753, 111, 12, 37),
(754, 111, 37, 12),
(755, 111, 12, 38),
(756, 111, 38, 12),
(757, 111, 13, 14),
(758, 111, 14, 13),
(759, 111, 13, 15),
(760, 111, 15, 13),
(761, 111, 13, 16),
(762, 111, 16, 13),
(763, 111, 13, 17),
(764, 111, 17, 13),
(765, 111, 13, 18),
(766, 111, 18, 13),
(767, 111, 13, 19),
(768, 111, 19, 13),
(769, 111, 13, 20),
(770, 111, 20, 13),
(771, 111, 13, 21),
(772, 111, 21, 13),
(773, 111, 13, 22),
(774, 111, 22, 13),
(775, 111, 13, 23),
(776, 111, 23, 13),
(777, 111, 13, 24),
(778, 111, 24, 13),
(779, 111, 13, 25),
(780, 111, 25, 13),
(781, 111, 13, 26),
(782, 111, 26, 13),
(783, 111, 13, 27),
(784, 111, 27, 13),
(785, 111, 13, 28),
(786, 111, 28, 13),
(787, 111, 13, 29),
(788, 111, 29, 13),
(789, 111, 13, 30),
(790, 111, 30, 13),
(791, 111, 13, 31),
(792, 111, 31, 13),
(793, 111, 13, 32),
(794, 111, 32, 13),
(795, 111, 13, 33),
(796, 111, 33, 13),
(797, 111, 13, 34),
(798, 111, 34, 13),
(799, 111, 13, 35),
(800, 111, 35, 13),
(801, 111, 13, 36),
(802, 111, 36, 13),
(803, 111, 13, 37),
(804, 111, 37, 13),
(805, 111, 13, 38),
(806, 111, 38, 13),
(807, 111, 14, 15),
(808, 111, 15, 14),
(809, 111, 14, 16),
(810, 111, 16, 14),
(811, 111, 14, 17),
(812, 111, 17, 14),
(813, 111, 14, 18),
(814, 111, 18, 14),
(815, 111, 14, 19),
(816, 111, 19, 14),
(817, 111, 14, 20),
(818, 111, 20, 14),
(819, 111, 14, 21),
(820, 111, 21, 14),
(821, 111, 14, 22),
(822, 111, 22, 14),
(823, 111, 14, 23),
(824, 111, 23, 14),
(825, 111, 14, 24),
(826, 111, 24, 14),
(827, 111, 14, 25),
(828, 111, 25, 14),
(829, 111, 14, 26),
(830, 111, 26, 14),
(831, 111, 14, 27),
(832, 111, 27, 14),
(833, 111, 14, 28),
(834, 111, 28, 14),
(835, 111, 14, 29),
(836, 111, 29, 14),
(837, 111, 14, 30),
(838, 111, 30, 14),
(839, 111, 14, 31),
(840, 111, 31, 14),
(841, 111, 14, 32),
(842, 111, 32, 14),
(843, 111, 14, 33),
(844, 111, 33, 14),
(845, 111, 14, 34),
(846, 111, 34, 14),
(847, 111, 14, 35),
(848, 111, 35, 14),
(849, 111, 14, 36),
(850, 111, 36, 14),
(851, 111, 14, 37),
(852, 111, 37, 14),
(853, 111, 14, 38),
(854, 111, 38, 14),
(855, 111, 15, 16),
(856, 111, 16, 15),
(857, 111, 15, 17),
(858, 111, 17, 15),
(859, 111, 15, 18),
(860, 111, 18, 15),
(861, 111, 15, 19),
(862, 111, 19, 15),
(863, 111, 15, 20),
(864, 111, 20, 15),
(865, 111, 15, 21),
(866, 111, 21, 15),
(867, 111, 15, 22),
(868, 111, 22, 15),
(869, 111, 15, 23),
(870, 111, 23, 15),
(871, 111, 15, 24),
(872, 111, 24, 15),
(873, 111, 15, 25),
(874, 111, 25, 15),
(875, 111, 15, 26),
(876, 111, 26, 15),
(877, 111, 15, 27),
(878, 111, 27, 15),
(879, 111, 15, 28),
(880, 111, 28, 15),
(881, 111, 15, 29),
(882, 111, 29, 15),
(883, 111, 15, 30),
(884, 111, 30, 15),
(885, 111, 15, 31),
(886, 111, 31, 15),
(887, 111, 15, 32),
(888, 111, 32, 15),
(889, 111, 15, 33),
(890, 111, 33, 15),
(891, 111, 15, 34),
(892, 111, 34, 15),
(893, 111, 15, 35),
(894, 111, 35, 15),
(895, 111, 15, 36),
(896, 111, 36, 15),
(897, 111, 15, 37),
(898, 111, 37, 15),
(899, 111, 15, 38),
(900, 111, 38, 15),
(901, 111, 16, 17),
(902, 111, 17, 16),
(903, 111, 16, 18),
(904, 111, 18, 16),
(905, 111, 16, 19),
(906, 111, 19, 16),
(907, 111, 16, 20),
(908, 111, 20, 16),
(909, 111, 16, 21),
(910, 111, 21, 16),
(911, 111, 16, 22),
(912, 111, 22, 16),
(913, 111, 16, 23),
(914, 111, 23, 16),
(915, 111, 16, 24),
(916, 111, 24, 16),
(917, 111, 16, 25),
(918, 111, 25, 16),
(919, 111, 16, 26),
(920, 111, 26, 16),
(921, 111, 16, 27),
(922, 111, 27, 16),
(923, 111, 16, 28),
(924, 111, 28, 16),
(925, 111, 16, 29),
(926, 111, 29, 16),
(927, 111, 16, 30),
(928, 111, 30, 16),
(929, 111, 16, 31),
(930, 111, 31, 16),
(931, 111, 16, 32),
(932, 111, 32, 16),
(933, 111, 16, 33),
(934, 111, 33, 16),
(935, 111, 16, 34),
(936, 111, 34, 16),
(937, 111, 16, 35),
(938, 111, 35, 16),
(939, 111, 16, 36),
(940, 111, 36, 16),
(941, 111, 16, 37),
(942, 111, 37, 16),
(943, 111, 16, 38),
(944, 111, 38, 16),
(945, 111, 17, 18),
(946, 111, 18, 17),
(947, 111, 17, 19),
(948, 111, 19, 17),
(949, 111, 17, 20),
(950, 111, 20, 17),
(951, 111, 17, 21),
(952, 111, 21, 17),
(953, 111, 17, 22),
(954, 111, 22, 17),
(955, 111, 17, 23),
(956, 111, 23, 17),
(957, 111, 17, 24),
(958, 111, 24, 17),
(959, 111, 17, 25),
(960, 111, 25, 17),
(961, 111, 17, 26),
(962, 111, 26, 17),
(963, 111, 17, 27),
(964, 111, 27, 17),
(965, 111, 17, 28),
(966, 111, 28, 17),
(967, 111, 17, 29),
(968, 111, 29, 17),
(969, 111, 17, 30),
(970, 111, 30, 17),
(971, 111, 17, 31),
(972, 111, 31, 17),
(973, 111, 17, 32),
(974, 111, 32, 17),
(975, 111, 17, 33),
(976, 111, 33, 17),
(977, 111, 17, 34),
(978, 111, 34, 17),
(979, 111, 17, 35),
(980, 111, 35, 17),
(981, 111, 17, 36),
(982, 111, 36, 17),
(983, 111, 17, 37),
(984, 111, 37, 17),
(985, 111, 17, 38),
(986, 111, 38, 17),
(987, 111, 18, 19),
(988, 111, 19, 18),
(989, 111, 18, 20),
(990, 111, 20, 18),
(991, 111, 18, 21),
(992, 111, 21, 18),
(993, 111, 18, 22),
(994, 111, 22, 18),
(995, 111, 18, 23),
(996, 111, 23, 18),
(997, 111, 18, 24),
(998, 111, 24, 18),
(999, 111, 18, 25),
(1000, 111, 25, 18),
(1001, 111, 18, 26),
(1002, 111, 26, 18),
(1003, 111, 18, 27),
(1004, 111, 27, 18),
(1005, 111, 18, 28),
(1006, 111, 28, 18),
(1007, 111, 18, 29),
(1008, 111, 29, 18),
(1009, 111, 18, 30),
(1010, 111, 30, 18),
(1011, 111, 18, 31),
(1012, 111, 31, 18),
(1013, 111, 18, 32),
(1014, 111, 32, 18),
(1015, 111, 18, 33),
(1016, 111, 33, 18),
(1017, 111, 18, 34),
(1018, 111, 34, 18),
(1019, 111, 18, 35),
(1020, 111, 35, 18),
(1021, 111, 18, 36),
(1022, 111, 36, 18),
(1023, 111, 18, 37),
(1024, 111, 37, 18),
(1025, 111, 18, 38),
(1026, 111, 38, 18),
(1027, 111, 19, 20),
(1028, 111, 20, 19),
(1029, 111, 19, 21),
(1030, 111, 21, 19),
(1031, 111, 19, 22),
(1032, 111, 22, 19),
(1033, 111, 19, 23),
(1034, 111, 23, 19),
(1035, 111, 19, 24),
(1036, 111, 24, 19),
(1037, 111, 19, 25),
(1038, 111, 25, 19),
(1039, 111, 19, 26),
(1040, 111, 26, 19),
(1041, 111, 19, 27),
(1042, 111, 27, 19),
(1043, 111, 19, 28),
(1044, 111, 28, 19),
(1045, 111, 19, 29),
(1046, 111, 29, 19),
(1047, 111, 19, 30),
(1048, 111, 30, 19),
(1049, 111, 19, 31),
(1050, 111, 31, 19),
(1051, 111, 19, 32),
(1052, 111, 32, 19),
(1053, 111, 19, 33),
(1054, 111, 33, 19),
(1055, 111, 19, 34),
(1056, 111, 34, 19),
(1057, 111, 19, 35),
(1058, 111, 35, 19),
(1059, 111, 19, 36),
(1060, 111, 36, 19),
(1061, 111, 19, 37),
(1062, 111, 37, 19),
(1063, 111, 19, 38),
(1064, 111, 38, 19),
(1065, 111, 20, 21),
(1066, 111, 21, 20),
(1067, 111, 20, 22),
(1068, 111, 22, 20),
(1069, 111, 20, 23),
(1070, 111, 23, 20),
(1071, 111, 20, 24),
(1072, 111, 24, 20),
(1073, 111, 20, 25),
(1074, 111, 25, 20),
(1075, 111, 20, 26),
(1076, 111, 26, 20),
(1077, 111, 20, 27),
(1078, 111, 27, 20),
(1079, 111, 20, 28),
(1080, 111, 28, 20),
(1081, 111, 20, 29),
(1082, 111, 29, 20),
(1083, 111, 20, 30),
(1084, 111, 30, 20),
(1085, 111, 20, 31),
(1086, 111, 31, 20),
(1087, 111, 20, 32),
(1088, 111, 32, 20),
(1089, 111, 20, 33),
(1090, 111, 33, 20),
(1091, 111, 20, 34),
(1092, 111, 34, 20),
(1093, 111, 20, 35),
(1094, 111, 35, 20),
(1095, 111, 20, 36),
(1096, 111, 36, 20),
(1097, 111, 20, 37),
(1098, 111, 37, 20),
(1099, 111, 20, 38),
(1100, 111, 38, 20),
(1101, 111, 21, 22),
(1102, 111, 22, 21),
(1103, 111, 21, 23),
(1104, 111, 23, 21),
(1105, 111, 21, 24),
(1106, 111, 24, 21),
(1107, 111, 21, 25),
(1108, 111, 25, 21),
(1109, 111, 21, 26),
(1110, 111, 26, 21),
(1111, 111, 21, 27),
(1112, 111, 27, 21),
(1113, 111, 21, 28),
(1114, 111, 28, 21),
(1115, 111, 21, 29),
(1116, 111, 29, 21),
(1117, 111, 21, 30),
(1118, 111, 30, 21),
(1119, 111, 21, 31),
(1120, 111, 31, 21),
(1121, 111, 21, 32),
(1122, 111, 32, 21),
(1123, 111, 21, 33),
(1124, 111, 33, 21),
(1125, 111, 21, 34),
(1126, 111, 34, 21),
(1127, 111, 21, 35),
(1128, 111, 35, 21),
(1129, 111, 21, 36),
(1130, 111, 36, 21),
(1131, 111, 21, 37),
(1132, 111, 37, 21),
(1133, 111, 21, 38),
(1134, 111, 38, 21),
(1135, 111, 22, 23),
(1136, 111, 23, 22),
(1137, 111, 22, 24),
(1138, 111, 24, 22),
(1139, 111, 22, 25),
(1140, 111, 25, 22),
(1141, 111, 22, 26),
(1142, 111, 26, 22),
(1143, 111, 22, 27),
(1144, 111, 27, 22),
(1145, 111, 22, 28),
(1146, 111, 28, 22),
(1147, 111, 22, 29),
(1148, 111, 29, 22),
(1149, 111, 22, 30),
(1150, 111, 30, 22),
(1151, 111, 22, 31),
(1152, 111, 31, 22),
(1153, 111, 22, 32),
(1154, 111, 32, 22),
(1155, 111, 22, 33),
(1156, 111, 33, 22),
(1157, 111, 22, 34),
(1158, 111, 34, 22),
(1159, 111, 22, 35),
(1160, 111, 35, 22),
(1161, 111, 22, 36),
(1162, 111, 36, 22),
(1163, 111, 22, 37),
(1164, 111, 37, 22),
(1165, 111, 22, 38),
(1166, 111, 38, 22),
(1167, 111, 23, 24),
(1168, 111, 24, 23),
(1169, 111, 23, 25),
(1170, 111, 25, 23),
(1171, 111, 23, 26),
(1172, 111, 26, 23),
(1173, 111, 23, 27),
(1174, 111, 27, 23),
(1175, 111, 23, 28),
(1176, 111, 28, 23),
(1177, 111, 23, 29),
(1178, 111, 29, 23),
(1179, 111, 23, 30),
(1180, 111, 30, 23),
(1181, 111, 23, 31),
(1182, 111, 31, 23),
(1183, 111, 23, 32),
(1184, 111, 32, 23),
(1185, 111, 23, 33),
(1186, 111, 33, 23),
(1187, 111, 23, 34),
(1188, 111, 34, 23),
(1189, 111, 23, 35),
(1190, 111, 35, 23),
(1191, 111, 23, 36),
(1192, 111, 36, 23),
(1193, 111, 23, 37),
(1194, 111, 37, 23),
(1195, 111, 23, 38),
(1196, 111, 38, 23),
(1197, 111, 24, 25),
(1198, 111, 25, 24),
(1199, 111, 24, 26),
(1200, 111, 26, 24),
(1201, 111, 24, 27),
(1202, 111, 27, 24),
(1203, 111, 24, 28),
(1204, 111, 28, 24),
(1205, 111, 24, 29),
(1206, 111, 29, 24),
(1207, 111, 24, 30),
(1208, 111, 30, 24),
(1209, 111, 24, 31),
(1210, 111, 31, 24),
(1211, 111, 24, 32),
(1212, 111, 32, 24),
(1213, 111, 24, 33),
(1214, 111, 33, 24),
(1215, 111, 24, 34),
(1216, 111, 34, 24),
(1217, 111, 24, 35),
(1218, 111, 35, 24),
(1219, 111, 24, 36),
(1220, 111, 36, 24),
(1221, 111, 24, 37),
(1222, 111, 37, 24),
(1223, 111, 24, 38),
(1224, 111, 38, 24),
(1225, 111, 25, 26),
(1226, 111, 26, 25),
(1227, 111, 25, 27),
(1228, 111, 27, 25),
(1229, 111, 25, 28),
(1230, 111, 28, 25),
(1231, 111, 25, 29),
(1232, 111, 29, 25),
(1233, 111, 25, 30),
(1234, 111, 30, 25),
(1235, 111, 25, 31),
(1236, 111, 31, 25),
(1237, 111, 25, 32),
(1238, 111, 32, 25),
(1239, 111, 25, 33),
(1240, 111, 33, 25),
(1241, 111, 25, 34),
(1242, 111, 34, 25),
(1243, 111, 25, 35),
(1244, 111, 35, 25),
(1245, 111, 25, 36),
(1246, 111, 36, 25),
(1247, 111, 25, 37),
(1248, 111, 37, 25),
(1249, 111, 25, 38),
(1250, 111, 38, 25),
(1251, 111, 26, 27),
(1252, 111, 27, 26),
(1253, 111, 26, 28),
(1254, 111, 28, 26),
(1255, 111, 26, 29),
(1256, 111, 29, 26),
(1257, 111, 26, 30),
(1258, 111, 30, 26),
(1259, 111, 26, 31),
(1260, 111, 31, 26),
(1261, 111, 26, 32),
(1262, 111, 32, 26),
(1263, 111, 26, 33),
(1264, 111, 33, 26),
(1265, 111, 26, 34),
(1266, 111, 34, 26),
(1267, 111, 26, 35),
(1268, 111, 35, 26),
(1269, 111, 26, 36),
(1270, 111, 36, 26),
(1271, 111, 26, 37),
(1272, 111, 37, 26),
(1273, 111, 26, 38),
(1274, 111, 38, 26),
(1275, 111, 27, 28),
(1276, 111, 28, 27),
(1277, 111, 27, 29),
(1278, 111, 29, 27),
(1279, 111, 27, 30),
(1280, 111, 30, 27),
(1281, 111, 27, 31),
(1282, 111, 31, 27),
(1283, 111, 27, 32),
(1284, 111, 32, 27),
(1285, 111, 27, 33),
(1286, 111, 33, 27),
(1287, 111, 27, 34),
(1288, 111, 34, 27),
(1289, 111, 27, 35),
(1290, 111, 35, 27),
(1291, 111, 27, 36),
(1292, 111, 36, 27),
(1293, 111, 27, 37),
(1294, 111, 37, 27),
(1295, 111, 27, 38),
(1296, 111, 38, 27),
(1297, 111, 28, 29),
(1298, 111, 29, 28),
(1299, 111, 28, 30),
(1300, 111, 30, 28),
(1301, 111, 28, 31),
(1302, 111, 31, 28),
(1303, 111, 28, 32),
(1304, 111, 32, 28),
(1305, 111, 28, 33),
(1306, 111, 33, 28),
(1307, 111, 28, 34),
(1308, 111, 34, 28),
(1309, 111, 28, 35),
(1310, 111, 35, 28),
(1311, 111, 28, 36),
(1312, 111, 36, 28),
(1313, 111, 28, 37),
(1314, 111, 37, 28),
(1315, 111, 28, 38),
(1316, 111, 38, 28),
(1317, 111, 29, 30),
(1318, 111, 30, 29),
(1319, 111, 29, 31),
(1320, 111, 31, 29),
(1321, 111, 29, 32),
(1322, 111, 32, 29),
(1323, 111, 29, 33),
(1324, 111, 33, 29),
(1325, 111, 29, 34),
(1326, 111, 34, 29),
(1327, 111, 29, 35),
(1328, 111, 35, 29),
(1329, 111, 29, 36),
(1330, 111, 36, 29),
(1331, 111, 29, 37),
(1332, 111, 37, 29),
(1333, 111, 29, 38),
(1334, 111, 38, 29),
(1335, 111, 30, 31),
(1336, 111, 31, 30),
(1337, 111, 30, 32),
(1338, 111, 32, 30),
(1339, 111, 30, 33),
(1340, 111, 33, 30),
(1341, 111, 30, 34),
(1342, 111, 34, 30),
(1343, 111, 30, 35),
(1344, 111, 35, 30),
(1345, 111, 30, 36),
(1346, 111, 36, 30),
(1347, 111, 30, 37),
(1348, 111, 37, 30),
(1349, 111, 30, 38),
(1350, 111, 38, 30),
(1351, 111, 31, 32),
(1352, 111, 32, 31),
(1353, 111, 31, 33),
(1354, 111, 33, 31),
(1355, 111, 31, 34),
(1356, 111, 34, 31),
(1357, 111, 31, 35),
(1358, 111, 35, 31),
(1359, 111, 31, 36),
(1360, 111, 36, 31),
(1361, 111, 31, 37),
(1362, 111, 37, 31),
(1363, 111, 31, 38),
(1364, 111, 38, 31),
(1365, 111, 32, 33),
(1366, 111, 33, 32),
(1367, 111, 32, 34),
(1368, 111, 34, 32),
(1369, 111, 32, 35),
(1370, 111, 35, 32),
(1371, 111, 32, 36),
(1372, 111, 36, 32),
(1373, 111, 32, 37),
(1374, 111, 37, 32),
(1375, 111, 32, 38),
(1376, 111, 38, 32),
(1377, 111, 33, 34),
(1378, 111, 34, 33),
(1379, 111, 33, 35),
(1380, 111, 35, 33),
(1381, 111, 33, 36),
(1382, 111, 36, 33),
(1383, 111, 33, 37),
(1384, 111, 37, 33),
(1385, 111, 33, 38),
(1386, 111, 38, 33),
(1387, 111, 34, 35),
(1388, 111, 35, 34),
(1389, 111, 34, 36),
(1390, 111, 36, 34),
(1391, 111, 34, 37),
(1392, 111, 37, 34),
(1393, 111, 34, 38),
(1394, 111, 38, 34),
(1395, 111, 35, 36),
(1396, 111, 36, 35),
(1397, 111, 35, 37),
(1398, 111, 37, 35),
(1399, 111, 35, 38),
(1400, 111, 38, 35),
(1401, 111, 36, 37),
(1402, 111, 37, 36),
(1403, 111, 36, 38),
(1404, 111, 38, 36),
(1405, 111, 37, 38),
(1406, 111, 38, 37);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `idbooster` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `campus_fk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK36EBCBF91B6A35` (`campus_fk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `email`, `firstName`, `idbooster`, `lastName`, `password`, `salt`, `campus_fk`) VALUES
(1, '201091@supinfo.com', 'bob', '201091', 'bob', '93c81b63e46b4436bfa294ae064fded2', '[B@4f90ed9a', 32),
(2, '201095@supinfo.com', 'Zhiwei', '201095', 'LIN', 'cfab4eebcf1e56a62c573aec492c1141', '[B@4b2d5612', 32),
(3, '201099@supinfo.com', 'Bob', '201099', 'Bob', '2666a46082a78ec7427f7c693d027ebc', '[B@5b3b76e7', 22);

--
-- 限制导出的表
--

--
-- 限制表 `bag`
--
ALTER TABLE `bag`
  ADD CONSTRAINT `FK17C08BF0074B5` FOREIGN KEY (`trip_fk`) REFERENCES `trip` (`id`),
  ADD CONSTRAINT `FK17C08F5648AF5` FOREIGN KEY (`user_fk`) REFERENCES `user` (`id`);

--
-- 限制表 `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `FK367425D07BCCAA` FOREIGN KEY (`departure_campus_fk`) REFERENCES `campus` (`id`),
  ADD CONSTRAINT `FK367425EF9F6F44` FOREIGN KEY (`destination_campus_fk`) REFERENCES `campus` (`id`);

--
-- 限制表 `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK36EBCBF91B6A35` FOREIGN KEY (`campus_fk`) REFERENCES `campus` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
