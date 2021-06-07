-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2021 at 05:29 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `pumassan_pumassanmateo_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'K5pRgy0H1PxSMeEl9ib3XUeATu8MLosI', 1, '2021-03-26 18:55:20', '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(2, 2, 'e9QCPA8FlSgS4jQp4aDlnjTwWkBxVc1R', 1, '2021-03-26 18:55:20', '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(3, 3, 'YDhMiocEZmVqHcXbuN1A0uWK4ljSkNMb', 1, '2021-03-26 18:55:20', '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(4, 4, 'WPt6faAptJAjXQM8zpbuOZjEAedxfNXb', 1, '2021-03-26 18:55:20', '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(5, 5, 'yRrarMfv3gypSCe7e3sYwGaowTdywo8j', 1, '2021-03-26 18:55:20', '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(6, 6, '84W1YB1YHGUqsrJTlbnHaeKvI7es8EC6', 1, '2021-03-26 18:55:20', '2021-03-26 18:55:20', '2021-03-26 18:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Música', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Cuautitlán Izcalli', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'México', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

CREATE TABLE `event_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cumpleaños', NULL, NULL, NULL),
(2, 'Boda', NULL, NULL, NULL),
(3, 'Concierto', NULL, NULL, NULL),
(4, 'Graduación', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hombre', NULL, NULL, NULL),
(2, 'Mujer', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `monthly_cost` double(8,2) NOT NULL,
  `annual_cost` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `name`, `quantity`, `monthly_cost`, `annual_cost`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Membresía UNO', 1000, 500.00, 5000.00, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(61, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(62, '2014_10_12_100000_create_password_resets_table', 1),
(63, '2018_01_23_184447_create_person_types_table', 1),
(64, '2018_01_31_165032_create_genders_table', 1),
(65, '2018_01_31_165210_create_countries_table', 1),
(66, '2018_01_31_165303_create_states_table', 1),
(67, '2018_01_31_165430_create_cities_table', 1),
(68, '2018_02_01_223419_create_categories_table', 1),
(69, '2018_02_07_204522_create_statuses_table', 1),
(70, '2018_02_07_210724_create_memberships_table', 1),
(71, '2018_02_07_213851_create_view_countries_table', 1),
(72, '2018_02_07_213938_create_view_deleted_countries_table', 1),
(73, '2018_02_07_215803_create_view_states_table', 1),
(74, '2018_02_07_215826_create_view_deleted_states_table', 1),
(75, '2018_02_07_221747_create_view_cities_table', 1),
(76, '2018_02_07_221807_create_view_deleted_cities_table', 1),
(77, '2018_02_07_223053_create_view_categories_table', 1),
(78, '2018_02_07_223117_create_view_deleted_categories_table', 1),
(79, '2018_02_07_224648_create_subcategories_table', 1),
(80, '2018_02_07_224908_create_view_subcategories_table', 1),
(81, '2018_02_07_224929_create_view_deleted_subcategories_table', 1),
(82, '2018_02_07_230639_create_view_memberships_table', 1),
(83, '2018_02_07_230704_create_view_deleted_memberships_table', 1),
(84, '2018_02_08_132127_create_view_users_table', 1),
(85, '2018_02_08_134455_create_view_deleted_users_table', 1),
(86, '2018_02_08_165014_create_view_supplier_views', 1),
(87, '2018_02_08_165035_create_view_deleted_supplier_views', 1),
(88, '2018_02_12_180352_create_view_customers_table', 1),
(89, '2018_02_12_180957_create_view_deleted_customers_table', 1),
(90, '2018_02_13_102944_create_supplier_contacts_table', 1),
(91, '2018_02_13_172798_create_product_modules_table', 1),
(92, '2018_02_13_172799_create_percent_buys_table', 1),
(93, '2018_02_13_172800_create_event_types_table', 1),
(94, '2018_02_13_172801_create_product_unities_table', 1),
(95, '2018_02_13_172802_create_product_types_table', 1),
(96, '2018_02_13_172803_create_preparation_times_table', 1),
(97, '2018_02_13_172804_create_restocked_times_table', 1),
(98, '2018_02_13_172805_create_products_table', 1),
(99, '2018_02_13_173720_create_view_products_table', 1),
(100, '2018_02_13_173740_create_view_deleted_products_table', 1),
(101, '2018_02_22_133613_create_product_event_types_table', 1),
(102, '2018_02_22_133645_create_view_product_event_types_table', 1),
(103, '2018_02_22_134609_create_product_date_without_services_table', 1),
(104, '2018_02_26_142156_create_product_countries_table', 1),
(105, '2018_02_26_142219_create_product_states_table', 1),
(106, '2018_02_26_142236_create_product_cities_table', 1),
(107, '2018_02_26_142457_create_view_product_countries_table', 1),
(108, '2018_02_26_142516_create_view_product_states_table', 1),
(109, '2018_02_26_142533_create_view_product_cities_table', 1),
(110, '2018_02_27_170616_create_view_services_table', 1),
(111, '2018_02_27_171104_create_view_deleted_services_table', 1),
(112, '2018_02_28_094911_create_payment_types_table', 1),
(113, '2018_02_28_150458_create_sales_table', 1),
(114, '2018_03_02_095504_create_view_sales_table', 1),
(115, '2018_03_02_095525_create_view_deleted_sales_table', 1),
(116, '2018_03_02_100300_create_sale_statuses_table', 1),
(117, '2018_03_02_100430_create_sale_items_table', 1),
(118, '2018_03_02_103104_create_view_sale_items_table', 1),
(119, '2018_03_02_184245_create_web_contacts_table', 1),
(120, '2018_03_02_184932_create_view_web_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PayPal', NULL, NULL, NULL),
(2, 'Pago con Tarjeta', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `percent_buys`
--

CREATE TABLE `percent_buys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `percent_buys`
--

INSERT INTO `percent_buys` (`id`, `name`, `percent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '10%', 10, NULL, NULL, NULL),
(2, '20%', 20, NULL, NULL, NULL),
(3, '30%', 30, NULL, NULL, NULL),
(4, '40%', 40, NULL, NULL, NULL),
(5, '50%', 50, NULL, NULL, NULL),
(6, '60%', 60, NULL, NULL, NULL),
(7, '70%', 70, NULL, NULL, NULL),
(8, '80%', 80, NULL, NULL, NULL),
(9, '90%', 90, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person_types`
--

CREATE TABLE `person_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person_types`
--

INSERT INTO `person_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Persona Moral', NULL, NULL, NULL),
(2, 'Persona Física', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preparation_times`
--

CREATE TABLE `preparation_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `hours` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `preparation_times`
--

INSERT INTO `preparation_times` (`id`, `name`, `hours`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '12 horas + 12 horas', 24, NULL, NULL, NULL),
(2, '12 horas + 24 horas', 36, NULL, NULL, NULL),
(3, '12 horas + 48 horas', 60, NULL, NULL, NULL),
(4, '12 horas + 72 horas', 84, NULL, NULL, NULL),
(5, '12 horas + 1 semana', 180, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `price` double(8,2) NOT NULL,
  `percent_buy_id` int(11) DEFAULT NULL,
  `product_unity_id` int(11) NOT NULL,
  `img_1` varchar(255) NOT NULL,
  `img_2` varchar(255) DEFAULT NULL,
  `img_3` varchar(255) DEFAULT NULL,
  `img_4` varchar(255) DEFAULT NULL,
  `img_5` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `min_buy` int(11) NOT NULL,
  `max_buy` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `preparation_time_id` int(11) NOT NULL,
  `restocked_time_id` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `monday_init` varchar(255) DEFAULT NULL,
  `monday_finish` varchar(255) DEFAULT NULL,
  `tuesday_init` varchar(255) DEFAULT NULL,
  `tuesday_finish` varchar(255) DEFAULT NULL,
  `wednesday_init` varchar(255) DEFAULT NULL,
  `wednesday_finish` varchar(255) DEFAULT NULL,
  `thursday_init` varchar(255) DEFAULT NULL,
  `thursday_finish` varchar(255) DEFAULT NULL,
  `friday_init` varchar(255) DEFAULT NULL,
  `friday_finish` varchar(255) DEFAULT NULL,
  `saturday_init` varchar(255) DEFAULT NULL,
  `saturday_finish` varchar(255) DEFAULT NULL,
  `sunday_init` varchar(255) DEFAULT NULL,
  `sunday_finish` varchar(255) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_module_id`, `user_id`, `category_id`, `subcategory_id`, `name`, `slug`, `description`, `price`, `percent_buy_id`, `product_unity_id`, `img_1`, `img_2`, `img_3`, `img_4`, `img_5`, `address`, `lat`, `lng`, `product_type_id`, `inventory`, `min_buy`, `max_buy`, `capacity`, `preparation_time_id`, `restocked_time_id`, `duration`, `monday_init`, `monday_finish`, `tuesday_init`, `tuesday_finish`, `wednesday_init`, `wednesday_finish`, `thursday_init`, `thursday_finish`, `friday_init`, `friday_finish`, `saturday_init`, `saturday_finish`, `sunday_init`, `sunday_finish`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 1, 1, 'Producto 1', 'producto-1', '<p>Descripción del producto 1</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(2, 1, 5, 1, 1, 'Producto 2', 'producto-2', '<p>Descripción del producto 2</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(3, 1, 5, 1, 1, 'Producto 3', 'producto-3', '<p>Descripción del producto 3</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(4, 1, 5, 1, 1, 'Producto 4', 'producto-4', '<p>Descripción del producto 4</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(5, 1, 5, 1, 1, 'Producto 5', 'producto-5', '<p>Descripción del producto 5</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(6, 1, 5, 1, 1, 'Producto 6', 'producto-6', '<p>Descripción del producto 6</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(7, 1, 5, 1, 1, 'Producto 7', 'producto-7', '<p>Descripción del producto 7</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(8, 1, 5, 1, 1, 'Producto 8', 'producto-8', '<p>Descripción del producto 8</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(9, 1, 5, 1, 1, 'Producto 9', 'producto-9', '<p>Descripción del producto 9</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(10, 1, 6, 1, 1, 'Producto 10', 'producto-10', '<p>Descripción del producto 10</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(11, 1, 6, 1, 1, 'Producto 11', 'producto-11', '<p>Descripción del producto 11</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(12, 1, 6, 1, 1, 'Producto 12', 'producto-12', '<p>Descripción del producto 12</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(13, 1, 6, 1, 1, 'Producto 13', 'producto-13', '<p>Descripción del producto 13</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(14, 1, 6, 1, 1, 'Producto 14', 'producto-14', '<p>Descripción del producto 14</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(15, 1, 6, 1, 1, 'Producto 15', 'producto-15', '<p>Descripción del producto 15</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(16, 1, 6, 1, 1, 'Producto 16', 'producto-16', '<p>Descripción del producto 16</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(17, 1, 6, 1, 1, 'Producto 17', 'producto-17', '<p>Descripción del producto 17</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(18, 1, 6, 1, 1, 'Producto 18', 'producto-18', '<p>Descripción del producto 18</p>', 2500.00, NULL, 1, 'bKibAI0ZSphF7dhxfRBuvnpdf00adxECTZfkSDNO.jpeg', '', '', '', '', NULL, NULL, NULL, 2, 500, 10, NULL, NULL, 1, 1, NULL, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(19, 2, 5, 1, 1, 'Servicio 19', 'servicio-19', '<p>Descripción del servicio 19</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(20, 2, 5, 1, 1, 'Servicio 20', 'servicio-20', '<p>Descripción del servicio 20</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(21, 2, 5, 1, 1, 'Servicio 21', 'servicio-21', '<p>Descripción del servicio 21</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(22, 2, 5, 1, 1, 'Servicio 22', 'servicio-22', '<p>Descripción del servicio 22</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(23, 2, 5, 1, 1, 'Servicio 23', 'servicio-23', '<p>Descripción del servicio 23</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(24, 2, 5, 1, 1, 'Servicio 24', 'servicio-24', '<p>Descripción del servicio 24</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(25, 2, 5, 1, 1, 'Servicio 25', 'servicio-25', '<p>Descripción del servicio 25</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(26, 2, 5, 1, 1, 'Servicio 26', 'servicio-26', '<p>Descripción del servicio 26</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(27, 2, 5, 1, 1, 'Servicio 27', 'servicio-27', '<p>Descripción del servicio 27</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(28, 2, 6, 1, 1, 'Servicio 28', 'servicio-28', '<p>Descripción del servicio 28</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(29, 2, 6, 1, 1, 'Servicio 29', 'servicio-29', '<p>Descripción del servicio 29</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(30, 2, 6, 1, 1, 'Servicio 30', 'servicio-30', '<p>Descripción del servicio 30</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(31, 2, 6, 1, 1, 'Servicio 31', 'servicio-31', '<p>Descripción del servicio 31</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(32, 2, 6, 1, 1, 'Servicio 32', 'servicio-32', '<p>Descripción del servicio 32</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(33, 2, 6, 1, 1, 'Servicio 33', 'servicio-33', '<p>Descripción del servicio 33</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(34, 2, 6, 1, 1, 'Servicio 34', 'servicio-34', '<p>Descripción del servicio 34</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(35, 2, 6, 1, 1, 'Servicio 35', 'servicio-35', '<p>Descripción del servicio 35</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL),
(36, 2, 6, 1, 1, 'Servicio 36', 'servicio-36', '<p>Descripción del servicio 36</p>', 2500.00, NULL, 1, 'NntoOZo573EHdPquVWTVy3I73ikWKXc1zpqgqbVC.jpg', '', '', '', '', '', '', '', NULL, NULL, 5, 10, 2, 1, NULL, 3, '07:00', '23:30', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_cities`
--

CREATE TABLE `product_cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_cities`
--

INSERT INTO `product_cities` (`id`, `product_id`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 1, NULL, NULL),
(33, 33, 1, NULL, NULL),
(34, 34, 1, NULL, NULL),
(35, 35, 1, NULL, NULL),
(36, 36, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_countries`
--

CREATE TABLE `product_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_countries`
--

INSERT INTO `product_countries` (`id`, `product_id`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 1, NULL, NULL),
(33, 33, 1, NULL, NULL),
(34, 34, 1, NULL, NULL),
(35, 35, 1, NULL, NULL),
(36, 36, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_date_without_services`
--

CREATE TABLE `product_date_without_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `dates_without_service_from` varchar(255) NOT NULL,
  `dates_without_service_to` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_event_types`
--

CREATE TABLE `product_event_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `event_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_event_types`
--

INSERT INTO `product_event_types` (`id`, `product_id`, `event_type_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 2, 1, NULL, NULL),
(6, 2, 2, NULL, NULL),
(7, 2, 3, NULL, NULL),
(8, 2, 4, NULL, NULL),
(9, 3, 1, NULL, NULL),
(10, 3, 2, NULL, NULL),
(11, 3, 3, NULL, NULL),
(12, 3, 4, NULL, NULL),
(13, 4, 1, NULL, NULL),
(14, 4, 2, NULL, NULL),
(15, 4, 3, NULL, NULL),
(16, 4, 4, NULL, NULL),
(17, 5, 1, NULL, NULL),
(18, 5, 2, NULL, NULL),
(19, 5, 3, NULL, NULL),
(20, 5, 4, NULL, NULL),
(21, 6, 1, NULL, NULL),
(22, 6, 2, NULL, NULL),
(23, 6, 3, NULL, NULL),
(24, 6, 4, NULL, NULL),
(25, 7, 1, NULL, NULL),
(26, 7, 2, NULL, NULL),
(27, 7, 3, NULL, NULL),
(28, 7, 4, NULL, NULL),
(29, 8, 1, NULL, NULL),
(30, 8, 2, NULL, NULL),
(31, 8, 3, NULL, NULL),
(32, 8, 4, NULL, NULL),
(33, 9, 1, NULL, NULL),
(34, 9, 2, NULL, NULL),
(35, 9, 3, NULL, NULL),
(36, 9, 4, NULL, NULL),
(37, 10, 1, NULL, NULL),
(38, 10, 2, NULL, NULL),
(39, 10, 3, NULL, NULL),
(40, 10, 4, NULL, NULL),
(41, 11, 1, NULL, NULL),
(42, 11, 2, NULL, NULL),
(43, 11, 3, NULL, NULL),
(44, 11, 4, NULL, NULL),
(45, 12, 1, NULL, NULL),
(46, 12, 2, NULL, NULL),
(47, 12, 3, NULL, NULL),
(48, 12, 4, NULL, NULL),
(49, 13, 1, NULL, NULL),
(50, 13, 2, NULL, NULL),
(51, 13, 3, NULL, NULL),
(52, 13, 4, NULL, NULL),
(53, 14, 1, NULL, NULL),
(54, 14, 2, NULL, NULL),
(55, 14, 3, NULL, NULL),
(56, 14, 4, NULL, NULL),
(57, 15, 1, NULL, NULL),
(58, 15, 2, NULL, NULL),
(59, 15, 3, NULL, NULL),
(60, 15, 4, NULL, NULL),
(61, 16, 1, NULL, NULL),
(62, 16, 2, NULL, NULL),
(63, 16, 3, NULL, NULL),
(64, 16, 4, NULL, NULL),
(65, 17, 1, NULL, NULL),
(66, 17, 2, NULL, NULL),
(67, 17, 3, NULL, NULL),
(68, 17, 4, NULL, NULL),
(69, 18, 1, NULL, NULL),
(70, 18, 2, NULL, NULL),
(71, 18, 3, NULL, NULL),
(72, 18, 4, NULL, NULL),
(73, 19, 1, NULL, NULL),
(74, 19, 2, NULL, NULL),
(75, 19, 3, NULL, NULL),
(76, 19, 4, NULL, NULL),
(77, 20, 1, NULL, NULL),
(78, 20, 2, NULL, NULL),
(79, 20, 3, NULL, NULL),
(80, 20, 4, NULL, NULL),
(81, 21, 1, NULL, NULL),
(82, 21, 2, NULL, NULL),
(83, 21, 3, NULL, NULL),
(84, 21, 4, NULL, NULL),
(85, 22, 1, NULL, NULL),
(86, 22, 2, NULL, NULL),
(87, 22, 3, NULL, NULL),
(88, 22, 4, NULL, NULL),
(89, 23, 1, NULL, NULL),
(90, 23, 2, NULL, NULL),
(91, 23, 3, NULL, NULL),
(92, 23, 4, NULL, NULL),
(93, 24, 1, NULL, NULL),
(94, 24, 2, NULL, NULL),
(95, 24, 3, NULL, NULL),
(96, 24, 4, NULL, NULL),
(97, 25, 1, NULL, NULL),
(98, 25, 2, NULL, NULL),
(99, 25, 3, NULL, NULL),
(100, 25, 4, NULL, NULL),
(101, 26, 1, NULL, NULL),
(102, 26, 2, NULL, NULL),
(103, 26, 3, NULL, NULL),
(104, 26, 4, NULL, NULL),
(105, 27, 1, NULL, NULL),
(106, 27, 2, NULL, NULL),
(107, 27, 3, NULL, NULL),
(108, 27, 4, NULL, NULL),
(109, 28, 1, NULL, NULL),
(110, 28, 2, NULL, NULL),
(111, 28, 3, NULL, NULL),
(112, 28, 4, NULL, NULL),
(113, 29, 1, NULL, NULL),
(114, 29, 2, NULL, NULL),
(115, 29, 3, NULL, NULL),
(116, 29, 4, NULL, NULL),
(117, 30, 1, NULL, NULL),
(118, 30, 2, NULL, NULL),
(119, 30, 3, NULL, NULL),
(120, 30, 4, NULL, NULL),
(121, 31, 1, NULL, NULL),
(122, 31, 2, NULL, NULL),
(123, 31, 3, NULL, NULL),
(124, 31, 4, NULL, NULL),
(125, 32, 1, NULL, NULL),
(126, 32, 2, NULL, NULL),
(127, 32, 3, NULL, NULL),
(128, 32, 4, NULL, NULL),
(129, 33, 1, NULL, NULL),
(130, 33, 2, NULL, NULL),
(131, 33, 3, NULL, NULL),
(132, 33, 4, NULL, NULL),
(133, 34, 1, NULL, NULL),
(134, 34, 2, NULL, NULL),
(135, 34, 3, NULL, NULL),
(136, 34, 4, NULL, NULL),
(137, 35, 1, NULL, NULL),
(138, 35, 2, NULL, NULL),
(139, 35, 3, NULL, NULL),
(140, 35, 4, NULL, NULL),
(141, 36, 1, NULL, NULL),
(142, 36, 2, NULL, NULL),
(143, 36, 3, NULL, NULL),
(144, 36, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_modules`
--

CREATE TABLE `product_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_modules`
--

INSERT INTO `product_modules` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Producto', NULL, NULL),
(2, 'Servicio', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_states`
--

CREATE TABLE `product_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_states`
--

INSERT INTO `product_states` (`id`, `product_id`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(32, 32, 1, NULL, NULL),
(33, 33, 1, NULL, NULL),
(34, 34, 1, NULL, NULL),
(35, 35, 1, NULL, NULL),
(36, 36, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Renta', NULL, NULL, NULL),
(2, 'Venta', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_unities`
--

CREATE TABLE `product_unities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_unities`
--

INSERT INTO `product_unities` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pieza', NULL, NULL, NULL),
(2, 'Persona', NULL, NULL, NULL),
(3, 'Paquete', NULL, NULL, NULL),
(4, 'Servicio', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `restocked_times`
--

CREATE TABLE `restocked_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `hours` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restocked_times`
--

INSERT INTO `restocked_times` (`id`, `name`, `hours`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '12 horas', 12, NULL, NULL, NULL),
(2, '24 horas', 24, NULL, NULL, NULL),
(3, '48 horas', 48, NULL, NULL, NULL),
(4, '72 horas', 72, NULL, NULL, NULL),
(5, '1 semana', 168, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'administador', 'Administador', '{\"admin\":1}', '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(2, 'operations', 'Operaciones', '{\"opera\":2}', '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(3, 'callcenter', 'Call Center', '{\"callc\":3}', '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(4, 'supplier', 'Proveedor', '{\"suppl\":4}', '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(5, 'customer', 'Cliente', '{\"custo\":5}', '2021-03-26 18:55:20', '2021-03-26 18:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(2, 1, '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(3, 5, '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(4, 5, '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(5, 4, '2021-03-26 18:55:20', '2021-03-26 18:55:20'),
(6, 4, '2021-03-26 18:55:20', '2021-03-26 18:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `total` double(8,2) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `colony` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `no_ext` varchar(255) NOT NULL,
  `no_int` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `sale_status_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sale_statuses`
--

CREATE TABLE `sale_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale_statuses`
--

INSERT INTO `sale_statuses` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pedido', NULL, NULL, NULL),
(2, 'Preparando', NULL, NULL, NULL),
(3, 'Enviado', NULL, NULL, NULL),
(4, 'Recibido', NULL, NULL, NULL),
(5, 'Cancelado', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Estado de México', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Activo', NULL, NULL, NULL),
(2, 'Inactivo', NULL, NULL, NULL),
(3, 'En Revisión', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Mariachi', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_contacts`
--

CREATE TABLE `supplier_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `municipality` varchar(255) DEFAULT NULL,
  `colony` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `no_ext` varchar(255) DEFAULT NULL,
  `no_int` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `rfc` varchar(255) DEFAULT NULL,
  `social_reason` varchar(255) DEFAULT NULL,
  `commercial_name` varchar(255) DEFAULT NULL,
  `person_type_id` int(11) DEFAULT NULL,
  `web_site` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `email_paypal` varchar(255) DEFAULT NULL,
  `legal_representant` varchar(255) DEFAULT NULL,
  `date_public_writing` varchar(255) DEFAULT NULL,
  `no_public_notary` varchar(255) DEFAULT NULL,
  `entity_public_notary` varchar(255) DEFAULT NULL,
  `inscription_folio` varchar(255) DEFAULT NULL,
  `constitutive_act` varchar(255) DEFAULT NULL,
  `hacienda_register` varchar(255) DEFAULT NULL,
  `legal_representative_identification` varchar(255) DEFAULT NULL,
  `address_proof` varchar(255) DEFAULT NULL,
  `policies` varchar(255) DEFAULT NULL,
  `membership_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `slug`, `first_name`, `last_name`, `email`, `password`, `gender_id`, `birthdate`, `phone`, `cellphone`, `country_id`, `state_id`, `city_id`, `municipality`, `colony`, `street`, `no_ext`, `no_int`, `postal_code`, `rfc`, `social_reason`, `commercial_name`, `person_type_id`, `web_site`, `logo`, `email_paypal`, `legal_representant`, `date_public_writing`, `no_public_notary`, `entity_public_notary`, `inscription_folio`, `constitutive_act`, `hacienda_register`, `legal_representative_identification`, `address_proof`, `policies`, `membership_id`, `role_id`, `status_id`, `last_login`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'eduardo-callejas-1', 'Eduardo', 'Callejas', 'lcallejas@fabricadesoluciones.com', '$2y$10$PoqrOw/snM.bd2iXVyf/3Odxtdkmaz9YXD3rpmbbRUr07ymbLp3jq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-03-26 18:55:20', '2021-03-26 18:55:20', NULL),
(2, 'juan-gomez-2', 'Karla', 'Reyes', 'kreyes@fabricadesoluciones.com', '$2y$10$sn5Qi/lop/lfQudAayVxEecoTplualREQM0.EuJ5n5Y3pmue5/sS6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2021-03-26 18:55:20', '2021-03-26 18:55:20', NULL),
(3, 'jorge-hernandez-3', 'Jorge', 'Hernández', 'jhernandez@fabricadesoluciones.com', '$2y$10$.tu0nkAK0E2GHcWoEBknMe8fQS4jqoz7S9UgH9B/5woUDxRCunKcG', 1, '1991-08-21', '50161705', '5550161705', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL, '2021-03-26 18:55:20', '2021-03-26 18:55:20', NULL),
(4, 'eduardo-callejas-4', 'Eduardo', 'Callejas', 'lcallejasrdz@gmail.com', '$2y$10$O2xFlTp16paBYZf3p95LEe33NgybWGs7RHOQYq/jZQbqApq/dk/ze', 1, '1991-08-21', '58614681', '5515118990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL, '2021-03-26 18:55:20', '2021-03-26 18:55:20', NULL),
(5, 'programacion-ramirez', 'Iván', 'Ramirez', 'iramirez@fabricadesoluciones.com', '$2y$10$Jw/64GDTpMkJ1kdxvDNCBuldaSWhyiEXCiughSYIz/udfOyLDG/je', NULL, NULL, '50161705', '5550161705', 1, 1, 1, 'Cuautitlán Izcalli', 'Bosques del Lago', 'Calle Bosques de Viena', '252', '', '54766', 'SANE9108217G3', 'Programación Ramírez S.A. de C.V.', 'Programación Ramírez', 1, 'http://fabricadesoluciones.com/', 'ivan.jpg', 'iramirez@fabricadesoluciones.com', 'Iván Ramírez', '2010-01-01', '13', 'Tampico, Tamaulipas', '13434', 'ivanacta.pdf', 'ivanregistro.pdf', 'ivanine.pdf', 'ivancomprobante.pdf', 'ivanpoliticas.pdf', 1, 4, 1, NULL, '2021-03-26 18:55:20', '2021-03-26 18:55:20', NULL),
(6, 'programacion-rodriguez', 'Enrique', 'Rodríguez', 'erodriguez@fabricadesoluciones.com', '$2y$10$lfUNzq6L5W18l1pEmw75L./Ni0gKiTXjJ8nSdeS56pCAxi9UMPY7e', NULL, NULL, '50161705', '5550161705', 1, 1, 1, 'Atizapán de Zaragoza', 'Lomas de San Miguel Norte', 'Dominicos', '11', '', '52928', 'ROEN9108217G3', 'Programación Rodríguez S.A. de C.V.', 'Programación Rodríguez', 1, 'http://fabricadesoluciones.com/', 'enrique.jpg', 'erodriguez@fabricadesoluciones.com', 'Enrique Rodríguez', '2010-01-01', '13', 'Tampico, Tamaulipas', '13434', 'enriqueacta.pdf', 'enriqueregistro.pdf', 'enriqueine.pdf', 'enriquecomprobante.pdf', 'enriquepoliticas.pdf', 1, 4, 1, NULL, '2021-03-26 18:55:20', '2021-03-26 18:55:20', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_categories`
-- (See below for the actual view)
--
CREATE TABLE `view_categories` (
`id` int(10) unsigned
,`name` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_cities`
-- (See below for the actual view)
--
CREATE TABLE `view_cities` (
`id` int(10) unsigned
,`state_id` varchar(255)
,`name` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_countries`
-- (See below for the actual view)
--
CREATE TABLE `view_countries` (
`id` int(10) unsigned
,`name` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_customers`
-- (See below for the actual view)
--
CREATE TABLE `view_customers` (
`id` int(10) unsigned
,`slug` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`email` varchar(255)
,`gender_id` varchar(255)
,`birthdate` varchar(255)
,`phone` varchar(255)
,`cellphone` varchar(255)
,`role_id` varchar(255)
,`status_id` varchar(255)
,`last_login` timestamp
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_categories`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_categories` (
`id` int(10) unsigned
,`name` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_cities`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_cities` (
`id` int(10) unsigned
,`state_id` varchar(255)
,`name` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_countries`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_countries` (
`id` int(10) unsigned
,`name` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_customers`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_customers` (
`id` int(10) unsigned
,`slug` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`email` varchar(255)
,`gender_id` varchar(255)
,`birthdate` varchar(255)
,`phone` varchar(255)
,`cellphone` varchar(255)
,`role_id` varchar(255)
,`status_id` varchar(255)
,`last_login` timestamp
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_memberships`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_memberships` (
`id` int(10) unsigned
,`name` varchar(255)
,`quantity` int(11)
,`monthly_cost` double(8,2)
,`annual_cost` double(8,2)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_products`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_products` (
`id` int(10) unsigned
,`product_module_id` varchar(255)
,`user_id` varchar(255)
,`category_id` varchar(255)
,`subcategory_id` varchar(255)
,`name` varchar(255)
,`slug` varchar(255)
,`description` varchar(1000)
,`price` double(8,2)
,`percent_buy_id` varchar(255)
,`product_unity_id` varchar(255)
,`img_1` varchar(255)
,`img_2` varchar(255)
,`img_3` varchar(255)
,`img_4` varchar(255)
,`img_5` varchar(255)
,`product_type_id` varchar(255)
,`inventory` int(11)
,`min_buy` int(11)
,`preparation_time_id` varchar(255)
,`restocked_time_id` varchar(255)
,`monday_init` varchar(255)
,`monday_finish` varchar(255)
,`tuesday_init` varchar(255)
,`tuesday_finish` varchar(255)
,`wednesday_init` varchar(255)
,`wednesday_finish` varchar(255)
,`thursday_init` varchar(255)
,`thursday_finish` varchar(255)
,`friday_init` varchar(255)
,`friday_finish` varchar(255)
,`saturday_init` varchar(255)
,`saturday_finish` varchar(255)
,`sunday_init` varchar(255)
,`sunday_finish` varchar(255)
,`status_id` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_sales`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_sales` (
`id` int(10) unsigned
,`user_id` varchar(511)
,`payment_type_id` varchar(255)
,`total` double(8,2)
,`country_id` varchar(255)
,`state_id` varchar(255)
,`city_id` varchar(255)
,`municipality` varchar(255)
,`colony` varchar(255)
,`street` varchar(255)
,`no_ext` varchar(255)
,`no_int` varchar(255)
,`postal_code` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_services`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_services` (
`id` int(10) unsigned
,`product_module_id` varchar(255)
,`user_id` varchar(255)
,`category_id` varchar(255)
,`subcategory_id` varchar(255)
,`name` varchar(255)
,`slug` varchar(255)
,`description` varchar(1000)
,`price` double(8,2)
,`percent_buy_id` varchar(255)
,`product_unity_id` varchar(255)
,`img_1` varchar(255)
,`img_2` varchar(255)
,`img_3` varchar(255)
,`img_4` varchar(255)
,`img_5` varchar(255)
,`address` varchar(255)
,`lat` varchar(255)
,`lng` varchar(255)
,`min_buy` int(11)
,`max_buy` int(11)
,`capacity` int(11)
,`preparation_time_id` varchar(255)
,`duration` int(11)
,`monday_init` varchar(255)
,`monday_finish` varchar(255)
,`tuesday_init` varchar(255)
,`tuesday_finish` varchar(255)
,`wednesday_init` varchar(255)
,`wednesday_finish` varchar(255)
,`thursday_init` varchar(255)
,`thursday_finish` varchar(255)
,`friday_init` varchar(255)
,`friday_finish` varchar(255)
,`saturday_init` varchar(255)
,`saturday_finish` varchar(255)
,`sunday_init` varchar(255)
,`sunday_finish` varchar(255)
,`status_id` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_states`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_states` (
`id` int(10) unsigned
,`country_id` varchar(255)
,`name` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_subcategories`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_subcategories` (
`id` int(10) unsigned
,`category_id` varchar(255)
,`name` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_suppliers`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_suppliers` (
`id` int(10) unsigned
,`slug` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`email` varchar(255)
,`phone` varchar(255)
,`cellphone` varchar(255)
,`country_id` varchar(255)
,`state_id` varchar(255)
,`city_id` varchar(255)
,`municipality` varchar(255)
,`colony` varchar(255)
,`street` varchar(255)
,`no_ext` varchar(255)
,`no_int` varchar(255)
,`postal_code` varchar(255)
,`rfc` varchar(255)
,`social_reason` varchar(255)
,`commercial_name` varchar(255)
,`person_type_id` varchar(255)
,`web_site` varchar(255)
,`logo` varchar(255)
,`email_paypal` varchar(255)
,`legal_representant` varchar(255)
,`date_public_writing` varchar(255)
,`no_public_notary` varchar(255)
,`entity_public_notary` varchar(255)
,`inscription_folio` varchar(255)
,`constitutive_act` varchar(255)
,`hacienda_register` varchar(255)
,`legal_representative_identification` varchar(255)
,`address_proof` varchar(255)
,`policies` varchar(255)
,`membership_id` varchar(255)
,`role_id` varchar(255)
,`status_id` varchar(255)
,`last_login` timestamp
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deleted_users`
-- (See below for the actual view)
--
CREATE TABLE `view_deleted_users` (
`id` int(10) unsigned
,`slug` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`email` varchar(255)
,`role_id` varchar(255)
,`last_login` timestamp
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_memberships`
-- (See below for the actual view)
--
CREATE TABLE `view_memberships` (
`id` int(10) unsigned
,`name` varchar(255)
,`quantity` int(11)
,`monthly_cost` double(8,2)
,`annual_cost` double(8,2)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_products`
-- (See below for the actual view)
--
CREATE TABLE `view_products` (
`id` int(10) unsigned
,`product_module_id` varchar(255)
,`user_id` varchar(255)
,`category_id` varchar(255)
,`subcategory_id` varchar(255)
,`name` varchar(255)
,`slug` varchar(255)
,`description` varchar(1000)
,`price` double(8,2)
,`percent_buy_id` varchar(255)
,`product_unity_id` varchar(255)
,`img_1` varchar(255)
,`img_2` varchar(255)
,`img_3` varchar(255)
,`img_4` varchar(255)
,`img_5` varchar(255)
,`product_type_id` varchar(255)
,`inventory` int(11)
,`min_buy` int(11)
,`preparation_time_id` varchar(255)
,`restocked_time_id` varchar(255)
,`monday_init` varchar(255)
,`monday_finish` varchar(255)
,`tuesday_init` varchar(255)
,`tuesday_finish` varchar(255)
,`wednesday_init` varchar(255)
,`wednesday_finish` varchar(255)
,`thursday_init` varchar(255)
,`thursday_finish` varchar(255)
,`friday_init` varchar(255)
,`friday_finish` varchar(255)
,`saturday_init` varchar(255)
,`saturday_finish` varchar(255)
,`sunday_init` varchar(255)
,`sunday_finish` varchar(255)
,`status_id` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_product_cities`
-- (See below for the actual view)
--
CREATE TABLE `view_product_cities` (
`id` int(10) unsigned
,`product_id` int(11)
,`city_id` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_product_countries`
-- (See below for the actual view)
--
CREATE TABLE `view_product_countries` (
`id` int(10) unsigned
,`product_id` int(11)
,`country_id` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_product_event_types`
-- (See below for the actual view)
--
CREATE TABLE `view_product_event_types` (
`id` int(10) unsigned
,`product_id` int(11)
,`event_type_id` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_product_states`
-- (See below for the actual view)
--
CREATE TABLE `view_product_states` (
`id` int(10) unsigned
,`product_id` int(11)
,`state_id` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_sales`
-- (See below for the actual view)
--
CREATE TABLE `view_sales` (
`id` int(10) unsigned
,`user_id` varchar(511)
,`payment_type_id` varchar(255)
,`total` double(8,2)
,`country_id` varchar(255)
,`state_id` varchar(255)
,`city_id` varchar(255)
,`municipality` varchar(255)
,`colony` varchar(255)
,`street` varchar(255)
,`no_ext` varchar(255)
,`no_int` varchar(255)
,`postal_code` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_sale_items`
-- (See below for the actual view)
--
CREATE TABLE `view_sale_items` (
`id` int(10) unsigned
,`sale_id` int(11)
,`product_id` varchar(255)
,`price` double(8,2)
,`quantity` int(11)
,`token` varchar(255)
,`sale_status_id` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_services`
-- (See below for the actual view)
--
CREATE TABLE `view_services` (
`id` int(10) unsigned
,`product_module_id` varchar(255)
,`user_id` varchar(255)
,`category_id` varchar(255)
,`subcategory_id` varchar(255)
,`name` varchar(255)
,`slug` varchar(255)
,`description` varchar(1000)
,`price` double(8,2)
,`percent_buy_id` varchar(255)
,`product_unity_id` varchar(255)
,`img_1` varchar(255)
,`img_2` varchar(255)
,`img_3` varchar(255)
,`img_4` varchar(255)
,`img_5` varchar(255)
,`address` varchar(255)
,`lat` varchar(255)
,`lng` varchar(255)
,`min_buy` int(11)
,`max_buy` int(11)
,`capacity` int(11)
,`preparation_time_id` varchar(255)
,`duration` int(11)
,`monday_init` varchar(255)
,`monday_finish` varchar(255)
,`tuesday_init` varchar(255)
,`tuesday_finish` varchar(255)
,`wednesday_init` varchar(255)
,`wednesday_finish` varchar(255)
,`thursday_init` varchar(255)
,`thursday_finish` varchar(255)
,`friday_init` varchar(255)
,`friday_finish` varchar(255)
,`saturday_init` varchar(255)
,`saturday_finish` varchar(255)
,`sunday_init` varchar(255)
,`sunday_finish` varchar(255)
,`status_id` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_states`
-- (See below for the actual view)
--
CREATE TABLE `view_states` (
`id` int(10) unsigned
,`country_id` varchar(255)
,`name` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_subcategories`
-- (See below for the actual view)
--
CREATE TABLE `view_subcategories` (
`id` int(10) unsigned
,`category_id` varchar(255)
,`name` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_suppliers`
-- (See below for the actual view)
--
CREATE TABLE `view_suppliers` (
`id` int(10) unsigned
,`slug` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`email` varchar(255)
,`phone` varchar(255)
,`cellphone` varchar(255)
,`country_id` varchar(255)
,`state_id` varchar(255)
,`city_id` varchar(255)
,`municipality` varchar(255)
,`colony` varchar(255)
,`street` varchar(255)
,`no_ext` varchar(255)
,`no_int` varchar(255)
,`postal_code` varchar(255)
,`rfc` varchar(255)
,`social_reason` varchar(255)
,`commercial_name` varchar(255)
,`person_type_id` varchar(255)
,`web_site` varchar(255)
,`logo` varchar(255)
,`email_paypal` varchar(255)
,`legal_representant` varchar(255)
,`date_public_writing` varchar(255)
,`no_public_notary` varchar(255)
,`entity_public_notary` varchar(255)
,`inscription_folio` varchar(255)
,`constitutive_act` varchar(255)
,`hacienda_register` varchar(255)
,`legal_representative_identification` varchar(255)
,`address_proof` varchar(255)
,`policies` varchar(255)
,`membership_id` varchar(255)
,`role_id` varchar(255)
,`status_id` varchar(255)
,`last_login` timestamp
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_users`
-- (See below for the actual view)
--
CREATE TABLE `view_users` (
`id` int(10) unsigned
,`slug` varchar(255)
,`first_name` varchar(255)
,`last_name` varchar(255)
,`email` varchar(255)
,`role_id` varchar(255)
,`last_login` timestamp
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_web_contacts`
-- (See below for the actual view)
--
CREATE TABLE `view_web_contacts` (
`id` int(10) unsigned
,`name` varchar(255)
,`email` varchar(255)
,`phone` varchar(255)
,`message` varchar(1000)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `web_contacts`
--

CREATE TABLE `web_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `web_contacts`
--

-- --------------------------------------------------------

--
-- Structure for view `view_categories`
--
DROP TABLE IF EXISTS `view_categories`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_categories`  AS  (select `categories`.`id` AS `id`,`categories`.`name` AS `name`,`categories`.`created_at` AS `created_at` from `categories` where isnull(`categories`.`deleted_at`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_cities`
--
DROP TABLE IF EXISTS `view_cities`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_cities`  AS  (select `cities`.`id` AS `id`,`states`.`name` AS `state_id`,`cities`.`name` AS `name`,`cities`.`created_at` AS `created_at` from (`cities` join `states` on((`states`.`id` = `cities`.`state_id`))) where isnull(`cities`.`deleted_at`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_countries`
--
DROP TABLE IF EXISTS `view_countries`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_countries`  AS  (select `countries`.`id` AS `id`,`countries`.`name` AS `name`,`countries`.`created_at` AS `created_at` from `countries` where isnull(`countries`.`deleted_at`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_customers`
--
DROP TABLE IF EXISTS `view_customers`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_customers`  AS  (select `users`.`id` AS `id`,`users`.`slug` AS `slug`,`users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name`,`users`.`email` AS `email`,`genders`.`name` AS `gender_id`,`users`.`birthdate` AS `birthdate`,`users`.`phone` AS `phone`,`users`.`cellphone` AS `cellphone`,`roles`.`name` AS `role_id`,`statuses`.`name` AS `status_id`,`users`.`last_login` AS `last_login`,`users`.`created_at` AS `created_at` from (((`users` join `genders` on((`genders`.`id` = `users`.`gender_id`))) join `roles` on((`roles`.`id` = `users`.`role_id`))) join `statuses` on((`statuses`.`id` = `users`.`status_id`))) where ((`users`.`role_id` = 5) and isnull(`users`.`deleted_at`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_categories`
--
DROP TABLE IF EXISTS `view_deleted_categories`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_categories`  AS  (select `categories`.`id` AS `id`,`categories`.`name` AS `name`,`categories`.`created_at` AS `created_at` from `categories` where (`categories`.`deleted_at` is not null)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_cities`
--
DROP TABLE IF EXISTS `view_deleted_cities`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_cities`  AS  (select `cities`.`id` AS `id`,`states`.`name` AS `state_id`,`cities`.`name` AS `name`,`cities`.`created_at` AS `created_at` from (`cities` join `states` on((`states`.`id` = `cities`.`state_id`))) where (`cities`.`deleted_at` is not null)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_countries`
--
DROP TABLE IF EXISTS `view_deleted_countries`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_countries`  AS  (select `countries`.`id` AS `id`,`countries`.`name` AS `name`,`countries`.`created_at` AS `created_at` from `countries` where (`countries`.`deleted_at` is not null)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_customers`
--
DROP TABLE IF EXISTS `view_deleted_customers`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_customers`  AS  (select `users`.`id` AS `id`,`users`.`slug` AS `slug`,`users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name`,`users`.`email` AS `email`,`genders`.`name` AS `gender_id`,`users`.`birthdate` AS `birthdate`,`users`.`phone` AS `phone`,`users`.`cellphone` AS `cellphone`,`roles`.`name` AS `role_id`,`statuses`.`name` AS `status_id`,`users`.`last_login` AS `last_login`,`users`.`created_at` AS `created_at` from (((`users` join `genders` on((`genders`.`id` = `users`.`gender_id`))) join `roles` on((`roles`.`id` = `users`.`role_id`))) join `statuses` on((`statuses`.`id` = `users`.`status_id`))) where ((`users`.`role_id` = 5) and (`users`.`deleted_at` is not null))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_memberships`
--
DROP TABLE IF EXISTS `view_deleted_memberships`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_memberships`  AS  (select `memberships`.`id` AS `id`,`memberships`.`name` AS `name`,`memberships`.`quantity` AS `quantity`,`memberships`.`monthly_cost` AS `monthly_cost`,`memberships`.`annual_cost` AS `annual_cost`,`memberships`.`created_at` AS `created_at` from `memberships` where (`memberships`.`deleted_at` is not null)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_products`
--
DROP TABLE IF EXISTS `view_deleted_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_products`  AS  (select `products`.`id` AS `id`,`product_modules`.`name` AS `product_module_id`,`users`.`commercial_name` AS `user_id`,`categories`.`name` AS `category_id`,`subcategories`.`name` AS `subcategory_id`,`products`.`name` AS `name`,`products`.`slug` AS `slug`,`products`.`description` AS `description`,`products`.`price` AS `price`,`percent_buys`.`name` AS `percent_buy_id`,`product_unities`.`name` AS `product_unity_id`,`products`.`img_1` AS `img_1`,`products`.`img_2` AS `img_2`,`products`.`img_3` AS `img_3`,`products`.`img_4` AS `img_4`,`products`.`img_5` AS `img_5`,`product_types`.`name` AS `product_type_id`,`products`.`inventory` AS `inventory`,`products`.`min_buy` AS `min_buy`,`preparation_times`.`name` AS `preparation_time_id`,`restocked_times`.`name` AS `restocked_time_id`,`products`.`monday_init` AS `monday_init`,`products`.`monday_finish` AS `monday_finish`,`products`.`tuesday_init` AS `tuesday_init`,`products`.`tuesday_finish` AS `tuesday_finish`,`products`.`wednesday_init` AS `wednesday_init`,`products`.`wednesday_finish` AS `wednesday_finish`,`products`.`thursday_init` AS `thursday_init`,`products`.`thursday_finish` AS `thursday_finish`,`products`.`friday_init` AS `friday_init`,`products`.`friday_finish` AS `friday_finish`,`products`.`saturday_init` AS `saturday_init`,`products`.`saturday_finish` AS `saturday_finish`,`products`.`sunday_init` AS `sunday_init`,`products`.`sunday_finish` AS `sunday_finish`,`statuses`.`name` AS `status_id`,`products`.`created_at` AS `created_at` from ((((((((((`products` join `product_modules` on((`product_modules`.`id` = `products`.`product_module_id`))) join `users` on((`users`.`id` = `products`.`user_id`))) join `categories` on((`categories`.`id` = `products`.`category_id`))) join `subcategories` on((`subcategories`.`id` = `products`.`subcategory_id`))) left join `percent_buys` on((`percent_buys`.`id` = `products`.`percent_buy_id`))) join `product_unities` on((`product_unities`.`id` = `products`.`product_unity_id`))) join `product_types` on((`product_types`.`id` = `products`.`product_type_id`))) join `preparation_times` on((`preparation_times`.`id` = `products`.`preparation_time_id`))) join `restocked_times` on((`restocked_times`.`id` = `products`.`restocked_time_id`))) join `statuses` on((`statuses`.`id` = `products`.`status_id`))) where ((`products`.`product_module_id` = 1) and (`products`.`deleted_at` is not null))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_sales`
--
DROP TABLE IF EXISTS `view_deleted_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_sales`  AS  (select `sales`.`id` AS `id`,concat(`users`.`first_name`,' ',`users`.`last_name`) AS `user_id`,`payment_types`.`name` AS `payment_type_id`,`sales`.`total` AS `total`,`countries`.`name` AS `country_id`,`states`.`name` AS `state_id`,`cities`.`name` AS `city_id`,`sales`.`municipality` AS `municipality`,`sales`.`colony` AS `colony`,`sales`.`street` AS `street`,`sales`.`no_ext` AS `no_ext`,`sales`.`no_int` AS `no_int`,`sales`.`postal_code` AS `postal_code`,`sales`.`created_at` AS `created_at` from (((((`sales` join `users` on((`users`.`id` = `sales`.`user_id`))) join `payment_types` on((`payment_types`.`id` = `sales`.`payment_type_id`))) join `countries` on((`countries`.`id` = `sales`.`country_id`))) join `states` on((`states`.`id` = `sales`.`state_id`))) join `cities` on((`cities`.`id` = `sales`.`city_id`))) where (`sales`.`deleted_at` is not null)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_services`
--
DROP TABLE IF EXISTS `view_deleted_services`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_services`  AS  (select `products`.`id` AS `id`,`product_modules`.`name` AS `product_module_id`,`users`.`commercial_name` AS `user_id`,`categories`.`name` AS `category_id`,`subcategories`.`name` AS `subcategory_id`,`products`.`name` AS `name`,`products`.`slug` AS `slug`,`products`.`description` AS `description`,`products`.`price` AS `price`,`percent_buys`.`name` AS `percent_buy_id`,`product_unities`.`name` AS `product_unity_id`,`products`.`img_1` AS `img_1`,`products`.`img_2` AS `img_2`,`products`.`img_3` AS `img_3`,`products`.`img_4` AS `img_4`,`products`.`img_5` AS `img_5`,`products`.`address` AS `address`,`products`.`lat` AS `lat`,`products`.`lng` AS `lng`,`products`.`min_buy` AS `min_buy`,`products`.`max_buy` AS `max_buy`,`products`.`capacity` AS `capacity`,`preparation_times`.`name` AS `preparation_time_id`,`products`.`duration` AS `duration`,`products`.`monday_init` AS `monday_init`,`products`.`monday_finish` AS `monday_finish`,`products`.`tuesday_init` AS `tuesday_init`,`products`.`tuesday_finish` AS `tuesday_finish`,`products`.`wednesday_init` AS `wednesday_init`,`products`.`wednesday_finish` AS `wednesday_finish`,`products`.`thursday_init` AS `thursday_init`,`products`.`thursday_finish` AS `thursday_finish`,`products`.`friday_init` AS `friday_init`,`products`.`friday_finish` AS `friday_finish`,`products`.`saturday_init` AS `saturday_init`,`products`.`saturday_finish` AS `saturday_finish`,`products`.`sunday_init` AS `sunday_init`,`products`.`sunday_finish` AS `sunday_finish`,`statuses`.`name` AS `status_id`,`products`.`created_at` AS `created_at` from ((((((((`products` join `product_modules` on((`product_modules`.`id` = `products`.`product_module_id`))) join `users` on((`users`.`id` = `products`.`user_id`))) join `categories` on((`categories`.`id` = `products`.`category_id`))) join `subcategories` on((`subcategories`.`id` = `products`.`subcategory_id`))) left join `percent_buys` on((`percent_buys`.`id` = `products`.`percent_buy_id`))) join `product_unities` on((`product_unities`.`id` = `products`.`product_unity_id`))) join `preparation_times` on((`preparation_times`.`id` = `products`.`preparation_time_id`))) join `statuses` on((`statuses`.`id` = `products`.`status_id`))) where ((`products`.`product_module_id` = 2) and (`products`.`deleted_at` is not null))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_states`
--
DROP TABLE IF EXISTS `view_deleted_states`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_states`  AS  (select `states`.`id` AS `id`,`countries`.`name` AS `country_id`,`states`.`name` AS `name`,`states`.`created_at` AS `created_at` from (`states` join `countries` on((`countries`.`id` = `states`.`country_id`))) where (`states`.`deleted_at` is not null)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_subcategories`
--
DROP TABLE IF EXISTS `view_deleted_subcategories`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_subcategories`  AS  (select `subcategories`.`id` AS `id`,`categories`.`name` AS `category_id`,`subcategories`.`name` AS `name`,`subcategories`.`created_at` AS `created_at` from (`subcategories` join `categories` on((`categories`.`id` = `subcategories`.`category_id`))) where (`subcategories`.`deleted_at` is not null)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_suppliers`
--
DROP TABLE IF EXISTS `view_deleted_suppliers`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_suppliers`  AS  (select `users`.`id` AS `id`,`users`.`slug` AS `slug`,`users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name`,`users`.`email` AS `email`,`users`.`phone` AS `phone`,`users`.`cellphone` AS `cellphone`,`countries`.`name` AS `country_id`,`states`.`name` AS `state_id`,`cities`.`name` AS `city_id`,`users`.`municipality` AS `municipality`,`users`.`colony` AS `colony`,`users`.`street` AS `street`,`users`.`no_ext` AS `no_ext`,`users`.`no_int` AS `no_int`,`users`.`postal_code` AS `postal_code`,`users`.`rfc` AS `rfc`,`users`.`social_reason` AS `social_reason`,`users`.`commercial_name` AS `commercial_name`,`person_types`.`name` AS `person_type_id`,`users`.`web_site` AS `web_site`,`users`.`logo` AS `logo`,`users`.`email_paypal` AS `email_paypal`,`users`.`legal_representant` AS `legal_representant`,`users`.`date_public_writing` AS `date_public_writing`,`users`.`no_public_notary` AS `no_public_notary`,`users`.`entity_public_notary` AS `entity_public_notary`,`users`.`inscription_folio` AS `inscription_folio`,`users`.`constitutive_act` AS `constitutive_act`,`users`.`hacienda_register` AS `hacienda_register`,`users`.`legal_representative_identification` AS `legal_representative_identification`,`users`.`address_proof` AS `address_proof`,`users`.`policies` AS `policies`,`memberships`.`name` AS `membership_id`,`roles`.`name` AS `role_id`,`statuses`.`name` AS `status_id`,`users`.`last_login` AS `last_login`,`users`.`created_at` AS `created_at` from (((((((`users` left join `countries` on((`countries`.`id` = `users`.`country_id`))) left join `states` on((`states`.`id` = `users`.`state_id`))) left join `cities` on((`cities`.`id` = `users`.`city_id`))) join `person_types` on((`person_types`.`id` = `users`.`person_type_id`))) left join `memberships` on((`memberships`.`id` = `users`.`membership_id`))) join `roles` on((`roles`.`id` = `users`.`role_id`))) join `statuses` on((`statuses`.`id` = `users`.`status_id`))) where ((`users`.`role_id` = 4) and (`users`.`deleted_at` is not null))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deleted_users`
--
DROP TABLE IF EXISTS `view_deleted_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_deleted_users`  AS  (select `users`.`id` AS `id`,`users`.`slug` AS `slug`,`users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name`,`users`.`email` AS `email`,`roles`.`name` AS `role_id`,`users`.`last_login` AS `last_login`,`users`.`created_at` AS `created_at` from (`users` join `roles` on((`roles`.`id` = `users`.`role_id`))) where ((`users`.`role_id` <= 3) and (`users`.`deleted_at` is not null))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_memberships`
--
DROP TABLE IF EXISTS `view_memberships`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_memberships`  AS  (select `memberships`.`id` AS `id`,`memberships`.`name` AS `name`,`memberships`.`quantity` AS `quantity`,`memberships`.`monthly_cost` AS `monthly_cost`,`memberships`.`annual_cost` AS `annual_cost`,`memberships`.`created_at` AS `created_at` from `memberships` where isnull(`memberships`.`deleted_at`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_products`
--
DROP TABLE IF EXISTS `view_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_products`  AS  (select `products`.`id` AS `id`,`product_modules`.`name` AS `product_module_id`,`users`.`commercial_name` AS `user_id`,`categories`.`name` AS `category_id`,`subcategories`.`name` AS `subcategory_id`,`products`.`name` AS `name`,`products`.`slug` AS `slug`,`products`.`description` AS `description`,`products`.`price` AS `price`,`percent_buys`.`name` AS `percent_buy_id`,`product_unities`.`name` AS `product_unity_id`,`products`.`img_1` AS `img_1`,`products`.`img_2` AS `img_2`,`products`.`img_3` AS `img_3`,`products`.`img_4` AS `img_4`,`products`.`img_5` AS `img_5`,`product_types`.`name` AS `product_type_id`,`products`.`inventory` AS `inventory`,`products`.`min_buy` AS `min_buy`,`preparation_times`.`name` AS `preparation_time_id`,`restocked_times`.`name` AS `restocked_time_id`,`products`.`monday_init` AS `monday_init`,`products`.`monday_finish` AS `monday_finish`,`products`.`tuesday_init` AS `tuesday_init`,`products`.`tuesday_finish` AS `tuesday_finish`,`products`.`wednesday_init` AS `wednesday_init`,`products`.`wednesday_finish` AS `wednesday_finish`,`products`.`thursday_init` AS `thursday_init`,`products`.`thursday_finish` AS `thursday_finish`,`products`.`friday_init` AS `friday_init`,`products`.`friday_finish` AS `friday_finish`,`products`.`saturday_init` AS `saturday_init`,`products`.`saturday_finish` AS `saturday_finish`,`products`.`sunday_init` AS `sunday_init`,`products`.`sunday_finish` AS `sunday_finish`,`statuses`.`name` AS `status_id`,`products`.`created_at` AS `created_at` from ((((((((((`products` join `product_modules` on((`product_modules`.`id` = `products`.`product_module_id`))) join `users` on((`users`.`id` = `products`.`user_id`))) join `categories` on((`categories`.`id` = `products`.`category_id`))) join `subcategories` on((`subcategories`.`id` = `products`.`subcategory_id`))) left join `percent_buys` on((`percent_buys`.`id` = `products`.`percent_buy_id`))) join `product_unities` on((`product_unities`.`id` = `products`.`product_unity_id`))) join `product_types` on((`product_types`.`id` = `products`.`product_type_id`))) join `preparation_times` on((`preparation_times`.`id` = `products`.`preparation_time_id`))) join `restocked_times` on((`restocked_times`.`id` = `products`.`restocked_time_id`))) join `statuses` on((`statuses`.`id` = `products`.`status_id`))) where ((`products`.`product_module_id` = 1) and isnull(`products`.`deleted_at`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_product_cities`
--
DROP TABLE IF EXISTS `view_product_cities`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_product_cities`  AS  (select `product_cities`.`id` AS `id`,`product_cities`.`product_id` AS `product_id`,`cities`.`name` AS `city_id`,`product_cities`.`created_at` AS `created_at` from (`product_cities` join `cities` on((`cities`.`id` = `product_cities`.`city_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_product_countries`
--
DROP TABLE IF EXISTS `view_product_countries`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_product_countries`  AS  (select `product_countries`.`id` AS `id`,`product_countries`.`product_id` AS `product_id`,`countries`.`name` AS `country_id`,`product_countries`.`created_at` AS `created_at` from (`product_countries` join `countries` on((`countries`.`id` = `product_countries`.`country_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_product_event_types`
--
DROP TABLE IF EXISTS `view_product_event_types`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_product_event_types`  AS  (select `product_event_types`.`id` AS `id`,`product_event_types`.`product_id` AS `product_id`,`event_types`.`name` AS `event_type_id`,`product_event_types`.`created_at` AS `created_at` from (`product_event_types` join `event_types` on((`event_types`.`id` = `product_event_types`.`event_type_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_product_states`
--
DROP TABLE IF EXISTS `view_product_states`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_product_states`  AS  (select `product_states`.`id` AS `id`,`product_states`.`product_id` AS `product_id`,`states`.`name` AS `state_id`,`product_states`.`created_at` AS `created_at` from (`product_states` join `states` on((`states`.`id` = `product_states`.`state_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_sales`
--
DROP TABLE IF EXISTS `view_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_sales`  AS  (select `sales`.`id` AS `id`,concat(`users`.`first_name`,' ',`users`.`last_name`) AS `user_id`,`payment_types`.`name` AS `payment_type_id`,`sales`.`total` AS `total`,`countries`.`name` AS `country_id`,`states`.`name` AS `state_id`,`cities`.`name` AS `city_id`,`sales`.`municipality` AS `municipality`,`sales`.`colony` AS `colony`,`sales`.`street` AS `street`,`sales`.`no_ext` AS `no_ext`,`sales`.`no_int` AS `no_int`,`sales`.`postal_code` AS `postal_code`,`sales`.`created_at` AS `created_at` from (((((`sales` join `users` on((`users`.`id` = `sales`.`user_id`))) join `payment_types` on((`payment_types`.`id` = `sales`.`payment_type_id`))) join `countries` on((`countries`.`id` = `sales`.`country_id`))) join `states` on((`states`.`id` = `sales`.`state_id`))) join `cities` on((`cities`.`id` = `sales`.`city_id`))) where isnull(`sales`.`deleted_at`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_sale_items`
--
DROP TABLE IF EXISTS `view_sale_items`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_sale_items`  AS  (select `sale_items`.`id` AS `id`,`sale_items`.`sale_id` AS `sale_id`,`products`.`name` AS `product_id`,`sale_items`.`price` AS `price`,`sale_items`.`quantity` AS `quantity`,`sale_items`.`token` AS `token`,`sale_statuses`.`name` AS `sale_status_id`,`sale_items`.`created_at` AS `created_at` from ((`sale_items` join `products` on((`products`.`id` = `sale_items`.`product_id`))) join `sale_statuses` on((`sale_statuses`.`id` = `sale_items`.`sale_status_id`)))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_services`
--
DROP TABLE IF EXISTS `view_services`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_services`  AS  (select `products`.`id` AS `id`,`product_modules`.`name` AS `product_module_id`,`users`.`commercial_name` AS `user_id`,`categories`.`name` AS `category_id`,`subcategories`.`name` AS `subcategory_id`,`products`.`name` AS `name`,`products`.`slug` AS `slug`,`products`.`description` AS `description`,`products`.`price` AS `price`,`percent_buys`.`name` AS `percent_buy_id`,`product_unities`.`name` AS `product_unity_id`,`products`.`img_1` AS `img_1`,`products`.`img_2` AS `img_2`,`products`.`img_3` AS `img_3`,`products`.`img_4` AS `img_4`,`products`.`img_5` AS `img_5`,`products`.`address` AS `address`,`products`.`lat` AS `lat`,`products`.`lng` AS `lng`,`products`.`min_buy` AS `min_buy`,`products`.`max_buy` AS `max_buy`,`products`.`capacity` AS `capacity`,`preparation_times`.`name` AS `preparation_time_id`,`products`.`duration` AS `duration`,`products`.`monday_init` AS `monday_init`,`products`.`monday_finish` AS `monday_finish`,`products`.`tuesday_init` AS `tuesday_init`,`products`.`tuesday_finish` AS `tuesday_finish`,`products`.`wednesday_init` AS `wednesday_init`,`products`.`wednesday_finish` AS `wednesday_finish`,`products`.`thursday_init` AS `thursday_init`,`products`.`thursday_finish` AS `thursday_finish`,`products`.`friday_init` AS `friday_init`,`products`.`friday_finish` AS `friday_finish`,`products`.`saturday_init` AS `saturday_init`,`products`.`saturday_finish` AS `saturday_finish`,`products`.`sunday_init` AS `sunday_init`,`products`.`sunday_finish` AS `sunday_finish`,`statuses`.`name` AS `status_id`,`products`.`created_at` AS `created_at` from ((((((((`products` join `product_modules` on((`product_modules`.`id` = `products`.`product_module_id`))) join `users` on((`users`.`id` = `products`.`user_id`))) join `categories` on((`categories`.`id` = `products`.`category_id`))) join `subcategories` on((`subcategories`.`id` = `products`.`subcategory_id`))) left join `percent_buys` on((`percent_buys`.`id` = `products`.`percent_buy_id`))) join `product_unities` on((`product_unities`.`id` = `products`.`product_unity_id`))) join `preparation_times` on((`preparation_times`.`id` = `products`.`preparation_time_id`))) join `statuses` on((`statuses`.`id` = `products`.`status_id`))) where ((`products`.`product_module_id` = 2) and isnull(`products`.`deleted_at`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_states`
--
DROP TABLE IF EXISTS `view_states`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_states`  AS  (select `states`.`id` AS `id`,`countries`.`name` AS `country_id`,`states`.`name` AS `name`,`states`.`created_at` AS `created_at` from (`states` join `countries` on((`countries`.`id` = `states`.`country_id`))) where isnull(`states`.`deleted_at`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_subcategories`
--
DROP TABLE IF EXISTS `view_subcategories`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_subcategories`  AS  (select `subcategories`.`id` AS `id`,`categories`.`name` AS `category_id`,`subcategories`.`name` AS `name`,`subcategories`.`created_at` AS `created_at` from (`subcategories` join `categories` on((`categories`.`id` = `subcategories`.`category_id`))) where isnull(`subcategories`.`deleted_at`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_suppliers`
--
DROP TABLE IF EXISTS `view_suppliers`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_suppliers`  AS  (select `users`.`id` AS `id`,`users`.`slug` AS `slug`,`users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name`,`users`.`email` AS `email`,`users`.`phone` AS `phone`,`users`.`cellphone` AS `cellphone`,`countries`.`name` AS `country_id`,`states`.`name` AS `state_id`,`cities`.`name` AS `city_id`,`users`.`municipality` AS `municipality`,`users`.`colony` AS `colony`,`users`.`street` AS `street`,`users`.`no_ext` AS `no_ext`,`users`.`no_int` AS `no_int`,`users`.`postal_code` AS `postal_code`,`users`.`rfc` AS `rfc`,`users`.`social_reason` AS `social_reason`,`users`.`commercial_name` AS `commercial_name`,`person_types`.`name` AS `person_type_id`,`users`.`web_site` AS `web_site`,`users`.`logo` AS `logo`,`users`.`email_paypal` AS `email_paypal`,`users`.`legal_representant` AS `legal_representant`,`users`.`date_public_writing` AS `date_public_writing`,`users`.`no_public_notary` AS `no_public_notary`,`users`.`entity_public_notary` AS `entity_public_notary`,`users`.`inscription_folio` AS `inscription_folio`,`users`.`constitutive_act` AS `constitutive_act`,`users`.`hacienda_register` AS `hacienda_register`,`users`.`legal_representative_identification` AS `legal_representative_identification`,`users`.`address_proof` AS `address_proof`,`users`.`policies` AS `policies`,`memberships`.`name` AS `membership_id`,`roles`.`name` AS `role_id`,`statuses`.`name` AS `status_id`,`users`.`last_login` AS `last_login`,`users`.`created_at` AS `created_at` from (((((((`users` left join `countries` on((`countries`.`id` = `users`.`country_id`))) left join `states` on((`states`.`id` = `users`.`state_id`))) left join `cities` on((`cities`.`id` = `users`.`city_id`))) join `person_types` on((`person_types`.`id` = `users`.`person_type_id`))) left join `memberships` on((`memberships`.`id` = `users`.`membership_id`))) join `roles` on((`roles`.`id` = `users`.`role_id`))) join `statuses` on((`statuses`.`id` = `users`.`status_id`))) where ((`users`.`role_id` = 4) and isnull(`users`.`deleted_at`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_users`
--
DROP TABLE IF EXISTS `view_users`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_users`  AS  (select `users`.`id` AS `id`,`users`.`slug` AS `slug`,`users`.`first_name` AS `first_name`,`users`.`last_name` AS `last_name`,`users`.`email` AS `email`,`roles`.`name` AS `role_id`,`users`.`last_login` AS `last_login`,`users`.`created_at` AS `created_at` from (`users` join `roles` on((`roles`.`id` = `users`.`role_id`))) where ((`users`.`role_id` <= 3) and isnull(`users`.`deleted_at`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_web_contacts`
--
DROP TABLE IF EXISTS `view_web_contacts`;

CREATE ALGORITHM=UNDEFINED DEFINER=CURRENT_USER SQL SECURITY DEFINER VIEW `view_web_contacts`  AS  (select `web_contacts`.`id` AS `id`,`web_contacts`.`name` AS `name`,`web_contacts`.`email` AS `email`,`web_contacts`.`phone` AS `phone`,`web_contacts`.`message` AS `message`,`web_contacts`.`created_at` AS `created_at` from `web_contacts`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `percent_buys`
--
ALTER TABLE `percent_buys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `person_types`
--
ALTER TABLE `person_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preparation_times`
--
ALTER TABLE `preparation_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_cities`
--
ALTER TABLE `product_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_countries`
--
ALTER TABLE `product_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_date_without_services`
--
ALTER TABLE `product_date_without_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_event_types`
--
ALTER TABLE `product_event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_modules`
--
ALTER TABLE `product_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_states`
--
ALTER TABLE `product_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_unities`
--
ALTER TABLE `product_unities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restocked_times`
--
ALTER TABLE `restocked_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_statuses`
--
ALTER TABLE `sale_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_contacts`
--
ALTER TABLE `supplier_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `web_contacts`
--
ALTER TABLE `web_contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `percent_buys`
--
ALTER TABLE `percent_buys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_types`
--
ALTER TABLE `person_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `preparation_times`
--
ALTER TABLE `preparation_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_cities`
--
ALTER TABLE `product_cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_countries`
--
ALTER TABLE `product_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_date_without_services`
--
ALTER TABLE `product_date_without_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_event_types`
--
ALTER TABLE `product_event_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `product_modules`
--
ALTER TABLE `product_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_states`
--
ALTER TABLE `product_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_unities`
--
ALTER TABLE `product_unities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restocked_times`
--
ALTER TABLE `restocked_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_statuses`
--
ALTER TABLE `sale_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_contacts`
--
ALTER TABLE `supplier_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `web_contacts`
--
ALTER TABLE `web_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
