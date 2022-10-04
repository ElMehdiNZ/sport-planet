-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 04 oct. 2022 à 14:15
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sport-planet`
--

-- --------------------------------------------------------

--
-- Structure de la table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `activities`
--

INSERT INTO `activities` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'DANSE', 'Danse Classic', '2022-08-11 08:42:02', '2022-08-11 08:42:02'),
(4, 'MUSCULATION', 'MUSCULATION', '2022-08-11 08:46:35', '2022-08-11 08:46:35'),
(5, 'BOXE & MMA', 'Boxe', '2022-08-11 09:30:40', '2022-08-11 09:30:40'),
(6, 'CARDIO', 'Cardio', '2022-08-11 09:31:26', '2022-08-11 09:31:26'),
(17, 'ZEN FIT', 'Danse Classic', '2022-08-12 15:38:20', '2022-08-12 15:38:20'),
(19, 'Functional Training', 'Functional Training', '2022-08-15 08:53:01', '2022-08-15 08:53:01'),
(23, 'AQUAGYM', 'Natation', '2022-09-22 15:51:51', '2022-09-22 15:51:51');

-- --------------------------------------------------------

--
-- Structure de la table `activity_plan`
--

CREATE TABLE `activity_plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `old_price` decimal(5,2) NOT NULL,
  `new_price` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `activity_plan`
--

