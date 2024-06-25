-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 25 2024 г., 18:20
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `white_rabbit`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `created_at`, `updated_at`, `user_id`, `text`) VALUES
(1, '2024-06-11 08:02:51', '2024-06-25 17:15:17', 9, 'Et et ratione rem commodi. Blanditiis molestias vel enim qui repudiandae sed voluptatem est.'),
(2, '2024-06-07 20:56:25', '2024-06-25 17:15:17', 21, 'Accusantium fugiat mollitia qui eveniet. Nihil omnis et sit ut accusamus corrupti.'),
(3, '2024-06-19 03:07:27', '2024-06-25 17:15:17', 18, 'Veritatis autem sint atque blanditiis eius. Facere numquam cumque qui rerum vel.'),
(4, '2024-06-10 06:41:16', '2024-06-25 17:15:17', 16, 'Ex autem est eos qui. Eveniet voluptatem quo incidunt.'),
(5, '2024-06-03 22:11:45', '2024-06-25 17:15:17', 18, 'Est aut nihil tenetur repudiandae. Eos aut perspiciatis rerum fugit ipsam qui.'),
(6, '2024-06-04 21:20:35', '2024-06-25 17:15:17', 29, 'Quas quasi voluptas minima. Omnis id nihil est vitae. Est rerum praesentium architecto.'),
(7, '2024-06-13 00:54:58', '2024-06-25 17:15:17', 5, 'Fuga esse natus error in. At sint consectetur id nam doloribus. Qui sunt ad et.'),
(8, '2024-06-01 04:09:10', '2024-06-25 17:15:17', 11, 'Et quam id sed dolore et est. Error et et est ipsa.'),
(9, '2024-06-19 16:53:55', '2024-06-25 17:15:17', 1, 'Ut earum dolorem dolor pariatur molestiae sint inventore. Architecto aut sequi aut sed dolorum.'),
(10, '2024-06-21 16:39:58', '2024-06-25 17:15:17', 6, 'Quisquam sapiente iure eos. Molestiae ut dolor modi deleniti. Iste in excepturi voluptatem odit.'),
(11, '2024-06-19 09:26:34', '2024-06-25 17:15:17', 10, 'Sint et et quo ex. Sequi adipisci ut quaerat. Debitis nobis fugiat esse voluptatem rem quasi.'),
(12, '2024-06-01 01:41:32', '2024-06-25 17:15:17', 16, 'Nihil soluta qui sint omnis. Magnam asperiores neque dolor incidunt quis quod.'),
(13, '2024-05-28 10:33:16', '2024-06-25 17:15:17', 16, 'Hic qui rem sed repellendus. Laudantium maxime accusamus ut consequuntur aut tenetur quam.'),
(14, '2024-06-16 17:35:48', '2024-06-25 17:15:17', 28, 'Voluptate neque ut non qui atque provident quia. Voluptas nisi aliquam ipsam natus assumenda.'),
(15, '2024-06-07 08:25:50', '2024-06-25 17:15:17', 19, 'Voluptates sint ut tempora. In et quisquam explicabo quia eum.'),
(16, '2024-06-15 10:25:17', '2024-06-25 17:15:17', 24, 'Explicabo sunt nemo consequatur veniam. Quas in et amet quas.'),
(17, '2024-06-24 20:34:47', '2024-06-25 17:15:17', 30, 'Voluptatum iste excepturi molestias est. Omnis vel rerum sint et omnis.'),
(18, '2024-06-18 06:31:48', '2024-06-25 17:15:17', 10, 'Nihil et velit rerum. Asperiores id adipisci voluptas corrupti fugit.'),
(19, '2024-06-25 16:51:30', '2024-06-25 17:15:17', 20, 'Aut dolores aut qui tempore excepturi. Sunt voluptatem minima ut ut. Velit ut dolorem dolorem aut.'),
(20, '2024-06-10 17:15:23', '2024-06-25 17:15:17', 4, 'Et ipsum distinctio numquam velit. Voluptas tempora hic ullam corporis voluptatibus fugit.'),
(21, '2024-06-10 14:34:54', '2024-06-25 17:15:17', 21, 'Ut tenetur illum doloribus. Sed a nisi dolore aut assumenda. Ut inventore sequi qui.'),
(22, '2024-06-10 18:17:54', '2024-06-25 17:15:17', 1, 'Veritatis et pariatur iusto blanditiis ea qui. Excepturi quia nemo velit facilis eos.'),
(23, '2024-06-12 03:31:19', '2024-06-25 17:15:17', 15, 'Atque est ipsa sed magnam. Aspernatur in alias minima praesentium illo ut.'),
(24, '2024-06-20 13:12:26', '2024-06-25 17:15:17', 1, 'Et omnis dolor debitis occaecati voluptas adipisci fugit. Voluptates nobis quaerat omnis ut.'),
(25, '2024-06-19 19:10:04', '2024-06-25 17:15:17', 11, 'Similique et consequuntur aperiam ut ab quaerat. Amet aut voluptatem sit qui.'),
(26, '2024-06-14 14:41:04', '2024-06-25 17:15:17', 13, 'Quaerat fugit repellat nisi. Quis odio nobis et et ad.'),
(27, '2024-05-26 01:09:03', '2024-06-25 17:15:17', 14, 'Laudantium perferendis qui soluta autem. Dolorem quo voluptas quia dolorum tempora sed.'),
(28, '2024-06-10 02:23:25', '2024-06-25 17:15:17', 29, 'Soluta qui voluptatibus dolorem cupiditate aut quis sed. Ad voluptatibus earum nobis debitis.'),
(29, '2024-06-22 12:50:24', '2024-06-25 17:15:17', 7, 'Necessitatibus deleniti earum laboriosam dolorum. Ut ipsa quam atque excepturi et alias.'),
(30, '2024-06-02 05:11:10', '2024-06-25 17:15:17', 1, 'Soluta itaque at dolor sed quo expedita. Eos totam veniam eos asperiores est facilis iure.'),
(31, '2024-06-07 05:21:25', '2024-06-25 17:15:17', 24, 'Dolorum velit dolorem ipsam voluptatum. Consequatur ut est mollitia fuga non nulla ab.'),
(32, '2024-06-19 21:37:20', '2024-06-25 17:15:17', 18, 'Harum aut totam qui. Non et assumenda similique ullam culpa. Et nulla aliquid voluptas qui et vel.'),
(33, '2024-06-01 17:10:35', '2024-06-25 17:15:17', 30, 'Quia et minus incidunt numquam qui impedit cupiditate totam. Fuga sed doloribus facilis laborum.'),
(34, '2024-06-11 03:27:51', '2024-06-25 17:15:17', 4, 'Atque praesentium voluptate qui sint. Aut sit est laborum aut harum rem id. In placeat ullam vitae.'),
(35, '2024-06-05 03:58:06', '2024-06-25 17:15:17', 13, 'Enim beatae beatae sint quis. Et corporis quo itaque vel soluta voluptatibus eaque.'),
(36, '2024-05-27 16:58:35', '2024-06-25 17:15:17', 26, 'Cum excepturi reiciendis voluptas quis ut in. Et non non omnis aut praesentium.'),
(37, '2024-06-10 18:17:39', '2024-06-25 17:15:17', 11, 'Cumque ullam qui in veniam tempora. Quo at voluptatem quo. Unde totam ex rem labore porro.'),
(38, '2024-06-21 21:58:43', '2024-06-25 17:15:17', 25, 'Aut iste totam voluptas nesciunt sit. Animi accusamus voluptatum inventore qui. Sed qui autem a ut.'),
(39, '2024-06-22 02:32:59', '2024-06-25 17:15:17', 12, 'Velit qui amet vel sunt ut. Ipsum ab ducimus ipsam et. Et dolorum ea explicabo ex.'),
(40, '2024-06-01 00:47:11', '2024-06-25 17:15:17', 3, 'Impedit corrupti aut rerum at. Ut eaque corrupti veniam magni aut.'),
(41, '2024-06-14 08:58:56', '2024-06-25 17:15:17', 21, 'Odit quo explicabo non dolores et laborum quos. Cupiditate accusantium unde dolorem.'),
(42, '2024-06-15 08:16:26', '2024-06-25 17:15:17', 28, 'Nam non sit natus quo et mollitia rerum et. Animi labore eum eos tempore ad.'),
(43, '2024-05-26 17:13:14', '2024-06-25 17:15:17', 7, 'Nostrum architecto aliquam sint saepe. Ipsa exercitationem ex consequatur maxime.'),
(44, '2024-06-11 14:17:04', '2024-06-25 17:15:17', 10, 'Error dicta cupiditate repellendus facilis necessitatibus. Qui sit iure dolores non.'),
(45, '2024-06-11 21:31:19', '2024-06-25 17:15:17', 16, 'Quia excepturi ullam non sed. Sed error iste consequuntur. Recusandae quasi laborum labore.'),
(46, '2024-06-03 00:27:26', '2024-06-25 17:15:17', 30, 'Tenetur nisi id sed enim. Ducimus atque adipisci unde repellat vitae est nisi.'),
(47, '2024-06-08 23:37:20', '2024-06-25 17:15:17', 2, 'Non sunt sit sed molestiae minus modi voluptatem. Fuga enim dolorem consequatur odit et.'),
(48, '2024-05-30 18:11:53', '2024-06-25 17:15:17', 29, 'At aut et dolorem et. Mollitia minima repudiandae aut. Quia sit aliquid ut molestiae ut non.'),
(49, '2024-06-17 11:34:08', '2024-06-25 17:15:17', 22, 'Consequatur unde veniam quia at qui. Illum enim molestiae aut eum necessitatibus voluptatem eum.'),
(50, '2024-06-06 10:45:21', '2024-06-25 17:15:17', 9, 'Non laboriosam et sint autem maxime repudiandae adipisci. Vero necessitatibus in adipisci.'),
(51, '2024-06-25 01:14:25', '2024-06-25 17:15:17', 2, 'Enim aliquid labore cum explicabo. Ipsam molestiae quidem beatae dolor voluptatibus id voluptas.'),
(52, '2024-06-22 10:25:50', '2024-06-25 17:15:17', 6, 'Excepturi dicta ipsa laboriosam et. Praesentium debitis qui qui.'),
(53, '2024-05-29 01:35:14', '2024-06-25 17:15:17', 5, 'Cumque et eos non neque. Eum saepe est et qui aut.'),
(54, '2024-06-12 07:38:49', '2024-06-25 17:15:17', 7, 'Temporibus qui minus vel animi dolore vel. Non beatae dolores dolore.'),
(55, '2024-06-06 23:19:44', '2024-06-25 17:15:17', 30, 'Nihil et ducimus saepe ea et voluptates. Ratione dolorem dolorem vel magnam quaerat praesentium.'),
(56, '2024-06-02 08:10:16', '2024-06-25 17:15:17', 7, 'Aut est nulla asperiores. Laborum sit et optio cum eum. Sit quidem laudantium rerum vel ut natus.'),
(57, '2024-05-27 23:07:08', '2024-06-25 17:15:17', 14, 'Eveniet quia in consequuntur deleniti. Et rerum cum ut quas et dolor.'),
(58, '2024-06-22 15:50:52', '2024-06-25 17:15:17', 14, 'Repellendus ipsa sequi aut dolor. Reprehenderit recusandae quia rerum fugiat blanditiis.'),
(59, '2024-06-05 06:18:02', '2024-06-25 17:15:17', 17, 'Ipsa iusto necessitatibus earum. Totam deserunt consectetur sint aspernatur harum sint.'),
(60, '2024-06-24 16:16:29', '2024-06-25 17:15:17', 7, 'Temporibus maiores sint eius ut error aut aut. Tenetur deserunt repudiandae aliquid alias.'),
(61, '2024-06-11 17:13:59', '2024-06-25 17:15:17', 19, 'Sed esse aut minus eum at omnis. Dolorem mollitia maiores et.'),
(62, '2024-06-22 09:03:17', '2024-06-25 17:15:17', 11, 'Qui nulla et labore. Eos vel voluptate omnis esse vel doloremque.'),
(63, '2024-06-14 05:04:02', '2024-06-25 17:15:17', 29, 'Quia sed reprehenderit facere ducimus. Sed aut inventore dicta aut dolorem temporibus rerum nihil.'),
(64, '2024-06-19 19:05:13', '2024-06-25 17:15:17', 9, 'Sit temporibus aut optio laborum. Et accusamus aut qui nobis explicabo.'),
(65, '2024-06-14 08:20:38', '2024-06-25 17:15:17', 9, 'Minima ut fuga quo doloribus. Error beatae architecto repellendus accusamus odio sint a rerum.'),
(66, '2024-06-17 15:47:06', '2024-06-25 17:15:17', 4, 'Illo non sed incidunt quo voluptates atque sit. Aspernatur error recusandae reiciendis quo.'),
(67, '2024-05-29 21:30:44', '2024-06-25 17:15:17', 17, 'Assumenda eum quia et sit. Veniam fugit est eum sed corrupti sunt.'),
(68, '2024-06-02 21:23:05', '2024-06-25 17:15:17', 6, 'Ut voluptatem dolorem rerum eos sed est. Autem cumque et laborum et architecto.'),
(69, '2024-05-27 13:53:39', '2024-06-25 17:15:17', 21, 'Alias molestiae sit consequatur deserunt enim impedit. Quia illum numquam molestiae.'),
(70, '2024-06-09 20:47:41', '2024-06-25 17:15:17', 4, 'Necessitatibus numquam sed aliquam laborum ut molestiae magni aut. Illum voluptas id omnis impedit.'),
(71, '2024-05-27 13:36:26', '2024-06-25 17:15:17', 15, 'Cum at provident aut enim. Voluptas cumque iste et consequatur excepturi iure.'),
(72, '2024-06-22 20:39:36', '2024-06-25 17:15:17', 27, 'Magnam velit est cumque. Repellendus dolores nam et sed. Hic ut nobis exercitationem sit.'),
(73, '2024-06-17 16:21:17', '2024-06-25 17:15:17', 23, 'Quis repellendus in ea eligendi eum aut. Quia aut ut impedit quia explicabo quia nihil.'),
(74, '2024-06-17 15:44:15', '2024-06-25 17:15:17', 9, 'Ut et deleniti minus possimus. Quia laboriosam et minus molestiae.'),
(75, '2024-06-06 09:37:19', '2024-06-25 17:15:17', 6, 'Alias ut quidem sunt voluptatibus sit. Deserunt omnis nihil officiis quia sit dolores.'),
(76, '2024-06-18 02:52:26', '2024-06-25 17:15:17', 6, 'Soluta eum commodi voluptatem sapiente. Aut laudantium sint voluptatem consectetur rerum.'),
(77, '2024-06-24 02:46:53', '2024-06-25 17:15:17', 19, 'Aut minus illum occaecati. Est molestiae provident sint distinctio nulla omnis iusto.'),
(78, '2024-05-28 03:11:33', '2024-06-25 17:15:17', 1, 'Earum saepe ut amet iste ut qui eaque. Non quia delectus rem ut.'),
(79, '2024-06-05 11:17:31', '2024-06-25 17:15:17', 25, 'Dolores et iusto at neque aut officia et. Blanditiis consequatur non dolorem voluptates.'),
(80, '2024-06-09 01:11:10', '2024-06-25 17:15:17', 1, 'Consequatur provident mollitia sed vel. Omnis est nostrum veritatis vitae.'),
(81, '2024-06-22 09:34:53', '2024-06-25 17:15:17', 7, 'Est unde modi consequatur distinctio nihil modi corrupti. Harum magni rem rerum non in enim ullam.'),
(82, '2024-06-17 19:56:16', '2024-06-25 17:15:17', 19, 'Tempore et amet ipsam ut. Inventore et vitae quae aperiam ex sed mollitia.'),
(83, '2024-06-20 21:46:46', '2024-06-25 17:15:17', 21, 'Magnam ex blanditiis corrupti quaerat. Quidem et quod minima. Dolor beatae doloribus ea et.'),
(84, '2024-06-04 17:48:17', '2024-06-25 17:15:17', 23, 'Aliquid autem qui ut laudantium illum. Molestiae dicta et est. Consequatur non velit et sed.'),
(85, '2024-06-20 02:17:13', '2024-06-25 17:15:17', 4, 'Modi fugiat autem quo. Molestiae id vero corporis hic.'),
(86, '2024-05-25 18:39:44', '2024-06-25 17:15:17', 15, 'Unde quibusdam dolores et id consequatur harum. Est voluptatem ullam unde hic dolores.'),
(87, '2024-06-07 23:43:19', '2024-06-25 17:15:17', 1, 'Explicabo et facere enim consequatur ut sequi. Laborum maiores ut consequatur ut voluptatem odit.'),
(88, '2024-06-06 02:34:11', '2024-06-25 17:15:17', 3, 'Molestiae ab aliquam nihil. Magnam maxime aliquid saepe modi ducimus velit sint.'),
(89, '2024-06-12 06:48:07', '2024-06-25 17:15:17', 13, 'Iure tenetur eveniet mollitia a. Aliquam et eligendi id sint. Unde asperiores eos et.'),
(90, '2024-06-21 04:19:09', '2024-06-25 17:15:17', 23, 'Architecto earum dolore sequi voluptatem. Laborum quis suscipit hic et.'),
(91, '2024-06-18 10:57:36', '2024-06-25 17:15:17', 23, 'In soluta maxime est ut. Voluptas aliquid qui distinctio atque.'),
(92, '2024-05-29 04:42:11', '2024-06-25 17:15:17', 30, 'Quidem voluptatum quia velit distinctio necessitatibus. Corrupti est modi explicabo omnis.'),
(93, '2024-06-23 14:32:47', '2024-06-25 17:15:17', 25, 'Magni maxime totam sit enim vel voluptatibus. Sit quod eligendi illum vel vero est aliquid.'),
(94, '2024-06-22 23:58:01', '2024-06-25 17:15:17', 3, 'Dolore fugit non qui voluptatem animi natus. Saepe non soluta aperiam eveniet.'),
(95, '2024-06-07 19:59:12', '2024-06-25 17:15:17', 25, 'Et mollitia voluptatem voluptatem qui maxime. Atque quam et hic voluptatum repellendus voluptatum.'),
(96, '2024-05-27 12:18:26', '2024-06-25 17:15:17', 12, 'Doloribus eligendi in est qui est. Omnis sunt quo maiores velit. Et libero nesciunt doloribus sit.'),
(97, '2024-06-15 01:46:36', '2024-06-25 17:15:17', 19, 'Ullam est ratione sed. Iste commodi nobis ipsum. Nostrum vel est non eos quia et molestias.'),
(98, '2024-06-05 10:32:07', '2024-06-25 17:15:17', 15, 'Similique quas rem enim deleniti. Numquam eos deserunt ut rerum.'),
(99, '2024-06-12 23:28:47', '2024-06-25 17:15:17', 18, 'Sed natus in quas eius nisi eligendi. Tempore et molestiae nobis. Voluptate qui aliquam odio.'),
(100, '2024-06-10 20:49:39', '2024-06-25 17:15:17', 5, 'Explicabo et corrupti illum ut et culpa itaque. Odio aut quo amet nam.');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(24, '2024_06_24_092931_create_users_table', 1),
(25, '2024_06_24_094318_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `username`, `password`, `email`, `ip_address`, `user_agent`) VALUES
(1, '2024-05-08 20:53:43', '2024-06-25 17:15:16', 'garnett.stehr', '$2y$10$moJIbNHBPXMjvvqt3oGV7.MERwIRmgkHI3knEBjYDWJjc6XwIcZmG', 'gerhold.sylvia@example.net', '168.1.126.25', 'Opera/9.87 (X11; Linux i686; nl-NL) Presto/2.10.349 Version/10.00'),
(2, '2024-05-22 11:45:46', '2024-06-25 17:15:16', 'iterry', '$2y$10$oXe..lGxkLr4UHXwu6MQROJl33/GmWZrH14VyxEdfCKrRn3YwXkAS', 'orlo28@example.org', '112.83.199.103', 'Opera/8.91 (X11; Linux i686; nl-NL) Presto/2.11.187 Version/10.00'),
(3, '2024-04-29 13:16:12', '2024-06-25 17:15:16', 'ishanahan', '$2y$10$xhD4NrUlxHID1v.TTMoAMeaseBpHyMXO2x2BnnuAuxEBcP4s1EZWm', 'jacobson.lempi@example.org', '228.215.95.235', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_6) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/80.0.4454.60 Safari/537.1 Edg/80.01102.55'),
(4, '2024-04-30 15:03:27', '2024-06-25 17:15:16', 'thiel.rosalyn', '$2y$10$b2uH.1qNu8qB4U4eTTRHnuJ8dMFcmzfACILBflMi.RSnjEgUtMugy', 'xvolkman@example.com', '103.245.134.136', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_2 like Mac OS X; sl-SI) AppleWebKit/531.25.6 (KHTML, like Gecko) Version/3.0.5 Mobile/8B114 Safari/6531.25.6'),
(5, '2024-05-02 09:51:39', '2024-06-25 17:15:16', 'madelynn81', '$2y$10$UNqtlP0kj4bt0gEVMGtlNu0RuWDoIy1fBuAUGx.zCv6Q0ZYddpP9y', 'hane.jaida@example.net', '123.176.112.195', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.0; Trident/5.0)'),
(6, '2024-05-02 09:04:22', '2024-06-25 17:15:16', 'arturo.stamm', '$2y$10$Q5eKXf3k1ygsDm1/d.2/FuJn6NoVApieT.FujBLvFtWrxpcFUQnWa', 'luciano54@example.com', '63.103.19.245', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_4) AppleWebKit/5340 (KHTML, like Gecko) Chrome/40.0.825.0 Mobile Safari/5340'),
(7, '2024-05-16 04:59:14', '2024-06-25 17:15:16', 'qframi', '$2y$10$dFZemgH6j1UBbXFTVbwNmuXFwMNoxe5j7MPhReqcUJMMjfY/Y0oEW', 'lee.dibbert@example.org', '134.122.201.50', 'Mozilla/5.0 (X11; Linux x86_64; rv:5.0) Gecko/20140927 Firefox/37.0'),
(8, '2024-04-27 18:37:53', '2024-06-25 17:15:16', 'kfunk', '$2y$10$19iH4AqrN9NfdJNwghib5.ynyi/PezNlnFipDwB/9gSJAtloefIKm', 'elliott23@example.org', '162.39.86.219', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_5 rv:4.0) Gecko/20150524 Firefox/37.0'),
(9, '2024-05-20 18:14:56', '2024-06-25 17:15:16', 'amie64', '$2y$10$7civE1fI6AY8FQSGXf4irO7PAeg3VGK6SVQaE3WmiO.DiPdymFvJO', 'raquel90@example.com', '223.193.12.134', 'Mozilla/5.0 (Windows 98) AppleWebKit/5321 (KHTML, like Gecko) Chrome/37.0.817.0 Mobile Safari/5321'),
(10, '2024-05-14 02:33:24', '2024-06-25 17:15:16', 'lmorissette', '$2y$10$3vGTnD/OGb7v7JdQ93BXheJUGS.pneKO12G6hxGbVkUrUTT50EmnO', 'barton.johann@example.com', '89.188.37.121', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_0) AppleWebKit/531.0 (KHTML, like Gecko) Chrome/93.0.4241.10 Safari/531.0 Edg/93.01013.91'),
(11, '2024-05-18 08:03:31', '2024-06-25 17:15:16', 'nitzsche.francesca', '$2y$10$S4.LkPd0Aj6LBg/elHtmn.G5ioHayd2K0b0yYF6YMqw/YUvykRJCi', 'amy03@example.com', '5.148.182.227', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_0) AppleWebKit/533.1 (KHTML, like Gecko) Chrome/89.0.4571.27 Safari/533.1 Edg/89.01143.28'),
(12, '2024-05-02 22:45:18', '2024-06-25 17:15:16', 'cbreitenberg', '$2y$10$GqoG.UnLA8qcV8Fxl6Go2Oj1UdnSc/m5ew.RvqttQjFcfvQ3kNdry', 'tanya50@example.com', '4.179.155.152', 'Opera/9.78 (Windows 98; nl-NL) Presto/2.11.326 Version/11.00'),
(13, '2024-04-29 09:24:49', '2024-06-25 17:15:16', 'kmayer', '$2y$10$hmOJdz6xhs8ZhYc6kFaihOGvDot1JWJDZFLdRsGFPQ6c0kYlyAkRe', 'huel.muriel@example.org', '99.107.186.76', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5312 (KHTML, like Gecko) Chrome/40.0.838.0 Mobile Safari/5312'),
(14, '2024-05-23 18:03:15', '2024-06-25 17:15:16', 'rspencer', '$2y$10$xP1ZOoeVfkr6hAWyo5ruqu4Wp07wnzkD8KfrsugOcuCA5uVGfk3UG', 'genevieve90@example.org', '27.148.39.146', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_5_2 rv:6.0; en-US) AppleWebKit/534.8.4 (KHTML, like Gecko) Version/5.1 Safari/534.8.4'),
(15, '2024-05-01 09:52:15', '2024-06-25 17:15:16', 'zakary.tremblay', '$2y$10$kEL/hD8bk6tY1O9h4xIe8.5PA5/FhkbZh711EmmTTbkVu6a2L1dCe', 'blynch@example.net', '92.150.7.197', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/5321 (KHTML, like Gecko) Chrome/36.0.845.0 Mobile Safari/5321'),
(16, '2024-05-23 17:37:47', '2024-06-25 17:15:16', 'udonnelly', '$2y$10$7Uw3LUqMt5cR.OCFpZyfdeqg59P3ChjtxDGAspx9L/o8xn43lYhD.', 'jast.willis@example.org', '183.165.83.120', 'Mozilla/5.0 (Windows 95) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/99.0.4685.20 Safari/537.1 Edg/99.01108.72'),
(17, '2024-05-13 18:37:49', '2024-06-25 17:15:16', 'dominique24', '$2y$10$Vi4qrOSTzeKqLZl.S4Njm.HG64wUyMjWU2qs3LdNdffo4SIaEMTPm', 'thickle@example.net', '187.182.235.132', 'Mozilla/5.0 (Macintosh; PPC Mac OS X 10_6_7) AppleWebKit/534.1 (KHTML, like Gecko) Chrome/91.0.4820.35 Safari/534.1 Edg/91.01065.75'),
(18, '2024-05-06 05:31:17', '2024-06-25 17:15:16', 'awolff', '$2y$10$U39VfADOuzL9eATmp6XrAO./ZnjUg0TfjMPgiE.U.XBo7ZfAOROI.', 'alyce.marks@example.net', '156.58.241.88', 'Mozilla/5.0 (Windows; U; Windows NT 5.0) AppleWebKit/534.45.2 (KHTML, like Gecko) Version/5.0.5 Safari/534.45.2'),
(19, '2024-05-05 16:09:08', '2024-06-25 17:15:16', 'mfarrell', '$2y$10$G5p98OjwRq85A1KgpOZwuekS.Uq8sjTbYc/8xaBCjbBX4280u4lSu', 'twila.mcglynn@example.net', '38.28.84.247', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/5341 (KHTML, like Gecko) Chrome/40.0.876.0 Mobile Safari/5341'),
(20, '2024-05-15 12:46:49', '2024-06-25 17:15:16', 'jeanne.jast', '$2y$10$Vc.s/DlqmcfjDVaCwur/9.rvkY.OutFqtGRxEn9BVjlioM5aoBvaq', 'brandi06@example.net', '108.115.17.138', 'Opera/8.70 (X11; Linux i686; nl-NL) Presto/2.9.319 Version/11.00'),
(21, '2024-05-25 15:00:53', '2024-06-25 17:15:16', 'erna26', '$2y$10$wuZDpWzeQX8OXB80FgvqwulnXB9xoK/bVSsAH/sej5F4xwwypJZSK', 'pankunding@example.net', '86.82.105.55', 'Mozilla/5.0 (Windows NT 5.1; nl-NL; rv:1.9.2.20) Gecko/20140306 Firefox/37.0'),
(22, '2024-04-29 17:57:54', '2024-06-25 17:15:16', 'junius.lynch', '$2y$10$MeyJOzitu2Dv78EEHu8oBunSD5elxvLQY04LwpJASbWUkwTjlURYS', 'hipolito.beier@example.org', '194.226.85.241', 'Mozilla/5.0 (Windows; U; Windows 98; Win 9x 4.90) AppleWebKit/534.40.6 (KHTML, like Gecko) Version/4.0 Safari/534.40.6'),
(23, '2024-04-30 16:26:45', '2024-06-25 17:15:16', 'wlegros', '$2y$10$aEc6SOoBl4uCE2mXeMjBP.Ur7lrm/6F5po4hGCB7OffAdG96rIYvy', 'kara75@example.org', '159.251.162.8', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_7_1) AppleWebKit/5362 (KHTML, like Gecko) Chrome/38.0.800.0 Mobile Safari/5362'),
(24, '2024-05-20 14:04:15', '2024-06-25 17:15:16', 'stiedemann.keely', '$2y$10$Otr8q6EU232KRsO7j08Z2.fIMfnBUveAjEPcSNRtgYzSD9aejmxLe', 'bhahn@example.org', '126.26.54.1', 'Mozilla/5.0 (Windows NT 5.0; en-US; rv:1.9.0.20) Gecko/20140212 Firefox/36.0'),
(25, '2024-05-05 22:10:31', '2024-06-25 17:15:16', 'vivian25', '$2y$10$Zm1qj9zGEG7gK4S9LhKczO.mGH4Mbq7.9aKOD6tl.UpQSbFLxkiza', 'madaline43@example.org', '97.107.187.77', 'Opera/8.82 (Windows 98; sl-SI) Presto/2.12.259 Version/11.00'),
(26, '2024-04-29 21:14:29', '2024-06-25 17:15:16', 'vandervort.cora', '$2y$10$AWGrOK0zRm6jHsEAh9sRQuCEHPa/L8gkWfcNhF0BrO89peQ8bXOPa', 'iledner@example.net', '80.210.39.162', 'Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.0; Trident/5.1)'),
(27, '2024-05-01 18:57:35', '2024-06-25 17:15:16', 'mschroeder', '$2y$10$UJ9Uu8Z6ERtVc5M8qgJJEuSi1YSqR1AxwbR7osk.s4.3nK3zVy7zC', 'vgreenholt@example.org', '138.253.23.240', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.2; Trident/4.0)'),
(28, '2024-05-13 23:13:54', '2024-06-25 17:15:16', 'marc.rowe', '$2y$10$7YhWFc/4hYjkDQRqVqQFy.DUKvo8BqON0VYUVWYgN60yXNET5yrBu', 'amos.spencer@example.com', '170.31.112.222', 'Mozilla/5.0 (compatible; MSIE 8.0; Windows 98; Trident/5.0)'),
(29, '2024-05-21 12:59:04', '2024-06-25 17:15:16', 'lfriesen', '$2y$10$ixzW5Hkynu7U8aaWRXTA0Op/Cezy2Ta0dyhff.mPXdPcO/P3CPdYK', 'beatty.isaac@example.net', '77.238.109.29', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_1 rv:4.0) Gecko/20140312 Firefox/37.0'),
(30, '2024-05-18 10:59:56', '2024-06-25 17:15:16', 'laurence43', '$2y$10$ETEdkAvexBnlN3CDfSYfauZ7nVAxNvniDZyNhUDuGhdv1kPxNRL8q', 'quinn.mcglynn@example.org', '239.7.249.118', 'Mozilla/5.0 (compatible; MSIE 5.0; Windows 98; Win 9x 4.90; Trident/3.0)');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
