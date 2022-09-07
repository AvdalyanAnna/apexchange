-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 03 2022 г., 17:45
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `capital2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bit_currencies`
--

CREATE TABLE `bit_currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `bit_currencies`
--

INSERT INTO `bit_currencies` (`id`, `name`, `value`, `type`) VALUES
(2, 'BTC - Bitcoin', 'BTC', 'coin'),
(3, 'LTC - Litecoin', 'LTC', 'coin'),
(4, 'DOGE - Dogecoin', 'DOGE', 'coin'),
(5, 'DASH - Dash', 'DASH', 'coin'),
(6, 'PPC - Peercoin', 'PPC', 'coin'),
(7, 'ETH - Ethereum', 'ETH', 'coin'),
(8, 'TBC - TheBillioncoin', 'TBC', 'coin'),
(10, 'AED - United Arab Emirates Dirham', 'AED ', 'valut'),
(11, 'AFN - Afghanistan Afghani', 'AFN ', 'valut'),
(12, 'ALL - Albania Lek', 'ALL ', 'valut'),
(13, 'AMD - Armenia Dram', 'AMD ', 'valut'),
(14, 'ANG - Netherlands Antilles Guilder', 'ANG ', 'valut'),
(15, 'ANG - Netherlands Antilles Guilder', 'ANG ', 'valut'),
(16, 'AOA - Angola Kwanza', 'AOA ', 'valut'),
(17, 'ARS - Argentina Peso', 'ARS ', 'valut'),
(18, 'AUD - Australia Dollar', 'AUD ', 'valut'),
(19, 'AWG - Aruba Guilder', 'AWG ', 'valut'),
(20, 'AZN - Azerbaijan New Manat', 'AZN ', 'valut'),
(21, 'BAM - Bosnia and Herzegovina Convertible Marka', 'BAM ', 'valut'),
(22, 'BBD - Barbados Dollar', 'BBD ', 'valut'),
(23, 'BDT - Bangladesh Taka', 'BDT ', 'valut'),
(24, 'BGN - Bulgaria Lev', 'BGN ', 'valut'),
(25, 'BHD - Bahrain Dinar', 'BHD ', 'valut'),
(26, 'BIF - Burundi Franc', 'BIF ', 'valut'),
(893, 'BOB - Bolivia Boliviano', 'BOB', 'valut'),
(894, 'BRL - Brazil Real', 'BRL', 'valut'),
(895, 'BSD - Bahamas Dollar', 'BSD', 'valut'),
(896, 'BTN - Bhutan Ngultrum', 'BTN', 'valut'),
(897, 'BWP - Botswana Pula', 'BWP', 'valut'),
(898, 'BYR - Belarus Ruble', 'BYR', 'valut'),
(899, 'BZD - Belize Dollar', 'BZD', 'valut'),
(900, 'CAD - Canada Dollar', 'CAD', 'valut'),
(901, 'CDF - Congo/Kinshasa Franc', 'CDF', 'valut'),
(902, 'CHF - Switzerland Franc', 'CHF', 'valut'),
(903, 'CLP - Chile Peso', 'CLP', 'valut'),
(904, 'CNY - China Yuan Renminbi', 'CNY', 'valut'),
(905, 'COP - Colombia Peso', 'COP', 'valut'),
(906, 'CRC - Costa Rica Colon', 'CRC', 'valut'),
(907, 'CUC - Cuba Convertible Peso', 'CUC', 'valut'),
(908, 'CUP - Cuba Peso', 'CUP', 'valut'),
(909, 'CVE - Cape Verde Escudo', 'CVE', 'valut'),
(910, 'CZK - Czech Republic Koruna', 'CZK', 'valut'),
(911, 'DJF - Djibouti Franc', 'DJF', 'valut'),
(912, 'DKK - Denmark Krone', 'DKK', 'valut'),
(913, 'DOP - Dominican Republic Peso', 'DOP', 'valut'),
(914, 'DZD - Algeria Dinar', 'DZD', 'valut'),
(915, 'EGP - Egypt Pound', 'EGP', 'valut'),
(916, 'ERN - Eritrea Nakfa', 'ERN', 'valut'),
(917, 'ETB - Ethiopia Birr', 'ETB', 'valut'),
(918, 'EUR - Euro Member Countries', 'EUR', 'valut'),
(919, 'FJD - Fiji Dollar', 'FJD', 'valut'),
(920, 'FKP - Falkland Islands (Malvinas) Pound', 'FKP', 'valut'),
(921, 'GBP - United Kingdom Pound', 'GBP', 'valut'),
(922, 'GEL - Georgia Lari', 'GEL', 'valut'),
(923, 'GGP - Guernsey Pound', 'GGP', 'valut'),
(924, 'GHS - Ghana Cedi', 'GHS', 'valut'),
(925, 'GIP - Gibraltar Pound', 'GIP', 'valut'),
(926, 'GMD - Gambia Dalasi', 'GMD', 'valut'),
(927, 'GNF - Guinea Franc', 'GNF', 'valut'),
(928, 'GTQ - Guatemala Quetzal', 'GTQ', 'valut'),
(929, 'GYD - Guyana Dollar', 'GYD', 'valut'),
(930, 'HKD - Hong Kong Dollar', 'HKD', 'valut'),
(931, 'HNL - Honduras Lempira', 'HNL', 'valut'),
(932, 'HRK - Croatia Kuna', 'HPK', 'valut'),
(933, 'HTG - Haiti Gourde', 'HTG', 'valut'),
(934, 'HUF - Hungary Forint', 'HUF', 'valut'),
(935, 'IDR - Indonesia Rupiah', 'IDR', 'valut'),
(936, 'ILS - Israel Shekel', 'ILS', 'valut'),
(937, 'IMP - Isle of Man Pound', 'IMP', 'valut'),
(938, 'INR - India Rupee', 'INR', 'valut'),
(939, 'IQD - Iraq Dinar', 'IQD', 'valut'),
(940, 'IRR - Iran Rial', 'IRR', 'valut'),
(941, 'ISK - Iceland Krona', 'ISK', 'valut'),
(942, 'JEP - Jersey Pound', 'JEP', 'valut'),
(943, 'JMD - Jamaica Dollar', 'JMD', 'valut'),
(944, 'JOD - Jordan Dinar', 'JOD', 'valut'),
(945, 'JPY - Japan Yen', 'JPY', 'valut'),
(946, 'KES - Kenya Shilling', 'KES', 'valut'),
(947, 'KGS - Kyrgyzstan Som', 'KGS', 'valut'),
(948, 'KHR - Cambodia Riel', 'KHR', 'valut'),
(949, 'KMF - Comoros Franc', 'KMF', 'valut'),
(950, 'KPW - Korea (North) Won', 'KPW', 'valut'),
(951, 'KRW - Korea (South) Won', 'KRW', 'valut'),
(952, 'KWD - Kuwait Dinar', 'KWD', 'valut'),
(953, 'KYD - Cayman Islands Dollar', 'KYD', 'valut'),
(954, 'KZT - Kazakhstan Tenge', 'KZT', 'valut'),
(955, 'LAK - Laos Kip', 'LAK', 'valut'),
(956, 'LBP - Lebanon Pound', 'LBP', 'valut'),
(957, 'LKR - Sri Lanka Rupee', 'LKR', 'valut'),
(958, 'LRD - Liberia Dollar', 'LRD', 'valut'),
(959, 'LSL - Lesotho Loti', 'LSL', 'valut'),
(960, 'LYD - Libya Dinar', 'LYD', 'valut'),
(961, 'MAD - Morocco Dirham', 'MAD', 'valut'),
(962, 'MDL - Moldova Leu', 'MDL', 'valut'),
(963, 'MGA - Madagascar Ariary', 'MGA', 'valut'),
(964, 'MKD - Macedonia Denar', 'MKD', 'valut'),
(965, 'MMK - Myanmar (Burma) Kyat', 'MMK', 'valut'),
(1037, 'MNT - Mongolia Tughrik', 'MNT', 'valut'),
(1038, 'MOP - Macau Pataca', 'MOP', 'valut'),
(1039, 'MRO - Mauritania Ouguiya', 'MRO', 'valut'),
(1040, 'MUR - Mauritius Rupee', 'MUR', 'valut'),
(1041, 'MVR - Maldives (Maldive Islands) Rufiyaa', 'MVR', 'valut'),
(1042, 'MWK - Malawi Kwacha', 'MWK', 'valut'),
(1043, 'MXN - Mexico Peso', 'MXN', 'valut'),
(1044, 'MYR - Malaysia Ringgit', 'MYR', 'valut'),
(1045, 'MZN - Mozambique Metical', 'MZN', 'valut'),
(1046, 'NAD - Namibia Dollar', 'NAD', 'valut'),
(1047, 'NGN - Nigeria Naira', 'NGN', 'valut'),
(1048, 'NIO - Nicaragua Cordoba', 'NTO', 'valut'),
(1049, 'NOK - Norway Krone', 'NOK', 'valut'),
(1050, 'NPR - Nepal Rupee', 'NPR', 'valut'),
(1051, 'NZD - New Zealand Dollar', 'NZD', 'valut'),
(1052, 'OMR - Oman Rial', 'OMR', 'valut'),
(1053, 'PAB - Panama Balboa', 'PAB', 'valut'),
(1054, 'PEN - Peru Nuevo Sol', 'PEN', 'valut'),
(1055, 'PGK - Papua New Guinea Kina', 'PGK', 'valut'),
(1056, 'PHP - Philippines Peso', 'PHP', 'valut'),
(1108, 'PKR - Pakistan Rupee', 'PKR', 'valut'),
(1109, 'PLN - Poland Zloty', 'PLN', 'valut'),
(1110, 'PYG - Paraguay Guarani', 'PYG', 'valut'),
(1111, 'QAR - Qatar Riyal', 'QAR', 'valut'),
(1112, 'RON - Romania New Leu', 'RON', 'valut'),
(1113, 'RSD - Serbia Dinar', 'RSD', 'valut'),
(1114, 'RUB - Russia Ruble', 'RUB', 'valut'),
(1115, 'RWF - Rwanda Franc', 'RWF', 'valut'),
(1116, 'SAR - Saudi Arabia Riyal', 'SAR', 'valut'),
(1117, 'SBD - Solomon Islands Dollar', 'SBD', 'valut'),
(1118, 'SCR - Seychelles Rupee', 'SCR', 'valut'),
(1119, 'SDG - Sudan Pound', 'SDG', 'valut'),
(1120, 'SEK - Sweden Krona', 'SEK', 'valut'),
(1121, 'SGD - Singapore Dollar', 'SGD', 'valut'),
(1122, 'SHP - Saint Helena Pound', 'SHP', 'valut'),
(1123, 'SLL - Sierra Leone Leone', 'SLL', 'valut'),
(1124, 'SOS - Somalia Shilling', 'SOS', 'valut'),
(1125, 'SPL* - Seborga Luigino', 'SRL', 'valut'),
(1126, 'SRD - Suriname Dollar', 'SRD', 'valut'),
(1127, 'STD - Sao Tome and Principe Dobra', 'STD', 'valut'),
(1128, 'SVC - El Salvador Colon', 'SVC', 'valut'),
(1129, 'SYP - Syria Pound', 'SYP', 'valut'),
(1130, 'SZL - Swaziland Lilangeni', 'SZL', 'valut'),
(1131, 'THB - Thailand Baht', 'THB', 'valut'),
(1132, 'TJS - Tajikistan Somoni', 'TJS', 'valut'),
(1133, 'TMT - Turkmenistan Manat', 'TMT', 'valut'),
(1134, 'TND - Tunisia Dinar', 'TND', 'valut'),
(1135, 'TOP - Tonga Paanga', 'TOP', 'valut'),
(1136, 'TRY - Turkey Lira', 'TRY', 'valut'),
(1137, 'TTD - Trinidad and Tobago Dollar', 'TTD', 'valut'),
(1138, 'TVD - Tuvalu Dollar', 'TVD', 'valut'),
(1139, 'TWD - Taiwan New Dollar', 'TWD', 'valut'),
(1140, 'TZS - Tanzania Shilling', 'TZS', 'valut'),
(1141, 'UAH - Ukraine Hryvnia', 'UAH', 'valut'),
(1142, 'UGX - Uganda Shilling', 'UGX', 'valut'),
(1143, 'USD - United States Dollar', 'USD', 'valut'),
(1144, 'UYU - Uruguay Peso', 'UYU', 'valut'),
(1145, 'UZS - Uzbekistan Som', 'UZS', 'valut'),
(1146, 'VEF - Venezuela Bolivar', 'VEF', 'valut'),
(1147, 'VND - Viet Nam Dong', 'VND', 'valut'),
(1148, 'VUV - Vanuatu Vatu', 'VUV', 'valut'),
(1149, 'WST - Samoa Tala', 'WST', 'valut'),
(1150, 'XAF - Communaute Financiere Africaine (BEAC) ', 'XAF', 'valut'),
(1159, 'XCD - East Caribbean Dollar', 'XCD', 'valut'),
(1160, 'XDR - International Monetary Fund (IMF) ', 'XDR', 'valut'),
(1161, 'XOF - Communaute Financiere Africaine (BCEAO) ', 'XOF', 'valut'),
(1162, 'XPF - Comptoirs Francais du Pacifique (CFP) ', 'XPF', 'valut'),
(1163, 'YER - Yemen Rial', 'YER', 'valut'),
(1164, 'ZAR - South Africa Rand', 'ZAR', 'valut'),
(1165, 'ZMW - Zambia Kwacha', 'ZMW', 'valut'),
(1166, 'ZWD - Zimbabwe Dollar', 'ZWD', 'valut');

-- --------------------------------------------------------

--
-- Структура таблицы `bit_exchanges`
--

CREATE TABLE `bit_exchanges` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `wid` int(11) DEFAULT NULL,
  `gateway_send` int(11) DEFAULT NULL,
  `gateway_receive` int(11) DEFAULT NULL,
  `amount_send` varchar(255) DEFAULT NULL,
  `amount_receive` varchar(255) DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `updated` int(11) NOT NULL DEFAULT 0,
  `expired` int(11) NOT NULL DEFAULT 0,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL,
  `u_field_6` varchar(255) DEFAULT NULL,
  `u_field_7` varchar(255) DEFAULT NULL,
  `u_field_8` varchar(255) DEFAULT NULL,
  `u_field_9` varchar(255) DEFAULT NULL,
  `u_field_10` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `exchange_id` varchar(255) DEFAULT NULL,
  `referral_id` varchar(255) NOT NULL DEFAULT '0',
  `referral_amount` varchar(255) DEFAULT NULL,
  `referral_currency` varchar(255) DEFAULT NULL,
  `referral_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bit_exchanges`
--

INSERT INTO `bit_exchanges` (`id`, `uid`, `wid`, `gateway_send`, `gateway_receive`, `amount_send`, `amount_receive`, `rate_from`, `rate_to`, `status`, `created`, `updated`, `expired`, `u_field_1`, `u_field_2`, `u_field_3`, `u_field_4`, `u_field_5`, `u_field_6`, `u_field_7`, `u_field_8`, `u_field_9`, `u_field_10`, `ip`, `transaction_id`, `exchange_id`, `referral_id`, `referral_amount`, `referral_currency`, `referral_status`) VALUES
(55, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660990431, 0, 1661082470, 'asdasd@mail.ru', '+7546465465456', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'E3B899968E0CE6146CBF', '0', NULL, NULL, 0),
(56, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660990860, 0, 1661082470, 'acajh@mail.ru', '+754545454545', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '4D8417EADDEF44B6D9C1', '0', NULL, NULL, 0),
(57, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991175, 0, 1661082470, 'asdas@asda.ru', '+7544646', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'DB33334B00D46B18D7E9', '0', NULL, NULL, 0),
(58, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991192, 0, 1661082470, 'asdas@asda.ru', '+7544646', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'D445FDCB399B61AEC6A2', '0', NULL, NULL, 0),
(59, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991208, 0, 1661082471, 'asdas@asda.ru', '+7544646', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '38344C7B1C819E6D3919', '0', NULL, NULL, 0),
(60, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991222, 0, 1661082471, 'asdas@asda.ru', '+7544646', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '489CECA2E9D885F632AB', '0', NULL, NULL, 0),
(61, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991236, 0, 1661082471, 'asdas@asda.ru', '+7544646', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '16457D7432AA67CB12A9', '0', NULL, NULL, 0),
(62, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991277, 0, 1661082471, 'asdasd@adsdasd.ru', '+754654654654', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '29966446FFA1B0BDF81D', '0', NULL, NULL, 0),
(63, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991323, 0, 1661082471, 'asdasd@adsdasd.ru', '+754654654654', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '40ABB195BC0836A14CFC', '0', NULL, NULL, 0),
(64, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991334, 0, 1661082471, 'asdasd@adsdasd.ru', '+754654654654', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '58743549C53875138773', '0', NULL, NULL, 0),
(65, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991340, 0, 1661082471, 'asdasd@adsdasd.ru', '+754654654654', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '1370B807FBFEE1BC9253', '0', NULL, NULL, 0),
(66, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991348, 0, 1661082471, 'asdasd@adsdasd.ru', '+654654654654', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '9D04AD7E4F9D6E086E2C', '0', NULL, NULL, 0),
(67, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991392, 0, 1661082471, 'asdasd@adsdasd.ru', '+654654654654', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'F0BCB822C2D7C63E97EC', '0', NULL, NULL, 0),
(68, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1660991900, 0, 1661082471, 'asdasd@mail.ru', 'asdas@mail.r7u', 'asdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'AD0C3F6E4700BF22765F', '0', NULL, NULL, 0),
(69, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660991927, 0, 1661082471, 'asdas@mail.ru', '+76646464', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '8761E1ECD5F68870A8C8', '0', NULL, NULL, 0),
(70, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992057, 0, 1661082471, 'adsasd@mail.ru', '+45454545454', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '802FE2DDF50B0A44F0D6', '0', NULL, NULL, 0),
(71, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992248, 0, 1661082471, 'adsasd@mail.ru', '+45454545454', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'A796719CD2B2DEE98A26', '0', NULL, NULL, 0),
(72, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992254, 0, 1661082471, 'adsasd@mail.ru', '+45454545454', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '86EDFFE7829A7765F0D7', '0', NULL, NULL, 0),
(73, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992262, 0, 1661082471, 'adsasd@mail.ru', '+45454545454', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '2815FEEADBCEFAC4D8C3', '0', NULL, NULL, 0),
(74, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992283, 0, 1661082471, 'adsasd@mail.ru', '+45454545454', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '01AF44E13650891B3439', '0', NULL, NULL, 0),
(75, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992317, 0, 1661082471, 'adas@asda.ru', 'asdasda', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'F9D3D48E196D80487927', '0', NULL, NULL, 0),
(76, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992343, 0, 1661082471, 'asdas@mail.rh', 'asdasd', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'D3AAFF9C2BFD74AEA870', '0', NULL, NULL, 0),
(77, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992385, 0, 1661082471, 'asdas@mail.rh', 'asdasd', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '7CFDBF3E628C0FA58530', '0', NULL, NULL, 0),
(78, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992395, 0, 1661082471, 'asdas@mail.rh', 'asdasd', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '09C7BD53283A77185561', '0', NULL, NULL, 0),
(79, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992405, 0, 1661082472, 'asdas@mail.rh', 'asdasd', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '0F20662E104A39E51172', '0', NULL, NULL, 0),
(80, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992440, 0, 1661082472, 'asdas@mail.rh', 'asdasd', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '0654D37AA9B9B2EDA4F6', '0', NULL, NULL, 0),
(81, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992454, 0, 1661082472, 'asdas@mail.rh', 'asdasd', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '178CBD403A85126EAE1A', '0', NULL, NULL, 0),
(82, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992614, 0, 1661082472, 'asd@adkkasdk.ru', '+7455454545454', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '57950320B0DAA7B030AF', '0', NULL, NULL, 0),
(83, 0, NULL, 7, 9, '500', '33060.00', '1', '66.12', 5, 1660992673, 0, 1661082472, 'asdasd@mail.ru', '+866666121', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '3B211AB1708C19AC4684', '0', NULL, NULL, 0),
(84, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661089925, 0, 1661693564, 'sxsdf@mail.ru', 'adas', 'asdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'EB66304F0CAA48BDCB58', '0', NULL, NULL, 0),
(85, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661094041, 0, 1661693564, 'adsasd@asda.ru', 'adsasd', 'asdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'B5D761555484D472EED7', '0', NULL, NULL, 0),
(86, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661094156, 0, 1661693564, 'adad@dadasd.ru', 'dasdasd', 'dadasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'CA899CC483354C8444DF', '0', NULL, NULL, 0),
(87, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661094623, 0, 1661693564, 'adad@mail.ru', 'asdasd', 'adsdasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'F4A547277C2822D27667', '0', NULL, NULL, 0),
(88, 0, NULL, 1, 1, '5', '4.75000000', '1', '0.95', 5, 1661094748, 0, 1661693564, 'asdasd@adasd.ru', 'asdasd', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '7A638F25360A5CE342C0', '0', NULL, NULL, 0),
(89, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661095191, 0, 1661693564, 'asdasd@dadad.ru', 'dadsasd', 'dassdas', '', '', '', '', '', '', '', '127.0.0.1', NULL, '031B785BA32B34AC1D42', '0', NULL, NULL, 0),
(90, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661095275, 0, 1661693564, 'asdads@addasd.ru', 'dadasd', 'dassd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '6689967C716D26338698', '0', NULL, NULL, 0),
(91, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661095276, 0, 1661693564, 'asdads@addasd.ru', 'dadasd', 'dassd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'DA2BCC58C1D0A3DFEC71', '0', NULL, NULL, 0),
(92, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661095283, 0, 1661693564, 'asdads@addasd.ru', 'dadasd', 'dassd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '176B7F015D62AD5C2427', '0', NULL, NULL, 0),
(93, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661095318, 0, 1661693564, 'adsasd@addasd.ru', 'dasdasd', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'E604CAEC03B156F9B7D6', '0', NULL, NULL, 0),
(94, 0, NULL, 1, 1, '1', '0.95000000', '1', '0.95', 5, 1661095354, 0, 1661693564, 'asdad@dadasd.ru', 'dadasd', 'dasda', '', '', '', '', '', '', '', '127.0.0.1', NULL, '13A69AB91337B7B574ED', '0', NULL, NULL, 0),
(95, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661095911, 0, 1661693565, 'dasdasd@adasd.ru', 'd123123', '123123', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'CB2AE886D1FC0458A611', '0', NULL, NULL, 0),
(96, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661096162, 0, 1661693565, 'dasd@adsda.ru', 'dasdasd', 'dadasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '286DCEC5A6A25922CA1E', '0', NULL, NULL, 0),
(97, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661096763, 0, 1661693565, 'adsads@dadas.ru', 'dasdaad', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '2723079075156BA8347D', '0', NULL, NULL, 0),
(98, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661096803, 0, 1661693565, '11ad@ead.ru', 'dasdasd', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '3BC43209CC46682BC106', '0', NULL, NULL, 0),
(99, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661096891, 0, 1661693565, 'asdasd@dadasd.ru', 'dadsasd', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '669D2C405D6ECDDCEF90', '0', NULL, NULL, 0),
(100, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661096895, 0, 1661693565, 'asdasd@dadasd.ru', 'dadsasd', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '8C8B4F5223278EBF0471', '0', NULL, NULL, 0),
(101, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661096914, 0, 1661693565, 'asdasd@dadasd.ru', 'dadsasd', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'AA3A953B723EC88F722F', '0', NULL, NULL, 0),
(102, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661096945, 0, 1661693565, 'asdasd@dads.ru', 'dasdasd', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'D4B388E63026E05864A4', '0', NULL, NULL, 0),
(103, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661096972, 0, 1661693565, 'asdad@adsda.ru', 'dadsasd', 'dadsasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'D1243D633996C077A272', '0', NULL, NULL, 0),
(104, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661097029, 0, 1661693565, 'asdad@masd.ru', 'dasdad', 'dadsasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '25A77E1A1810D96D9BBE', '0', NULL, NULL, 0),
(105, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661097048, 0, 1661693565, 'asdasd@dadas.ru', 'dasdasd', 'dasdasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '6F54397B3A903C53613C', '0', NULL, NULL, 0),
(106, 0, NULL, 17, 1, '1', '0.95', '1', '0.95', 5, 1661104713, 0, 1661693565, 'dasd@mail.ru', 'asdasd', '13123', '', '', '', '', '', '', '', '127.0.0.1', NULL, '402D389EB35055507CAE', '0', NULL, NULL, 0),
(107, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661104756, 0, 1661693565, 'dasda@daads.ru', 'dasdasda', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'B0A352FA4DDA3D02E030', '0', NULL, NULL, 0),
(108, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661104776, 0, 1661693565, 'asdasd@dadas.ru', 'dasdasd', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '942789A9347B42EFED13', '0', NULL, NULL, 0),
(109, 0, NULL, 17, 1, '1', '0.95', '1', '0.95', 5, 1661104794, 0, 1661693565, 'asdasd@addas.ru', 'dasdasd', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '5A22B15667C265C50D0B', '0', NULL, NULL, 0),
(110, 0, NULL, 17, 1, '1', '0.95', '1', '0.95', 5, 1661104832, 0, 1661693565, 'asdasd@asdas.ru', 'dasdasd', 'dasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '074A4AB6E7A2CEECD95E', '0', NULL, NULL, 0),
(111, 0, NULL, 17, 1, '1', '0.95', '1', '0.95', 5, 1661105413, 0, 1661693565, 'asdasd@dasd.ru', 'adsdasd', 'dasdasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'F2F81075D7AB7656A358', '0', NULL, NULL, 0),
(112, 0, NULL, 17, 1, '1', '0.95', '1', '0.95', 5, 1661105440, 0, 1661693565, 'asdasd@dasd.ru', 'dasdasd', 'dasdasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, '77C8F60E283B27ED1A44', '0', NULL, NULL, 0),
(113, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661105454, 0, 1661693565, 'asdasd@mail.ru', 'dasdasd', 'dasdasdasd', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'E737E6363128CE4D25B8', '0', NULL, NULL, 0),
(114, 0, NULL, 18, 1, '1', '0.95', '1', '0.95', 5, 1661105671, 0, 1661693566, 'asda@adsd.ru', 'dasdasd', 'dasda', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'F287C599793F2A183E7E', '0', NULL, NULL, 0),
(115, 0, NULL, 18, 1, '1', '0.95000000', '1', '0.95', 5, 1661105700, 0, 1661693566, 'asdasd@ada.ru', 'dasdasd', 'dasdasdasdas', '', '', '', '', '', '', '', '127.0.0.1', NULL, '0466B8993472347B6AB0', '0', NULL, NULL, 0),
(116, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661693583, 0, 1662059559, 'adasd@mail.ru', 'Eum harum ut ut even', 'Voluptas amet non p', '', '', '', '', '', '', '', '127.0.0.1', NULL, '157267604259F1E4DF44', '0', NULL, NULL, 0),
(117, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661693607, 0, 1662059560, 'adasd@mail.ru', 'Aut provident labor', 'Mollit Nam dolores a', '', '', '', '', '', '', '', '127.0.0.1', NULL, '67991A0D1978F9BCC895', '0', NULL, NULL, 0),
(118, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661694149, 0, 1662059561, 'adasd@mail.ru', 'Sed aliquid cupidata', 'Velit sed qui quae a', '', '', '', '', '', '', '', '127.0.0.1', NULL, '329CCE5CA8CBAABE9274', '0', NULL, NULL, 0),
(119, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661694199, 0, 1662059561, 'adasd@mail.ru', 'Sint et et ullamco d', 'Dicta provident iru', '', '', '', '', '', '', '', '127.0.0.1', NULL, '5A3AF302286393DED43D', '0', NULL, NULL, 0),
(120, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661694259, 0, 1662059561, 'adasd@mail.ru', 'Aut vel in aut aut d', 'Libero laboris adipi', '', '', '', '', '', '', '', '127.0.0.1', NULL, '36D76A1F5543FCF5AFCA', '0', NULL, NULL, 0),
(121, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661694310, 0, 1662059561, 'adasd@mail.ru', 'Quas doloribus et do', 'Laboriosam quidem u', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'CFCD509C7E907DD41A2C', '0', NULL, NULL, 0),
(122, 0, NULL, 1, 1, '10', '9.50000000', '1', '0.95', 5, 1661694342, 0, 1662059561, 'adasd@mail.ru', 'Laborum Provident', 'Totam eu sapiente am', '', '', '', '', '', '', '', '127.0.0.1', NULL, '4524821BFAE35EB46619', '0', NULL, NULL, 0),
(123, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661694424, 0, 1662059561, 'adasd@mail.ru', 'Nisi sed maiores imp', 'Mollit eu et enim oc', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'F4E94C7984C0DD1E4F25', '0', NULL, NULL, 0),
(124, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661694604, 0, 1662059562, 'adasd@mail.ru', 'Id excepteur rerum i', 'Voluptas error expli', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'C157B382A3D031B7AF18', '0', NULL, NULL, 0),
(125, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661694673, 0, 1662059562, 'adasd@mail.ru', 'Quos libero inventor', 'Porro inventore volu', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'D1306DD54B3433F7ECDB', '0', NULL, NULL, 0),
(126, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661694695, 0, 1662059562, 'adasd@mail.ru', 'Esse tempore ipsum', 'Exercitationem praes', '', '', '', '', '', '', '', '127.0.0.1', NULL, '7E93FA2AA3EE16A7E0D6', '0', NULL, NULL, 0),
(127, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661694732, 0, 1662059562, 'adasd@mail.ru', 'Deserunt qui dolorum', 'Aspernatur incidunt', '', '', '', '', '', '', '', '127.0.0.1', NULL, '28D624C2E282893B0D76', '0', NULL, NULL, 0),
(128, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661694912, 0, 1662059562, 'adasd@mail.ru', 'Est corrupti in la', 'Natus cum nisi non s', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'EC7F0A5524BAAC27CFD9', '0', NULL, NULL, 0),
(129, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 3, 1661695538, 0, 0, 'adasd@mail.ru', 'Vel do tempora venia', 'Optio laborum quasi', '', '', '', '', '', '', '', '127.0.0.1', 'asds', '78762088721F401AABBB', '0', NULL, NULL, 0),
(130, 0, NULL, 1, 1, '1', '0.95', '1', '0.95', 5, 1661696198, 0, 1662059562, 'adasd@mail.ru', 'Soluta voluptate ius', 'Sunt repellendus It', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'AA173D069336100A3D93', '0', NULL, NULL, 0),
(131, 0, NULL, 9, 9, '100000', '10000.00', '10', '9.5', 2, 1662063419, 0, 0, 'adasd@mail.ru', '+78121821922', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '5A0B725EC1D91FBD60FF', '0', NULL, NULL, 0),
(132, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662124186, 0, 0, 'adasd@mail.ru', 'Non assumenda illum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '3FEA8A171AF65F256867', '0', NULL, NULL, 0),
(133, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662124443, 0, 0, 'adasd@mail.ru', 'Non assumenda illum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '0B5C1E914E2C1C6D98EF', '0', NULL, NULL, 0),
(134, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662124580, 0, 0, 'adasd@mail.ru', 'Non assumenda illum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'F18C29C8F1D7AFEC571C', '0', NULL, NULL, 0),
(135, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662124680, 0, 0, 'adasd@mail.ru', 'Non assumenda illum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'CC92FDB3B07BF5AB1640', '0', NULL, NULL, 0),
(136, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662124739, 0, 0, 'adasd@mail.ru', 'Non assumenda illum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '46F024C207832E8F0A92', '0', NULL, NULL, 0),
(137, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662124810, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '8C9CDA2D156776E3CA17', '0', NULL, NULL, 0),
(138, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662124812, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'F356370EFE13B62C9456', '0', NULL, NULL, 0),
(139, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662124818, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '3CDD46C446B65CCD7DE7', '0', NULL, NULL, 0),
(140, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662124825, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '7320B497C3F92C53195C', '0', NULL, NULL, 0),
(141, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662124883, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '99AA02F3A8DAF9EEFFB3', '0', NULL, NULL, 0),
(142, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125041, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '1245B035E702A59C94FB', '0', NULL, NULL, 0),
(143, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125077, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '0F3CFA9AA018BFC2524D', '0', NULL, NULL, 0),
(144, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125161, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '188EB5367E7615466666', '0', NULL, NULL, 0),
(145, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125177, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'F539BB379E84A1CCF721', '0', NULL, NULL, 0),
(146, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125203, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '9E0498664E633E8B9123', '0', NULL, NULL, 0),
(147, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125212, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '40DDF11AE94D295F008D', '0', NULL, NULL, 0),
(148, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125242, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'B1E732884766F91EA396', '0', NULL, NULL, 0),
(149, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125252, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'B4D318D975F206AF6F60', '0', NULL, NULL, 0),
(150, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125283, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '4DE4E0573F3A47B582A0', '0', NULL, NULL, 0),
(151, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125296, 0, 0, 'adasd@mail.ru', 'Suscipit fugit eum', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'F0CF1F95F297EEFF6E10', '0', NULL, NULL, 0),
(152, 0, NULL, 9, 9, '10000', '1000.00', '10', '9.5', 1, 1662125322, 0, 0, 'adasd@mail.ru', 'Repudiandae esse of', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '94408E543E853CF2A555', '0', NULL, NULL, 0),
(153, 0, NULL, 9, 9, '100000', '10000.00', '10', '9.5', 1, 1662125369, 0, 0, 'adasd@mail.ru', 'Vero sit dolorem re', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'C4EA5B71AE55BD7A43D3', '0', NULL, NULL, 0),
(154, 0, NULL, 9, 9, '100000', '10000.00', '10', '9.5', 1, 1662125376, 0, 0, 'adasd@mail.ru', 'Vero sit dolorem re', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '7E8F3636F2B51432C519', '0', NULL, NULL, 0),
(155, 0, NULL, 9, 9, '100000', '10000.00', '10', '9.5', 1, 1662125398, 0, 0, 'adasd@mail.ru', 'Vero sit dolorem re', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'FCF7805856C00EDA287A', '0', NULL, NULL, 0),
(156, 0, NULL, 9, 9, '100000', '10000.00', '10', '9.5', 1, 1662125409, 0, 0, 'adasd@mail.ru', 'Vero sit dolorem re', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '61218EB6F094D051DA9C', '0', NULL, NULL, 0),
(157, 0, NULL, 9, 9, '100000', '10000.00', '10', '9.5', 1, 1662125459, 0, 0, 'adasd@mail.ru', 'Vero sit dolorem re', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, 'A20D05FB3CB79C595787', '0', NULL, NULL, 0),
(158, 0, NULL, 9, 9, '100000', '10000.00', '10', '9.5', 1, 1662125468, 0, 0, 'adasd@mail.ru', 'Vero sit dolorem re', '', '', '', '', '', '', '', '', '127.0.0.1', NULL, '6A879CBF326EA1D7E34F', '0', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `bit_faq`
--

CREATE TABLE `bit_faq` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bit_faq`
--

