-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 04:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_07_05_164903_create_products_table', 1),
(10, '2021_07_05_165136_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('91aa31e8926cbb0de2264e1d7d43c7cacef6cbccd920b55d730039d8b36c7d07affa6c609d54d707', 14, 2, NULL, '[]', 0, '2021-07-06 23:50:35', '2021-07-06 23:50:35', '2022-07-07 04:50:35'),
('d3bc5f640e953c808db383bce1288a0a949388b7268159418f6da3e6d66479d8af9a9c24d8e4c9dd', 14, 2, NULL, '[]', 0, '2021-07-06 23:48:02', '2021-07-06 23:48:02', '2022-07-07 04:48:02'),
('ddc001f290a9199efc2986d51a06fc333ee7648374fcc71e384904c42fbb034d229023aecab323ca', 14, 2, NULL, '[]', 0, '2021-07-06 23:31:47', '2021-07-06 23:31:47', '2022-07-07 04:31:47'),
('f8a6ac7470757b062f54e553c9c9ca1a429243d5915c34b141c072212d1a00c239d80c73935e52d3', 14, 2, NULL, '[]', 0, '2021-07-06 23:50:25', '2021-07-06 23:50:25', '2022-07-07 04:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'wal6TZhLR4SvGbM3ZBikqIVrXPXIiGZh8Ywk7XDL', NULL, 'http://localhost', 1, 0, 0, '2021-07-06 23:29:39', '2021-07-06 23:29:39'),
(2, NULL, 'Laravel Password Grant Client', 'dbHDYvhxbzoW4DsyCfS2HCveYOrgVDXUI530s1X1', 'users', 'http://localhost', 0, 1, 0, '2021-07-06 23:29:39', '2021-07-06 23:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-06 23:29:39', '2021-07-06 23:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('1008c4511c2e6c3915509da433ec119be4af1082beda9c114fa3a589e929ddbd5e69f635dea93e32', '91aa31e8926cbb0de2264e1d7d43c7cacef6cbccd920b55d730039d8b36c7d07affa6c609d54d707', 0, '2022-07-07 04:50:35'),
('2d8f9a781d5e28ada316518fbca7f6d12967b8fa6dc39df448a6e4e68fc7a3b81f78baf103f843fa', 'f8a6ac7470757b062f54e553c9c9ca1a429243d5915c34b141c072212d1a00c239d80c73935e52d3', 0, '2022-07-07 04:50:25'),
('3d131fd0d19dfedcee5bb43846844716613089008aaaa6f0b81118db65163adffb9ad61d1fd3cfdc', 'ddc001f290a9199efc2986d51a06fc333ee7648374fcc71e384904c42fbb034d229023aecab323ca', 0, '2022-07-07 04:31:47'),
('b77d160c2bf3e56dc0b641182c9e7a870db2b5826db58b08291b659a5a2c2f4b0c70550822ab20a8', 'd3bc5f640e953c808db383bce1288a0a949388b7268159418f6da3e6d66479d8af9a9c24d8e4c9dd', 0, '2022-07-07 04:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(51, 'Turner Gerlach Sr.', 'Sequi tempora consequatur et neque quos quia. Harum unde laudantium rem facilis explicabo. Ipsa voluptas commodi voluptate veniam. Repudiandae rerum non laboriosam incidunt. Provident sunt asperiores voluptatum ea.', 517, 7, 30, 12, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(52, 'Darrick Boyle', 'Maiores dolores expedita deserunt animi nam. Nemo eius at molestiae aut esse fugiat. Assumenda ut minima saepe nostrum occaecati est sint. Corporis quasi voluptatem neque totam non velit.', 732, 2, 9, 12, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(53, 'Sonya Rau', 'Consequatur quisquam sapiente similique eum quidem accusamus id. Quia at fuga consequuntur qui enim quo. Et soluta reprehenderit rerum iste qui sed quisquam.', 493, 2, 9, 11, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(54, 'Kellen Jast', 'Fugiat molestias quod non modi qui rem. Accusamus rerum cum sit dolorem saepe ipsam possimus inventore. Assumenda quia consequatur in accusamus quas magnam vel. Nostrum voluptatem impedit voluptatum ducimus cupiditate id voluptatem aut.', 683, 2, 21, 12, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(55, 'Kody Robel', 'Laboriosam excepturi est cum. Nulla aut et sequi quas neque. Aut quibusdam quis esse esse voluptatem consectetur. Blanditiis deleniti aut rem quia.', 565, 8, 9, 15, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(56, 'Gina Schneider III', 'Eveniet et nemo ab quia omnis error. Qui iusto quo non quibusdam nostrum.', 567, 8, 24, 12, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(57, 'Carlee Runolfsdottir', 'Laborum adipisci consequuntur consequatur fugiat excepturi voluptatem dicta. Rerum sint error quis quisquam eos nihil odit. Reprehenderit ea deleniti repellat odio. Esse est consequatur repellat. Voluptas rerum et autem optio incidunt.', 886, 7, 24, 13, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(58, 'Emory Dach', 'In hic aut sit quia consectetur quidem. Dolorem ut exercitationem id. Voluptas deleniti sunt voluptatem quisquam.', 833, 8, 20, 12, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(59, 'Chandler Hermiston', 'Dolores velit fugit vitae nobis aut. Nam provident nesciunt illum. Nihil corporis magni quisquam voluptas.', 788, 3, 17, 13, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(60, 'Prof. Nicolette Olson', 'Inventore necessitatibus sit totam quisquam. Voluptatem odit totam saepe quasi voluptas rerum asperiores. Officiis voluptatum voluptas eligendi beatae quaerat qui et reiciendis. Eos quia iusto tenetur tenetur nihil eum placeat.', 280, 3, 17, 15, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(61, 'Dr. Oda Champlin DDS', 'Excepturi voluptas delectus porro consequatur eum nisi. Quaerat veritatis dicta quae rerum id debitis. Iure ut hic vel est distinctio deserunt.', 524, 3, 13, 12, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(62, 'Ms. Euna McCullough II', 'Odio eius recusandae labore maxime sit. Eligendi quo ut magni quidem omnis laudantium ut laboriosam. Et tempora quisquam magnam.', 681, 6, 24, 15, '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(63, 'Bethany Fritsch', 'Dolor et laboriosam reiciendis magnam non quia. Totam ut ex ex ut deleniti neque. Fuga architecto rem necessitatibus. Est consequuntur ut ut perferendis quia.', 974, 8, 14, 13, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(64, 'Hattie Lemke', 'At aut neque et iste perspiciatis et sit. Tenetur omnis deserunt sequi quia repellat. Architecto at cumque aut et et.', 330, 3, 13, 11, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(65, 'Ms. Miracle Wilderman', 'Sed eos exercitationem reiciendis et accusantium unde saepe. Amet cupiditate dignissimos ut magni itaque et corrupti dolores. Sunt rem vitae in minus sed alias. Facilis dignissimos ea est aut molestias possimus tempora. Quibusdam ut non et doloribus voluptas qui delectus.', 706, 9, 24, 12, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(66, 'Sterling Smith', 'Doloribus ipsa voluptas ullam minus dicta suscipit delectus provident. Quia molestiae rem tempora aut soluta dolore. Assumenda quibusdam optio cumque voluptatem excepturi. Architecto ipsum dolore excepturi deleniti non.', 874, 2, 25, 15, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(67, 'Elisha Murazik III', 'Quod nobis laboriosam esse dolor earum mollitia voluptatum. Sapiente voluptates porro ipsam rerum.', 162, 4, 17, 12, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(68, 'Prof. Myles Hegmann', 'Ducimus culpa aut odio neque vero omnis. Non est inventore possimus voluptatum. In vel aperiam qui aut. Voluptatem molestias aut voluptatem sit.', 743, 8, 10, 12, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(70, 'Kathlyn Altenwerth', 'Porro labore est soluta. Culpa soluta doloribus doloribus quibusdam. Voluptas alias quia harum quos dolorem. Quia reprehenderit sit officia ut error similique autem voluptatem.', 762, 2, 26, 12, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(71, 'Caleb Padberg DVM', 'Neque reiciendis sint commodi mollitia. Aspernatur harum inventore porro natus in aut eveniet. Sunt eligendi qui non et reprehenderit et dolor. Ut iusto nulla suscipit sed. Et vel voluptatum consequatur et.', 351, 4, 5, 11, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(72, 'Prof. Gerald Weimann IV', 'Ut illum qui aut rerum quam fugit. Ea corporis est incidunt sint. Repellendus quos omnis autem et. Reprehenderit mollitia nostrum dolor fugit quae et.', 555, 1, 11, 15, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(73, 'Arjun Ernser', 'Cumque enim ut ducimus porro maxime voluptatem modi. Beatae aut consequatur repellendus suscipit. Odio molestiae commodi sit quod eius architecto rerum. Odio quaerat ab sequi expedita dolores itaque illo.', 170, 8, 8, 15, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(74, 'Alva Friesen', 'Voluptatibus porro molestiae iusto assumenda molestiae. Et qui vel labore consectetur odit. Ducimus officia amet earum. Sit est nam vitae et deleniti minima et.', 249, 7, 16, 12, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(75, 'Liliane Spinka', 'Officiis minus at in similique iste ad delectus. Inventore ea sit et quia eum minus. Voluptas officiis nemo suscipit sit sequi dignissimos esse. Molestiae amet quasi et debitis.', 796, 1, 13, 13, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(76, 'Emmanuelle Wolff', 'Error perspiciatis nostrum officiis. Pariatur sint labore ut non optio. Sunt soluta perferendis nobis magni. Voluptates quas odio rerum saepe hic est vel.', 516, 8, 15, 13, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(77, 'Esteban Terry PhD', 'Quo doloremque excepturi quia blanditiis non. Reprehenderit placeat quia quis minima. Velit voluptas pariatur ut neque repellat. A illum ut possimus sapiente sed.', 616, 8, 3, 11, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(78, 'Alta Towne', 'Aut quis odit quas qui aut itaque perferendis. Quo et ad nulla sunt. Quia consequatur alias dolor qui consectetur laudantium natus. Cupiditate sit qui sint quas rerum dolorem ut aspernatur.', 166, 1, 4, 14, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(79, 'Dr. Isabella Parisian', 'Et et voluptas voluptatem. Praesentium quibusdam est et alias earum debitis aperiam. Animi et praesentium illo qui et deleniti quam. Quis quod voluptatibus ut architecto beatae qui sapiente harum.', 489, 9, 24, 12, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(80, 'Dr. Werner Macejkovic', 'Similique cum consequatur eum qui et adipisci sit. Assumenda tempore voluptas ut sit. Molestiae tenetur incidunt sapiente et sunt assumenda dolor.', 652, 1, 21, 13, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(81, 'Golda Macejkovic', 'Commodi velit exercitationem iusto. Vitae mollitia et cupiditate reiciendis. Adipisci nulla ut corrupti non occaecati. Eaque blanditiis qui rerum et vel molestiae assumenda.', 688, 3, 11, 14, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(82, 'Haleigh Hahn', 'Recusandae saepe in quam autem ducimus quis atque ea. Eos rerum aut delectus minus enim eos. Ut itaque vel enim dolore. Quas modi non natus quae.', 176, 8, 7, 12, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(83, 'Randal King', 'Necessitatibus ullam harum a. Voluptatem quia repellendus quo maiores deserunt optio sed.', 877, 0, 26, 12, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(84, 'Crystal Gerlach MD', 'Molestias molestiae quia et. Consequatur reiciendis impedit in impedit.', 733, 2, 15, 15, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(85, 'Kellie Okuneva DVM', 'Aut voluptates officiis hic ea. Suscipit odio ut neque non exercitationem est sunt rerum. Perspiciatis fugiat occaecati molestiae nam suscipit repellendus perferendis.', 289, 6, 24, 14, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(86, 'Mrs. Andreanne Olson', 'Maiores quasi accusamus rerum aperiam alias cumque expedita. Rem ipsam impedit esse ut ipsa. Beatae molestiae architecto quia non beatae at. Ratione repellat qui delectus tenetur assumenda velit ut.', 129, 6, 22, 13, '2021-07-06 23:28:39', '2021-07-06 23:28:39'),
(87, 'Abel Pagac', 'Iure velit est natus ipsa blanditiis earum. Sapiente cum impedit maxime pariatur est. Rerum minus delectus consequatur sed non quasi eaque placeat.', 132, 1, 21, 14, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(88, 'Prof. Deon Flatley', 'Voluptatum quo ad rerum fugit est. Dolore accusamus ut blanditiis consequatur. Eum id voluptatibus voluptatem voluptatibus asperiores.', 520, 3, 16, 12, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(89, 'Ashton Ward DVM', 'Earum cupiditate reprehenderit autem at. Natus dolores et tenetur sed reprehenderit est voluptates consectetur. Possimus ipsum ipsam illum quos aperiam quo.', 337, 5, 16, 14, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(90, 'Ignacio Klein Jr.', 'Ut sit aut labore voluptas cum. Debitis natus quae modi corrupti dolore aut. Quo vero temporibus harum ut dolores.', 656, 4, 25, 13, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(91, 'Ms. Eudora Gleichner', 'Dolorem voluptatibus ab temporibus consequuntur perspiciatis sunt. Minus error dolor voluptate asperiores iure suscipit. Voluptates voluptate quia repellat qui similique doloribus voluptas. Fugiat eum cupiditate dolores possimus est.', 521, 0, 20, 15, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(92, 'Tillman O\'Hara', 'Vitae minus illum quod soluta ipsum. Deserunt qui necessitatibus eaque ipsum. Provident mollitia quod facilis ducimus unde nam.', 709, 2, 21, 15, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(93, 'Garfield Lehner', 'Assumenda totam et nemo soluta voluptatibus. Quas non facere et laudantium et ducimus praesentium quo. Neque tempore sed eos impedit. Pariatur illo error eius architecto qui officia incidunt commodi. Repellat voluptas et quia est.', 594, 1, 20, 14, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(94, 'Miss Blanche Davis Jr.', 'Vel eaque earum quis sequi. Nihil magni neque quis occaecati tempore animi consectetur velit. Animi qui veritatis voluptate tenetur perferendis nisi repellat. Et beatae pariatur in saepe est. Excepturi dolores maxime voluptas omnis perferendis cupiditate.', 365, 6, 16, 14, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(95, 'Prof. Madilyn Little', 'Perferendis placeat architecto tenetur. Iure iusto sed consequatur earum necessitatibus dolorem. Consequatur ipsum velit velit ut velit qui mollitia. Repudiandae aliquid nemo libero molestias vel neque. Voluptatibus nobis recusandae occaecati asperiores aut.', 979, 2, 5, 11, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(96, 'Joanie Torphy', 'Deleniti assumenda dolor velit architecto similique rerum recusandae. Nobis inventore id et qui dolor ullam neque. Voluptatem doloribus assumenda non dolore. Rerum maiores perspiciatis placeat dolorem.', 360, 2, 3, 12, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(97, 'Prof. Joana Roberts MD', 'Reiciendis beatae excepturi eum voluptate quo quis explicabo atque. Quibusdam eaque nulla culpa facilis minus tenetur odit. Vero quaerat eius corporis accusamus commodi fugiat impedit. Sit sint eos aut ratione ratione.', 210, 0, 15, 13, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(98, 'Maximo Koepp PhD', 'Qui voluptas officiis velit voluptatem et. Ratione consequatur eum nulla tempore. Tenetur labore velit voluptate iusto impedit dolores. Ipsum ut quo illo nihil.', 509, 5, 26, 14, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(99, 'Mrs. Autumn Klocko', 'Molestiae tempore aut odio nulla at in sit recusandae. Minima non tempore et vel ut. Nesciunt molestias blanditiis ab. Sit fugit et quasi tenetur sed.', 950, 6, 20, 11, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(100, 'Miss Zoey Kozey', 'Esse aut iusto sit quis est natus laborum. Velit atque velit magni dolor cum necessitatibus.', 342, 8, 16, 12, '2021-07-06 23:28:40', '2021-07-06 23:28:40'),
(101, 'Acer', 'Laptop', 200, 55, 2, 14, '2021-07-07 08:51:41', '2021-07-07 08:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(301, 68, 'Queen Schoen V', 'Saepe rem est asperiores nulla. Facilis nihil voluptas et. Consectetur quis non vero ullam saepe. Reiciendis aspernatur ab nam dolorem.', 0, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(302, 98, 'Ms. Priscilla Gutmann', 'Quis modi sed velit veritatis. Id et quibusdam inventore nostrum. Laboriosam quia magni eos et porro. Debitis dolorem cupiditate incidunt voluptates molestiae et.', 1, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(303, 93, 'Paula Tromp', 'Explicabo ea blanditiis libero voluptate et veniam autem. Quas nemo excepturi non est. Earum nobis qui accusamus sint quia deleniti.', 1, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(304, 52, 'Prof. Emery Hoeger', 'Veniam autem praesentium quis omnis debitis adipisci officiis. Quasi possimus aliquid vel impedit aut minus. Pariatur ipsa dolor autem.', 5, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(305, 59, 'Mr. Lukas Rau II', 'Nesciunt consequatur natus velit est. Saepe dolorem alias asperiores et. Placeat in laudantium tempore aut perspiciatis. Nulla a quas quia.', 3, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(306, 74, 'Mrs. Hallie Cruickshank', 'Non cupiditate beatae adipisci in incidunt ipsam quos qui. Aut ut quaerat omnis ducimus architecto a itaque. Enim quisquam qui nostrum consectetur odio sit.', 0, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(307, 93, 'Alysha Jaskolski', 'Atque corporis laboriosam natus sit qui dolorem consequuntur. Exercitationem est praesentium velit facilis voluptas. Veritatis quia est corrupti ullam delectus. Repudiandae tenetur atque quo ex vel sit. Quibusdam corporis eaque rem ut non.', 4, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(308, 78, 'Lonie Konopelski', 'Sapiente dolores sit quam autem quis. Corporis ipsa atque optio. Aliquid quisquam voluptatem quia harum officia qui.', 1, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(309, 99, 'Hildegard Eichmann Sr.', 'Sequi est qui ut quaerat molestiae reprehenderit dolorem. Sunt et esse et laborum reiciendis. Voluptatem dolor fugiat autem cupiditate sit. Quia magni ut nobis ea repudiandae.', 3, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(310, 55, 'Prof. Johnny Hudson IV', 'Voluptas quia error odit repellat aut voluptatum et. Autem consequatur quisquam assumenda veritatis deserunt tempora. Id error repellendus quia non.', 0, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(311, 57, 'Prof. Abby Murray', 'Modi dolores placeat cupiditate ratione natus. Nihil eius et assumenda maiores reiciendis et repudiandae. At nostrum exercitationem qui consequatur.', 5, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(312, 83, 'Mrs. Laury Hagenes PhD', 'Ut reprehenderit adipisci veritatis dolores sit. Non exercitationem ea ut quod qui iste facilis omnis. Quidem fugiat non et quam quos.', 2, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(313, 89, 'Jesus Konopelski', 'Beatae labore dolorum maxime tempora saepe quis nam. Sint qui sunt ea est ipsa et facilis. Eum est sequi assumenda illum id eos. Nemo dolor totam quia voluptas et cum eum.', 3, '2021-07-06 23:28:41', '2021-07-06 23:28:41'),
(314, 85, 'Miss Alanis Batz', 'Nam rerum qui quia velit fugit alias aut. Similique et numquam eaque ut vel numquam eligendi quos. Veniam quia totam cum consequatur et alias. Ut sapiente quis ut ut eveniet quis dolores quis.', 3, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(315, 94, 'Vada Swift III', 'Illo et et consectetur consequatur consequatur et non sed. Maxime quos recusandae et eveniet ut. Repellat ut consequatur maxime eos.', 5, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(316, 67, 'Karianne Boehm DVM', 'Alias nesciunt et a aut et dolorum. Dignissimos ut dolorum consequatur aut deleniti. Quia repellendus recusandae occaecati amet tenetur. Magnam nisi ipsum fugiat saepe.', 1, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(317, 62, 'Yadira Kohler', 'Magnam hic omnis est. Error et aut soluta vero. Quo voluptatem id reiciendis natus voluptatibus eos aliquam.', 0, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(318, 89, 'Dr. Stefanie Bartoletti', 'Fugit distinctio debitis soluta quaerat deleniti omnis reprehenderit. Quae illum neque sapiente iure quis quos.', 3, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(319, 51, 'Dr. Brando Ward', 'Molestiae consequatur magni fugit. Minima fuga et commodi veniam iste accusantium. Ut accusantium nihil voluptas voluptatum.', 4, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(320, 67, 'Cindy Ziemann', 'Pariatur dolor aut aut adipisci velit consequatur. Quaerat possimus et corrupti ut quis et. Illo adipisci alias rerum nisi voluptatem eum officia. Veniam aut vel iusto harum.', 1, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(321, 89, 'Ms. Kaitlin Feest', 'Pariatur est quas occaecati qui non laborum. Et qui suscipit quam et voluptas aperiam hic. Voluptas nemo earum quasi earum voluptas aut dolorem. Nulla sint aspernatur ullam ut amet sit.', 1, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(322, 77, 'Gabrielle Morissette II', 'Qui enim aut et repudiandae. In voluptas id quo rerum cupiditate aliquid esse officia. Sunt aliquam aut sit excepturi facere. Magnam perferendis ipsam voluptatem et quo amet ducimus.', 4, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(323, 67, 'Shane Ratke', 'Optio qui voluptatum eveniet numquam vitae. Velit qui amet velit dolorum neque. Placeat illum unde voluptas itaque quaerat.', 1, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(324, 86, 'Joesph McLaughlin MD', 'Pariatur accusamus incidunt in sunt. Adipisci fugiat fugit omnis sit voluptatem. Alias eos et quisquam eveniet ea qui.', 5, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(325, 90, 'Prof. Ryann Eichmann IV', 'Veritatis incidunt molestiae officiis. Delectus nam earum blanditiis officia. Qui fugiat iure pariatur dignissimos minima repellat. Quis aut labore quia corporis eos.', 4, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(326, 62, 'Shany Harris III', 'Labore eaque exercitationem velit et. Ut facilis sit animi. Quidem iste facere qui magni perferendis architecto quod.', 5, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(327, 77, 'Bo Grimes', 'Omnis aperiam dolore recusandae nihil doloribus recusandae quo fuga. Veritatis accusamus aperiam aut assumenda provident suscipit ducimus. Pariatur veniam repudiandae sunt sit voluptatem.', 0, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(328, 70, 'Mr. Riley Erdman MD', 'Et sequi excepturi ullam quas cumque sunt. Odit est at sequi occaecati. Molestiae expedita eaque quo aut. Magni neque molestiae aliquid adipisci qui tempora.', 3, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(329, 70, 'Bridie Pfeffer', 'Totam consequatur iure ut molestiae qui. Accusamus pariatur aut error officia aliquid. Nostrum beatae quod nihil ipsum minima.', 4, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(330, 81, 'Dr. Jovany Schmeler', 'Unde eligendi ad beatae quia et modi. Delectus molestias rerum incidunt et vel molestiae. Consequatur aliquam quos omnis atque quos.', 4, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(331, 82, 'Garrett Ankunding MD', 'Consequatur provident consequatur ipsum nulla nesciunt. Corrupti natus aperiam nisi fuga optio. Ex maxime fuga mollitia assumenda tempore sed non qui.', 1, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(332, 57, 'Randal Jacobi', 'Aliquam aliquam ea fuga omnis eius pariatur. Repellat sit vel molestiae ducimus. Eos molestias soluta labore sint voluptatem vero.', 0, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(333, 90, 'Hubert Zulauf', 'Mollitia qui veritatis magnam laudantium odit. Velit cum qui quae. Ad vitae iusto earum qui harum.', 3, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(334, 83, 'Emilia Adams', 'Sed nihil dolor eligendi est qui soluta assumenda saepe. Omnis cum sit maiores quis iusto dolor sunt corrupti. Est veniam necessitatibus sed ducimus quibusdam odit. Non cum distinctio nulla.', 1, '2021-07-06 23:28:42', '2021-07-06 23:28:42'),
(335, 75, 'Moriah Moore', 'Temporibus est itaque ipsum quas et. Dolorum est possimus rem quasi hic beatae ratione repellendus. Provident cumque rerum quaerat voluptatem cum nihil. Est nihil vitae incidunt nesciunt est hic.', 3, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(336, 64, 'Zachary Sawayn', 'Necessitatibus veritatis est magnam occaecati aspernatur dolorem. Ut ipsa ad voluptates sunt consequatur eum totam. Inventore quod saepe qui voluptates ut placeat. Sit tempora occaecati corporis. Non aut iure sit quia placeat sed adipisci.', 4, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(337, 62, 'Hayden King PhD', 'Qui deleniti nemo qui omnis ea labore. Culpa quam quae aut consectetur laboriosam. Possimus eos vel facere ex voluptatibus delectus. Aliquid sunt qui perferendis magnam sed et.', 2, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(338, 57, 'Chaim Ward', 'Ut sed est vitae aut. Voluptatem iusto velit ut. Enim neque aliquam libero consequuntur voluptas.', 1, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(339, 100, 'Prof. Lonny Ritchie DVM', 'Ut iste quod rem nesciunt odio deserunt eos corrupti. Impedit corporis et distinctio reiciendis ut ut in doloribus. Velit enim ipsa sed voluptate et consectetur. Dolorem quo vitae vero sint ullam.', 4, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(340, 63, 'King Quigley', 'Quae dicta cupiditate provident rerum. Aut voluptatem voluptas voluptatibus amet sed minus praesentium et. Dolorem dolores voluptatem asperiores consequuntur.', 4, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(341, 79, 'Prof. Cleve McDermott III', 'Provident illum recusandae cupiditate exercitationem quia pariatur quis. Ut et et sunt consequatur distinctio rerum. Tenetur impedit architecto reprehenderit cupiditate. Amet et ratione magnam ut.', 2, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(342, 70, 'Carlie Fay', 'Explicabo officia maiores impedit rem. Architecto culpa ut quas ipsam mollitia ut voluptatem. Tempore voluptas optio ducimus voluptatum consequuntur alias.', 2, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(343, 71, 'Mr. Jaden Bogan Sr.', 'Quos nesciunt id omnis iusto. Quae veniam voluptate vel unde. Placeat perferendis reprehenderit deleniti ullam rem aut aut. Debitis dicta architecto corporis incidunt et quod deleniti.', 0, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(344, 58, 'Dr. Karen Denesik', 'Voluptatibus et sint repudiandae culpa ea reiciendis est. Minus mollitia eius similique atque maxime deleniti. Ea inventore sint est explicabo aperiam. Officia sit odit exercitationem quos ipsum.', 4, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(345, 97, 'Dr. Erick Beatty II', 'Fugit explicabo aut eveniet et. Minima optio praesentium vero magnam non. Quisquam aspernatur non nihil quia recusandae neque quis perspiciatis. Omnis nesciunt adipisci non enim hic.', 3, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(346, 83, 'Fatima Kemmer', 'Eligendi dolores nesciunt accusamus atque ipsum deleniti et. Provident numquam omnis et quia. Laboriosam dolorum itaque modi laboriosam beatae enim et. Aut officia modi quo numquam ab sit id repudiandae.', 2, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(347, 57, 'Fatima Bergnaum', 'Labore deleniti quia rerum nemo itaque. Animi quos eum odio aliquam.', 1, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(348, 73, 'Dr. Keith Rippin IV', 'Atque ut expedita et est voluptas nisi. Consequatur tempora quo laudantium quia quaerat aut quasi voluptatem. Placeat magni minus reprehenderit. Et ullam quas reiciendis enim.', 2, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(349, 90, 'Ashton Welch', 'Porro est tenetur tenetur cumque officia sunt autem asperiores. Ut atque voluptatem inventore expedita ab dolor. Qui sed voluptate placeat et cum.', 0, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(350, 87, 'Mr. Braden Schmitt V', 'Itaque doloremque qui facere. Dignissimos amet veritatis iste sunt nisi eligendi occaecati quae.', 1, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(351, 56, 'Benjamin Bergnaum', 'Eaque in harum quo minus dolores nihil vel. Delectus rem sint doloribus cupiditate quasi esse placeat.', 4, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(352, 53, 'Prof. Bianka Denesik IV', 'Nemo et velit ea vitae exercitationem consequatur aut. Expedita atque quo nihil. Culpa officiis a facere ipsam architecto molestias.', 3, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(353, 87, 'Dr. Elroy Kuphal II', 'Sed saepe saepe ut et vero suscipit distinctio rem. Neque occaecati qui officiis minima explicabo animi exercitationem. Facere possimus iusto illum earum. Et atque amet dolorem ut fugiat.', 0, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(354, 59, 'Burdette Beer', 'Explicabo consequatur et ullam ipsa. Temporibus recusandae harum minus dolores sit. Illo itaque aut deleniti commodi et excepturi modi. Assumenda recusandae debitis laudantium dolor.', 5, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(355, 57, 'Carmel Collier', 'Nobis et ea molestias dolores. Doloribus adipisci voluptatum non modi ipsa. Dolorem vel temporibus enim modi ab.', 5, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(356, 91, 'Dr. Stella Rice PhD', 'Voluptatem facilis exercitationem ad quidem labore. Sunt illum ipsum facilis officia temporibus. Qui earum illo neque consequatur saepe consequuntur. Perspiciatis quam qui praesentium laboriosam facere qui laudantium. Omnis culpa ut iste dolores reiciendis aut vel.', 4, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(357, 98, 'Jayden Hyatt', 'Et voluptatem distinctio enim non molestiae. Et est ea nisi quis minus sed. Dolor ex dignissimos autem nihil.', 4, '2021-07-06 23:28:43', '2021-07-06 23:28:43'),
(358, 56, 'Shanel Corwin', 'Dolor amet aut rem minima inventore culpa. Aliquam natus ut sit. Alias molestias aut soluta aliquam eligendi. Sunt alias eos ex voluptatem.', 0, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(359, 99, 'Karen Cummerata', 'Non labore ut fugit quam autem. Quia et recusandae commodi doloremque ad molestiae. Consectetur earum tempora quia voluptatum impedit veritatis. Asperiores assumenda incidunt qui dolor.', 2, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(360, 91, 'Dr. Wilton Friesen', 'Tempore dolorem dolor alias fugiat ut suscipit harum. Occaecati laboriosam alias sequi ut quibusdam officiis et. Doloribus fugit vitae error voluptatem. Illum earum quo ut fugit veritatis odio aut.', 2, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(361, 98, 'Paula Marquardt', 'Laudantium quia nisi voluptatem optio quibusdam est ea. Rem aliquid repudiandae libero autem. Laudantium mollitia aut rerum possimus at.', 2, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(362, 67, 'Daryl Mraz DDS', 'Eum repellendus qui perferendis voluptas voluptatibus deserunt. Fugit aut ut alias quo qui.', 0, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(363, 75, 'Ophelia Parisian', 'Tempora sunt dolores veniam quibusdam molestiae hic. Consequatur distinctio quaerat quaerat itaque aut hic vero. Repudiandae incidunt veniam exercitationem quia distinctio.', 0, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(364, 66, 'Kenyon Collier Jr.', 'Atque tenetur ullam dicta odit repellendus tempore. Et natus id cupiditate ea ad non molestiae. Et aut totam tempora neque dolor. Debitis consectetur rem voluptatem fugiat ut non.', 3, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(365, 89, 'Rigoberto Steuber', 'Incidunt repudiandae nobis veniam. Sit dolorem incidunt magnam veniam eos id. Soluta porro sunt maxime. Quo enim eius culpa quia commodi.', 3, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(366, 94, 'Eula Kreiger', 'Debitis et quia sed ut tempora. Harum eos tempore doloremque odio nostrum ut incidunt quidem. Consectetur aut adipisci beatae qui pariatur expedita nulla.', 4, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(367, 63, 'Xavier Nicolas', 'Quod et error ut iusto. Voluptas qui illum et error asperiores quas eum ratione. Ut facere blanditiis excepturi veniam omnis odit et. Natus quo ut blanditiis vel inventore et.', 1, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(368, 81, 'Mr. Reynold Becker Sr.', 'Nisi sapiente aut est distinctio aliquid. Tenetur omnis et voluptas facere voluptas non. Necessitatibus qui rerum optio optio. Iure aut facilis eos ut qui.', 1, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(369, 88, 'Dr. Zella Little V', 'Dignissimos aperiam corporis rerum ut sed saepe suscipit ducimus. Tempore hic itaque est illum nihil.', 2, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(370, 85, 'Monserrat Price', 'Est expedita et quaerat sit dolore autem recusandae molestiae. Fuga quos autem maiores. Optio iste accusantium aperiam cupiditate et quia. Molestias doloremque autem consectetur perferendis.', 3, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(371, 68, 'Brendan Paucek', 'Cum minima voluptatem architecto dolor. Est molestiae ipsum modi excepturi voluptas qui explicabo. Nulla ipsam voluptas non ducimus debitis fuga eius earum.', 1, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(372, 98, 'Audra Renner', 'Adipisci voluptatem sint dolor autem. Et sed veritatis eum temporibus et.', 2, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(373, 95, 'Dr. Virgil Moen', 'Sunt omnis assumenda qui qui doloribus. Ut voluptas atque similique et in. Aut asperiores rerum labore. Sequi omnis esse earum et nisi cupiditate sint.', 3, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(374, 81, 'Trenton Howe', 'Molestiae quibusdam et esse reprehenderit et. Harum molestias harum est id est aut. Nostrum autem sit voluptas provident debitis delectus. Aperiam reprehenderit eaque quibusdam velit itaque et minus.', 5, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(375, 80, 'Margaretta Breitenberg', 'Rerum maxime aut facilis. Voluptas neque voluptas fuga dicta dolorem totam et. Dolore non consequuntur non officia.', 3, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(376, 66, 'Sophia Maggio', 'Quis non in quidem molestias fugit. Ipsa autem vero consequatur. Architecto facere debitis laudantium ut quis quo. Inventore sit temporibus deserunt eaque.', 0, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(377, 88, 'Miss Maggie Bergnaum', 'Eos nisi tempora consectetur quae et optio voluptatum aliquam. Quaerat distinctio ipsam ea et ut sed unde beatae. Laboriosam commodi sit eos illo quos. Occaecati et voluptatem qui.', 4, '2021-07-06 23:28:44', '2021-07-06 23:28:44'),
(378, 54, 'Dwight Hickle', 'Ea in modi dolor nisi. Aut ipsum est dicta id ut error dolore cumque. Labore facere dicta autem dicta laboriosam sunt. Officia illum quisquam fugit unde fuga dolores aut vitae.', 1, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(380, 78, 'Prof. Belle Gaylord Jr.', 'Aut et et voluptates ut. Dolor illum et sit fuga ut sed dolore sit. Voluptatem quas qui molestiae consectetur eius debitis. Nulla distinctio aliquid consequuntur quaerat quis harum aut placeat.', 5, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(381, 61, 'Trevion Feeney', 'Eius beatae nemo sit numquam et enim magni. Nesciunt odio magni quae quaerat nulla qui.', 4, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(382, 72, 'Miracle Conn', 'A odit vitae praesentium ipsa. Optio incidunt quibusdam quia nemo nulla. Eos vel ex amet minima dolor. Voluptatem et vel est asperiores quia est.', 4, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(383, 80, 'Miss Allie Spinka', 'Voluptatem iste asperiores ullam aut eaque. Maiores consequuntur aut nihil commodi. Harum id quisquam modi error. Voluptatem ab quo explicabo.', 3, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(384, 72, 'Briana Simonis I', 'Est earum ratione maiores cum mollitia quo. Voluptatem harum molestiae commodi. Voluptatem eius est animi libero velit.', 3, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(385, 53, 'Rafaela Bogan', 'Voluptas ipsum soluta odit amet est tempore aliquam et. Iusto ipsum illum rerum. Asperiores vel sunt fuga consequatur qui beatae labore rerum. Nisi veniam autem veritatis soluta.', 2, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(386, 86, 'Stephania Heathcote PhD', 'Officiis pariatur ut cum a voluptatem. Rerum delectus error ipsa. Ratione rerum nemo sapiente consectetur aut.', 5, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(387, 57, 'Jody Herman', 'Quae qui dolorem deserunt. Soluta cumque quis molestiae magnam voluptatem commodi illo. Velit cum tenetur nostrum molestiae sapiente. Fuga quo eos sit.', 4, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(388, 53, 'Yesenia Schimmel V', 'Dolor eius culpa eius sit deleniti. Autem est voluptas molestiae reprehenderit. Exercitationem porro cumque autem consectetur.', 1, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(389, 74, 'Mrs. Maryjane Kling PhD', 'Atque eveniet quas corrupti quos qui vel. Enim earum sint adipisci doloribus. Consequatur et non exercitationem in.', 0, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(390, 79, 'Adolph Langosh', 'Nisi aut et culpa. Accusamus minus nobis sint et. Enim quia quo veniam et aspernatur illo autem.', 1, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(391, 77, 'Mr. Alfredo Johns III', 'Ut sit id corporis esse at soluta. Iste voluptatem officia aliquid quis nam voluptas. Quae omnis maiores voluptas eos.', 1, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(392, 68, 'Timmothy Keeling', 'Fugiat non temporibus exercitationem ducimus in fugiat molestiae. Nesciunt qui reiciendis omnis et placeat voluptas eaque quia. Aut rerum quos totam molestias eaque. Adipisci reiciendis libero quia soluta aut.', 4, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(393, 77, 'Kaleb Schmeler', 'Qui adipisci sit id dolorem. Deserunt magnam sed reiciendis sapiente libero. Veniam magni architecto vel ut fugit. Architecto a provident delectus eius.', 4, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(394, 100, 'Kristoffer Kertzmann', 'Aut earum ut qui. Sunt pariatur magni adipisci dolor id. Quia et rerum ut sit quibusdam enim. Cumque omnis cum ratione rerum molestiae.', 5, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(395, 70, 'Mrs. Paula Dooley', 'Consequuntur saepe molestias id et ea exercitationem. Qui cumque perspiciatis nesciunt accusamus. Reiciendis quia enim eaque rem totam optio et.', 1, '2021-07-06 23:28:45', '2021-07-06 23:28:45'),
(396, 87, 'Wilhelmine Mueller MD', 'Omnis amet id voluptas nisi odio. Reprehenderit et adipisci id molestias dolores vel repellat. Quas impedit assumenda sed autem libero.', 4, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(397, 72, 'Gino Kihn', 'Exercitationem enim distinctio est eos id sunt. Excepturi non et iste commodi. Aut nulla qui soluta eius voluptas et.', 0, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(398, 89, 'Christophe Tromp MD', 'Iste suscipit qui aspernatur velit voluptate. Amet sit placeat et iure ad quod et et. Velit voluptatem quis hic. Quisquam aut vel aut esse.', 4, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(399, 75, 'Dr. Cordie Bradtke', 'Dolorum dolorum fugiat sunt non laboriosam error repudiandae beatae. Rem sed architecto iure neque minus. Tempore eaque eaque nisi tenetur ratione. In accusamus officia omnis sit quos.', 0, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(400, 74, 'Prof. Reta Brown Sr.', 'Corrupti fugiat mollitia quasi in. Fugiat est quaerat et neque dolorum cumque accusamus.', 4, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(401, 98, 'Prof. Letha Mills', 'Qui dolor dolor non sed sed. Dolores velit quia ducimus recusandae possimus non at. Voluptatem occaecati quidem eaque debitis. Non fugit sint amet sunt delectus.', 1, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(402, 57, 'Tess Kulas', 'Eaque doloribus rerum at. Ex ducimus cumque fuga quo sit voluptatem cum. Vero tempore quos dicta praesentium unde. Error eligendi nulla quae corporis sit impedit.', 0, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(403, 75, 'Beau Yundt PhD', 'Tempora provident iste beatae qui voluptatem quam iste nemo. Tempora cumque occaecati sit autem qui nulla enim. Voluptas sit cumque nihil.', 5, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(404, 64, 'Prof. Alexzander Kirlin IV', 'Ipsa dignissimos modi ut et dolor mollitia. Voluptas perspiciatis sint cum dignissimos qui provident. Ipsam odit eum nulla magnam mollitia fuga magni rem. Consequatur quidem neque itaque dolore ut.', 1, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(405, 91, 'Hazel Kris', 'Aut dolores aut id sed repellat mollitia in. Dolorem quo dicta voluptatem expedita voluptas nemo nisi tempore. Laborum ipsa nam quo ex recusandae sit laboriosam molestiae.', 0, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(406, 97, 'Prof. Stone Fahey III', 'Incidunt rerum non unde aspernatur et quibusdam consequatur. Minima at modi autem. Eius iste perspiciatis molestias totam facilis et asperiores quia.', 4, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(407, 64, 'Cynthia Swift', 'Veniam dolorem vitae voluptatibus ipsa ut voluptatem. Illum ut deleniti omnis id. Omnis aut aspernatur non facere repellat dolorum. Et distinctio occaecati magnam fuga laborum consequuntur occaecati quidem.', 1, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(408, 55, 'Cielo Corwin DVM', 'Sunt ducimus reiciendis sed. Enim id velit repellat sed dolorem in sed dolorum.', 1, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(409, 89, 'Dr. Jaron Collier MD', 'Aut nesciunt neque saepe nemo. Quod sit veritatis eaque error et maiores quod vel. Soluta tempora doloremque qui sed.', 3, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(410, 60, 'Prof. Esta Gusikowski', 'Et distinctio maiores perferendis voluptate. Velit molestias ad optio vel quidem.', 1, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(411, 58, 'Tomasa Ratke', 'Porro enim qui est non eligendi voluptas. Ea et corrupti molestias exercitationem ratione alias sunt. Vel minus iste ipsum incidunt. Necessitatibus aliquam ut dignissimos facere nihil qui.', 5, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(412, 88, 'Yoshiko Gutmann', 'Quia modi ut doloribus dignissimos est iure. Temporibus voluptatibus quas inventore. Corrupti placeat est deleniti nemo omnis. Fugiat similique optio eligendi.', 0, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(413, 90, 'Lyda Donnelly', 'Sequi repudiandae rerum sapiente. Placeat voluptates voluptatem voluptate accusamus. Alias occaecati repudiandae voluptatem labore.', 2, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(414, 59, 'Osvaldo Eichmann', 'Odio officiis dolor molestiae nisi. Temporibus maiores consequatur vel sed. Deserunt voluptatem odit repudiandae possimus laboriosam consequatur aliquid. Quos id repudiandae ut molestiae. Reprehenderit quis eaque nemo consectetur veritatis.', 4, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(415, 84, 'Blair Gleason', 'Ut adipisci inventore in earum repudiandae quia. Delectus odit ipsam id tempora voluptatem voluptatum. Eum in consectetur dicta similique.', 0, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(416, 61, 'Dr. Connor Kuhn I', 'Quasi porro sunt veritatis quia eum. Sed saepe id sit qui repellendus commodi. Veritatis doloremque aut blanditiis est eum. Harum cupiditate sit quia at provident.', 2, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(417, 71, 'Jailyn Watsica I', 'Aut dolor voluptatum harum error. Sint eum vel iure rerum reiciendis.', 2, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(418, 80, 'Prof. Kiel Emard II', 'Laboriosam quaerat deserunt in omnis. Vero ipsa nihil eos similique et. Ut non deleniti fugiat praesentium non. Sunt nam labore in.', 5, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(419, 83, 'Bulah Goldner', 'Optio qui ab consequatur eaque fugiat enim autem sapiente. Ut voluptatem enim tempora nisi. Esse qui consequatur fugiat. Ut itaque et explicabo et dolores.', 2, '2021-07-06 23:28:46', '2021-07-06 23:28:46'),
(420, 58, 'Dr. Brown Bartoletti', 'Porro architecto earum voluptatibus quo ex voluptas autem. Aut error ut earum at dolores officiis. Placeat impedit impedit perferendis molestiae praesentium sunt. Voluptatem molestias hic sed veritatis rerum.', 0, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(421, 77, 'Mr. Boyd Dietrich', 'Magnam ex dolorem ducimus animi sed quis at. Repudiandae facilis nihil consequuntur sit earum doloribus saepe. Voluptatum impedit eligendi ipsa autem. Molestiae minima eveniet et quaerat fuga aut iure.', 3, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(422, 80, 'Mrs. Lia Emmerich', 'Molestiae voluptas nisi velit quia assumenda nihil est. Pariatur voluptatum et cum ea voluptatem sint et. Quod iste provident excepturi assumenda quos sit debitis.', 2, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(423, 72, 'Kirk Kerluke', 'Est quia excepturi consequuntur incidunt rerum voluptates. Sequi harum laboriosam dolor suscipit. Ad minima qui excepturi itaque est. Ea nisi occaecati non fuga deleniti dolor tenetur.', 4, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(424, 74, 'Efrain Schroeder', 'Est et et ipsam qui consequuntur iusto inventore. Sapiente ea beatae dicta vitae. Inventore ipsum ut iusto omnis. Aspernatur quia distinctio quo.', 5, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(425, 66, 'Leif Gislason DDS', 'Facere cumque et earum optio dolores itaque quae. Quo quibusdam ea est praesentium. Ab molestiae similique corporis iure. Fuga quasi molestiae ratione consequatur.', 4, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(426, 68, 'Brad Zieme', 'Et sit repellendus accusamus numquam officiis. Beatae praesentium assumenda magnam et provident et quam.', 3, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(427, 66, 'Luna Flatley', 'Et dolorem aut quisquam iste voluptatem. Sed veniam velit quisquam debitis. Sed libero illo qui blanditiis. Soluta voluptates modi quo voluptatum adipisci aperiam consectetur.', 3, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(429, 75, 'Ms. Beryl Prohaska', 'Nihil architecto impedit quis suscipit. Ut dolor omnis modi a eum dolor ut. Corporis illo placeat dolores. Cum consequuntur magni nobis et.', 2, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(430, 72, 'Nickolas Beer', 'Molestias sed dolor omnis architecto provident esse autem. Odio nihil animi itaque soluta. Quod consectetur sint dolorem animi perferendis aliquid.', 2, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(431, 89, 'Eunice Pacocha', 'Quam rerum nihil nam velit. Impedit optio est sit qui repellendus eum occaecati. Atque minima deleniti quos aliquam. Ea et numquam quam quia est qui.', 1, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(432, 75, 'Louie Orn', 'Suscipit culpa perferendis quia enim. Iure ut qui quia et hic explicabo assumenda. Ad incidunt iure nulla sed eveniet voluptas quo ullam.', 3, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(433, 57, 'Dr. Jaylin Wiza', 'Tempore tenetur et et neque quo. Repellat et voluptatem ad voluptas possimus illum saepe. Qui expedita beatae architecto est officiis placeat quo minus. Cum vel ea id aut.', 3, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(434, 76, 'Enrico Kling', 'Odio sed nihil non sit sint enim. Optio iure sint voluptatem. Consequatur vitae officia illo dolorum. Consequatur laboriosam est dolores est. Debitis eos consequatur labore sapiente sit voluptatem.', 3, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(435, 95, 'Charity Effertz', 'Quae incidunt eaque autem natus velit ratione sapiente. Odio recusandae alias quisquam. Ea aliquam voluptatem voluptatibus ullam. Minus consequatur id velit sit quia quia cum.', 4, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(436, 70, 'Prof. Elissa Mertz', 'Aut deserunt ut aperiam mollitia ex. Id magnam doloremque voluptas debitis. Hic quasi provident consectetur sed. Qui modi commodi odit quo.', 3, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(437, 88, 'Blaze Veum', 'Enim debitis alias quibusdam sit expedita illum iure vitae. Rem recusandae qui aliquam sit suscipit possimus.', 1, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(438, 64, 'Amara Hintz', 'Et qui in recusandae et. Rem omnis nam quas enim ad. Enim cumque omnis aperiam eos sint.', 3, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(439, 67, 'Sanford Farrell', 'Atque distinctio eos nisi. Et aut molestiae consequatur quaerat excepturi nobis. Ipsum accusantium possimus est assumenda consequatur est tenetur molestiae. Molestiae debitis non error sint quis vitae saepe. Mollitia quia fuga fugit aut quia neque explicabo.', 3, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(440, 72, 'Liliana O\'Reilly III', 'Ratione dolores voluptatem consequatur repellendus. Voluptatibus rerum inventore debitis molestias nostrum.', 5, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(441, 67, 'Johathan Kovacek', 'Harum cumque reiciendis excepturi commodi provident autem voluptatem. Harum nulla nobis consequuntur libero at. Aut consequatur quia aut perferendis error tempore sed.', 4, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(442, 68, 'Dr. Nelda Waelchi', 'Vero ex ut nemo aut id. Mollitia tenetur omnis culpa est. Natus incidunt placeat sed reprehenderit accusamus.', 3, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(443, 84, 'Edison O\'Hara', 'Laboriosam aspernatur sequi sequi totam placeat quas debitis. Sit delectus magni deleniti tempore mollitia nulla voluptas repudiandae.', 2, '2021-07-06 23:28:47', '2021-07-06 23:28:47'),
(444, 89, 'Dr. Kaden Gleason', 'Commodi est sed aut et modi est. Aut minima hic assumenda aliquid dolores reiciendis et eaque. Harum eligendi in consequatur tenetur. Blanditiis quis et molestiae officia eaque et tempore exercitationem.', 0, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(445, 59, 'Stefan Powlowski IV', 'Excepturi et sunt ea. Reiciendis exercitationem recusandae possimus tenetur. Totam iusto praesentium dolorem aut ut quis ut. Reiciendis et consequatur autem doloremque perferendis.', 3, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(446, 55, 'Jaqueline Armstrong', 'Labore officiis corrupti nobis sit cupiditate est. Molestiae voluptatem ut pariatur non maiores. Quo voluptates est ducimus. Mollitia quasi adipisci nulla debitis.', 2, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(448, 92, 'Patrick Ebert', 'Vitae necessitatibus itaque perspiciatis vel. Veritatis et error labore mollitia mollitia esse. Quaerat cum itaque voluptas.', 4, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(449, 60, 'Burley McKenzie IV', 'Natus consequatur asperiores nam sequi. Enim facilis corrupti expedita impedit. Iure est exercitationem id molestiae hic. Eos quis et voluptas magnam.', 4, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(450, 68, 'Arthur Runolfsson V', 'Eos tenetur qui qui non recusandae. Temporibus at ad quos aspernatur non molestiae impedit. Nihil sapiente quo et tempore est. Nihil non voluptate accusantium magni.', 4, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(451, 80, 'Ashleigh Schinner', 'Veniam dolorum et repudiandae totam eum expedita sint. At dolorem voluptatem officiis. At aperiam vel quia. Nobis ex consequatur voluptatem voluptatem minima quia.', 4, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(452, 95, 'Clementine Crooks', 'Accusamus qui autem optio sint vel. Voluptatibus eligendi saepe autem aut. Suscipit et sint error. Illum voluptate maiores molestiae voluptatibus voluptatem dolorem eius.', 2, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(453, 63, 'Watson Jacobi', 'Qui molestiae aut et in et possimus laborum. Dignissimos culpa quo vel magnam officiis quasi. Ea fuga temporibus sed velit quidem fugit hic et.', 2, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(454, 75, 'Colin Casper', 'Saepe blanditiis vero iste delectus architecto voluptas. Nam voluptate doloremque corporis ea. Repellat blanditiis eos provident aliquam voluptas rerum recusandae molestiae. Nam est quis impedit labore aut laudantium ea.', 0, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(455, 68, 'Katharina Heller I', 'Perferendis qui est voluptate ut. Debitis eius sunt ducimus excepturi harum. Odio enim occaecati eveniet ut impedit.', 1, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(456, 92, 'Brayan Nader', 'Dolorem magni est excepturi dolor nihil sunt. Ex sint incidunt necessitatibus et nihil. Vel autem temporibus perspiciatis earum autem.', 3, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(457, 84, 'Elian Reichel', 'Optio mollitia error maxime. Quae labore minima autem et et eaque. Ipsam numquam mollitia dolores asperiores.', 2, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(458, 96, 'Miss Elinor Ryan', 'Et aliquid illo nemo dolor accusamus. Aut distinctio est et ut porro provident. In laboriosam quia et sint cupiditate. Suscipit autem mollitia laborum non.', 1, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(459, 77, 'Alessandro Orn', 'Ad inventore quis saepe voluptatibus quidem ad. Quas beatae eaque illum doloribus saepe alias. Reiciendis aut cupiditate consequuntur molestiae. Et doloribus rerum repellendus et non.', 3, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(460, 53, 'Veronica Kunde', 'Deleniti corrupti velit neque qui dolorem est reprehenderit repellat. Magni autem dolor libero omnis ipsum quas. Accusamus recusandae modi inventore asperiores nesciunt. Sit facere illo iste nesciunt est quas maiores tenetur. Qui iusto voluptatem et ducimus.', 1, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(461, 88, 'Dr. Linnie Mitchell', 'Aut hic ex nihil. Dolore laboriosam voluptatem qui. Laborum reprehenderit et beatae aut tempore et quae.', 1, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(462, 74, 'Bobby Kiehn', 'Ut sequi aut omnis at voluptatem voluptatem dolor nisi. Sunt totam debitis eligendi vel rerum aspernatur. Magni magni ut dolores alias illo. Quisquam officia aut ut cum autem dolorem.', 0, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(463, 77, 'Vada Kuvalis', 'Vel maiores dolore nemo et. Quam sed quis quo et in cum optio. Dolorem tenetur consequuntur voluptates occaecati placeat adipisci dolorem. Mollitia quis quasi ea maxime rerum ducimus. Ipsum qui magni sapiente.', 1, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(464, 93, 'Peyton Schmeler', 'Consequatur qui perspiciatis sequi doloremque. Dolor quis magni tenetur laudantium. Necessitatibus aliquid est itaque culpa aspernatur perspiciatis. Esse ad rerum voluptatem quasi beatae. Quam veritatis sed non ipsa.', 0, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(465, 71, 'Jed Heller MD', 'Earum expedita dolores pariatur maiores ut. Vitae et aut et quibusdam quibusdam quaerat.', 0, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(466, 57, 'Americo Rowe III', 'Rerum quis omnis iste veniam soluta aspernatur. Nemo et quia veritatis facere aspernatur ullam dolorum dolor. Dicta praesentium omnis eius modi ratione omnis consequatur. Aut sint velit excepturi id.', 3, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(467, 67, 'Nasir Smith', 'Corporis labore cumque ab vel sint est rerum. Ipsum sint repudiandae provident. Eligendi at non excepturi repellendus qui voluptatibus doloremque. Et dicta accusamus consectetur est blanditiis ad.', 0, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(468, 81, 'Marisa Bartell', 'Quas et fuga corporis officia provident vel adipisci. Est velit impedit doloremque autem ipsum rerum. Sit et eius ut.', 2, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(469, 61, 'Dr. Colt Donnelly PhD', 'Aut sunt et enim tempora recusandae rerum quos. Quia commodi et voluptas molestiae amet culpa sint voluptatem. Omnis aut omnis repellat non dolor ut quis. Nam labore sapiente est illo harum blanditiis.', 2, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(470, 89, 'Koby Weimann', 'Voluptatem nesciunt rem itaque rerum omnis. Occaecati ea delectus ipsum minima saepe. Quam exercitationem blanditiis eveniet blanditiis. Ipsum et enim qui quia. Est quia voluptatum magni necessitatibus consequatur molestiae qui numquam.', 1, '2021-07-06 23:28:48', '2021-07-06 23:28:48'),
(471, 92, 'Rosalind Konopelski PhD', 'Dolores amet eos vero mollitia aut nulla. Et possimus a asperiores quia sit minus.', 1, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(472, 64, 'Brionna Lowe DDS', 'In deleniti quis perspiciatis nam accusamus. Dolor amet quod accusamus pariatur aut. Fuga praesentium aut non nulla ea. Suscipit molestiae consequatur explicabo saepe.', 5, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(473, 99, 'Rosendo Fisher DVM', 'Nesciunt omnis nisi voluptates deserunt tenetur. Officiis sunt laboriosam mollitia sit vitae.', 3, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(474, 54, 'Reva Murray', 'Eum dicta in nihil eligendi est qui. Doloribus ex ad id eaque animi impedit. Porro quod incidunt molestiae iusto in fuga molestias.', 5, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(475, 79, 'Edythe VonRueden', 'Non excepturi itaque voluptatibus magni sunt dolores. Maiores cum eum ipsum. Natus molestias minima ut. Ipsa qui facilis quaerat nobis voluptatem aliquid.', 0, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(476, 93, 'Mr. Jabari Mraz', 'Magni et explicabo ea omnis vitae distinctio. Rerum quod voluptas pariatur ratione. Et voluptatem aut esse odio ea nihil.', 3, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(477, 67, 'Devyn Carroll Jr.', 'Nostrum quia in non rem assumenda in distinctio voluptatum. Ut doloribus rerum est similique dolore. Numquam repellat enim ipsum illum rerum ex.', 0, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(478, 73, 'Madonna Rowe', 'Aut ipsa sint qui qui. Iure soluta hic exercitationem qui accusantium. Veritatis qui harum omnis ut et architecto qui. Quod corrupti ullam eum et sit ullam nobis.', 5, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(479, 85, 'Breanna Sipes', 'Id commodi cupiditate architecto dolore neque ad itaque autem. Consequatur minus et alias voluptas. Odio corrupti omnis dignissimos animi sed sit et et. Sint velit saepe quibusdam incidunt iure.', 4, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(480, 62, 'Lavinia Mills', 'Assumenda corporis minus id quia quos aut. Qui voluptas aspernatur accusantium maxime repellat sit veniam velit. Libero inventore qui sequi soluta. Blanditiis velit quae earum delectus. Sed voluptatem dolores est iste et.', 0, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(481, 93, 'Isai Schumm', 'Qui vitae et sed ipsam molestias temporibus in a. Porro ipsa incidunt dolorem quasi perferendis. Et quasi est a. Placeat hic maxime mollitia dolorum voluptatum.', 0, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(482, 91, 'Susan Cronin MD', 'Sed enim quos nam molestiae. Debitis sed debitis voluptas dolore. Commodi doloremque doloribus non quia quasi fuga quia ad. Cupiditate ut ab veritatis natus inventore.', 2, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(483, 84, 'Antoinette Krajcik', 'Cumque minus eos est dignissimos doloremque est dolorem. Voluptatibus ut veritatis quia. Quia omnis consectetur provident officiis tenetur qui. Beatae laudantium ea iure sed.', 3, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(484, 82, 'Dr. Joyce Farrell', 'Perferendis ut temporibus aliquam atque id et atque. Quos non similique amet dolor nihil eos nihil placeat. Rerum harum accusantium porro.', 5, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(486, 92, 'Jerome Christiansen', 'Fugiat quia numquam veniam eligendi a. Quo impedit voluptatem debitis. Et eveniet et dolorum blanditiis est unde sint.', 2, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(487, 74, 'Dr. Jordyn Sipes MD', 'Voluptas consequatur asperiores libero tempora velit. Blanditiis velit neque omnis non et. Qui rerum aut ipsum necessitatibus. Eveniet molestiae libero nihil qui officia non eum.', 4, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(488, 68, 'Sallie Grimes V', 'Quibusdam atque enim quae et. Dolorum voluptatum nihil dignissimos. Maiores dolore illum doloribus blanditiis nam eos. Est voluptatibus qui unde.', 4, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(489, 55, 'Diego Considine I', 'Aut et sapiente eaque ut officia et. Accusamus dignissimos qui perferendis molestias. Et blanditiis quibusdam corporis unde quod. Numquam voluptate excepturi qui quia ullam in ab aperiam.', 2, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(490, 79, 'Camila Hessel', 'Nostrum quasi aspernatur minima dolorem officia tempore minima et. Ut adipisci fugiat qui ducimus tempore qui dignissimos. Quis eum enim ut quasi ut.', 4, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(491, 94, 'Dr. Amani Volkman V', 'Et quod iusto aliquam et neque ut et. Sequi qui aliquam libero rerum optio pariatur voluptatibus. Iste eaque cum cumque explicabo excepturi voluptatibus maxime velit.', 4, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(492, 67, 'Prof. Emory Miller DDS', 'Ipsam nihil nisi quam adipisci expedita. Sint est minima ut ad quia veritatis aut. Id labore temporibus ipsum soluta quibusdam eligendi. Ratione velit dolores reprehenderit qui aperiam reiciendis voluptatem placeat.', 4, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(493, 94, 'Buford McGlynn', 'Blanditiis id modi in deleniti ipsam sed et. Tenetur neque voluptatem dolorem placeat voluptatibus. Illo quas aut ab ea enim voluptas.', 4, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(494, 94, 'Bud Block', 'Nihil accusamus ad rerum commodi temporibus provident. Aut facilis officiis qui vero aut ullam. Et ea enim sequi sit.', 5, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(495, 96, 'Sheila Hill', 'Quidem sunt facilis sint sint. Rerum nam voluptatibus iure non. Molestiae non omnis est et.', 1, '2021-07-06 23:28:49', '2021-07-06 23:28:49'),
(496, 58, 'Mr. Jalen Cartwright III', 'Culpa fugit quos voluptas est ea. Quidem provident porro eum id nemo et error cum.', 5, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(497, 74, 'Dr. Sylvester Bauch Sr.', 'Dicta quae illo qui blanditiis veritatis et. Possimus et repellat id. Sit qui dolore voluptatem aut quis. Voluptatum perspiciatis autem non sit voluptatum qui.', 2, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(498, 51, 'Ahmed McLaughlin', 'Rerum consectetur officia ab placeat officiis labore. Sed et et minima est voluptate fugit. Qui tempore eum perspiciatis magni recusandae eveniet numquam harum. Sit animi voluptas optio aspernatur reprehenderit ex ducimus.', 5, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(499, 65, 'Laura Lehner', 'Ut qui ad nulla. Quia aut cum tempore maiores natus. Eveniet rerum dolores ea inventore. Minus et vel distinctio ut fugit.', 2, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(500, 57, 'Mr. Tod Moen', 'Error consequatur nulla fugit autem dolorem voluptas. Fugiat et aperiam ex ea consequatur ut est. Placeat ea ut cumque deserunt laborum. Quis illo hic corrupti veritatis ratione cupiditate.', 1, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(501, 58, 'Mr. Alphonso Greenholt III', 'Aut minus laborum sint non et. Perspiciatis temporibus dolor qui ab. Voluptatum et non laboriosam aut.', 5, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(502, 51, 'Dr. Sheridan Hoppe', 'Non delectus blanditiis est non delectus sit. Minima alias in perspiciatis voluptates et voluptas. Libero enim quas enim.', 5, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(503, 85, 'Prof. Deshaun Dickens', 'Illo dolores quia quibusdam at. Sint at saepe voluptate expedita facilis est consequatur. Recusandae modi voluptate impedit debitis. Eos harum veniam qui quia itaque labore.', 3, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(504, 74, 'Ms. Thora Heller DVM', 'Est cum doloremque pariatur quos optio accusamus. Necessitatibus provident quo nulla quia consequatur rerum nihil. Quos asperiores cumque alias vitae voluptate consequuntur.', 3, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(505, 75, 'Manley Larkin', 'Voluptas voluptatem perferendis velit perspiciatis sunt maiores quasi. Aut animi ut quia eos error provident. Temporibus culpa amet eum odit aut.', 2, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(506, 86, 'Pearl Waters', 'Quibusdam quia asperiores quasi eveniet autem commodi qui. Voluptatem saepe et perferendis temporibus repellendus. Facilis eos et modi provident rem laudantium.', 5, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(507, 58, 'Jayson Gorczany DDS', 'Vero architecto velit reiciendis illo. Voluptatibus recusandae natus magni modi rerum dolorem. Aut ex sit deserunt in possimus dignissimos et.', 4, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(508, 97, 'Arvel Kulas PhD', 'Consequatur mollitia quia commodi est qui quo enim quisquam. A excepturi inventore perferendis non vel est sunt.', 4, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(509, 53, 'Freida Ebert DDS', 'Sed aut odio et quasi. Quo ut nisi numquam corrupti optio voluptatem. Inventore autem praesentium vel iste doloremque. Earum est voluptates voluptates corporis animi.', 2, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(510, 51, 'Narciso Kiehn', 'Itaque nesciunt et fugit. Repellat quam reprehenderit assumenda veniam amet nesciunt.', 5, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(511, 80, 'Juliana Connelly DVM', 'Occaecati qui aut porro architecto. Architecto voluptatem qui eius porro ab dicta.', 4, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(512, 54, 'Emile Reinger', 'Autem eligendi rerum eligendi atque exercitationem. Sunt tenetur a occaecati voluptatem. Eos amet tempora nemo. Magni quibusdam voluptatem provident.', 0, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(513, 73, 'Ms. Viva Ward', 'Consequatur ut eligendi aperiam recusandae et. Eos excepturi adipisci aut et voluptate. Nihil earum fuga accusamus laboriosam et. Rerum suscipit consequuntur qui inventore dolorum doloribus quis.', 0, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(514, 89, 'Magdalen Hoeger', 'Aut minus harum ullam commodi ea et sit. Ut et quod dolor ea incidunt iste est. Mollitia quibusdam aut amet ut.', 0, '2021-07-06 23:28:50', '2021-07-06 23:28:50'),
(515, 85, 'Ms. Megane Kuhn DVM', 'Suscipit omnis vitae sit hic. Alias ex consequatur recusandae modi optio aut pariatur. Sed et delectus aut est maiores aut. Ut qui consectetur quia debitis ad recusandae.', 2, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(516, 100, 'Enos Ferry', 'Possimus nobis possimus omnis. Beatae labore aut iure.', 1, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(517, 79, 'Marcella Reynolds', 'Nesciunt sunt voluptatem amet. Aut aliquam debitis veritatis nesciunt. Eius sed sit a illum voluptate modi exercitationem. Quos quibusdam in inventore omnis eum.', 0, '2021-07-06 23:28:51', '2021-07-06 23:28:51');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(518, 62, 'Jalyn Ritchie', 'Sit quam non molestiae voluptates ullam. Molestiae nostrum voluptatibus dolorem tempore delectus ut. Ut aut aliquid magnam nesciunt eligendi quo.', 2, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(519, 73, 'Liliane Stehr', 'Esse minus sed pariatur ipsam vel dolore consequatur. Sed sint aliquam ad voluptas sit placeat. Totam et nesciunt et non sed sequi illo.', 2, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(520, 62, 'Dr. Newell Roberts', 'Sit esse est totam laudantium. Doloribus porro doloribus hic quis ut quis. Itaque et harum enim deserunt. Et laboriosam voluptatem enim fuga sit quisquam non.', 5, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(521, 68, 'Prof. Melvin Braun I', 'Quia sed ad est nihil quos dignissimos optio. Velit et et blanditiis quo dignissimos dicta voluptatem. Ut aut non eius laboriosam dolorem maxime. Deserunt qui natus nesciunt aut id quae ipsam. Nihil eaque illum commodi at natus.', 5, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(522, 83, 'Lloyd Rice', 'Ipsam quia sed ut. Eveniet sequi omnis cupiditate quibusdam a quaerat. Velit sit numquam veritatis sed facilis error maiores. Asperiores minus eius qui aliquid rerum et et. Itaque aut est velit ipsum in.', 3, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(523, 80, 'Jaqueline Rutherford Jr.', 'Aut officia voluptas et. Porro aut consequatur eius velit omnis. Exercitationem harum nihil ut. Nulla et facilis accusantium laborum deserunt iusto. Quos eos eum modi aspernatur sint.', 4, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(524, 94, 'Lindsay Hahn Sr.', 'Qui cum tempore rem possimus excepturi quo. Ea alias debitis quam. Ut nostrum qui iure quasi aut magni ipsam.', 4, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(525, 90, 'Dr. Frederik Hegmann', 'Consequatur non dolore non iusto et. Veniam modi asperiores sunt et est similique error. Id veniam modi nostrum nihil soluta dolore.', 2, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(526, 84, 'Shanny Hessel', 'Necessitatibus possimus et officia est. Voluptatibus officia aliquid non enim possimus. Quasi facilis provident neque in.', 0, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(527, 92, 'Ernestina Collins', 'Qui rerum tempore dicta maiores perferendis qui. Officia ut aliquid et sint repellat alias facilis. Itaque ut unde omnis ullam.', 1, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(528, 57, 'Dr. Ignatius Herman', 'Nihil sed quod quos veritatis. Tenetur quis placeat rerum accusantium mollitia. Omnis sit suscipit ut quia et ut. Fugit repudiandae aut et.', 0, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(529, 65, 'Ayden Parisian', 'Sed ad molestiae repellat omnis ut quia. Ullam exercitationem cum nam praesentium corrupti inventore sequi. Voluptatem qui adipisci et.', 5, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(530, 76, 'Anibal Will', 'Fugiat autem ratione nihil fuga sed magni et. Impedit et delectus quia quia impedit. Nihil consequuntur omnis at sint. Sapiente consequuntur consequatur voluptate dolore nihil.', 5, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(531, 63, 'Alyce Russel Sr.', 'Laboriosam omnis officiis illo aliquid aut aut. Enim voluptas ipsum et voluptas. Nostrum qui recusandae veniam quas ducimus. Ipsum non aspernatur omnis ab excepturi illum.', 3, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(532, 82, 'Prof. Derrick Gibson DDS', 'Corporis possimus vel eius voluptatum odit facere non. Accusamus sequi saepe iste ea voluptas. Ex repellat asperiores doloremque molestiae fugit et. Quod aperiam voluptatem voluptas cupiditate.', 1, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(533, 53, 'Cydney Runolfsdottir', 'Asperiores qui aut reiciendis error molestias cum distinctio ut. Excepturi enim consequatur quidem voluptatem nulla ea et. Quos ullam ea occaecati.', 2, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(534, 54, 'Prof. Greg Schaden I', 'Occaecati velit incidunt ut quibusdam est molestiae sit non. Consectetur et aut cum et sed odio eius. Et quisquam est cupiditate rerum quas quas perferendis. Rerum unde quod non qui.', 3, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(535, 93, 'Dr. Brody Bernier', 'Itaque similique quas sint esse. Molestias dicta cum saepe quas numquam voluptas voluptas rerum. Officiis dolore inventore aliquid nobis ea.', 3, '2021-07-06 23:28:51', '2021-07-06 23:28:51'),
(537, 55, 'Mr. Nestor Spencer IV', 'Rem sunt atque consectetur qui rem. Dolorum voluptatum asperiores veritatis commodi iure et. In ut qui praesentium similique.', 1, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(538, 65, 'Skylar Thompson I', 'Et blanditiis eos et qui amet consequatur. Quo dolorem natus ea qui labore debitis. Quod eos ea ut iure consequuntur dignissimos. Porro rem dolores corrupti ea dolores.', 1, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(539, 56, 'Dr. Garrick Wisozk Jr.', 'Voluptates accusantium cumque et qui sunt. Iste perspiciatis iure rerum neque earum ut blanditiis. Laborum ea quae provident labore dolores praesentium quod. Blanditiis ullam ut consequatur sed eius itaque perferendis.', 5, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(540, 82, 'Dr. Scottie Wilderman', 'Magnam nulla rerum nihil et culpa. Praesentium rem et sint fuga. Facere et qui perferendis sint odio sequi. Alias totam animi est perspiciatis voluptate quo quo.', 0, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(541, 67, 'Prof. Reymundo Gorczany', 'Voluptatem voluptatem expedita tenetur alias incidunt nam sapiente. Corrupti quia ipsam aut ut tenetur quia pariatur. Placeat perferendis cum fuga nam tenetur molestiae vel optio.', 0, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(542, 86, 'Dr. Gretchen O\'Kon PhD', 'Qui perspiciatis tempora et pariatur qui accusamus. Ut nisi excepturi qui ipsum. Aliquam porro doloremque quibusdam et sed. Aperiam ex quos odio et.', 1, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(543, 95, 'Malvina Brown', 'Et aspernatur adipisci dolores. Ipsa ut perspiciatis enim voluptatem. Voluptas aspernatur quo ex aut dolores non. Voluptate porro totam est blanditiis mollitia ullam.', 2, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(544, 62, 'Dr. Coby Wiegand', 'Ad quis qui labore voluptas consequatur. Voluptatem rem iste sequi accusantium qui repudiandae. Hic autem numquam fugiat numquam alias.', 4, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(545, 72, 'Vern Toy', 'Quisquam ducimus natus ex non. Quisquam reiciendis sit aut incidunt. Rerum totam totam voluptates perspiciatis sed quam.', 3, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(546, 61, 'Abdullah Rath', 'Laborum qui dignissimos ex alias quia dolor. Ut omnis nam autem eum facere nobis. Omnis quo dolor et soluta. Fugiat incidunt quia assumenda. Quia modi ab et modi.', 3, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(547, 95, 'Mona Strosin I', 'Reprehenderit ut fugiat enim rerum sapiente. Expedita sit quia et voluptatem voluptatem. Velit enim sunt vel.', 3, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(548, 54, 'Thelma Fadel DDS', 'Dolores voluptatum cupiditate voluptas aspernatur. Repellat molestiae esse est. Aut enim id tenetur necessitatibus sit distinctio. Sit ut eum quo alias velit optio.', 1, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(549, 60, 'Dr. Norene VonRueden Jr.', 'Beatae ut nostrum est ea qui. Placeat veniam harum quia quidem numquam laudantium et corrupti. Voluptates quasi provident perferendis dolor quam animi nemo. Est eveniet dignissimos id.', 1, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(550, 86, 'Prof. Lamont Stark I', 'Totam aliquam deserunt nesciunt nobis id sint odio. Recusandae reprehenderit voluptas explicabo tempora aut. Non vel eligendi optio tempore. Voluptatem et officiis veritatis exercitationem est sit dignissimos.', 3, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(551, 74, 'Reyes Weissnat', 'Aut aut eligendi praesentium. Amet atque voluptas porro esse veniam blanditiis. Nihil accusantium non minima fugiat ut nam in illo. Ex molestiae consequatur mollitia veniam veritatis cumque omnis.', 5, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(552, 92, 'Mikel Windler', 'Corporis debitis facilis magni quia. Eos itaque blanditiis iusto saepe id. Est omnis harum ut. Et cumque repellat velit est.', 1, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(553, 94, 'Jeff Stoltenberg', 'Ipsam pariatur cumque dolorem optio mollitia aliquid quisquam. Facere quia esse tenetur sit. Rerum unde quod eos non beatae dolorem.', 0, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(554, 71, 'Ava Raynor IV', 'Eos doloribus occaecati minus voluptas autem. Sit voluptatum ducimus laborum vitae. Odit repellat nisi et placeat molestiae enim.', 4, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(555, 100, 'Mrs. Jeanie O\'Connell', 'Ea est quia magnam ut praesentium et. Aut impedit fugit facere incidunt. Aliquam quisquam temporibus expedita sunt est saepe soluta.', 3, '2021-07-06 23:28:52', '2021-07-06 23:28:52'),
(556, 74, 'Miss Maryam Schowalter', 'Autem repellendus et iusto. Similique mollitia nam dolore minus ea qui aut repellat. Atque doloremque consequatur quam optio officia. Voluptatem aut impedit consequuntur quia. Voluptatum et maxime quis quo pariatur quidem.', 4, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(557, 88, 'Pete Heathcote', 'Porro nisi reprehenderit sint inventore nam. Velit quod quis qui ut qui vero accusamus. Excepturi numquam voluptas quisquam ut.', 2, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(558, 73, 'Clay Gleichner', 'Explicabo voluptatibus odit et in dicta. Aut reiciendis consequuntur sequi. Nisi et odio aperiam asperiores quia non blanditiis. Consequuntur odio quis id voluptatum molestias modi eaque. Impedit dolor quos sint sit ut.', 2, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(559, 99, 'Madaline Kerluke', 'Quis est quis quisquam maxime quos sint cum est. Rem minima repellendus et itaque. Facere quo et quo est culpa sed. Sint laboriosam aspernatur laborum vitae officiis delectus.', 0, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(560, 60, 'Mr. Lorenzo Krajcik', 'Eius sint illo amet. Doloribus et dolores exercitationem sunt eum. Recusandae assumenda sint deleniti aut sit.', 3, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(561, 95, 'Beryl Mohr', 'Quo et enim laboriosam quod et amet asperiores saepe. Aut eos temporibus et qui dolorem et.', 1, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(562, 55, 'Jalen Walter', 'Ut beatae et repellat nemo sed. Qui odio asperiores dignissimos sit.', 4, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(563, 76, 'Louvenia Dibbert', 'Reprehenderit voluptate impedit facere voluptatem. Eligendi et quia minus et voluptas possimus.', 3, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(564, 63, 'Prof. Emmanuel Hammes', 'Vel architecto qui qui eveniet. Laborum dignissimos ratione quis qui officiis vel omnis. Illum quaerat dolores libero accusamus eligendi.', 3, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(565, 59, 'Alejandra Crist MD', 'Est nisi consequuntur at quaerat. Laboriosam quia sed id voluptatem illo iste quo. Nisi et accusantium magnam a enim voluptates ab minus. Sit placeat eius ratione ab. Voluptatem corporis culpa corrupti doloremque.', 4, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(566, 75, 'Ms. Kasey Zulauf V', 'Facere est nostrum placeat ut autem qui. Debitis perferendis harum modi nihil. Vel ipsa aperiam quidem ipsum.', 1, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(567, 68, 'Elise Hessel', 'Architecto nisi qui in veritatis temporibus. Saepe voluptatem cumque delectus at delectus dolorum. Autem soluta cupiditate unde omnis.', 0, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(568, 51, 'Dr. Yesenia Hayes IV', 'Neque cum voluptas rerum quos et voluptate minus. Omnis at illo laborum consectetur et eveniet. Molestiae et odit sint laudantium doloremque quibusdam corrupti.', 1, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(569, 57, 'Brendan Bechtelar', 'Qui inventore eaque debitis molestiae quod id. Nam illum itaque odio ipsam sit. Et sint pariatur et at rem optio omnis. Accusamus consequatur cumque voluptas numquam delectus omnis commodi libero.', 2, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(570, 87, 'Thaddeus Gleichner', 'Autem dolores et quos aliquam tenetur ipsum. Omnis natus ab cumque temporibus excepturi dolor aliquam sunt. Et tempore nulla magnam rerum amet optio.', 2, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(571, 71, 'Prof. Morris Hills', 'Velit id numquam dolores repellendus voluptatem numquam. Voluptatibus occaecati sint aspernatur et est qui aut. Omnis nulla perspiciatis sed voluptatem.', 1, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(572, 85, 'Reagan Dietrich', 'Et vel dolor voluptas fuga non delectus. Corrupti repellendus quae neque. Distinctio nisi et quod magni quibusdam repellat necessitatibus enim.', 0, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(573, 82, 'Mr. Eladio Dickens', 'Labore pariatur quia esse consectetur et voluptas. Ipsa deserunt qui nemo voluptatem commodi. Animi repellendus qui quia natus. Qui rerum ea quidem. Voluptas dignissimos ut aut tempora.', 2, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(574, 85, 'Flavie Greenholt', 'Nobis hic sequi eveniet sequi sed totam odit et. Accusamus aliquid repellendus illo. Aut veniam non facere quos fuga. Aut perspiciatis quidem veritatis velit.', 2, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(575, 97, 'Miss Muriel Stokes V', 'Debitis ut quasi autem pariatur dicta. Quia dignissimos et nam ab blanditiis omnis. Earum sapiente maxime est unde sapiente recusandae ut. Repellat est maiores est adipisci vero earum hic.', 4, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(576, 88, 'Lilyan Kunze', 'Itaque voluptatem quia ea corporis corporis quis. Sunt aliquam voluptatum nisi adipisci ut commodi porro. Iusto inventore nulla ea.', 2, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(577, 62, 'Faye Borer', 'Ut in assumenda corrupti nulla et. Accusamus sit et consequatur officia eos eum perferendis. Expedita et voluptatem eos eum culpa repudiandae consectetur.', 1, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(578, 75, 'Dr. Osbaldo Bergstrom', 'Iste aut qui magni veniam reprehenderit. Quas aut praesentium distinctio magni repellendus ullam cum molestiae. Culpa distinctio voluptatem sint praesentium eveniet. Consequatur tempora ipsum aperiam vero saepe voluptatem.', 2, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(579, 77, 'Barry Kuhlman', 'Mollitia explicabo occaecati distinctio est voluptatibus. Nostrum iste totam et explicabo. Nostrum tempora aut vel mollitia sunt repellendus accusamus corporis.', 0, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(580, 68, 'Dr. Lorenzo Nienow', 'Consequatur itaque temporibus sunt aut quia quia architecto. Non et repellat ipsum rerum et iste quam.', 4, '2021-07-06 23:28:53', '2021-07-06 23:28:53'),
(581, 54, 'Morton Lubowitz', 'Odit optio atque consectetur ut non qui ut. Dolores in rerum ut non quia.', 4, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(583, 93, 'Mateo Kshlerin', 'Blanditiis culpa enim ea aliquam assumenda. Quia vel qui est repellat aut fugit cumque. Aut quia tenetur quo velit qui. Animi veniam expedita itaque alias rem omnis.', 1, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(584, 80, 'Alicia Shanahan', 'Beatae et est ut impedit corrupti veritatis dolor. Explicabo id dolorem est laborum. Consequatur necessitatibus voluptas officia dolores.', 4, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(585, 60, 'Ebba Conn', 'Ut odio eaque sed illum aliquam. Dolor laboriosam esse dolore libero. Maiores aut beatae eum sit mollitia corporis.', 3, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(586, 94, 'Isai Fahey', 'Incidunt iure beatae molestiae commodi. Voluptatem nostrum beatae optio. Ad enim laudantium animi et non eos consequuntur error. Consequuntur magni quia labore ad.', 0, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(587, 95, 'Davonte Trantow', 'Quasi enim molestiae suscipit cumque. Possimus magnam voluptas et nihil. Consequatur praesentium nemo doloremque asperiores. Consequatur aperiam ad sint tempora distinctio impedit.', 2, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(588, 72, 'Clementine Bernhard', 'Saepe iste corporis reprehenderit est. Sunt ut eum culpa. In est quisquam architecto ex esse. Modi pariatur quae veniam nihil consequatur et consequatur.', 5, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(589, 65, 'Dr. Garret Nitzsche PhD', 'In enim earum optio sit voluptatem. Nam accusamus corrupti voluptatem dicta. Rem facilis voluptate voluptatem aliquam animi.', 5, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(590, 82, 'Dr. Tevin Farrell II', 'Porro ex mollitia non iusto. Et unde doloribus ipsa quo. Corrupti et incidunt neque qui.', 4, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(591, 90, 'Hilton Quigley', 'Assumenda neque ipsum omnis omnis vel. Sed debitis excepturi omnis cum. Sed sed dicta nulla ipsa aliquid dolorem hic. Voluptatum consequuntur ad sed perferendis illum repellendus.', 1, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(593, 78, 'Gloria Gerhold', 'Ut eligendi explicabo eum provident natus. Cum vel qui aut minus quia nisi. Natus ipsum officia est et sed facilis.', 5, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(594, 96, 'Mary Parker', 'Ullam qui cum sit. Expedita et fuga provident ea. Sequi quisquam dolore optio ipsum sunt asperiores eum. Explicabo omnis exercitationem expedita tenetur voluptate aperiam expedita odit.', 4, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(595, 72, 'Mr. Erin Strosin', 'Quidem quas ut quas dolorem quidem. Rem sed repudiandae ut.', 5, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(596, 67, 'Cullen Schuster', 'Porro temporibus voluptatum quia sequi. Odit in qui commodi rerum. Ea sapiente ab voluptatem enim reprehenderit non.', 2, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(597, 56, 'Aaliyah Harber DDS', 'Ullam et nostrum porro quia et tempora explicabo. Eius et eos totam maxime. Cupiditate ut impedit doloremque non sunt.', 1, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(598, 99, 'Nichole Krajcik', 'Est ut esse eos ab facilis atque saepe. Unde aperiam voluptatem est molestiae sed. Non qui quasi numquam dolores error quae sit. Omnis voluptatem rerum qui rerum consequatur earum. Deleniti quia suscipit sunt minus sed qui fugit illo.', 2, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(599, 60, 'Magali Conroy', 'Cupiditate labore autem at est minus dicta et. Dolores possimus tempora totam dolorem eveniet magnam in. Et quia eos quas ad.', 1, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(600, 83, 'Sandrine Abbott', 'Voluptatem nostrum sit aut est voluptatibus eos veritatis. Pariatur dolorum aspernatur iusto facilis veritatis. Maxime accusamus illum natus error sed harum eum. Libero fugit esse repellendus consectetur.', 2, '2021-07-06 23:28:54', '2021-07-06 23:28:54'),
(602, 58, 'Ali Raza', 'Not Best Product', 1, '2021-07-07 08:45:20', '2021-07-07 09:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Clare Feil', 'oberbrunner.cristian@example.net', '2021-07-06 23:28:37', '$2y$10$7PARDYeJ1awObNoq7p23MOmokmoEHvaH7lzy8VHcqJklpwYcimBt.', 'qmYbuIWwYH', '2021-07-06 23:28:37', '2021-07-06 23:28:37'),
(12, 'Kenyatta Littel', 'murray.demarcus@example.com', '2021-07-06 23:28:37', '$2y$10$6qovMDQoxh.h0.458UogJuGHNmL84PUhf0TURGQar9IiQhyAt7z4S', 'rom782KMqe', '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(13, 'Elisha Borer', 'shannon.prohaska@example.org', '2021-07-06 23:28:37', '$2y$10$TFYzf.XzvxPA72T.n8rDE.KvnYcIjcuJpJUu/J2JvlC/ivOJw5muO', 'Wg6vwDo7oz', '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(14, 'Broderick Gerlach II', 'ularson@example.org', '2021-07-06 23:28:37', '$2y$10$XNRtPqAou81TpF7joNzVtua37W7lu2PseZKvTHXHcvrRS6hgRAJgq', 'RD7CZPl35i', '2021-07-06 23:28:38', '2021-07-06 23:28:38'),
(15, 'Brooks Sawayn', 'thurman97@example.net', '2021-07-06 23:28:37', '$2y$10$/eDozOyWK8/DC0P0HdRLU./ELJ6EHQZIuyhqCC7qokaNSi5ztLDVK', 'i0G0PNkv5l', '2021-07-06 23:28:38', '2021-07-06 23:28:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