INSERT INTO `activity_plan` (`id`, `activity_id`, `plan_id`, `old_price`, `new_price`, `created_at`, `updated_at`) VALUES
(1, 16, 1, '10.00', '20.00', NULL, NULL),
(2, 17, 1, '10.00', '98.00', NULL, NULL),
(3, 19, 2, '120.00', '180.00', NULL, NULL),
(4, 20, 2, '120.00', '160.00', NULL, NULL),
(5, 20, 1, '120.00', '100.00', NULL, NULL),
(6, 23, 1, '220.00', '109.00', NULL, NULL),
(7, 23, 2, '220.00', '180.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\Site', 1, 'a9a8e04e-62b9-4cfa-b346-e73327a60989', 'default', 'site3', 'site3.jpeg', 'image/jpeg', 'public', 'public', 60989, '[]', '[]', '[]', '[]', 2, '2022-08-10 16:06:12', '2022-08-10 16:06:12'),
(3, 'App\\Models\\Site', 2, '0d7d3455-e25a-4bbc-b31b-4dfd9dea532a', 'default', 'site1', 'site1.jpeg', 'image/jpeg', 'public', 'public', 67361, '[]', '[]', '[]', '[]', 3, '2022-08-10 19:48:26', '2022-08-10 19:48:26'),
(4, 'App\\Models\\Site', 3, '0215c8f8-db65-4f7d-9dc8-718ae637b97d', 'default', 'site4', 'site4.jpeg', 'image/jpeg', 'public', 'public', 92236, '[]', '[]', '[]', '[]', 4, '2022-08-10 19:50:06', '2022-08-10 19:50:06'),
(6, 'App\\Models\\Activity', 3, '8035b2ce-0f82-48f7-99b7-ad1415e5e378', 'default', 'Artboard4', 'Artboard4.png', 'image/png', 'public', 'public', 83967, '[]', '[]', '[]', '[]', 6, '2022-08-11 08:42:02', '2022-08-11 08:42:02'),
(7, 'App\\Models\\Activity', 4, 'b5fd2697-4220-4578-9200-d3aaeac88789', 'default', 'Artboard6', 'Artboard6.png', 'image/png', 'public', 'public', 83028, '[]', '[]', '[]', '[]', 7, '2022-08-11 08:46:35', '2022-08-11 08:46:35'),
(8, 'App\\Models\\Activity', 5, 'af7b0b95-359d-4eb6-8aa7-abc57ae9cdd6', 'default', 'Artboard2', 'Artboard2.png', 'image/png', 'public', 'public', 60673, '[]', '[]', '[]', '[]', 8, '2022-08-11 09:30:40', '2022-08-11 09:30:40'),
(9, 'App\\Models\\Activity', 6, 'b59be406-b5c0-4b83-b023-3ea40c7a9233', 'default', 'Artboard3', 'Artboard3.png', 'image/png', 'public', 'public', 63639, '[]', '[]', '[]', '[]', 9, '2022-08-11 09:31:26', '2022-08-11 09:31:26'),
(20, 'App\\Models\\Activity', 17, 'f3959d1e-d968-4b70-a24d-85bd995ae551', 'default', 'Artboard4', 'Artboard4.png', 'image/png', 'public', 'public', 83967, '[]', '[]', '[]', '[]', 12, '2022-08-12 15:38:20', '2022-08-12 15:38:20'),
(21, 'App\\Models\\Site', 7, '43363e25-3ad5-42d3-93ba-ec84d68e14a8', 'default', 'site2', 'site2.jpeg', 'image/jpeg', 'public', 'public', 63530, '[]', '[]', '[]', '[]', 13, '2022-08-13 13:06:20', '2022-08-13 13:06:20'),
(23, 'App\\Models\\Activity', 19, 'b200e34d-dedd-4ee9-8ee8-5afc84055721', 'default', 'Artboard5', 'Artboard5.png', 'image/png', 'public', 'public', 723197, '[]', '[]', '[]', '[]', 14, '2022-08-15 08:53:02', '2022-08-15 08:53:02'),
(27, 'App\\Models\\Activity', 23, 'b6ec64fc-eca8-4af6-9c8a-13cf5f56da01', 'default', 'Artboard1', 'Artboard1.png', 'image/png', 'public', 'public', 541307, '[]', '[]', '[]', '[]', 15, '2022-09-22 15:51:52', '2022-09-22 15:51:52');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_28_155507_create_subscribers_table', 1),
(6, '2022_08_04_113449_create_plans_table', 1),
(7, '2022_08_04_164807_create_media_table', 1),
(8, '2022_08_08_155702_create_sites_table', 1),
(9, '2022_08_09_112711_create_activities_table', 1),
(10, '2022_08_09_125509_edit_plans_table', 1),
(11, '2022_08_09_130622_create_activity_plans_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(11, 'App\\Models\\User', 1, '4xzFBNkSNDrbeNlxea6RM1uK25Abbcr1hoHP5XIL', '389ee930fda6a00e32f25146a8f959ff5eb7fdc6d4ff16eed0184fb22a900c2b', '[\"*\"]', NULL, '2022-09-22 21:19:34', '2022-09-22 21:19:34');

-- --------------------------------------------------------

--
-- Structure de la table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plans`
--

INSERT INTO `plans` (`id`, `name`, `created_at`, `updated_at`, `duration`) VALUES
(1, 'Semestrielle', '2022-08-10 16:00:57', '2022-08-11 11:50:11', 6),
(2, 'Annuel', '2022-08-15 08:47:49', '2022-08-15 08:47:49', 12);

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

CREATE TABLE `sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Marrakech', NULL, '2022-08-10 16:06:12', '2022-08-10 16:06:12'),
(2, 'Tanger', NULL, '2022-08-10 19:48:24', '2022-08-10 19:48:24'),
(3, 'Rabat', NULL, '2022-08-10 19:50:06', '2022-08-18 20:47:15'),
(7, 'Fes', NULL, '2022-08-13 13:06:18', '2022-08-13 13:06:18');

-- --------------------------------------------------------

--
-- Structure de la table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activite` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `subscribers`
--

INSERT INTO `subscribers` (`id`, `first_name`, `last_name`, `email`, `telephone`, `ville`, `activite`, `subtype`, `created_at`, `updated_at`) VALUES
(1, 'Nidaazzi', 'Mehdi', 'nidaazzielmehdi@gmail.com', '0636050197', 'Marrakech', 'AQUAGYM', 'Trimestrielle', '2022-08-11 11:13:36', '2022-08-11 11:13:36'),
(2, 'Nidazi', 'Mehdi', 'nidame66@gmail.com', '0636050197', 'Tanger', 'MUSCULATION', 'Annuelle', '2022-08-12 14:02:36', '2022-08-12 14:02:36'),
(3, 'Nidazi', 'Mehdi', 'nidame66@gmail.com', '0636050197', 'Marrakech', 'ZEN FIT', 'Semestrielle', '2022-08-13 13:01:13', '2022-08-13 13:01:13'),
(5, 'Nidazi', 'Mehdi', 'nidame66@gmail.com', '0636050197', 'Rabat Clup', 'ZEN FIT', 'Semestrielle', '2022-08-14 15:31:11', '2022-08-14 15:31:11'),
(6, 'Nidazi', 'Mehdi', 'nidame66@gmail.com', '0636050197', 'Tanger', 'AQUAGYM', 'Annuel', '2022-08-17 12:48:56', '2022-08-17 12:48:56');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$RVZxPV7FjQqbdzWGfeSCN.UDBVgnx5u7w8uxxB05OjuB4zJl2MxHW', NULL, '2022-08-12 08:31:37', '2022-08-12 08:31:37');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `activity_plan`
--
ALTER TABLE `activity_plan`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`);

--
-- Index pour la table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sites_name_unique` (`name`);

--
-- Index pour la table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `activity_plan`
--
ALTER TABLE `activity_plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