INSERT INTO `bit_faq` (`id`, `question`, `answer`, `created`, `updated`) VALUES
(1, 'Заявка оплачена. Когда будет пополнен мой кошелёк?', '<p></p><ol style=\"margin: 0px 0px 0px 20px; padding: 0px; border: 0px; font-size: 14px;\" open=\"\" sans\",=\"\" sans-serif;=\"\" outline:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" list-style-position:=\"\" initial;=\"\" list-style-image:=\"\" color:=\"\" rgb(84,=\"\" 84,=\"\" 84);=\"\" background-color:=\"\" rgb(252,=\"\" 253,=\"\" 253);\"=\"\"><li style=\"font-weight: inherit; margin: 0px 0px 5px; padding: 0px 0px 10px; border: 0px; font-style: inherit; outline: 0px; vertical-align: baseline;\"><p class=\"MsoNormal\" style=\"margin-bottom:0.0000pt;margin-left:30.0000pt;\"><i><span style=\"font-family: Verdana; color: rgb(78, 87, 104); font-size: 9pt;\">Перевод на Ваш кошелек после оплаты заявки производится практически мгновенно. Если этого не произошло (в течении 20 минут), проверьте статус заявки в разделе \"Обменные операции\" Вашего аккаунта, если там никаких ошибок нет, обратитесь в службу поддержки \"Помощь онлайн\".</span></i><span style=\"mso-spacerun:\'yes\';font-family:Verdana;mso-fareast-font-family:\'Times New Roman\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(78,87,104);font-size:9.0000pt;\"><o:p></o:p></span></p></li></ol><p></p>\r\n							', NULL, 1660318923),
(2, 'Возможно ли отказаться от заявки?', '<p class=\"MsoNormal\"><i><span style=\"font-family: Verdana; color: rgb(78, 87, 104); font-size: 9pt;\">Выполненная заявка является необратимой, т.е. по такой заявке средства возврату не подлежат. Если заявка оплачена, но еще не выполнена, Вы можете вернуть свои средства (за вычетом комиссии за перевод), написав в службу поддержки&nbsp;\"Помощь онлайн\".</span></i></p>', NULL, 1660318944),
(3, 'Можно ли оплатить вам напрямую на кошелек?', '<p class=\"MsoNormal\" style=\"margin-bottom:0.0000pt;margin-left:30.0000pt;\"><i><span style=\"font-family: Verdana; color: rgb(78, 87, 104); font-size: 9pt;\">Категорически нет. Только через заявку на сайте. Прямые платежи будут возвращены за вычетом комиссии за перевод.</span></i><span style=\"mso-spacerun:\'yes\';font-family:Verdana;mso-fareast-font-family:\'Times New Roman\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(78,87,104);font-size:9.0000pt;\"><o:p></o:p></span></p>', 1660318963, NULL),
(4, 'Какие у вас комиссии?', '<p class=\"MsoNormal\" style=\"margin-bottom:0.0000pt;margin-left:30.0000pt;\"><i><span style=\"font-family: Verdana; color: rgb(78, 87, 104); font-size: 9pt;\">Все комиссии уже включены в перевод и отображаются на стадии оформления заявки, в том числе и комиссия за перевод платежной системы.</span></i><span style=\"mso-spacerun:\'yes\';font-family:Verdana;mso-fareast-font-family:\'Times New Roman\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(78,87,104);font-size:9.0000pt;\"><o:p></o:p></span></p>', 1660318980, NULL),
(5, 'Я указал неверный номер кошелька для получения средств. Что делать?', '<p class=\"MsoNormal\" style=\"margin-bottom:0.0000pt;margin-left:30.0000pt;\"><i><span style=\"font-family: Verdana; color: rgb(78, 87, 104); font-size: 9pt;\">К сожалению, выполненные переводы отменить нельзя. Если номер кошелька некорректный, и перевод не дойдет по этой причине и вернётся нам. В этом случае обратитесь к нам, мы вернем платеж за вычетом комиссии за перевод.</span></i><span style=\"mso-spacerun:\'yes\';font-family:Verdana;mso-fareast-font-family:\'Times New Roman\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(78,87,104);font-size:9.0000pt;\"><o:p></o:p></span></p>', 1660318991, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bit_gateways`
--

CREATE TABLE `bit_gateways` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `reserve` varchar(255) DEFAULT NULL,
  `min_amount` varchar(255) DEFAULT NULL,
  `max_amount` varchar(255) DEFAULT NULL,
  `exchange_type` int(11) DEFAULT NULL,
  `include_fee` int(11) DEFAULT NULL,
  `extra_fee` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `allow_send` int(11) DEFAULT NULL,
  `allow_receive` int(11) DEFAULT NULL,
  `default_send` int(11) DEFAULT NULL,
  `default_receive` int(11) DEFAULT NULL,
  `allow_payouts` int(11) DEFAULT NULL,
  `show_qr` int(11) DEFAULT 0,
  `qr_address` varchar(50) DEFAULT NULL,
  `qr_set` varchar(50) DEFAULT NULL,
  `a_field_1` varchar(255) DEFAULT NULL,
  `a_field_2` varchar(255) DEFAULT NULL,
  `a_field_3` varchar(255) DEFAULT NULL,
  `a_field_4` varchar(255) DEFAULT NULL,
  `a_field_5` varchar(255) DEFAULT NULL,
  `a_field_6` varchar(255) DEFAULT NULL,
  `a_field_7` varchar(255) DEFAULT NULL,
  `a_field_8` varchar(255) DEFAULT NULL,
  `a_field_9` varchar(255) DEFAULT NULL,
  `a_field_10` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `external_gateway` int(11) NOT NULL DEFAULT 0,
  `external_icon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bit_gateways`
--

INSERT INTO `bit_gateways` (`id`, `name`, `currency`, `reserve`, `min_amount`, `max_amount`, `exchange_type`, `include_fee`, `extra_fee`, `fee`, `allow_send`, `allow_receive`, `default_send`, `default_receive`, `allow_payouts`, `show_qr`, `qr_address`, `qr_set`, `a_field_1`, `a_field_2`, `a_field_3`, `a_field_4`, `a_field_5`, `a_field_6`, `a_field_7`, `a_field_8`, `a_field_9`, `a_field_10`, `status`, `external_gateway`, `external_icon`) VALUES
(1, 'BTC', 'BTC', '34354355', '1', '500000000000', 3, 0, '2', '1', 1, 1, 0, 0, NULL, 1, '0x1985c0f19dc64836ba2ec645d29f81e334eace8d', 'ethereum', '312122212122121', '@6565656', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1659800401_icon.png'),
(2, 'PayPal', 'AUD', '34892', '10', '500000000000', 2, 1, '2', '2', 1, 1, 1, 0, NULL, 0, '', '', 'TWpo2ytHFL8gXdZYH4rECsg8Rr5xePXhFH', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL),
(4, 'Bank Card', 'USD', '351400', '10', '500000000000', 3, 0, '', '1', 1, 1, 0, 0, NULL, 0, NULL, NULL, '2111111111111111111111111', 'Админ Админ', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1660456159_icon.png'),
(5, 'Webmoney', 'RUB', '54687', '10', '500000000000', 3, 0, '', '1', 1, 1, 0, 0, NULL, 0, NULL, NULL, '34234234234', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1660456399_icon.png'),
(6, 'ADV Cashe', 'USD', '98765', '10', '500000000000', 3, 0, '', '1', 1, 1, 0, 0, NULL, 0, NULL, NULL, '454546878', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1660456524_icon.png'),
(7, 'Tether TRC20', 'USD', '150000', '200', '5000', 3, 0, '', '1', 1, 1, 0, 0, NULL, 0, NULL, NULL, 'TQXQuEnN3HHhGEmGJgE91uC1sKRFJ3A8VH', '', '', '', '', '', '', '', '', '', 1, 1, 'uploads/1660710461_icon.png'),
(9, 'Qiwi', 'RUB', '15000000', '10000', '300000', 3, 1, '20', '1', 1, 1, 0, 0, NULL, 0, NULL, NULL, '+7', '+7', '+7', '+7', '+7', '+7', '+7', '+7', '+7', '+7', 1, 1, 'uploads/1660716467_icon.png');

-- --------------------------------------------------------

--
-- Структура таблицы `bit_gateways_fields`
--

CREATE TABLE `bit_gateways_fields` (
  `id` int(11) NOT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `field_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bit_gateways_fields`
--

INSERT INTO `bit_gateways_fields` (`id`, `gateway_id`, `field_name`, `field_number`) VALUES
(1, 1, 'BTC WALLET', 1),
(2, 1, 'Telegram', 2),
(3, 9, 'Кошелек QIWI 2', 3),
(4, 9, 'Кошелек QIWI 3', 4),
(5, 9, 'Кошелек QIWI 4', 5),
(6, 4, 'Номер Банковской карты', 1),
(7, 4, 'Имя и Фамилия', 2),
(8, 5, 'WMR Кошелек', 1),
(9, 6, 'ADV Cash Number', 1),
(10, 7, 'Thether TRC204545454', 1),
(11, 8, 'Номер кошелька', 1),
(12, 8, ' ', 2),
(13, 9, 'Кошелек QIWI 0', 1),
(14, 9, 'Кошелек QIWI 1', 2),
(15, 9, 'Кошелек QIWI 5', 6),
(16, 9, 'Кошелек QIWI 6', 7),
(17, 9, 'Кошелек QIWI 7', 8),
(18, 9, 'Кошелек QIWI 8', 9),
(19, 9, 'Кошелек QIWI 9', 10),
(20, 15, '1111', 1),
(21, 17, '312312', 1),
(22, 18, 'sdasdasd', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `bit_pages`
--

CREATE TABLE `bit_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bit_pages`
--

INSERT INTO `bit_pages` (`id`, `title`, `prefix`, `content`, `created`, `updated`) VALUES
(1, 'Соглашение', 'terms-of-services', '<div style=\"\"><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><b style=\"\"><span style=\"color: rgb(33, 37, 41); font-size: 24pt;\">Пользовательское соглашение </span></b><b style=\"\"><span style=\"color: rgb(33, 37, 41); font-size: 24pt;\">apexchange.cc</span></b><b style=\"\"><span style=\"color: rgb(33, 37, 41); font-size: 24pt;\"><o:p></o:p></span></b></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">1. Общие положения</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">1.1.&nbsp;Настоящее Соглашение определяет порядок оказания услуг по обмену электронных денег Биржей.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">1.2.&nbsp;Обменный сервис - это расположенный в сети Интернет онлайн-ресурс для обмена электронных денег - </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">1.3.&nbsp;Пользователь - физическое или юридическое лицо, изъявившее желание воспользоваться услугами сервиса обмена </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">1.4.&nbsp;Пользователь и Интернет-ресурс </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;вместе именуются Сторонами.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">1.5.&nbsp;Стороны соглашаются, что настоящее Соглашение, составленное в электронной форме, имеет равную юридическую силу с письменным документом и будет регулировать деловые отношения между Пользователями (физическим или юридическим лицом) и стороной, предлагающей услуги определенного вида (</span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">).&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">1.6.&nbsp;Соглашение представляет собой публичную оферту, которую Пользователь принимает, подав заявку через веб-ресурс сервиса </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;Exchange на оказание услуг, предоставляемых сервисом </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;Exchange.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">2. Предмет Соглашения.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">2.1.&nbsp;Онлайн-ресурс </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;предоставляет услуги, указанные в сервисе 4 настоящего Соглашения, при условии тщательного соблюдения Пользователем стандартов, сформированных в сервисе 9 настоящего Соглашения.&nbsp;Порядок их предоставления определяется внутренним Регламентом Интернет-ресурса </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">, установленным сервисом 5 настоящего Соглашения.&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">2.2.&nbsp;Пользователь принимает услуги Онлайн-ресурса </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;и производит оплату за них с соблюдением условий, установленных Соглашением.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3. Права и обязанности сторон.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.1.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;обязан:&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.1.1.&nbsp;Конвертировать цифровые валюты платежных онлайн-систем Qiwi, Payeer, Perfect Money, Яндекс.Деньги и других с соблюдением стандартов, указанных в настоящем Соглашении;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.1.2.&nbsp;Оказывать техническую и информационную поддержку Пользователям в процессе осуществления денежных переводов с помощью службы обмена </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.1.3.&nbsp;Обеспечить сохранность подробной информации об обменных операциях (личные данные Пользователей, время обменных операций, их сумма и прочая информация) и предоставить ее Пользователям, инициировавшим эти операции.&nbsp;Информация о денежных переводах в разных направлениях с использованием конфиденциальных платежных систем имеет статус «Конфиденциально» и не разглашается;&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.1.4.&nbsp;Не передавайте информацию о транзакциях посторонним лицам.&nbsp;Исключение составляют следующие случаи:&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">если судебный орган по месту нахождения биржи </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;принял соответствующее решение, вступившее в силу;</span><span style=\"font-size: 13pt;\"><br></span><span style=\"font-size: 13pt;\">если поступил запрос от официальных правоохранительных органов и учреждений финансового мониторинга, действующих по месту нахождения биржи </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">;</span><span style=\"font-size: 13pt;\"><br></span><span style=\"font-size: 13pt;\">При обращении к руководству партнеров (систем онлайн-платежей), которые указаны выше.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.1.5.&nbsp;Учитывать информацию о скидках, предоставляемых Пользователям;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.1.6.&nbsp;Обеспечить зачисление денежных средств на счет Пользователя или третьего лица в течение 24 часов с момента получения жалобы в случаях, предусмотренных сервисами 3.2.5, 5.4, 5.5 или 5.6 настоящего Соглашения.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.2.&nbsp;Пользователь обязан:&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.2.1.&nbsp;Предоставлять точные данные и детали для своевременного осуществления денежных переводов;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.2.2.&nbsp;Предоставлять достоверную информацию об используемом адресе электронной почты;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.2.3.&nbsp;Предоставьте возможность получать системные оповещения на вашу электронную почту.&nbsp;Иметь доступ к Интернету с помощью компьютера или других электронных вычислительных устройств.&nbsp;Используйте самые свежие версии антивирусных программ, чтобы установить безопасное соединение с Интернет-ресурсом </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">.&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.2.4.&nbsp;Придерживайтесь условий настоящего Соглашения;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.2.5.&nbsp;Уведомлять администрацию Интернет-ресурса </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;обо всех случаях, когда перечисленные суммы не были переведены полностью или частично на счет Пользователя или третьего лица.&nbsp;А также о прецедентах, перечисленных в сервисах 5.4, 5.5 и 5.6 настоящего Соглашения.&nbsp;Соответствующее уведомление необходимо отправить администрации не позднее, чем через месяц после поступления средств.&nbsp;Если это условие не выполняется, оспариваемые суммы поступают в обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.2.6.&nbsp;Соблюдайте законы, регулирующие правила осуществления денежных переводов через Интернет.&nbsp;3.2.7.&nbsp;Не используйте различные системы для увеличения трафика.&nbsp;</span><span style=\"font-size: 13pt;\"><br></span><span style=\"font-size: 13pt;\">&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;имеет право:&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.1.&nbsp;Временно приостановить деятельность, чтобы обновить службу или исправить проблемы;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.2.&nbsp;При обращении в компетентные органы, администрацию вышеуказанных платежных систем или жалобу Пользователя на мошеннические действия прекратить операцию обмена до выяснения ситуации;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.3.&nbsp;Устанавливайте по своему усмотрению скидки на обменные операции;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.4.&nbsp;Определить размер комиссии, подлежащей уплате за операцию обмена;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.5.&nbsp;Отказывать потенциальному Пользователю в своих сервисах без объяснения причин своих действий;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.6.&nbsp;Получать от Пользователя информацию, подтверждающую завершение операции обмена с помощью электронной почты, мобильного телефона, снимок экрана электронного кошелька, если обмен был завершен с ошибкой;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.7.&nbsp;Прекратить общение с Пользователем, который груб, задает вопросы не по теме или не предоставляет необходимую информацию в службу поддержки;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.8.&nbsp;Блокировать выполнение обменной операции на основании сервисов 5.4, 5.5 и 5.6.&nbsp;и правила;&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.9.&nbsp;При необходимости заблокировать операцию и не возвращать деньги Пользователю, пока его личность не будет установлена.&nbsp;3.3.10.&nbsp;В случае невыполнения обязательств в соответствии с п. 3.2.8 Администрация вправе заблокировать пользователя, нарушившего данный сервис, а также источник / генератор переходов.&nbsp;</span><span style=\"font-size: 13pt;\"><br></span><span style=\"font-size: 13pt;\">&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">3.3.11.&nbsp;В случае неосновательного обогащения клиента электронными деньгами сервиса обмена </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">, либо сторонними сервисами по обмену электронных денег, Администрация сайта обмена </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">.com имеет право приостановить выполнение заявление до выяснения причин и всех обстоятельств, а также возмещение необоснованно полученных денежных средств и имущественных прав на них обменным сервисом </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;или другими обменными сервисами.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">4. Предоставляемые услуги</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">4.1.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;осуществляет обмен электронных денег платежных систем Bitcoin, Qiwi, Payeer, Perfect Money, Яндекс.Деньги и других через банковские учреждения, список которых представлен на сайте;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">4.2.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;не уполномочен проверять законность владения Пользователем средствами, использованными в процессе обмена.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">5. Правила обмена электронных денег</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">5.1.&nbsp;Осуществление транзакции начинается после поступления от Пользователя денежных средств, предназначенных для обмена.&nbsp;Если средства на созданную Пользователем заявку не поступят в течение 20 минут, то заявка автоматически удаляется системой безопасности биржи </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">.&nbsp;В случае поступления оплаты за заявку сверх указанного времени, заявка будет обработана по текущему курсу на момент поступления денежных средств от Пользователя.&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">5.2.&nbsp;Сделка считается завершенной после зачисления денежных средств на реквизиты, указанные Пользователем.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">5.3.&nbsp;Пользователь не может отменить уже начатую транзакцию или вернуть деньги, предоставленные для обмена.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">5.4.&nbsp;Если от Пользователя получена сумма, размер которой отличается от суммы, указанной при совершении транзакции, то обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;может приостановить обмен, а после запроса Пользователя на основании п. 3.2.5. , оплатите фактически полученную сумму по курсу, действовавшему на начало транзакции.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">5.5.&nbsp;Если Пользователь указал неверные или заблокированные реквизиты, операция обмена прекращается.&nbsp;Денежные средства возвращаются на счет Пользователя на основании его запроса в соответствии с п. 3.2.5.&nbsp;При этом с них удерживается комиссия за обмен, а также штраф в размере двух процентов от суммы операции.&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">5.6.&nbsp;Если Пользователь изменил примечания к оплате или оплатил счет со стороннего аккаунта, то такая операция может быть заблокирована.&nbsp;В этом случае возврат денежных средств осуществляется по запросу Пользователя на основании п. 3.2.5 за вычетом комиссии и одного процента от суммы платежа.&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">5.7.&nbsp;В случае, если клиент получает криптовалюту биткойн, время подтверждения транзакции (зачисления средств) зависит от самой системы биткойнов.&nbsp;Этот процесс может занять от 15 минут до нескольких дней, в зависимости от загруженности сети Биткойн.&nbsp;Обменный сервис не несет ответственности за скорость транзакций и подтверждений в сети Биткойн.&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">6. Гарантии и ответственность сторон.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\"><br></span><span style=\"font-size: 13pt;\">6.1.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;не несет материальной и моральной ответственности за неправомерное использование сервиса Пользователем, а также за ошибки, допущенные им в процессе заполнения отдельных сервисов стандартной формы заявки на обмен цифровых денег.&nbsp;Даже если средства были переведены не на тот счет, транзакция не будет отменена или возмещена.&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">6.2.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;не несет ответственности за ущерб или убытки, вызванные невозможностью использования Пользователем оборудования в целом или его отдельных элементов.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">6.3.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;не несет ответственности за действия банков и платежных систем, приведшие к ошибкам или задержкам платежа.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">6.4.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;не несет ответственности за понесенные Пользователем расходы, убытки или упущенную выгоду, вызванные ошибочными представлениями Пользователя относительно тарифов, прибыльности операций и другими субъективными проблемами.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">6.5.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;не несет ответственности за любые расходы, понесенные в результате ошибок или задержек электронных переводов или платежей;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">6.6.&nbsp;Пользователь подтверждает, что является полноправным владельцем или имеет законные основания для использования средств, участвующих в обменных операциях.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">6.7.&nbsp;Пользователь подтверждает, что на момент использования сервиса </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">, он достиг совершеннолетия, согласно законодательству страны нахождения Пользователя.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">6.8.&nbsp;Пользователь соглашается возместить третьим лицам убытки, возникновение которых прямо или косвенно связано с использованием возможностей сервиса Пользователем.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">7. Изменение информации</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">7.1.&nbsp;Администрация биржи </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;может в любой момент дополнить или изменить настоящее Соглашение.&nbsp;В этом случае все изменения начинают применяться после их публикации на веб-ресурсе.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">8. Форс-мажор</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">8.1.&nbsp;Стороны освобождаются от ответственности за неисполнение или задержку в исполнении своих обязательств по настоящему Соглашению в случае возникновения форс-мажорных обстоятельств.&nbsp;К ним относятся: стихийные бедствия, действия правительства, войны, пожар, взрыв, террористическая атака, наводнение, беспорядки, хакерские атаки, массовые гражданские беспорядки.&nbsp;К ним также относятся отсутствие или сбой в работе электроснабжения, доступа в Интернет, услуг связи или других систем и сетей.&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">9. Обязательные условия проведения обменных операций.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">9.1.&nbsp;Запрещается использовать сервис обмена </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;для незаконных или мошеннических операций.&nbsp;Пользователь соглашается с тем, что за любую попытку обмена средств сомнительного происхождения он будет наказан в соответствии с законодательством страны, в которой была проведена операция обмена.&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">9.2.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;имеет право передавать информацию о незаконных платежах, если их незаконность должным образом доказана, компетентным органам, администрации соответствующей платежной системы и потерпевшим по их запросу.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">9.3.&nbsp;Условием обмена является вывод цифровых символов Пользователем из принадлежащего ему электронного кошелька.&nbsp;В этом случае Пользователь несет персональную ответственность за законность источников получения средств, поскольку обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;не уполномочен проверять их происхождение.&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">9.4.&nbsp;Для осуществления банковских переводов вам необходимо воспользоваться интернет-банком соответствующей платежной системы.&nbsp;Если заявка была оформлена через оператора банковского учреждения или банкомата, то средства возвращаются Пользователю в течение 24 часов.&nbsp;Если перевод был произведен на карту Сбербанка, то с Пользователя взимается один процент от суммы заказа.&nbsp;Деньги будут возвращены только после того, как будет проведена проверка безопасности для идентификации отправителя перевода.&nbsp;Для прохождения проверки Пользователю необходимо сфотографировать свой паспорт и банковскую карту, с которой был отправлен платеж, и отправить их на почту обменного сервиса </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">9.5.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;не несет ответственности за операции, совершаемые третьими лицами от имени Пользователя.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">9.6.&nbsp;Пользователь, нажав кнопку «ПРОДОЛЖИТЬ», подтверждает, что безоговорочно принимает все условия настоящего Соглашения.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">10. Идентификация личности пользователя.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">10.1.&nbsp;Используя обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">, Пользователь обязуется пройти процесс идентификации личности по первому требованию сервиса </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">10.2.&nbsp;Во время идентификации персоны обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;может запросить следующие данные по своему усмотрению:&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Фамилия Имя Отчество Пользователя;</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Гражданство пользователя;</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Полные паспортные данные;</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Данные о месте регистрации и месте фактического проживания Пользователя;</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Любые другие персональные данные в любом формате и в любом объеме, которые обменный сервис </span><span style=\"font-size: 11.5pt;\">apexchange.cc</span><span style=\"font-size: 11.5pt;\">&nbsp;сочтет необходимыми для полной идентификации.</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">10.3.&nbsp;Пользователь соглашается с тем, что обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;будет проводить необходимые расследования напрямую или через третьих лиц для проверки личности или защиты Пользователя и / или обменного сервиса от финансовых преступлений.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">10.4.&nbsp;Передав идентификацию, Пользователь соглашается с тем, что обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;проведет любое исследование в отношении Пользователя, которое обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;сочтет необходимым.&nbsp;Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;может по своему усмотрению привлекать для этих исследований третье лицо.&nbsp;&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">10.5.&nbsp;Используя обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">, Пользователь соглашается на автоматическую AML-проверку всех транзакционных адресов транзакций.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-bottom: 5pt; text-align: justify;\"><span style=\"font-family: serif;\"><span style=\"font-size: 13pt;\">10.6. Обменный сервис </span><span style=\"font-size: 13pt;\">apexchange.cc</span><span style=\"font-size: 13pt;\">&nbsp;имеет право запросить прохождение процедуры идентификации личности Пользователем, в ситуации, когда адрес кошелька Пользователя может иметь непосредственную связь с:&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Stolen Coins,</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Ransom,</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Scam,</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Mixing Service,</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Illegal Service,</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Fraudulent Exchange,</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif;\"><span style=\"font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\">Darknet Service,</span><span style=\"font-size: 11.5pt;\"><o:p></o:p></span></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; margin-top: 5pt; margin-bottom: 15pt; margin-left: 36pt; text-indent: -18pt; text-align: justify;\"><!--[if !supportLists]--><span style=\"font-family: serif; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"font-size: 11.5pt;\"><span style=\"font-family: serif;\">Darknet Marketplace,</span></span><span style=\"font-family: serif; font-size: 11.5pt;\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"justify\" style=\"margin-bottom: 5pt;\"><span style=\"font-family: serif;\">10.7.&nbsp;В ситуации, когда такое соединение подтверждается, Пользователь должен будет пройти идентификацию личности.&nbsp;Только после прохождения процесса идентификации&nbsp;средства будут возвращены на адрес отправителя за вычетом комиссии, потраченной на транзакцию</span><span style=\"font-family: PFAgoraSlabProLight; font-size: 13pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\"><o:p></o:p></span></p></div>', NULL, 1660371065);
INSERT INTO `bit_pages` (`id`, `title`, `prefix`, `content`, `created`, `updated`) VALUES
(2, 'Политика конфиденциальности', 'privacy-policy', '<div style=\"\"><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Политика конфиденциальности</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Дата вступления в силу: 03.07.2022 года.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Настоящая Политика конфиденциальности (далее — Политика) определяет политику в отношении обработки персональных данных, содержит сведения о реализуемых требованиях к защите персональных данных Оператора.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">1. ​Термины и определения</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">1.1. Субъект данных — физическое лицо, достигшее совершеннолетия, использующее Сайт в сети «Интернет» https://apexchange.cc/ для финансовых операций с электронной, цифровой или фиатной валютой.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">1.2. Cookies — фрагмент данных в составе HTTPS-запроса, предназначенный для хранения на конечном устройстве Субъекта и применяемый Оператором для идентификации Субъекта.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">1.3. Сайт — совокупность программ для электронных вычислительных машин и иной информации в информационно — телекоммуникационной сети «Интернет», предназначенной для отображения в браузере и доступ, к которому осуществляется с использованием доменного имени Оператора. В контексте деятельности Оператора используется сайт https://apexchange.cc/.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">1.4. Регистрационные данные — определяемый Оператором перечень сведений, указываемых при регистрации на сайте https://apexchange.cc/, и в дальнейшем при их изменении в процессе исполнения договора.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">1.5. Обработка персональных данных — любое действие (операция) или совокупность действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств с персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), блокирование, удаление, уничтожение персональных данных.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2. Общие положения</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.1. Политика регулирует вопросы обработки персональных данных при осуществлении Оператором хозяйственной деятельности, в том числе, оказании услуг по покупке/продаже для Пользователя и от имени Пользователя электронной и/или цифровой или фиатной валюты.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.2. Требования к безопасности передаваемых персональных данных между Оператором и Субъектами предусматриваются заключаемым между ними договором (Пользовательским соглашением) в соответствии с действующим законодательством.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.3. В ситуации, когда персональные данные поступают от Субъекта персональных данных, последний несет ответственность за указание недостоверных персональных данных.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.4. Настоящая Политика распространяется на персональные данные, полученные как до, так и после ввода в действие настоящей Политики.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.5. Оператор обязан придерживаться следующих принципов при обработке персональных данных:</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.5.1. обработка персональных данных должна осуществляться на законной и справедливой основе;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.5.2. обработка персональных данных должна ограничиваться достижением конкретных, заранее определенных и законных целей. Не допускается обработка персональных данных, несовместимая с целями сбора персональных данных;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.5.3. не допускается объединение баз данных, содержащих персональные данные, обработка которых осуществляется в целях, несовместимых между собой;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.5.4. обработке подлежат только персональные данные, которые отвечают целям их обработки;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.5.5. содержание и объем обрабатываемых персональных данных должны соответствовать заявленным целям обработки. Обрабатываемые персональные данные не должны быть избыточными по отношению к заявленным целям их обработки;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.5.6. при обработке персональных данных должны быть обеспечены точность персональных данных, их достаточность, а в необходимых случаях и актуальность по отношению к целям обработки персональных данных.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.5.7. хранение персональных данных должно осуществляться в форме, позволяющей определить субъекта персональных данных, не дольше, чем этого требуют цели обработки персональных данных, если срок хранения персональных данных не установлен федеральным законом, договором, стороной которого, выгодоприобретателем или поручителем по которому является субъект персональных данных. Обрабатываемые персональные данные подлежат уничтожению либо обезличиванию по достижении целей обработки или в случае утраты необходимости в достижении этих целей, если иное не предусмотрено федеральным законом.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">2.5. Настоящая Политика публикуется в сети интернет на сайте https://apexchange.cc/.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">3. Категории субъектов персональных данных</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">3.1. Оператор осуществляет обработку персональных данных всех Субъектов данных, являющихся Пользователями сайта https://apexchange.cc/.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4. Цели и основания обработки персональных данных</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4.1. Персональные данные Субъектов в части использования Сайта обрабатываются для достижения следующих целей:</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4.1.1. ознакомления Пользователя с услугами Оператора;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4.1.2. заключения договора между Пользователем и Оператором и с целью его исполнения;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4.1.3. уведомления Пользователей об изменениях в работе Сервиса Оператора,</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4.1.4. обеспечения поддержки и обслуживания Пользователей Сервиса;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4.1.5. для мониторинга использования Сервиса</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4.2. Персональные данные Субъектов обрабатываются в связи с выполнением услуг по покупке/продаже для Пользователя и от имени Пользователя электронной и/или цифровой или фиатной валюты.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4.3. Персональные данные могут быть использованы с иными целями, если это является обязательным в соответствии с положениями действующего законодательства.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">4.4. Обработка персональных данных ограничивается достижением конкретных, заранее определенных и законных целей. Не допускается обработка персональных данных, несовместимая с целями сбора персональных данных.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">5. Состав информации о субъектах персональных данных</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">5.1. Оператор вправе обрабатывать следующие категории персональных данных Субъектов: имя, возраст, паспортные данные, номер банковской карты, номер счета электронной платежной системы, адрес криптовалютного кошелька, e-mail, телефонный номер, адрес (дом, улица, населенный пункт, страна), cookies.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">5.2. Срок хранения персональных данных определяется договором либо сущностью иного основания обработки.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">5.3. Срок обработки персональных данных Субъектов — до момента окончания оказания услуг по покупке/продаже для Пользователя и от имени Пользователя электронной и/или цифровой или фиатной валюты.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">5.4. Срок обработки персональных данных Субъектов после оказания услуг, указанных в п.5.3 — в течение 3 лет.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">5.5. Хранение материальных носителей персональных данных осуществляется раздельно для каждой категории субъектов персональных данных.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">6. Хранение и обработка персональных данных</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">6.1. Оператор может осуществлять обработку персональных данных в информационных системах персональных данных, обеспечивая их надлежащую защиту.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">7. Права Субъекта</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Субъект персональных данных имеет право:</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">7.1. Обращаться за внесением изменений в предоставленные персональные данные или же за их удалением.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">7.2. Направлять Оператору обращения, касающиеся обработки его персональных данных, в пределах компетенции Оператора.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">7.3. Реализовать иные права, предусмотренные действующим законодательством.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">7.4. Обращаться за внесением изменений в предоставленные персональные данные или же за их удалением. Направлять Оператору обращения, касающиеся обработки его персональных данных в пределах компетенции Оператора. Реализовывать иные права, предусмотренные действующим законодательством.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8. Сведения о реализуемых требованиях к защите персональных данных</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.1. При обработке персональных данных Оператор принимает необходимые правовые, организационные и технические меры и обеспечивает их принятие для защиты персональных данных от неправомерного или случайного доступа к ним, уничтожения, изменения, блокирования, копирования, предоставления, распространения персональных данных, а также от иных неправомерных действий в отношении персональных данных, которыми являются в частности (но не ограничиваясь):</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.2. Назначение ответственного за обработку персональных данных.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.3. Ограничение состава работников, имеющих доступ к персональным данным.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.4. Программная идентификация Субъектов, сотрудников Оператора и учет их действий.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.5. Осуществление антивирусного контроля и иных мер от вредоносного программно-математического воздействия.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.6. Применение средств резервного копирования и восстановления информации.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.7. Обновление программного обеспечения при наличии исправлений безопасности от производителей.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.8. Осуществление шифрования при передаче персональных данных в сети Интернет.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.9. Принятие мер, связанных с допуском только надлежащих лиц в местах установки технических средств.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.10. Применение технических средств охраны помещений, в которых расположены технические средства информационных систем персональных данных, и мест хранения материальных носителей персональных данных.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11. Оператор обеспечивает безопасность персональных данных, в частности путем их использования:</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11.1. с учетом возможного причинения вреда субъекту персональных данных, объема и содержания обрабатываемых персональных данных, вида деятельности, при осуществлении которого обрабатываются персональные данные, актуальности угроз безопасности персональных данных;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11.2. применения технических мер в соответствии с угрозами безопасности персональных данных при их обработке в информационных системах персональных данных;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11.3. с применением организационных и технических мер по обеспечению безопасности персональных данных при их обработке в информационных системах, необходимых для выполнения требований законодательства о защите персональных данных;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11.4. с применением прошедших в установленном порядке процедуру оценки соответствия средств защиты информации;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11.5. с оценкой эффективности принимаемых мер по обеспечению безопасности персональных данных до начала работы в информационной системе персональных данных;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11.6. с учетом машинных носителей персональных данных, в случае их использования;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11.7. с применением процедур, связанных с обнаружением фактов несанкционированного доступа к персональным данным и принятием мер;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11.8. с возможностью восстановления персональных данных, модифицированных или уничтоженных вследствие несанкционированного доступа к ним;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11.9. с установлением правил доступа к персональным данным, обрабатываемым в информационной системе персональных данных, а также обеспечением регистрации и учета всех действий, совершаемых с ними;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">8.11.10. с контролем за принимаемыми мерами по обеспечению безопасности персональных данных и уровня защищенности информационных систем персональных данных.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9. Работа с парольной защитой</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.1. Персональные пароли должны генерироваться специальными программными средствами административной службы либо создаваться непосредственно Субъектами, использующими сайт при регистрации.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.2. Длина пароля должна быть не менее 8 символов.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.3. В составе пароля должны присутствовать буквы в верхнем и нижнем регистрах, цифры и специальные символы.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.4. Пароль не должен включать в себя:</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− легко вычисляемые сочетания символов;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− клавиатурные последовательности символов и знаков;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− общепринятые сокращения;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− аббревиатуры;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">номера телефонов, автомобилей;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− прочие сочетания букв и знаков, ассоциируемые с Субъектом;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− при смене пароля новое сочетание символов должно отличаться от предыдущего не менее чем на 2 символа.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.5. Допускается использование единого пароля для получения доступа Субъектом к различным информационным ресурсам.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.6. Полная внеплановая смена паролей всех Субъектов должна производиться в случае прекращения полномочий администраторов.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.7. Полная внеплановая смена паролей должна производиться в случае компрометации личного пароля одного из администраторов.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.8. В случае компрометации личного пароля Субъекта надлежит немедленно ограничить доступ к информации с данной учетной записи, до момента вступления в силу новой учетной записи Субъекта или пароля.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.9. При работе с парольной защитой Субъектам запрещается:</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− разглашать кому-либо персональный пароль и прочие идентифицирующие сведения;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− предоставлять доступ от своей учетной записи к информации посторонним лицам;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− записывать пароли на бумаге, файле, электронных и прочих носителях информации, в том числе и на предметах.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.10. Хранение Субъектом своего пароля на бумажном носителе допускается только в личном, опечатанном владельцем пароля сейфе.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.11. При вводе пароля Субъект обязан исключить возможность его перехвата сторонними лицами и техническими средствами.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.12. Под компрометацией следует понимать:</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− физическая утеря носителя с информацией;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− передача идентификационной информации по открытым каналам связи;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− проникновение постороннего лица в помещение физического хранения носителя парольной информации или алгоритма или подозрение на него (срабатывание сигнализации, повреждение устройств контроля НСД (слепков печатей), повреждение замков и т. п.);</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− визуальный осмотр носителя идентификационной информации посторонним лицом;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− перехват пароля при распределении идентификаторов;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− сознательная передача информации постороннему лицу.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">9.13. Действия при компрометации пароля:</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− скомпрометированный пароль сразу же выводится из действия, взамен его вводятся запасной или новый пароль;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">− о компрометации немедленно оповещаются все участники обмена информацией. Пароль вносится в специальные списки, содержащие скомпрометированные пароли и учетные записи.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">11. Конфиденциальность</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">11.1. Оператор и иные лица, получившие доступ к персональным данным, обязаны не раскрывать третьим лицам и не распространять персональные данные без соблюдения принципа, основанного на согласии субъекта персональных данных, за исключением случаев, предусмотренных действующим законодательством.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">12. Уничтожение (обезличивание) персональных данных</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">12.1. Уничтожение (обезличивание) персональных данных Субъекта производится в следующих случаях:</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">12.1.1. по достижении целей их обработки или в случае утраты необходимости в их достижении в срок, не превышающий тридцати дней с момента достижения цели обработки персональных данных, если иное не предусмотрено договором, стороной по которому является субъект персональных данных, иным соглашением между Оператором и субъектом персональных данных (его представителем, нанимателем);</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">12.1.2. в случае выявления неправомерной обработки персональных данных или правомерного отзыва персональных данных в срок, не превышающий десяти рабочих дней с момента выявления такого случая;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">12.1.3. в случае истечения срока хранения персональных данных, определяемого в соответствии с законодательством и организационно-распорядительными документами Оператора;</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">12.1.4. в случае предписания уполномоченного органа по защите прав субъектов персональных данных, органов прокуратуры или решения суда.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">13. Передача третьим лицам</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">13.1 Оператор может передавать персональные данные иным лицам, провайдерам хостинга, сервисам аналитики, другим лицам с целью исполнения договора, заключаемого с третьими лицами.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">13.2. Оператор гарантирует заключение адекватного поручения на обработку персональных данных в случае привлечения третьих лиц в соответствии с договорными полномочиями Оператора.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">13.3. Оператор вправе передавать персональные данные органам дознания и следствия, иным уполномоченным органам по основаниям и в случаях прямо предусмотренных действующим законодательством.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">14. Заключительные положения</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><br></span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">14.1. Срок обработки персональных данных, обрабатываемых Оператором, может определяться организационно-распорядительными документами Оператора.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">14.2. Настоящая Политика подлежит изменению, дополнению в случае появления новых законодательных актов и специальных нормативных актов по обработке и защите персональных данных, а также по решению Оператора.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">14.3. Контроль исполнения требований настоящей Политики осуществляется лицом, ответственным за организацию обработки персональных данных.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">14.4. Вопросы, не урегулированные настоящей Политикой, регламентируются действующим законодательством.</span></font></div><div style=\"\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">14.5. Оператор может издавать иные локальные акты, уточняющие отдельные принципы обработки персональных данных.</span></font></div><div style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal;\"><br></div></div>', NULL, 1660319308),
(3, 'О нас', 'about', '\n						\n							<h3 style=\"margin: 14pt 0px 4pt; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 13pt; line-height: normal; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" outline:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(84,=\"\" 84,=\"\" 84);=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><span style=\"font-size: 13pt; font-weight: normal;\">КОНТАКТЫ:</span></h3><p style=\"margin: 0px; padding: 0px 0px 20px; border: 0px; font-size: 13px; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" outline:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" color:=\"\" rgb(84,=\"\" 84,=\"\" 84);=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\">Приглашаем вас подписаться на наши страницы в соц. сетях — именно там мы активно рассказываем о работе нашего обменника, проводим розыгрыши и делимся интересными новостями:</p><ul style=\"margin: 0px 0px 20px 20px; padding: 0px; border: 0px; font-size: 13px; font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" outline:=\"\" 0px;=\"\" vertical-align:=\"\" baseline;=\"\" list-style:=\"\" initial;=\"\" text-indent:=\"\" 1em;=\"\" color:=\"\" rgb(84,=\"\" 84,=\"\" 84);=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\"><li style=\"margin: 0px; padding: 0px 0px 5px 12px; border: 0px; font-style: inherit; font-weight: inherit; outline: 0px; vertical-align: baseline; display: block; background: url(\" images=\"\" liarr.png?2\")=\"\" 0px=\"\" 3px=\"\" no-repeat;\"=\"\"><span style=\"border-style: initial; border-color: initial; border-image: initial; font-style: inherit; font-weight: inherit; outline-color: initial; outline-style: initial; color: rgb(84, 84, 84);\"><a href=\"https://t.me/apexchange24\">Telegram</a></span></li><li style=\"margin: 0px; padding: 0px 0px 5px 12px; border: 0px; font-style: inherit; font-weight: inherit; outline: 0px; vertical-align: baseline; display: block; background: url(\" images=\"\" liarr.png?2\")=\"\" 0px=\"\" 3px=\"\" no-repeat;\"=\"\"><br>скоро...</li><li style=\"margin: 0px; padding: 0px 0px 5px 12px; border: 0px; font-style: inherit; font-weight: inherit; outline: 0px; vertical-align: baseline; display: block; background: url(\" images=\"\" liarr.png?2\")=\"\" 0px=\"\" 3px=\"\" no-repeat;\"=\"\"><br></li><li style=\"margin: 0px; padding: 0px 0px 5px 12px; border: 0px; font-style: inherit; font-weight: inherit; outline: 0px; vertical-align: baseline; display: block; background: url(\" images=\"\" liarr.png?2\")=\"\" 0px=\"\" 3px=\"\" no-repeat;\"=\"\">Мы всегда рады Вам помочь со всеми возникшими вопросами. Для этого напишите в чат поддержки или в telegram:</li><li style=\"margin: 0px; padding: 0px 0px 5px 12px; border: 0px; font-style: inherit; font-weight: inherit; outline: 0px; vertical-align: baseline; display: block; background: url(\" images=\"\" liarr.png?2\")=\"\" 0px=\"\" 3px=\"\" no-repeat;\"=\"\">По вопросам сотрудничества Вы всегда можете написать нашему менеджеру по работе с партнерами в telegram:&nbsp;</li><li style=\"margin: 0px; padding: 0px 0px 5px 12px; border: 0px; font-style: inherit; font-weight: inherit; outline: 0px; vertical-align: baseline; display: block; background: url(\" images=\"\" liarr.png?2\")=\"\" 0px=\"\" 3px=\"\" no-repeat;\"=\"\"><br></li></ul>', NULL, 1660319439);

-- --------------------------------------------------------

--
-- Структура таблицы `bit_rates`
--

CREATE TABLE `bit_rates` (
  `id` int(11) NOT NULL,
  `gateway_from` int(11) DEFAULT NULL,
  `gateway_to` int(11) DEFAULT NULL,
  `rate_from` varchar(255) DEFAULT NULL,
  `rate_to` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bit_rates`
--

INSERT INTO `bit_rates` (`id`, `gateway_from`, `gateway_to`, `rate_from`, `rate_to`) VALUES
(1, 1, 2, '10', '9.5'),
(6, 4, 1, '24000', '1'),
(7, 1, 4, '1', '23500'),
(10, 9, 7, '65.12', '1'),
(11, 7, 9, '1', '66.12'),
(12, 1, 1, '1', '0.95'),
(13, 9, 9, '10', '9.5'),
(14, 17, 1, '1', '0.95'),
(15, 18, 1, '1', '0.95');

-- --------------------------------------------------------

--
-- Структура таблицы `bit_settings`
--

CREATE TABLE `bit_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `infoemail` varchar(255) DEFAULT NULL,
  `supportemail` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `referral_comission` varchar(255) DEFAULT NULL,
  `wallet_comission` varchar(255) DEFAULT NULL,
  `login_to_exchange` int(11) DEFAULT NULL,
  `document_verification` int(11) DEFAULT NULL,
  `email_verification` int(11) DEFAULT NULL,
  `phone_verification` int(11) DEFAULT NULL,
  `recaptcha_verification` int(11) DEFAULT NULL,
  `recaptcha_publickey` varchar(255) DEFAULT NULL,
  `recaptcha_privatekey` varchar(255) DEFAULT NULL,
  `nexmo_api_key` varchar(255) DEFAULT NULL,
  `nexmo_api_secret` varchar(255) DEFAULT NULL,
  `worktime_from` varchar(255) DEFAULT NULL,
  `worktime_to` varchar(255) DEFAULT NULL,
  `worktime_gmt` varchar(255) DEFAULT NULL,
  `default_language` varchar(255) DEFAULT NULL,
  `default_template` varchar(255) DEFAULT NULL,
  `operator_status` int(11) DEFAULT NULL,
  `footer_information` text DEFAULT NULL,
  `license_key` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bit_settings`
--

INSERT INTO `bit_settings` (`id`, `title`, `description`, `keywords`, `name`, `infoemail`, `supportemail`, `whatsapp`, `skype`, `url`, `referral_comission`, `wallet_comission`, `login_to_exchange`, `document_verification`, `email_verification`, `phone_verification`, `recaptcha_verification`, `recaptcha_publickey`, `recaptcha_privatekey`, `nexmo_api_key`, `nexmo_api_secret`, `worktime_from`, `worktime_to`, `worktime_gmt`, `default_language`, `default_template`, `operator_status`, `footer_information`, `license_key`) VALUES
(1, 'Apexchange.cc - Обменник электронных валют 24 часа', 'Обменник электронных валют 24 часа', 'обмен,чейндж,криптовалюта,доллар,рубли,usd,usdt,rub,euro,change,bestchange', 'Apexchange.cc', 'apexchange24@gmail.com', 'apexchange24@gmail.com', '12345678', '1234', 'http://capital.loc/', '0.1', '0', 0, 0, 0, 0, NULL, NULL, NULL, 'key', 'api', '10', '22', '+5', NULL, NULL, 1, 'Apexchange.cc - Обменник электронных валют 24 часа', '123456');

-- --------------------------------------------------------

--
-- Структура таблицы `bit_sms_codes`
--

CREATE TABLE `bit_sms_codes` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `sms_code` varchar(255) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bit_testimonials`
--

CREATE TABLE `bit_testimonials` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `exchange_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bit_testimonials`
--

INSERT INTO `bit_testimonials` (`id`, `uid`, `name`, `email`, `type`, `exchange_id`, `status`, `time`, `content`) VALUES
(15, NULL, '2324', '23423', NULL, NULL, 0, 1660631598, '23423432');

-- --------------------------------------------------------

--
-- Структура таблицы `bit_transactions`
--

CREATE TABLE `bit_transactions` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `transaction_id` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bit_users`
--

CREATE TABLE `bit_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_recovery` text DEFAULT NULL,
  `email_verified` int(11) DEFAULT NULL,
  `email_hash` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `signup_time` int(11) DEFAULT NULL,
  `document_verified` int(11) DEFAULT NULL,
  `document_1` text DEFAULT NULL,
  `document_2` text DEFAULT NULL,
  `mobile_verified` int(11) DEFAULT NULL,
  `mobile_number` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bit_users`
--

INSERT INTO `bit_users` (`id`, `username`, `password`, `password_recovery`, `email_verified`, `email_hash`, `email`, `status`, `ip`, `last_login`, `signup_time`, `document_verified`, `document_1`, `document_2`, `mobile_verified`, `mobile_number`) VALUES
(1, 'admin', 'fb8f1d8762b2027aaa3d8e88cdcbc762', NULL, 1, NULL, 'root', 666, NULL, NULL, NULL, 1, NULL, NULL, 1, ''),
(5, 'xevoqabege', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', NULL, 0, NULL, 'rohabif@mailinator.com', 1, '127.0.0.1', NULL, 1660172911, 0, NULL, NULL, 0, NULL),
(6, 'asdads', '25f9e794323b453885f5181f1b624d0b', NULL, 1, NULL, 'asdasd@mail.ru', 3, '46.71.198.161', NULL, 1660315820, 1, NULL, NULL, 1, ''),
(7, 'Anna', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 0, NULL, 'anna.avdalyan.2014@mail.ru', 3, '46.71.198.161', NULL, 1660330184, 0, NULL, NULL, 0, NULL),
(8, 'asdasdas', '25f9e794323b453885f5181f1b624d0b', NULL, 0, NULL, 'asdasd123132@mail.ru', 3, '46.71.198.161', NULL, 1660330329, 0, NULL, NULL, 0, NULL),
(9, 'Hauashah', '7fa8282ad93047a4d6fe6111c93b308a', NULL, 1, NULL, 'Vbagag@mail.ru', 3, '46.71.198.161', NULL, 1660332823, 1, NULL, NULL, 1, NULL),
(10, 'shohruh92', 'e10adc3949ba59abbe56e057f20f883e', NULL, 0, NULL, 'sh.abdullaev@inbox.ru', 3, '84.54.80.43', 1660451578, 1660369583, 0, NULL, NULL, 0, NULL),
(11, 'tirebusima', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', NULL, 0, NULL, 'gyviqoris@mailinator.com', 3, '46.71.198.161', NULL, 1660383924, 0, NULL, NULL, 0, NULL),
(12, 'shohruh9292', 'e10adc3949ba59abbe56e057f20f883e', NULL, 0, NULL, 'icic90@mail.ru', 3, '194.36.108.89', 1660716280, 1660399191, 0, NULL, NULL, 0, NULL),
(13, 'bumygafyxa', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', NULL, 0, NULL, 'licebyt@mailinator.com', 3, '46.71.198.161', NULL, 1660423258, 0, NULL, NULL, 0, NULL),
(14, 'Test', 'f0dacd85acd75bdaa309c723dc5eabf4', NULL, 0, NULL, 'anna.avdalyan.2000@mail.ru', 3, '46.71.198.161', NULL, 1660426169, 0, NULL, NULL, 0, NULL),
(15, 'Hahaha', 'fcea920f7412b5da7be0cf42b8c93759', NULL, 1, NULL, 'anna.avdalyan.111@mail.ru', 3, '46.71.198.161', NULL, 1660426412, 1, NULL, NULL, 1, NULL),
(16, 'Tes', '098f6bcd4621d373cade4e832627b4f6', NULL, 0, NULL, 'Test@mail.ru', 3, '46.71.198.161', NULL, 1660427084, 0, NULL, NULL, 0, NULL),
(17, 'Aaaa', '7fa8282ad93047a4d6fe6111c93b308a', NULL, 0, NULL, 'Hwwhsh@mail.ru', 3, '46.71.198.161', NULL, 1660428391, 0, NULL, NULL, 0, NULL),
(18, 'You', '639bae9ac6b3e1a84cebb7b403297b79', NULL, 0, NULL, 'Anna@mail.ru', 3, '46.71.198.161', NULL, 1660428459, 0, NULL, NULL, 0, NULL),
(19, 'Tttatagag', 'b0baee9d279d34fa1dfd71aadb908c3f', NULL, 0, NULL, 'anna.avdalyan.2014111@mail.ru', 3, '46.71.198.161', NULL, 1660475859, 0, NULL, NULL, 0, NULL),
(20, 'Aaaaaaaaa', '2bdbe39603b9ddac698808ef1d0b233a', NULL, 0, NULL, 'Vabaqhh@mail.ru', 3, '46.71.198.161', NULL, 1660475913, 0, NULL, NULL, 0, NULL),
(21, 'fizyhi', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', NULL, 1, NULL, 'kupit@mailinator.com', 3, '46.70.145.196', NULL, 1660988513, 1, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bit_users_deposits`
--

CREATE TABLE `bit_users_deposits` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `gateway_id` varchar(255) DEFAULT NULL,
  `payment_hash` varchar(255) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `reason` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bit_users_earnings`
--

CREATE TABLE `bit_users_earnings` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bit_users_transactions`
--

CREATE TABLE `bit_users_transactions` (
  `id` int(11) NOT NULL,
  `sender` int(11) DEFAULT NULL,
  `recipient` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bit_users_withdrawals`
--

CREATE TABLE `bit_users_withdrawals` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `eid` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `requested_on` int(11) DEFAULT NULL,
  `processed_on` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL,
  `u_field_6` varchar(255) DEFAULT NULL,
  `u_field_7` varchar(255) DEFAULT NULL,
  `u_field_8` varchar(255) DEFAULT NULL,
  `u_field_9` varchar(255) DEFAULT NULL,
  `u_field_10` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bit_currencies`
--
ALTER TABLE `bit_currencies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `bit_exchanges`
--
ALTER TABLE `bit_exchanges`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_faq`
--
ALTER TABLE `bit_faq`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_gateways`
--
ALTER TABLE `bit_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_gateways_fields`
--
ALTER TABLE `bit_gateways_fields`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_pages`
--
ALTER TABLE `bit_pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_rates`
--
ALTER TABLE `bit_rates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_settings`
--
ALTER TABLE `bit_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_sms_codes`
--
ALTER TABLE `bit_sms_codes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_testimonials`
--
ALTER TABLE `bit_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_transactions`
--
ALTER TABLE `bit_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_users`
--
ALTER TABLE `bit_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_users_deposits`
--
ALTER TABLE `bit_users_deposits`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_users_earnings`
--
ALTER TABLE `bit_users_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_users_transactions`
--
ALTER TABLE `bit_users_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bit_users_withdrawals`
--
ALTER TABLE `bit_users_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bit_currencies`
--
ALTER TABLE `bit_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1167;

--
-- AUTO_INCREMENT для таблицы `bit_exchanges`
--
ALTER TABLE `bit_exchanges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT для таблицы `bit_faq`
--
ALTER TABLE `bit_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `bit_gateways`
--
ALTER TABLE `bit_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `bit_gateways_fields`
--
ALTER TABLE `bit_gateways_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `bit_pages`
--
ALTER TABLE `bit_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `bit_rates`
--
ALTER TABLE `bit_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `bit_settings`
--
ALTER TABLE `bit_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `bit_sms_codes`
--
ALTER TABLE `bit_sms_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bit_testimonials`
--
ALTER TABLE `bit_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `bit_transactions`
--
ALTER TABLE `bit_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bit_users`
--
ALTER TABLE `bit_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `bit_users_deposits`
--
ALTER TABLE `bit_users_deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bit_users_earnings`
--
ALTER TABLE `bit_users_earnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bit_users_transactions`
--
ALTER TABLE `bit_users_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bit_users_withdrawals`
--
ALTER TABLE `bit_users_withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
