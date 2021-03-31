-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Фев 21 2021 г., 19:36
-- Версия сервера: 5.7.33
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uattrata_tratamiento`
--

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GRAND THEFT AUTO', 'lorem-ipsum-is', '/storage/photos/1/Banner/banner-01.jpg', '<h2><span style=\"font-weight: bold; color: rgb(255, 255, 255); background-color: rgb(255, 156, 0);\">VER PRECIO AMAZON</span></h2>', 'active', '2020-08-14 01:47:38', '2021-01-17 00:32:41'),
(2, 'SPIDERMAN', 'lorem-ipsum', '/storage/photos/1/Banner/banner-07.jpg', '<h2><span style=\"color: rgb(255, 255, 255); background-color: rgb(255, 156, 0);\">VER PRECIO AMAZON</span></h2>', 'active', '2020-08-14 01:50:23', '2021-01-17 00:30:21'),
(4, 'CRASH BANDICOOT 4', 'banner', '/storage/photos/1/Banner/banner-06.jpg', '<h2><span style=\"font-size: 2rem; font-weight: bold; color: rgb(255, 255, 255); background-color: rgb(255, 156, 0);\">VER PRECIO AMAZON</span><br></h2><h2><span style=\"color: rgb(156, 0, 255);\"></span></h2>', 'active', '2020-08-17 20:46:59', '2021-01-17 00:40:43');

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Biolage', 'biolage', 'active', '2021-02-15 02:21:56', '2021-02-15 23:16:03'),
(10, 'AG Hair', 'hair-care', 'active', '2021-02-15 23:11:07', '2021-02-15 23:11:43'),
(11, 'Lessmon', 'lessmon', 'active', '2021-02-15 23:12:58', '2021-02-15 23:12:58'),
(12, 'American Crew', 'american-crew', 'active', '2021-02-15 23:13:28', '2021-02-15 23:13:28'),
(13, 'Arganicare', 'arganicare', 'active', '2021-02-15 23:14:22', '2021-02-15 23:14:22'),
(14, 'Aussie', 'aussie', 'active', '2021-02-15 23:14:44', '2021-02-15 23:14:44'),
(17, 'Avalon Organics', 'avalon-organics', 'active', '2021-02-15 23:17:55', '2021-02-15 23:17:55'),
(18, 'Aveeno', 'aveeno-baby', 'active', '2021-02-15 23:21:44', '2021-02-16 22:05:50'),
(19, 'BioSilk', 'biosilk', 'active', '2021-02-15 23:22:58', '2021-02-15 23:22:58'),
(20, 'Paisle', 'paisle', 'active', '2021-02-15 23:23:21', '2021-02-15 23:23:21'),
(21, 'Biotin', 'biotin', 'active', '2021-02-15 23:23:39', '2021-02-15 23:23:39'),
(22, 'Botanic Hearth', 'botanic-hearth', 'active', '2021-02-15 23:24:07', '2021-02-15 23:24:07'),
(23, 'Celestial Silk', 'celestial-silk', 'active', '2021-02-15 23:24:41', '2021-02-15 23:24:41'),
(24, 'Honeydew', 'honeydew', 'active', '2021-02-15 23:25:22', '2021-02-15 23:25:22'),
(25, 'Head & Shoulders', 'head-shoulders', 'active', '2021-02-15 23:25:58', '2021-02-15 23:25:58'),
(26, 'Bebeepoo', 'bebeepoo', 'active', '2021-02-15 23:26:25', '2021-02-15 23:26:25'),
(27, 'Color Edge Hair care', 'color-edge-hair-care', 'active', '2021-02-15 23:27:35', '2021-02-15 23:27:35'),
(28, 'ColorProof Evolved Color Care', 'colorproof-evolved-color-care', 'active', '2021-02-15 23:28:03', '2021-02-15 23:28:03'),
(29, 'Cutify', 'cutify', 'active', '2021-02-15 23:28:21', '2021-02-15 23:28:21'),
(30, 'Rogaine', 'rogaine', 'active', '2021-02-15 23:28:41', '2021-02-15 23:28:41'),
(31, 'Enjoy', 'enjoy', 'active', '2021-02-15 23:28:58', '2021-02-15 23:28:58'),
(32, 'Dove', 'dove', 'active', '2021-02-15 23:29:11', '2021-02-15 23:29:11'),
(33, 'Fanola', 'fanola', 'active', '2021-02-15 23:29:24', '2021-02-15 23:29:24'),
(34, 'Fiora Naturals', 'fiora-naturals', 'active', '2021-02-15 23:29:50', '2021-02-15 23:29:50'),
(35, 'FREATECH', 'freatech', 'active', '2021-02-15 23:30:28', '2021-02-15 23:30:28'),
(36, 'Freetress', 'freetress', 'active', '2021-02-15 23:30:56', '2021-02-15 23:30:56'),
(37, 'Garnier', 'garnier', 'active', '2021-02-15 23:31:16', '2021-02-15 23:31:16'),
(38, 'Tallsocne', 'tallsocne', 'active', '2021-02-15 23:31:58', '2021-02-15 23:31:58'),
(39, 'Savion', 'savion', 'active', '2021-02-15 23:32:36', '2021-02-15 23:32:36'),
(40, 'Zjchao', 'zjchao', 'active', '2021-02-15 23:33:00', '2021-02-15 23:33:00'),
(41, 'Herbal Essences', 'herbal-essences', 'active', '2021-02-15 23:33:29', '2021-02-15 23:33:29'),
(42, 'Jamaican Mango & Lime', 'jamaican-mango-lime', 'active', '2021-02-15 23:34:07', '2021-02-15 23:34:07'),
(43, 'John Frieda', 'john-frieda', 'active', '2021-02-15 23:34:58', '2021-02-15 23:34:58'),
(44, 'Just 1', 'just-1', 'active', '2021-02-15 23:35:20', '2021-02-15 23:35:20'),
(45, 'Just for Men', 'just-for-men', 'active', '2021-02-15 23:35:37', '2021-02-15 23:35:37'),
(46, 'Lariolla', 'lariolla', 'active', '2021-02-15 23:36:02', '2021-02-15 23:36:02'),
(47, 'L\'ANGE HAIR', 'lange-hair', 'active', '2021-02-15 23:36:18', '2021-02-15 23:36:18'),
(48, 'Lanvier', 'lanvier', 'active', '2021-02-15 23:36:59', '2021-02-15 23:36:59'),
(49, 'Loma Hair Care', 'loma-hair-care', 'active', '2021-02-15 23:37:22', '2021-02-15 23:37:22'),
(50, 'L\'Oréal Paris', 'loreal-paris', 'active', '2021-02-15 23:37:37', '2021-02-15 23:37:37'),
(51, 'Adore', 'adore', 'active', '2021-02-16 17:33:05', '2021-02-16 17:33:05'),
(52, 'Dazzfond', 'dazzfond', 'active', '2021-02-16 18:24:00', '2021-02-16 18:24:00'),
(53, 'Willbond', 'willbond', 'active', '2021-02-16 18:24:49', '2021-02-16 18:24:49'),
(54, 'Alazco', 'alazco', 'active', '2021-02-16 18:25:12', '2021-02-16 18:25:12'),
(55, 'Underwater Audio', 'underwater-audio', 'active', '2021-02-16 21:02:41', '2021-02-16 21:02:41'),
(56, 'Ethereal Nature', 'ethereal-nature', 'active', '2021-02-17 01:10:04', '2021-02-17 01:10:04'),
(57, 'Celestial Silk', 'celestial-silk-2102163755-656', 'active', '2021-02-17 01:37:55', '2021-02-17 01:37:55'),
(58, 'HONEYDEW', 'honeydew-2102165159-672', 'active', '2021-02-17 01:51:59', '2021-02-17 01:51:59');

-- --------------------------------------------------------

--
-- Структура таблицы `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `status` enum('new','progress','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `summary`, `photo`, `is_parent`, `parent_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(24, 'Cuidado del cabello', 'cuidado-del-cabello', NULL, '/storage/photos/31/categorias/categoria-cuidado-del-cabello.jpg', 1, NULL, NULL, 'active', '2021-02-15 02:19:15', '2021-02-16 00:06:24'),
(25, 'Accesorios', 'accesorios-para-el-cabello', NULL, '/storage/photos/31/categorias/sub-categoria-accesorios.jpg', 1, NULL, NULL, 'active', '2021-02-15 02:36:37', '2021-02-16 00:05:27'),
(26, 'Aparatos y Utensilios', 'aparatos-y-utensilios', NULL, '/storage/photos/31/categorias/sub-categoria-aparatos y utensilios.jpg', 0, 24, NULL, 'active', '2021-02-15 23:59:59', '2021-02-16 00:07:05'),
(27, 'Champú', 'champu', NULL, '/storage/photos/31/categorias/sub-categoria-champu.jpg', 0, 24, NULL, 'active', '2021-02-16 00:08:26', '2021-02-16 00:08:26'),
(28, 'Productos para peinar', 'productos-para-peinar', NULL, '/storage/photos/31/categorias/sub-categoria-pruducto para peinar.jpg', 0, 24, NULL, 'active', '2021-02-16 00:10:29', '2021-02-16 00:21:53'),
(29, 'Coloración', 'coloracion', NULL, '/storage/photos/31/categorias/sub-categoria-coloracion.png', 0, 24, NULL, 'active', '2021-02-16 00:13:17', '2021-02-16 00:22:08'),
(30, 'Mascarillas y Tratamientos', 'mascarillas-y-tratamientos', NULL, '/storage/photos/31/categorias/sub-categoria-mascarillas y tratamientos.jpg', 0, 24, NULL, 'active', '2021-02-16 00:15:16', '2021-02-16 00:22:19'),
(31, 'Aceites', 'aceites', NULL, '/storage/photos/31/categorias/sub-categoria-aceistes.jpg', 0, 24, NULL, 'active', '2021-02-16 00:18:08', '2021-02-16 00:21:39'),
(32, 'Acondicionadores', 'acondicionadores', NULL, '/storage/photos/31/color-vibrancy/Color-Vibrancy-3.jpg', 0, 24, NULL, 'active', '2021-02-16 00:26:10', '2021-02-16 00:26:10'),
(33, 'Champú & acondicionador', 'champu-acondicionador', NULL, '/storage/photos/31/productos 1/total-miracle-1.jpg', 0, 24, NULL, 'active', '2021-02-16 21:41:32', '2021-02-16 21:41:32');

-- --------------------------------------------------------

--
-- Структура таблицы `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `value` decimal(20,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'abc123', 'fixed', 300.00, 'active', NULL, NULL),
(2, '111111', 'percent', 10.00, 'active', NULL, NULL),
(5, 'abcd', 'fixed', 250.00, 'active', '2020-08-17 20:54:58', '2020-08-17 20:54:58');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name`, `subject`, `email`, `photo`, `phone`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 'Prajwal Rai', 'About price', 'prajwal.iar@gmail.com', NULL, '9807009999', 'Hello sir i am from kathmandu nepal.', '2020-08-14 08:25:46', '2020-08-14 08:00:01', '2020-08-14 08:25:46'),
(2, 'Prajwal Rai', 'About Price', 'prajwal.iar@gmail.com', NULL, '9800099000', 'Hello i am Prajwal Rai', '2020-08-18 03:04:15', '2020-08-15 07:52:39', '2020-08-18 03:04:16'),
(3, 'Prajwal Rai', 'lorem ipsum', 'prajwal.iar@gmail.com', NULL, '1200990009', 'hello sir sdfdfd dfdjf ;dfjd fd ldkfd', NULL, '2020-08-17 21:15:12', '2020-08-17 21:15:12'),
(4, 'Henrytairl', 'Making money in the net is easier now. Link - http://365sekretov.ru/redirect.php?action=url&goto=profit-strategy.life%2F%3Fu%3Dbdlkd0x%26o%3Dx7t8nng', 'johan@pure-communication.be', NULL, '89036821585', 'The best online investment tool is found. Learn more! \r\nLink - http://365sekretov.ru/redirect.php?action=url&goto=profit-strategy.life%2F%3Fu%3Dbdlkd0x%26o%3Dx7t8nng', NULL, '2020-12-18 22:30:23', '2020-12-18 22:30:23');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_10_021010_create_brands_table', 1),
(5, '2020_07_10_025334_create_banners_table', 1),
(6, '2020_07_10_112147_create_categories_table', 1),
(7, '2020_07_11_063857_create_products_table', 1),
(8, '2020_07_12_073132_create_post_categories_table', 1),
(9, '2020_07_12_073701_create_post_tags_table', 1),
(10, '2020_07_12_083638_create_posts_table', 1),
(11, '2020_07_13_151329_create_messages_table', 1),
(12, '2020_07_14_023748_create_shippings_table', 1),
(13, '2020_07_15_054356_create_orders_table', 1),
(14, '2020_07_15_102626_create_carts_table', 1),
(15, '2020_07_16_041623_create_notifications_table', 1),
(16, '2020_07_16_053240_create_coupons_table', 1),
(17, '2020_07_23_143757_create_wishlists_table', 1),
(18, '2020_07_24_074930_create_product_reviews_table', 1),
(19, '2020_07_24_131727_create_post_comments_table', 1),
(20, '2020_08_01_143408_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1007401d-040e-407f-807b-0316c1788ebf', 'App\\Notifications\\StatusNotification', 'App\\User', 36, '{\"title\":\"New Product Rating!\",\"actionURL\":\"https:\\/\\/videojuegostotal.com\\/productos\\/no-straight-roads\",\"fas\":\"fa-star\"}', NULL, '2021-02-03 07:25:18', '2021-02-03 07:25:18'),
('2145a8e3-687d-444a-8873-b3b2fb77a342', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:31:21', '2020-08-15 07:31:21'),
('329a4014-473b-454a-acfb-e072382ed3e5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/xbox-360-slim\",\"fas\":\"fa-star\"}', NULL, '2020-09-17 09:54:50', '2020-09-17 09:54:50'),
('3af39f84-cab4-4152-9202-d448435c67de', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/4\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 07:54:52', '2020-08-15 07:54:52'),
('498e5cf9-009e-4b8c-a5a6-a66c0cf8b116', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/blog-detail\\/david-post\",\"fas\":\"fas fa-comment\"}', NULL, '2020-09-17 09:24:26', '2020-09-17 09:24:26'),
('4a0afdb0-71ad-4ce6-bc70-c92ef491a525', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:51', '2020-08-17 21:13:51'),
('4c93a5c5-952d-4b64-bd34-24ef84e0249a', 'App\\Notifications\\StatusNotification', 'App\\User', 36, '{\"title\":\"New Product Rating!\",\"actionURL\":\"https:\\/\\/videojuegostotal.com\\/productos\\/titanfall-2\",\"fas\":\"fa-star\"}', NULL, '2021-02-03 07:15:41', '2021-02-03 07:15:41'),
('540ca3e9-0ff9-4e2e-9db3-6b5abc823422', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', '2020-08-15 07:30:44', '2020-08-14 07:12:28', '2020-08-15 07:30:44'),
('5da09dd1-3ffc-43b0-aba2-a4260ba4cc76', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-15 07:51:02', '2020-08-15 07:51:02'),
('5e91e603-024e-45c5-b22f-36931fef0d90', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/white-sports-casual-t\",\"fas\":\"fa-star\"}', NULL, '2020-08-15 07:44:07', '2020-08-15 07:44:07'),
('73a3b51a-416a-4e7d-8ca2-53b216d9ad8e', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
('8605db5d-1462-496e-8b5f-8b923d88912c', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/1\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-14 07:20:44', '2020-08-14 07:20:44'),
('92eb6d0e-5a27-4e4f-9525-c10c0af00385', 'App\\Notifications\\StatusNotification', 'App\\User', 36, '{\"title\":\"New Product Rating!\",\"actionURL\":\"https:\\/\\/videojuegostotal.com\\/productos\\/no-straight-roads\",\"fas\":\"fa-star\"}', NULL, '2021-02-03 07:25:08', '2021-02-03 07:25:08'),
('9dc64c84-d784-47f8-abe3-5c964c0157e1', 'App\\Notifications\\StatusNotification', 'App\\User', 36, '{\"title\":\"New Product Rating!\",\"actionURL\":\"https:\\/\\/videojuegostotal.com\\/productos\\/the-seven-deadly-sins-knights-of-britannia\",\"fas\":\"fa-star\"}', NULL, '2021-02-03 07:46:42', '2021-02-03 07:46:42'),
('a6ec5643-748c-4128-92e2-9a9f293f53b5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/admin\\/order\\/5\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-17 21:17:03', '2020-08-17 21:17:03'),
('b186a883-42f2-4a05-8fc5-f0d3e10309ff', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/2\",\"fas\":\"fa-file-alt\"}', '2020-08-15 04:17:24', '2020-08-14 22:14:55', '2020-08-15 04:17:24'),
('b599f987-1284-42f8-a28d-ee70531a1143', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage\",\"fas\":\"fas fa-comment\"}', NULL, '2020-09-17 09:28:06', '2020-09-17 09:28:06'),
('bf531b6b-b5ac-4292-81a0-f9f9733a48ea', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/ps3-slim\",\"fas\":\"fa-star\"}', NULL, '2020-09-17 10:09:50', '2020-09-17 10:09:50'),
('cb7c002a-6bec-4a51-8c9e-f6733f94bb03', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/xbox-360-slim\",\"fas\":\"fa-star\"}', NULL, '2020-09-17 09:54:00', '2020-09-17 09:54:00'),
('d17874de-3839-404f-b23b-f97ce9b0f383', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/127.0.0.1:8000\\/product-detail\\/melange-casual-black\",\"fas\":\"fa-star\"}', NULL, '2020-09-17 07:34:59', '2020-09-17 07:34:59'),
('d2fd7c33-b0fe-47d6-8bc6-f377d404080d', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/blog-detail\\/where-can-i-get-some\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-14 07:08:50', '2020-08-14 07:08:50'),
('dff78b90-85c8-42ee-a5b1-de8ad0b21be4', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New order created\",\"actionURL\":\"http:\\/\\/e-shop.loc\\/admin\\/order\\/3\",\"fas\":\"fa-file-alt\"}', NULL, '2020-08-15 06:40:54', '2020-08-15 06:40:54'),
('e28b0a73-4819-4016-b915-0e525d4148f5', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Product Rating!\",\"actionURL\":\"http:\\/\\/localhost:8000\\/product-detail\\/lorem-ipsum-is-simply\",\"fas\":\"fa-star\"}', NULL, '2020-08-17 21:08:16', '2020-08-17 21:08:16'),
('effa7079-2cd9-484f-8355-f1d9ef181261', 'App\\Notifications\\StatusNotification', 'App\\User', 36, '{\"title\":\"New Product Rating!\",\"actionURL\":\"https:\\/\\/videojuegostotal.com\\/productos\\/hunting-simulator\",\"fas\":\"fa-star\"}', NULL, '2021-02-03 07:49:05', '2021-02-03 07:49:05'),
('ffffa177-c54e-4dfe-ba43-27c466ff1f4b', 'App\\Notifications\\StatusNotification', 'App\\User', 1, '{\"title\":\"New Comment created\",\"actionURL\":\"http:\\/\\/localhost:8000\\/blog-detail\\/the-standard-lorem-ipsum-passage-used-since-the-1500s\",\"fas\":\"fas fa-comment\"}', NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `shipping_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon` double(8,2) DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment_method` enum('cod','paypal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `status` enum('new','process','delivered','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `sub_total`, `shipping_id`, `coupon`, `total_amount`, `quantity`, `payment_method`, `payment_status`, `status`, `first_name`, `last_name`, `email`, `phone`, `country`, `post_code`, `address1`, `address2`, `created_at`, `updated_at`) VALUES
(1, 'ORD-PMIQF5MYPK', NULL, 14399.00, 1, 573.90, 13925.10, 6, 'cod', 'unpaid', 'delivered', 'Prajwal', 'Rai', 'prajwal.iar@gmail.com', '9800887778', 'NP', '44600', 'Koteshwor', 'Kathmandu', '2020-08-14 07:20:44', '2020-08-14 09:37:37'),
(2, 'ORD-YFF8BF0YBK', NULL, 1939.03, 1, NULL, 2039.03, 1, 'cod', 'unpaid', 'delivered', 'Sandhya', 'Rai', 'user@gmail.com', '90000000990', 'NP', NULL, 'Lalitpur', NULL, '2020-08-14 22:14:49', '2020-08-14 22:15:19'),
(3, 'ORD-1CKWRWTTIK', NULL, 200.00, 1, NULL, 300.00, 1, 'paypal', 'paid', 'process', 'Prajwal', 'Rai', 'prajwal.iar@gmail.com', '9807009999', 'NP', '44600', 'Kathmandu', 'Kadaghari', '2020-08-15 06:40:49', '2020-08-17 20:52:40'),
(4, 'ORD-HVO0KX0YHW', NULL, 23660.00, 3, 150.00, 23910.00, 6, 'paypal', 'paid', 'new', 'Prajwal', 'Rai', 'prajwal.iar@gmail.com', '9800098878', 'NP', '44600', 'Pokhara', NULL, '2020-08-15 07:54:52', '2020-08-15 07:54:52');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tamalestolimensesdeliciosos@gmail.com', '$2y$10$NxehgggNHbHVNfUsWOyuA.OgR1KrMOttfE/4ch61AMetWIIxxFH6S', '2021-01-22 23:08:57');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `quote` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `summary`, `description`, `quote`, `photo`, `tags`, `post_cat_id`, `post_tag_id`, `added_by`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Post Videojuegos 1', 'post-videojuegos-1', '<p>Post Videojuegos 1<br></p>', '<p>Post Videojuegos 1<br></p>', '<p>Post Videojuegos 1<br></p>', '/storage/photos/1/Blog/blog1.jpg', '', 5, NULL, NULL, 'active', '2021-01-26 10:27:10', '2021-01-26 10:27:10'),
(11, 'Post Videojuegos 2', 'post-videojuegos-2', '<p>Post Videojuegos 2<br></p>', '<p>Post Videojuegos 2<br></p>', '<p>Post Videojuegos 2<br></p>', '/storage/photos/1/Blog/blog2.jpg', '', 5, NULL, NULL, 'active', '2021-01-26 10:28:08', '2021-01-26 10:28:08'),
(12, 'Post Videojuegos 3', 'post-videojuegos-3', '<p>Post Videojuegos 3<br></p>', '<p>Post Videojuegos 3<br></p>', '<p>Post Videojuegos 3<br></p>', '/storage/photos/1/Blog/blog3.jpg', '', 5, NULL, NULL, 'active', '2021-01-26 10:28:50', '2021-01-26 10:28:50');

-- --------------------------------------------------------

--
-- Структура таблицы `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_categories`
--

INSERT INTO `post_categories` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Champú', 'post-category', 'active', '2020-08-15 06:59:04', '2021-02-15 02:13:01'),
(6, 'Cuidado del cabello', 'cuidado-del-cabello', 'active', '2021-02-15 02:12:34', '2021-02-15 02:12:34');

-- --------------------------------------------------------

--
-- Структура таблицы `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `replied_comment` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_comments`
--

INSERT INTO `post_comments` (`id`, `user_id`, `post_id`, `comment`, `status`, `replied_comment`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Testing comment edited', 'active', NULL, NULL, '2020-08-14 07:08:42', '2020-08-15 06:59:58'),
(2, NULL, NULL, 'testing 2', 'active', NULL, 1, '2020-08-14 07:11:03', '2020-08-14 07:11:03'),
(3, NULL, NULL, 'That\'s cool', 'active', NULL, 2, '2020-08-14 07:12:27', '2020-08-14 07:12:27'),
(4, NULL, NULL, 'nice', 'active', NULL, NULL, '2020-08-15 07:31:19', '2020-08-15 07:31:19'),
(5, NULL, NULL, 'nice blog', 'active', NULL, NULL, '2020-08-15 07:51:01', '2020-08-15 07:51:01'),
(6, NULL, NULL, 'nice', 'active', NULL, NULL, '2020-08-17 21:13:29', '2020-08-17 21:13:29'),
(7, NULL, NULL, 'really', 'active', NULL, 6, '2020-08-17 21:13:51', '2020-08-17 21:13:51'),
(8, NULL, NULL, 'me encanta este producto deivid', 'active', NULL, NULL, '2020-09-17 09:24:26', '2020-09-17 09:50:39'),
(9, NULL, NULL, 'ok', 'active', NULL, NULL, '2020-09-17 09:28:06', '2020-09-17 09:28:06');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tags`
--

INSERT INTO `post_tags` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Enjoy', 'enjoy', 'active', '2020-08-14 01:53:52', '2020-08-14 01:53:52'),
(2, '2020', '2020', 'active', '2020-08-14 01:54:09', '2020-08-14 01:54:09'),
(3, 'Visit nepal 2020', 'visit-nepal-2020', 'active', '2020-08-14 01:54:33', '2020-08-14 01:54:33'),
(4, 'Tag', 'tag', 'active', '2020-08-15 06:59:31', '2020-08-15 06:59:31');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '1',
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'M',
  `condition` enum('default','new','hot') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `child_cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `summary`, `description`, `photo`, `stock`, `size`, `condition`, `status`, `price`, `discount`, `is_featured`, `cat_id`, `child_cat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(566, 'Ultra Hydrasource champú', 'ultra-hydrasource-champu', '<p>Con silicona y parabenos, que&nbsp; hidratan profundamente el cabello evitando roturas, para cabello muy seco<br></p>', '<ul><li><li>Marca: BIOLAGE</li><li>Forma del artículo: Líquido</li><li>Género objetivo: Femenino</li><li>Rango de edad: Adulto</li><li>Tipo de cabello: Seco</li><li>El champú BIOLAGE Ultra Hydrasource ayuda a optimizar el equilibrio de humedad para un cabello de aspecto saludable. </li><li>Este champú limpia el cabello dejándolo extremadamente hidratado, suave y brillante.<br></li></li></ul>', '/storage/photos/31/productos 5/hydrasource_01.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 27, 9, '2021-02-16 18:43:21', '2021-02-16 18:55:16'),
(567, 'Corbatas de silicona para el cabello', 'corbatas-de-silicona-para-el-cabello', '<p class=\"MsoNormal\"><span lang=\"ES-MX\">horquilla\r\nde donut, banda de goma elástica multifunción para mujeres y niñas (negro,\r\nmarrón)<o:p></o:p></span></p>', '<ul><li>Color<span style=\"white-space:pre\">	</span>Negro, marrón</li><li>Marca<span style=\"white-space:pre\">	</span>Dazzfond</li><li>Material<span style=\"white-space:pre\">	</span>Silicona</li><li>Número de piezas<span style=\"white-space:pre\">	</span>2</li><li><li>Tamaño: diámetro: 2.6 in, altura: 0.8 in. liso, se siente ligero y seguro sin tirones en el cabello. No daña el cabello.</li><li>Anillo de pelo para mujer: fácil y cómodo de poner y quitar, simplemente gira, también un gran regalo.</li><li>Material suave: hecho de material de silicona de alta calidad, resistente al desgaste y duradero, tiene una larga vida útil.</li><li>Amplia aplicación: estos anillos de silicona para el pelo son adecuados para muchas ocasiones, fiestas informales, viajes en la oficina, etc, en cualquier lugar que desees.</li></li></ul>', '/storage/photos/31/productos 5/2 paquetes de corbata silicona de cabello-1.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 25, NULL, NULL, '2021-02-16 18:50:20', '2021-02-16 18:50:20'),
(568, 'Diademas de diamantes', 'diademas-de-diamantes', '<p class=\"MsoNormal\"><span lang=\"ES-MX\">diademas adornadas\r\ncon diamantes de cristal para el pelo. (lindos colores)<o:p></o:p></span></p>', '<ul><li><li>Cantidad: 2 unidades</li><li>Brillantes diamantes de imitación: usa nuestras diademas acolchadas de terciopelo, el diamante refracta diferentes colores.&nbsp;</li><li>Diadema de terciopelo: hermosa diadema clásica de terciopelo que mide aproximadamente 5.8 x 5.6 (largo x ancho), y aprox. 1.5 de grosor, la diadema es retráctil, adecuada para la mayoría de las mujeres y niñas; envuelta en anillos elásticos, terciopelo suave, cómoda de llevar, no daña el cabello y no se desliza fácilmente.</li><li>Exquisita banda para el pelo: se puede llevar directamente en tu cabello recién alisado, te hace lucir simple pero elegante.</li><li>Uso en una variedad de ocasiones: nuestras diademas multicolor para mujer se aplican ampliamente en diferentes ocasiones, como fiestas, ceremonias, cumpleaños, banquetes y festivales, te mantienen hermosa, también es agradable para el uso diario para el trabajo, la escuela, vacaciones, compras, deportes, etc.</li></li></ul>', '/storage/photos/31/productos 5/2 piezas de diadema de diamantes de imitacion-1.jpg,/storage/photos/31/productos 5/2 piezas de diadema de diamantes de imitacion-2.jpg,/storage/photos/31/productos 5/2 piezas de diadema de diamantes de imitacion-3.jpg,/storage/photos/31/productos 5/2 piezas de diadema de diamantes de imitacion-4.jpg,/storage/photos/31/productos 5/2 piezas de diadema de diamantes de imitacion-5.jpg,/storage/photos/31/productos 5/2 piezas de diadema de diamantes de imitacion-6.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 25, NULL, 53, '2021-02-16 19:22:43', '2021-02-16 19:31:50'),
(569, 'Tinte semipermanente para cabello', 'tinte-semipermanente-para-cabello', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">Adore - Tinte semipermanente para\r\ncabello, 4 onzas líquidas (118 ml)<o:p></o:p></span></p>', '<ul><li><li>Color: Variedad</li><li>Marca: Adore</li><li>Especiales: Natural</li><li><li>1 pieza: 4 onzas (118 ml).</li><li>Da al cabello una sensación hermosa y sensual.</li><li>No contiene alcohol, peróxido ni amoniaco.</li><li>Color de cabello semipermanente.</li></li></li></ul>', '/storage/photos/31/productos 4/semi-permanente_3.jpg,/storage/photos/31/productos 4/semi-permanente_11.jpg,/storage/photos/31/productos 4/semi-permanente_10.jpg,/storage/photos/31/productos 4/semi-permanente_12.jpg,/storage/photos/31/productos 4/semi-permanente_5.jpg,/storage/photos/31/productos 4/semi-permanente_6.jpg,/storage/photos/31/productos 4/semi-permanente_7.jpg,/storage/photos/31/productos 4/semi-permanente_9.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 29, 51, '2021-02-16 19:39:02', '2021-02-16 19:51:02'),
(570, 'Natural Balance Champú', 'natural-balance-champu', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">AG Hair Natural Balance Champú con Vinagre\r\nde sidra de manzana.<o:p></o:p></span></p>', '<div><br></div><ul><li>Marca: AG Hair</li><li>Forma del artículo: Liquido</li><li>Género objetivo<span style=\"white-space:pre\">	</span>Unisex</li><li>Rango de edad: Adultos</li><li>Tipo de cabello: Normal</li><li>Fragancias naturales y aromaterapia.</li><li>sin sulfatos, Natural Balance de AG limpia suavemente el cabello y el cuero cabelludo.<br></li></ul>', '/storage/photos/31/productos 3/champu-vinagre-de-sidra_1.jpg,/storage/photos/31/productos 3/champu-vinagre-de-sidra-2.jpg,/storage/photos/31/productos 3/champu-vinagre-de-sidra-3.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 27, 10, '2021-02-16 20:00:20', '2021-02-16 20:06:11'),
(571, 'Acondicionador de argán y coco', 'acondicionador-de-argan-y-coco', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">Acondicionador de argán y coco AG\r\nHair&nbsp;<o:p></o:p></span><span style=\"font-size: 1rem;\">33.8 Onzas de líquido</span></p>', '<div><br></div><ul><li>Marca: Cabello AG</li><li>Fragancia: Coco</li><li>Tipo de cabello: Cabello Rizado</li><li>Volumen líquido: 33.8 Onzas de líquido</li><li>transforma el cabello áspero en suave.</li><li>Hidrata cada mechón, cubriendo el cabello y dejándolo brillante y agradable al tacto.<br></li></ul>', '/storage/photos/31/productos 4/argan-coconut_1.jpg,/storage/photos/31/productos 4/argan-coconut-2.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 32, 10, '2021-02-16 20:14:48', '2021-02-16 20:20:13'),
(572, 'Cepillo plegable con espejo', 'cepillo-plegable-con-espejo', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">Cepillo plegable con\r\nespejo, tamaño compacto de bolsillo, para viaje, bolsa de gimnasio, etc.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">&nbsp;</span></p>', '<ul><li><li>Cepillo plegable con espejo, tamaño compacto de bolsillo 8.0&nbsp; cuando está abierto, 4.0&nbsp; cuando está plegado, 2.5 in espejo dentro del mango.</li><li>El cepillo de pelo de tamaño completo ahorra espacio se pliega hasta tamaño mini, ideal para bolso, maletín o bolsillo.</li><li>Ideal para viajes, escuela, piscina, cajón de escritorio, guantera de coche o bolso.</li><li>7 filas de cerdas de nailon flexible con puntas de bola de masaje para control de peinado.</li><li>Viene en 4 colores metálicos de azul, rosa, verde y dorado.</li></li></ul>', '/storage/photos/31/productos 3/cepillo-plegable_1.jpg,/storage/photos/31/productos 3/cepillo-plegable-2.jpg,/storage/photos/31/productos 3/cepillo-plegable-3.jpg,/storage/photos/31/productos 3/cepillo-plegable-5.jpg,/storage/photos/31/productos 3/cepillo-plegable-6.jpg,/storage/photos/31/productos 3/cepillo-plegable-7.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 25, NULL, 54, '2021-02-16 20:27:43', '2021-02-16 20:59:22'),
(573, 'Alfombrilla resistente al calor de silicona', 'alfombrilla-resistente-al-calor-de-silicona', '<p>Alfombrilla resistente al calor ideal para rizadores, alisadores de pelo, planchas planas, de 9 x 6.5 pulgadas en silicona gris.<br></p>', '<ul><li><li>Color<span style=\"white-space:pre\">	</span>Alfombra gris.</li><li>Marca<span style=\"white-space:pre\">	</span>Lessmon</li><li>Material<span style=\"white-space:pre\">	</span>Silicona</li><li><li>Envoltura y soporte: la alfombrilla de silicona Lessmon puede envolver la parte caliente de la plancha rizadora o simplemente poner las herramientas calentadas en la alfombrilla para evitar accidentes.</li><li>Respetuoso con el medio ambiente – Material de silicona seguro que hace que sea más duradero.</li><li>Resistente al calor: hasta 450 F, lo que significa que la alfombrilla estará bien cuando tus planchas estén trabajando desde tu cabello.</li><li>Protección profesional: perfecto para rizadores, planchas planas, secadores y otras herramientas calientes.</li><li>Simple y multi elección: diseño simple y elección multicolor hacen que sea posible decorar tu escritorio de maquillaje.</li></li></li></ul>', '/storage/photos/31/productos 4/alfombrilla-silicona_1.jpg,/storage/photos/31/productos 4/alfombrilla-silicona-2.jpg,/storage/photos/31/productos 4/,/storage/photos/31/productos 4/alfombrilla-silicona-5.jpg,/storage/photos/31/productos 4/alfombrilla-silicona-6.jpg,/storage/photos/31/productos 4/alfombrilla-silicona-7.jpg,/storage/photos/31/productos 4/alfombrilla-silicona-8.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 25, NULL, 11, '2021-02-16 20:38:38', '2021-02-16 20:57:00'),
(574, 'Champú diario', 'champu-diario', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">champú diario, para hombres, 33.8 fl\r\noz<o:p></o:p></span></p>', '<ul><li><li><span style=\"font-size: 1rem;\">Marca:&nbsp;</span><span style=\"font-size: 1rem;\">AMERICAN CREW.</span><br></li><li>Forma del artículo: Líquido.</li><li>Género objetivo: Masculino.</li><li>Rango de edad: Adulto.</li><li>Tipo de cabello: Graso.</li><li>Con agentes limpiadores de origen natural, ayuda a eliminar el exceso de grasa del cabello.<br></li></li></ul>', '/storage/photos/31/productos 4/american_crew_1.jpg,/storage/photos/31/productos 4/american_crew_2.jpg,/storage/photos/31/productos 4/american_crew_3.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 27, 12, '2021-02-16 20:52:06', '2021-02-16 20:52:06'),
(575, 'AquaGuard', 'aquaguard', '<p>Pre-Natación Defensa del Cabello (16.9 oz)<br></p>', '<div><br></div><ul><li>Marca: Underwater Audio.</li><li>Fragancia: Cherry Almond.</li><li>Tipo de cabello: Todos.</li><li>Volumen líquido: 16.9 Onzas de líquido.</li><li>Detiene el daño del cloro antes de que comience.</li><li>Evita la coloración verde en el pelo, protege el color natural.</li><li>Suaviza y protege.</li><li>Mantiene la salud del cabello.</li><li>Cómo utilizar: utilizar AquaGuard es fácil. Simplemente humedece tu cabello antes de nadar y aplica una generosa cantidad de defensa del cabello antes de nadar, prestando especial atención a las puntas. Dejar de 3 a 5 minutos para que el producto se absorba completamente en el cabello.</li></ul>', '/storage/photos/31/productos 1/pre-natacion-1.jpg,/storage/photos/31/productos 1/pre-natacion-2.jpg,/storage/photos/31/productos 1/pre-natacion-3.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 30, 55, '2021-02-16 21:12:11', '2021-02-16 21:12:11'),
(576, 'Mascarilla restauradora', 'mascarilla-restauradora', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">Mascarilla restauradora para cabello seco y dañado, orgánico enriquecido con Aceite de Argán y manteca de\r\nkarité (16,9&nbsp;Fluido onza)<o:p></o:p></span></p>', '<ul><li><li>Marca: Arganicare.</li><li>Volumen líquido: 16.9 Onzas de líquido.</li><li>Género objetivo: Unisex.</li><li>Dimensiones del artículo L/W/H: 3.25 x 3.25 x 3.25 pulgadas.</li><li><li>Exclusiva fórmula con aceite de argán y manteca de karité.</li><li>Con vitaminas esenciales y aceite de almendra que hidrata el cabello, proporcionan suavidad y brillo.</li><li>Contiene proteínas de seda y hace que su pelo sedoso y suave.</li><li>Su cabello adquirirá un brillo hermoso, será fácil de peinar y suave al tacto.</li><li>Para cabello seco y dañado.</li></li></li></ul>', '/storage/photos/31/productos 4/arganicare-restoring-1.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 30, 13, '2021-02-16 21:24:27', '2021-02-16 21:24:27'),
(577, 'Total Miracle', 'total-miracle', '<p>Champú, Acondicionador y tratamiento profundo para el cabello, con una infusión de albaricoque y aceite de macadamia australiana, sin parabenos.<br></p>', '<ul><li><li>Marca:Aussie</li><li>Fragancia: Floral</li><li>Tipo de cabello: Damaged</li><li>Volumen líquido: 8 Onzas de líquido</li><li>Dimensiones del artículo L/W/H: 7.25 x 4.25 x 9.31 pulgadas</li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Recibirás una botella de champú de 262 onzas líquidas, una botella de acondicionador de 262 onzas líquidas y una botella de tratamiento de 8 onzas líquidas.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Perfecto para el cabello dañado.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Con albaricoque y aceite de macadamia australiana.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Libre de parabenos.</span></li></li></ul>', '/storage/photos/31/productos 1/total-miracle-1.jpg,/storage/photos/31/productos 1/total-miracle-2.jpg,/storage/photos/31/productos 1/total-miracle-5.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 33, 14, '2021-02-16 21:48:44', '2021-02-16 21:48:44'),
(578, 'Limón clarificarte champú', 'limon-clarificarte-champu', '<div>Champu&nbsp;Limón clarificarte de avalon organics,&nbsp;Fabricado con estimulante árbol del té, menta, eucalipto y romero para dejar el cuero cabelludo y el pelo limpios y sanos.</div>', '<ul><li><li><li><span style=\"font-size: 1rem;\">Marca:&nbsp;</span><span style=\"font-size: 1rem;\">Avalon Organics</span><br></li><li>Forma del artículo: Líquido</li><li>Género objetivo: Femenino</li><li>Fragancia: Limón</li></li><li>Paquete de 3, 14 onzas cada uno (42 onzas en total).</li><li>Sin colorantes artificiales, aromas sintéticos ni parabenos.</li></li></ul>', '/storage/photos/31/productos 4/avalon-organics-1.jpg,/storage/photos/31/productos 4/avalon-organics-2.jpg,/storage/photos/31/productos 4/avalon-organics-3.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 27, 17, '2021-02-16 22:04:26', '2021-02-16 22:04:26'),
(579, 'Set de cuidado diario hidratante para bebé', 'set-de-cuidado-diario-hidratante-para-bebe', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">Aveeno Baby - Set de cuidado diario\r\nhidratante con extracto de avena coloidal natural, 2\r\nartículos<o:p></o:p></span></p>', '<ul><li><li>Aveeno Baby Set que contiene Wash &amp; Champú y loción hidratante, para la nutrición diaria de la piel y el cabello de tu bebé.</li><li>Práctico juego de productos de baño para bebé y cuidado de la piel, están especialmente diseñados para la delicada piel y el cabello del bebé.</li><li>El jabón y el champú para bebés contiene extracto de avena natural para limpiar suavemente. La fórmula es sin parabenos. Se puede utilizar en la piel y el cabello y se enjuaga</li><li>Con una fragancia suave y fresca.</li><li>La loción diaria contiene avena coloidal natural mezclada con emolientes naturales para calmar la delicada piel de tu bebé. La fórmula no grasa se absorbe rápidamente. Es hipoalergénico y sin fragancia.</li><li>Ambos productos para el cuidado de la piel del bebé son de la marca # 1 de confianza para pediatras para el uso de ingredientes naturales y una marca recomendada por pediatras durante más de 60 años.</li></li></ul>', '/storage/photos/31/productos 4/aveno-baby-1.jpg,/storage/photos/31/productos 4/aveno-baby-3.jpg,/storage/photos/31/productos 4/aveno-baby-4.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 27, 18, '2021-02-16 22:34:15', '2021-02-16 22:34:15'),
(580, 'Keratindose', 'keratindose', '<p>Biolage Advanced Keratindose Pro-Keratinina Renovación Spray. Restaura el brillo y la manejabilidad del cabello, Sin parabenos, para el cabello sobre procesado y dañado, 6.8 fl oz<br></p>', '<div><br></div><ul><li><span style=\"font-size: 1rem;\">Marca:&nbsp;</span><span style=\"font-size: 1rem;\">BIOLAGE</span><br></li><li>Forma del artículo: Spray</li><li>Tipo de cabello: Dañado</li><li>Volumen líquido: 200 Mililitros</li><li>Formulado con Pro-Keratin y Silk, el tratamiento en spray renovador de Biolage advanced para cabello dañado proporciona un refuerzo para el cabello sobre procesado, débil o frágil.<br></li></ul>', '/storage/photos/31/productos 2/keratindose-1.jpg,/storage/photos/31/productos 2/keratindose-2.jpg,/storage/photos/31/productos 2/keratindose-4.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 30, 9, '2021-02-16 22:48:17', '2021-02-16 22:48:17'),
(581, 'Mascarilla multiusos para el cabello', 'mascarilla-multiusos-para-el-cabello', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">Mascarilla multiusos para el cabello. Con Aloe, Vegano y sin parabenos, para cabello seco, 3.4 onzas líquidas.<o:p></o:p></span></p>', '<div><br></div><ul><li>Marca: BIOLAGE</li><li>Volumen líquido: 100 Mililitros</li><li>Forma del artículo: Crema</li><li>Mascarilla capilar multiusos de tratamiento profundo que hidrata y nutre al cabello extremadamente seco.<br></li></ul>', '/storage/photos/31/productos 2/hydrasuorce-vegano-1.jpg,/storage/photos/31/productos 2/hydrasuorce-vegano-2.jpg,/storage/photos/31/productos 2/hydrasuorce-vegano-4.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 30, 9, '2021-02-16 22:59:30', '2021-02-16 22:59:30'),
(582, 'Scalpsync Champú anticaspa', 'scalpsync-champu-anticaspa', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">Biolage Scalpsync Champú anticaspa,\r\ncontrola la aparición de escamas y alivia la irritación del cuero cabelludo,\r\nsin parabenos, para controlar la caspa<o:p></o:p></span></p>', '<ul><li><li>Marca: BIOLAGE</li><li>Forma del artículo: Líquido</li><li>Género objetivo: Unisex</li><li>Rango de edad: Adulto</li><li>Tipo de cabello: Todos</li></li></ul>', '/storage/photos/31/productos 1/scalpsync-1.jpg,/storage/photos/31/productos 1/scalpsync-2.jpg,/storage/photos/31/productos 1/scalpsync-6.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 27, 9, '2021-02-16 23:13:52', '2021-02-16 23:13:52'),
(583, 'Volume bloom Acondicionador', 'volume-bloom-acondicionador', '<p>Para cabello voluminoso de larga duración. Sin parabenos, para cabello fino. 13.5 onzas líquidas.<br></p>', '<ul><li><li>Marca: BIOLAGE</li><li>Fragancia: Floral&nbsp;</li><li>Volumen líquido: 400 Mililitros</li><li>La fórmula Volumebloom están inspiradas en las propiedades expansivas de la flor de algodón. El cabello se expande con un volumen elástico y duradero. El cabello fino puede carecer de volumen y ser difícil de peinar.<br></li></li></ul>', '/storage/photos/31/productos 1/volumebloom-1.jpg,/storage/photos/31/productos 1/,volumebloom-2.jpg,/storage/photos/31/productos 1/volumebloom-7.jpg,/storage/photos/31/productos 1/volumebloom-8.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 32, 9, '2021-02-16 23:32:03', '2021-02-16 23:32:03'),
(584, 'Silk Therapy', 'silk-therapy', '<p>Champú limpiador. Tratamientos disponibles de la más alta calidad.<br></p>', '<ul><li><li>Marca: BioSilk</li><li>Tipo de cabello: Graso, Seco, Normal</li><li>Volumen líquido: 355 Mililitros</li><li>Forma del artículo: Liquido</li></li></ul>', '/storage/photos/31/productos 1/silk-therapy.jpg', 9, '', 'new', 'active', 0.00, 0.00, 1, 24, 27, NULL, '2021-02-16 23:42:13', '2021-02-16 23:42:13'),
(585, 'Aceite capilar premium', 'biotina-etereo-de-la-naturaleza', '<p>Soluciones naturales para el cuidado del cabello.&nbsp;<span style=\"font-size: 1rem;\">Mezcla nutritiva y estimulante de aceites y nutrientes exóticos.&nbsp;</span><span style=\"font-size: 1rem;\">Ayuda a resolver una variedad de problemas diarios de tu cabello.</span></p>', '<ul><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Biotina: El aceite de biotina para el cabello es una fórmula única y avanzada que contiene una mezcla compleja probada para ayudar a que tu cabello parezca visiblemente más saludable. La biotina también estimula el cuero cabelludo para promover el crecimiento saludable del cabello.</span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"\"><font color=\"#0f1111\">Castor:&nbsp;Hidrata profundamente el cabello seco y mejora la manejabilidad mientras domas el encrespamiento. Puede ayudar a aumentar el crecimiento del cabello.</font></span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"\"><font color=\"#0f1111\">Menta: Ayuda a combatir el cuero cabelludo escamoso mientras deja el cabello brillante y suave. Refresca y refresca el cuero cabelludo.</font></span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"\"><font color=\"#0f1111\">Pro-Crecimiento:&nbsp; Mezcla estimulante de raíz de ricino, aceites de almendras dulces y corteza de sauce.</font></span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"\"><font color=\"#0f1111\">Cuidado del cuero cabelludo: Una mezcla terapéutica refrescante de aceites de árbol de té, ricino y oliva.</font></span></li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"\"><font color=\"#0f1111\">Árbol de té: Un efecto calmante y refrescante refresca tu cabello y mejora la fuerza, suavidad e incluso promueve un crecimiento saludable del cabello.<br></font></span></li></ul>', '/storage/photos/31/productos 1/premium_hair_oil_1.jpg,/storage/photos/31/productos 1/premium_hair_oil_2.jpg,/storage/photos/31/productos 1/premium_hair_oil_3.jpg,/storage/photos/31/productos 1/premium_hair_oil_4.jpg,/storage/photos/31/productos 1/premium_hair_oil_5.jpg,/storage/photos/31/productos 1/premium_hair_oil_6.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 31, 56, '2021-02-17 00:19:50', '2021-02-17 01:21:47'),
(586, 'Set de champú y acondicionador de árbol de té', 'set-de-champu-y-acondicionador-de-arbol-de-te', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">Con aceite de árbol de té 100% puro,\r\npara cuero cabelludo seco, sin sulfatos, sin parabenos, 2 botellas de 16 fl oz cada una<o:p></o:p></span></p>', '<ul><li><li>Marca: Botanic Hearth</li><li>Tipo de cabello: Todo tipo de cabellos, seco</li><li><li>Champú y acondicionador que revitalizan, calma y nutre profundamente tu cabello y cuero cabelludo.</li><li>Diseñado por expertos, el champú y acondicionador de pelo trabajan juntos para promover el cabello y cuero cabelludo limpio e hidratado.</li><li>Ideal para uso diario y para todo tipo de cabello, champú y acondicionador con protección de color.</li><li>Set libre de crueldad y no se ha probado en animales.</li></li></li></ul>', '/storage/photos/31/productos 4/arbol-de-te-1.jpg,/storage/photos/31/productos 4/arbol-de-te-6.jpg,/storage/photos/31/productos 4/arbol-de-te-7.jpg,/storage/photos/31/productos 4/arbol-de-te-8.jpg,/storage/photos/31/productos 4/arbol-de-te-9.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 33, 22, '2021-02-17 01:36:38', '2021-02-17 01:36:38'),
(587, 'Celestial Silk - Bandas de seda para el pelo', 'celestial-silk-bandas-de-seda-para-el-pelo', '<p>Paquete de coleteros de seda que contienen 3 coleteros de seda de color topo oscuro.<br></p>', '<ul><li><li>Los coleteros de seda de morera 100% pura mantienen el cabello saludable y manejable al reducir la fricción que conduce la, rotura y pérdida de cabello.</li><li>Ayuda a mantener el cabello sano reduciendo tirones. La seda suave ayuda a que el cabello se deslice sobre el soporte de coleta de seda, minimizando la rotura y reduciendo las arrugas del cabello.</li><li>Los lazos de seda para el cabello añaden un poco de lujo y glamour a las rutinas diarias de cuidado del cabello.</li></li></ul>', '/storage/photos/31/productos 4/banda-de-seda-1.jpg,/storage/photos/31/productos 4/banda-de-seda-2.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 25, NULL, 57, '2021-02-17 01:50:48', '2021-02-17 01:50:48'),
(590, 'Champú voluminizador', 'champu-voluminizador-2102160405-53', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 18pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"ES-MX\">Para cabello graso, con vitaminas, aceite de limón y salvia, limpiador\r\nequilibrante con árbol de té anticaspa.&nbsp;<o:p></o:p></span></p>', '<ul><li><li>Marca: HONEYDEW</li><li>Forma del artículo: Gel</li><li>Género objetivo: Unisex</li><li>Rango de edad: Adulto.</li><li style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(15, 17, 17);\">Fórmula de champú a base de hierbas: no importa tu tipo de cabello, nuestro champú para mujeres y hombres está formulado para ayudar a que el cabello encuentre equilibrio</span>&nbsp;y <span style=\"color: rgb(0, 0, 0); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">para un hermoso cabello lustroso y limpio<span>&nbsp;</span></span>desde la raíz hasta las puntas<font color=\"#0f1111\">.</font></li></li></ul>', '/storage/photos/31/productos 2/limon-salvia-1.jpg,/storage/photos/31/productos 2/limon-salvia-6.jpg,/storage/photos/31/productos 2/limon-salvia-2.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 27, 58, '2021-02-17 02:04:05', '2021-02-17 02:04:05'),
(592, 'Champú y acondicionador 2 en 1 Head & Shoulders', 'champu-y-acondicionador-2-en-1-head-shoulders', '<p>Tratamiento anti caspa y cuidado del cuero cabelludo, Classic Clean, 32.1 fl oz, paquete doble<br></p>', '<ul><li></li><li>Clínicamente probado. Protección de hasta 100% contra la caspa. (*Copos visibles, con uso regular)</li><li>Libre de parabenos: Head &amp; Shoulders Classic Clean 2 en 1 no contiene parabenos.</li><li>De los expertos en cuidado del cuero cabelludo; los creadores del champú para caspa # 1 de América* (*basado en ventas de volumen)</li><li>El alivio de múltiples síntomas ofrece una protección probada contra, picazón y sequedad (copos y picor asociados con la caspa).</li><li>Cómoda fórmula 2 en 1 que nutre el cabello y el cuero cabelludo mientras limpia e hidrata.</li><li>PH equilibrado: pH equilibrado para ser lo suficientemente suave para el uso diario.</li></ul>', '/storage/photos/31/productos 3/classic-clean-set-1.jpg,/storage/photos/31/productos 3/classic-clean-set-4.jpg,/storage/photos/31/productos 3/classic-clean-set-6.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 33, NULL, '2021-02-17 02:28:59', '2021-02-17 02:28:59'),
(593, 'Bandas elásticas transparentes', 'bandas-elasticas-transparentes', '<p>BEBEEPOO 2500 piezas Mini bandas de goma para el cabello con una caja, bandas elásticas suaves para el cabello de 2 mm de ancho y 30 mm.<br></p>', '<ul><li><li>Rango de edad: Niño, bebé</li><li>Tipo de cabello: Rizado</li><li>Género objetivo: Unisex</li><li>Color: Claro</li><li>Marca: BEBEEPOO</li></li></ul>', '/storage/photos/31/productos 3/clear-elastic-hair-bands-1.jpg,/storage/photos/31/productos 3/clear-elastic-hair-bands-3.jpg,/storage/photos/31/productos 3/clear-elastic-hair-bands-4.jpg,/storage/photos/31/productos 3/clear-elastic-hair-bands-7.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 25, NULL, 26, '2021-02-17 02:39:49', '2021-02-17 02:39:49'),
(594, 'Crema para peinar Color Edge', 'crema-para-peinar-color-edge', 'Crema para peinar y desenredar 12. oz', '<ul><li><li>hecha con aceite de almendra y zanahoria.</li><li>Color Edge Shine crema desenreda Cabello sin esfuerzo.</li><li>Añade brillo y suavidad para el cabello.</li><li>Producto versátil.</li></li></ul>', '/storage/photos/31/productos 1/weightless-1.jpg,/storage/photos/31/productos 1/weightless-2.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 28, 27, '2021-02-17 02:49:34', '2021-02-17 02:49:34'),
(596, 'Máscara ColorProof', 'mascara-colorproof', '<p>Desengrasa, hidrata, repara y fortalece. Acondiciona y restaura dramáticamente la elasticidad. Con un solo uso, el cabello luce hasta 10 años más joven.<br></p>', '<div><br></div><ul><li><span style=\"font-size: 1rem;\">Tipo de cabello</span><span style=\"font-size: 1rem; white-space: pre;\">	</span><span style=\"font-size: 1rem;\">Rizado</span><br></li><li>Volumen líquido<span style=\"white-space:pre\">	</span>16 Onzas de líquido</li><li>Después del champú, aplicar desde el cuero cabelludo hasta las puntas. Dejar actuar de 1 a 5 minutos. Enjuagar. Úselo tantas veces como desee.<br></li></ul>', '/storage/photos/31/productos 3/colorprood-crazy-smooth-1.jpg,/storage/photos/31/productos 3/colorprood-crazy-smooth-2.jpg,/storage/photos/31/productos 3/colorprood-crazy-smooth-3.jpg,/storage/photos/31/productos 3/colorprood-crazy-smooth-6.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 30, 28, '2021-02-17 03:05:53', '2021-02-17 03:05:53'),
(597, 'Dove Volume champú', 'dove-volume-champu', '<p>Para adelgazar el cabello ritual engrosamiento champú de cabello con lavanda 12 oz<br></p>', '<ul><li><li><span style=\"font-size: 1rem;\">Marca:&nbsp;</span><span style=\"font-size: 1rem;\">Dónde está</span><br></li><li>Forma del artículo: Líquido</li><li>Género objetivo: Unisex</li><li>Rango de edad: Adulto.</li><li>Tipo de cabello: Normal</li></li></ul>', '/storage/photos/31/productos 1/nutricion-secrets-dove-1.jpg,/storage/photos/31/productos 1/nutricion-secrets-dove-2.jpg,/storage/photos/31/productos 1/,/storage/photos/31/productos 1/nutricion-secrets-dove-7.jpg', 10, '', 'new', 'active', 0.00, 0.00, 1, 24, 27, NULL, '2021-02-17 03:22:03', '2021-02-17 03:22:03');

-- --------------------------------------------------------

--
-- Структура таблицы `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rate` tinyint(4) NOT NULL DEFAULT '0',
  `review` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rate`, `review`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 5, 'nice product', 'active', '2020-08-15 07:44:05', '2020-08-15 07:44:05'),
(2, NULL, NULL, 5, 'nice', 'active', '2020-08-17 21:08:14', '2020-08-17 21:18:31'),
(3, NULL, NULL, 5, 'goolge product prueba david', 'active', '2020-09-17 07:34:59', '2020-09-17 07:34:59'),
(4, NULL, NULL, 5, NULL, 'active', '2020-09-17 09:54:00', '2020-09-17 09:54:00'),
(5, NULL, NULL, 5, 'me encanta hernandez', 'active', '2020-09-17 09:54:50', '2020-09-17 09:54:50'),
(6, NULL, NULL, 5, 'que bacano es el ps3 slim papi', 'active', '2020-09-17 10:09:50', '2020-09-17 10:09:50'),
(7, NULL, NULL, 5, NULL, 'active', '2021-02-03 07:15:41', '2021-02-03 07:15:41'),
(8, NULL, NULL, 5, NULL, 'active', '2021-02-03 07:25:08', '2021-02-03 07:25:08'),
(9, NULL, NULL, 5, NULL, 'active', '2021-02-03 07:25:18', '2021-02-03 07:25:18'),
(10, NULL, NULL, 5, NULL, 'active', '2021-02-03 07:46:42', '2021-02-03 07:46:42'),
(11, 37, NULL, 5, NULL, 'active', '2021-02-03 07:49:05', '2021-02-03 07:49:05');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `description`, `short_des`, `logo`, `photo`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Somos un equipo de especialistas en marketing digital en Colombia, dedicados a investigar en internet los mejores videojuegos, consolas y accesorios para juegos, ya sea nuevos, usados y en lanzamiento; los cuales mostramos y presentamos a tu disposición diariamente desde nuestra página web, para que no tengas que desgastarte buscando juegos en la red y perder tiempo en ello, ya que nosotros lo hacemos por ti, y te dejamos el link para que lo puedas comprar de forma más ágil y rápida en las respectivas plataformas, tenemos en cuenta nuevos juegos, nuevos lanzamientos y las novedades en el mercado de juegos a tú alcance, gracias por confiar en nosotros y esperamos te diviertas mientras compras tus juegos de interés.', 'Gracias por confiar en nuestro equipo de especialistas.', '/storage/photos/1/logo.png', '/storage/photos/1/blog3.jpg', 'Colombia', '312-5452727', 'contacto@videojuegostotal.com', NULL, '2020-08-14 01:49:09');

-- --------------------------------------------------------

--
-- Структура таблицы `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `shippings`
--

INSERT INTO `shippings` (`id`, `type`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kahtmandu', 100.00, 'active', '2020-08-14 04:22:17', '2020-08-14 04:22:17'),
(2, 'Out of valley', 300.00, 'active', '2020-08-14 04:22:41', '2020-08-14 04:22:41'),
(3, 'Pokhara', 400.00, 'active', '2020-08-15 06:54:04', '2020-08-15 06:54:04'),
(4, 'Dharan', 400.00, 'active', '2020-08-17 20:50:48', '2020-08-17 20:50:48');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(37, 'pepe', 'pepe@gmail.com', NULL, '$2y$10$Awp63JJBtaeGPs5wPeyrcerDboLGiLUrfKgNKWTHp89pK.GB5JPjm', NULL, 'user', NULL, NULL, 'active', NULL, '2021-02-03 07:48:06', '2021-02-03 07:48:06'),
(38, 'deivid', 'dhms777@gmail.com', NULL, '$2y$10$PJD1.h8k8xDiHSfpW4mifuvlIhhNEpCSxvXiTXsIXen3wSuEvo.Oa', NULL, 'admin', NULL, NULL, 'active', NULL, '2021-02-18 05:04:07', '2021-02-18 05:04:07');

-- --------------------------------------------------------

--
-- Структура таблицы `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Индексы таблицы `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_added_by_foreign` (`added_by`);

--
-- Индексы таблицы `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_number_unique` (`order_number`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_id_foreign` (`shipping_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_post_cat_id_foreign` (`post_cat_id`),
  ADD KEY `posts_post_tag_id_foreign` (`post_tag_id`),
  ADD KEY `posts_added_by_foreign` (`added_by`);

--
-- Индексы таблицы `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Индексы таблицы `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_slug_unique` (`slug`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_child_cat_id_foreign` (`child_cat_id`);

--
-- Индексы таблицы `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_cart_id_foreign` (`cart_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;

--
-- AUTO_INCREMENT для таблицы `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_cat_id_foreign` FOREIGN KEY (`post_cat_id`) REFERENCES `post_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_post_tag_id_foreign` FOREIGN KEY (`post_tag_id`) REFERENCES `post_tags` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_child_cat_id_foreign` FOREIGN KEY (`child_cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
