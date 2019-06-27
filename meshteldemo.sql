-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-06-2019 a las 01:43:44
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id9660202_meshteldemo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antennas`
--

CREATE TABLE `antennas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_range` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `antennas`
--

INSERT INTO `antennas` (`id`, `model`, `max_range`, `brand`, `created_at`, `updated_at`) VALUES
(1, 'IsoBeam ISO‑BEAM‑620', '', 'airFIBER', '2019-06-24 01:39:03', '2019-06-24 01:39:03'),
(2, 'airFIBER AF‑MPx8', '', 'airFIBER', '2019-06-24 01:39:03', '2019-06-24 01:39:03'),
(3, 'airFIBER X AF‑5G34‑S45', '', 'airFIBER', '2019-06-24 01:39:03', '2019-06-24 01:39:03'),
(4, 'LiteBeam AC GEN2 LBE‑5AC‑Gen2', '', 'airMAX', '2019-06-24 01:39:03', '2019-06-24 01:39:03'),
(5, 'NanoBeam AC NBE‑5AC‑Gen2', '', 'airMAX', '2019-06-24 01:39:04', '2019-06-24 01:39:04'),
(6, 'PowerBeam AC GEN2 PBE‑5AC‑Gen2', '', 'airMAX', '2019-06-24 01:39:04', '2019-06-24 01:39:04'),
(7, 'LiteBeam M5 LBE‑M5‑23', '', 'airMAX', '2019-06-24 01:39:04', '2019-06-24 01:39:04'),
(8, 'PowerBeam PBE‑M5‑620', '', 'airMAX', '2019-06-24 01:39:04', '2019-06-24 01:39:04'),
(9, 'PowerBeam M5 ISO PBE‑M5‑400‑ISO', '', 'irMAX', '2019-06-24 01:39:04', '2019-06-24 01:39:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `charges`
--

CREATE TABLE `charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `charges`
--

INSERT INTO `charges` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Director', '2019-06-24 01:38:45', '2019-06-24 01:38:45'),
(2, 'Gerente de Ventas', '2019-06-24 01:38:45', '2019-06-24 01:38:45'),
(3, 'Analista de TSS', '2019-06-24 01:38:45', '2019-06-24 01:38:45'),
(4, 'Analista de Ventas', '2019-06-24 01:38:45', '2019-06-24 01:38:45'),
(5, 'Surveyor', '2019-06-24 01:38:45', '2019-06-24 01:38:45'),
(6, 'Gerente de Operaciones', '2019-06-24 01:38:45', '2019-06-24 01:38:45'),
(7, 'Instalador', '2019-06-24 01:38:45', '2019-06-24 01:38:45'),
(8, 'Analista de Operaciones', '2019-06-24 01:38:45', '2019-06-24 01:38:45'),
(9, 'Analista de Prefactibilidad', '2019-06-24 01:38:45', '2019-06-24 01:38:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `residential` tinyint(1) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rif` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urbanization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `origin_id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients_proyects`
--

CREATE TABLE `clients_proyects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `proyect_id` bigint(20) UNSIGNED NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deparments`
--

CREATE TABLE `deparments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `deparments`
--

INSERT INTO `deparments` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ventas', '2019-06-24 01:39:04', '2019-06-24 01:39:04'),
(2, 'Operaciones', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(3, 'Administración', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(4, 'Recursos Humanos', '2019-06-24 01:39:05', '2019-06-24 01:39:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipments`
--

CREATE TABLE `equipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ports_number` enum('4','8','12','16','24','48') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `equipments`
--

INSERT INTO `equipments` (`id`, `model`, `ports_number`, `created_at`, `updated_at`) VALUES
(1, 'UniFi security Router', '4', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(2, 'EdgeMAX EdgeSwitch Lite', '8', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(3, 'EdgeMAX EdgeSwitch Lite', '48', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(4, 'UniFi security Router', '8', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(5, 'UniFi security Router', '4', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(6, 'EdgeMAX EdgeSwitch Lite', '12', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(7, 'EdgeMAX EdgeSwitch Lite', '12', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(8, 'UniFi security Router', '24', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(9, 'EdgeMAX EdgeSwitch Lite', '24', '2019-06-24 01:39:05', '2019-06-24 01:39:05'),
(10, 'UniFi security Router', '4', '2019-06-24 01:39:05', '2019-06-24 01:39:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estructures`
--

CREATE TABLE `estructures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estructure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estructures`
--

INSERT INTO `estructures` (`id`, `estructure`, `created_at`, `updated_at`) VALUES
(1, 'Casa/Town House', '2019-06-24 01:39:06', '2019-06-24 01:39:06'),
(2, 'Local Comercial', '2019-06-24 01:39:06', '2019-06-24 01:39:06'),
(3, 'Edificio', '2019-06-24 01:39:06', '2019-06-24 01:39:06'),
(4, 'Galpón', '2019-06-24 01:39:06', '2019-06-24 01:39:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `followings`
--

CREATE TABLE `followings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `following_type_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_contact` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `followings_types`
--

CREATE TABLE `followings_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infrastructures`
--

CREATE TABLE `infrastructures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `infrastructures`
--

INSERT INTO `infrastructures` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Postes', '2019-06-24 01:39:03', '2019-06-24 01:39:03'),
(2, 'Hs', '2019-06-24 01:39:03', '2019-06-24 01:39:03'),
(3, 'Pantallas', '2019-06-24 01:39:03', '2019-06-24 01:39:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rif` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fai` tinyint(1) DEFAULT NULL,
  `proyected` tinyint(1) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urbanization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `estructure_id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) UNSIGNED NOT NULL,
  `lead_type_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `node_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `asigned_to_selling` tinyint(1) DEFAULT NULL,
  `give_up_lead` tinyint(1) DEFAULT NULL,
  `imposible_lead` tinyint(1) DEFAULT NULL,
  `observation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `48h_promise` tinyint(1) DEFAULT NULL,
  `client_exported` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lead_import`
--

CREATE TABLE `lead_import` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rif` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estructure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `node` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_exported` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lead_migrations`
--

CREATE TABLE `lead_migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marca_temporal` datetime DEFAULT NULL,
  `codigo_solicitud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date DEFAULT NULL,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observaciones` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lead_migrations`
--

INSERT INTO `lead_migrations` (`id`, `marca_temporal`, `codigo_solicitud`, `fecha`, `plan`, `nombre`, `email`, `telefono`, `direccion`, `lat`, `long`, `edificacion`, `origen`, `observaciones`, `created_at`, `updated_at`) VALUES
(1, '1986-04-07 05:19:29', '#PB6JMZPELPE', '2006-01-12', '#BandaAncha 10mbps', 'Guillermo Mata', 'ghmp1975@gmail.com', '(212) 792-1319 ', 'Santa Monica America Street Murrayshire, AR 97501', '10.494074', '-67.130281', 'Casa/Town House ', '@TraficoCaracas', 'Ut neque esse maxime itaque velit aut similique consequatur eum quidem..', '2019-06-24 01:46:48', '2019-06-24 01:46:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lead_types`
--

CREATE TABLE `lead_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lead_types`
--

INSERT INTO `lead_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Residencial', '2019-06-24 01:38:47', '2019-06-24 01:38:47'),
(2, 'Empresarial', '2019-06-24 01:38:47', '2019-06-24 01:38:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_30_221629_create_municipalities_table', 1),
(4, '2019_05_30_223555_create_urbanizations_table', 1),
(5, '2019_05_31_134956_create_estructures_table', 1),
(6, '2019_05_31_135847_create_lead_types_table', 1),
(7, '2019_05_31_140816_create_origins_table', 1),
(8, '2019_05_31_140926_create_sellers_table', 1),
(9, '2019_05_31_141603_create_plans_table', 1),
(10, '2019_05_31_142730_create_nodes_addresses_table', 1),
(11, '2019_05_31_144617_create_nodes_table', 1),
(12, '2019_05_31_145227_create_leads_table', 1),
(13, '2019_05_31_145336_create_email_templates_table', 1),
(14, '2019_05_31_145437_create_followings_types_table', 1),
(15, '2019_05_31_145541_create_clients_table', 1),
(16, '2019_05_31_145639_create_followings_table', 1),
(17, '2019_05_31_145907_create_surveyors_table', 1),
(18, '2019_05_31_150447_create_site_surveys_table', 1),
(19, '2019_05_31_150541_create_survey_reports_table', 1),
(20, '2019_05_31_150632_create_report_medias_table', 1),
(21, '2019_05_31_150825_create_survey_report_nodes_table', 1),
(22, '2019_05_31_150952_create_infrastructures_table', 1),
(23, '2019_05_31_151042_create_proyects_table', 1),
(24, '2019_05_31_151212_create_clients_proyects_table', 1),
(25, '2019_05_31_151359_create_payments_table', 1),
(26, '2019_05_31_151408_create_antennas_table', 1),
(27, '2019_05_31_152152_create_proyect_hardware_table', 1),
(28, '2019_05_31_152255_create_equipments_table', 1),
(29, '2019_05_31_152340_create_proyect_equipments_table', 1),
(30, '2019_05_31_164511_create_users_types_table', 1),
(31, '2019_05_31_170044_create_deparments_table', 1),
(32, '2019_05_31_182046_create_charges_table', 1),
(33, '2019_05_31_182835_create_nodes_equipments_table', 1),
(34, '2019_05_31_183115_create_node_medias_table', 1),
(35, '2019_05_31_184845_create_nodes_antennas_table', 1),
(36, '2019_05_31_185056_create_ports_table', 1),
(37, '2019_05_31_222530_add_column_to_users_table', 1),
(38, '2019_06_08_160738_create_lead_import_table', 1),
(39, '2019_06_17_201629_create_lead_migrations_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipalities`
--

CREATE TABLE `municipalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `municipality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipalities`
--

INSERT INTO `municipalities` (`id`, `municipality`, `created_at`, `updated_at`) VALUES
(1, 'Libertador', '2019-06-24 01:38:46', '2019-06-24 01:38:46'),
(2, 'El Hatillo', '2019-06-24 01:38:46', '2019-06-24 01:38:46'),
(3, 'Baruta', '2019-06-24 01:38:46', '2019-06-24 01:38:46'),
(4, 'Sucre', '2019-06-24 01:38:46', '2019-06-24 01:38:46'),
(5, 'Chacao', '2019-06-24 01:38:46', '2019-06-24 01:38:46'),
(6, 'Los Salias', '2019-06-24 01:38:46', '2019-06-24 01:38:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nodes`
--

CREATE TABLE `nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `node_address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `azimut` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tilt` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_visit` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nodes_addresses`
--

CREATE TABLE `nodes_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `urbanization_id` bigint(20) UNSIGNED NOT NULL,
  `street` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nodes_antennas`
--

CREATE TABLE `nodes_antennas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `node_id` bigint(20) UNSIGNED NOT NULL,
  `antenna_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nodes_equipments`
--

CREATE TABLE `nodes_equipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `node_id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `node_medias`
--

CREATE TABLE `node_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `node_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `origins`
--

CREATE TABLE `origins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `origins`
--

INSERT INTO `origins` (`id`, `origin`, `created_at`, `updated_at`) VALUES
(1, 'WhasApp', '2019-06-24 01:38:46', '2019-06-24 01:38:46'),
(2, 'Redes Sociales', '2019-06-24 01:38:46', '2019-06-24 01:38:46'),
(3, 'Por un amigo', '2019-06-24 01:38:46', '2019-06-24 01:38:46'),
(4, 'Busqueda Google', '2019-06-24 01:38:46', '2019-06-24 01:38:46'),
(5, 'Mercadolibre', '2019-06-24 01:38:47', '2019-06-24 01:38:47'),
(6, 'Vía @TraficoCaracas', '2019-06-24 01:38:47', '2019-06-24 01:38:47'),
(7, 'Otro medio', '2019-06-24 01:38:47', '2019-06-24 01:38:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_proyect_id` bigint(20) UNSIGNED NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `plans`
--

INSERT INTO `plans` (`id`, `plan`, `lead_type_id`, `created_at`, `updated_at`) VALUES
(1, '#Standart', 1, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(2, '#BandaAncha 5mbps', 1, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(3, '#BandaAncha 10mbps', 1, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(4, '#UltraBandaAncha 15mbps', 1, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(5, '#UltraBandaAncha 20mbps', 1, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(6, '#UltraBandaAncha 50mbps', 1, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(7, '#StartUp', 2, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(8, '#PYME10', 2, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(9, '#PYME20', 2, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(10, '#Master20', 2, '2019-06-24 01:39:03', '2019-06-24 01:39:03'),
(11, '#Master30', 2, '2019-06-24 01:39:03', '2019-06-24 01:39:03'),
(12, '#Master50', 2, '2019-06-24 01:39:03', '2019-06-24 01:39:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ports`
--

CREATE TABLE `ports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `node_equipment_id` bigint(20) UNSIGNED NOT NULL,
  `port_number` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyects`
--

CREATE TABLE `proyects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_survey_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `node_id` bigint(20) UNSIGNED NOT NULL,
  `total_estimate` double(10,2) NOT NULL,
  `cancelled` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyect_equipments`
--

CREATE TABLE `proyect_equipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proyect_id` bigint(20) UNSIGNED NOT NULL,
  `infrastructure_id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED NOT NULL,
  `proyect_hardware_id` bigint(20) UNSIGNED NOT NULL,
  `antenna_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `cost` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyect_hardware`
--

CREATE TABLE `proyect_hardware` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `report_medias`
--

CREATE TABLE `report_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_survey_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cell_phone` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_surveys`
--

CREATE TABLE `site_surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `references` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `schedule` tinyint(1) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` enum('9:00 am','1:00 pm','3:00 pm') COLLATE utf8mb4_unicode_ci NOT NULL,
  `surveyor_id` bigint(20) UNSIGNED NOT NULL,
  `feasible` tinyint(1) DEFAULT NULL,
  `observations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `surveyors`
--

CREATE TABLE `surveyors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_ number` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contractor` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_for_meshtel` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_reports`
--

CREATE TABLE `survey_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_survey_id` bigint(20) UNSIGNED NOT NULL,
  `surveyor_id` bigint(20) UNSIGNED NOT NULL,
  `observations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey_report_nodes`
--

CREATE TABLE `survey_report_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_report_id` bigint(20) UNSIGNED NOT NULL,
  `node_id` bigint(20) UNSIGNED NOT NULL,
  `recommended` tinyint(1) NOT NULL,
  `observations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `urbanizations`
--

CREATE TABLE `urbanizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `urbanization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipality_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `urbanizations`
--

INSERT INTO `urbanizations` (`id`, `urbanization`, `municipality_id`, `created_at`, `updated_at`) VALUES
(1, 'Campo Alegre', 1, '2019-06-24 01:38:47', '2019-06-24 01:38:47'),
(2, 'Ciudad Tiuna', 1, '2019-06-24 01:38:47', '2019-06-24 01:38:47'),
(3, 'La Florida', 1, '2019-06-24 01:38:47', '2019-06-24 01:38:47'),
(4, 'La Candelaria', 1, '2019-06-24 01:38:47', '2019-06-24 01:38:47'),
(5, 'Las Palmas', 1, '2019-06-24 01:38:47', '2019-06-24 01:38:47'),
(6, 'Montalban I', 1, '2019-06-24 01:38:47', '2019-06-24 01:38:47'),
(7, 'El Silencio', 1, '2019-06-24 01:38:47', '2019-06-24 01:38:47'),
(8, 'Sabana Grande', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(9, 'Plaza Venezuela', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(10, 'Caricuao', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(11, 'Carmelitas', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(12, 'El Valle', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(13, 'El Polvorin', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(14, 'La Pastora', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(15, 'La Vega', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(16, 'Macarao', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(17, 'El Paraíso', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(18, 'Propatria', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(19, 'Pérez Bonalde', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(20, 'Quebrada Honda', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(21, 'Quinta Crespo', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(22, 'Ruiz Pineda', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(23, 'San Agustín del Norte', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(24, 'San Agustín del Sur', 1, '2019-06-24 01:38:48', '2019-06-24 01:38:48'),
(25, 'San Andres', 3, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(26, 'San Luis', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(27, 'Santa Mónica', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(28, 'Simón Ródriguez', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(29, '23 de Enero', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(30, 'Alta Florida', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(31, 'Alta Vista', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(32, 'Bella Vista', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(33, 'Cementerio', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(34, 'Chapellín', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(35, 'Catía', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(36, 'Coche', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(37, 'Colinas de Bella Vista', 1, '2019-06-24 01:38:49', '2019-06-24 01:38:49'),
(38, 'Colinas de las Acacias', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(39, 'Las Acacias', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(40, 'Los Chaguaramos', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(41, 'Colinas de Sana Mónica', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(42, 'Colinas de Vista Alegre', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(43, 'Sarría', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(44, 'El Bosque', 5, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(45, 'El Conde', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(46, 'El Manicomio', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(47, 'Prado de María', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(48, 'Guaicaipuro', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(49, 'Hornos de Cal', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(50, 'La Campiña', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(51, 'La Paz', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(52, 'Artigas', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(53, 'San Martín', 1, '2019-06-24 01:38:50', '2019-06-24 01:38:50'),
(54, 'Las Delicias', 1, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(55, 'Longaray', 1, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(56, 'Bello Monte', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(57, 'Colinas de Bello Monte', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(58, 'Valle Arriba', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(59, 'Colinas de Valle Arriba', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(60, 'La Alameda', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(61, 'Santa Fe', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(62, 'Santa Rosa de Lima', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(63, 'Prados del Este', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(64, 'Los Campitos', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(65, 'La Trinidad', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(66, 'Sorocaima', 3, '2019-06-24 01:38:51', '2019-06-24 01:38:51'),
(67, 'Los Samanes', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(68, 'Cumbres de Curumo', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(69, 'Chuao', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(70, 'Caurimare', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(71, 'Santa Marta', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(72, 'Santa Sofía', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(73, 'San Luis', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(74, 'Santa Paula', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(75, 'El Cafetal', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(76, 'Colinas del Tamanaco', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(77, 'Santa Inés', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(78, 'Santa Ana', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(79, 'El Mirador', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(80, 'Santa Clara', 3, '2019-06-24 01:38:52', '2019-06-24 01:38:52'),
(81, 'Lomas del Mirador', 3, '2019-06-24 01:38:53', '2019-06-24 01:38:53'),
(82, 'Lomas de Chuao', 3, '2019-06-24 01:38:53', '2019-06-24 01:38:53'),
(83, 'Vizcaya', 3, '2019-06-24 01:38:53', '2019-06-24 01:38:53'),
(84, 'Lomas de Maturín', 3, '2019-06-24 01:38:53', '2019-06-24 01:38:53'),
(85, 'Las Mesetas', 3, '2019-06-24 01:38:53', '2019-06-24 01:38:53'),
(86, 'Colinas de Manaure', 3, '2019-06-24 01:38:53', '2019-06-24 01:38:53'),
(87, 'Guaicay', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(88, 'San Miguel', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(89, 'Las Esmeraldas', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(90, 'La Tahona', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(91, 'Lomas del Club Hípico', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(92, 'Piedra Azul', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(93, 'Baruta', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(94, 'La Bonita', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(95, 'Lomas de Prados del Este', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(96, 'La Hoyadita', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(97, 'Hoyo de La Puerta', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(98, 'El Placer', 3, '2019-06-24 01:38:54', '2019-06-24 01:38:54'),
(99, 'Los Guayabitos', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(100, 'Monte Elena', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(101, 'La Limonera', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(102, 'Manzanares', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(103, 'El Peñón', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(104, 'Terrazas del Club Híico', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(105, 'Parque Humboldt', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(106, 'La Ciudadela', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(107, 'Brisas de Prado', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(108, 'Valle Alto', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(109, 'Lomas de Chulavista', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(110, 'Las Mercedes', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(111, 'San Román', 3, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(112, 'Altamira', 5, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(113, 'Bello Campo', 5, '2019-06-24 01:38:55', '2019-06-24 01:38:55'),
(114, 'Chacao', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(115, 'Caracas Country Club', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(116, 'El Dorado', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(117, 'El Pedregal', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(118, 'El Retiro', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(119, 'El Rosal', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(120, 'Estado Leal', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(121, 'La Castellana', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(122, 'La Floresta', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(123, 'Los Palos Grandes', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(124, 'San Marino', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(125, 'Chacaito', 5, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(126, 'Pueblo de El Hatillo', 2, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(127, 'El Calvario', 2, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(128, 'La Lagunita', 2, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(129, 'Alto Hatillo', 2, '2019-06-24 01:38:56', '2019-06-24 01:38:56'),
(130, 'La Boyera', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(131, 'Las Marías', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(132, 'Oripoto', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(133, 'Los Pomelos', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(134, 'Lomas del Sol', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(135, 'El Solar del Hatillo', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(136, 'Los Naranjos', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(137, 'Los Geranios', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(138, 'La Cabaña', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(139, 'Cerro Verde', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(140, 'Llano Verde', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(141, 'Hacienda El Encantado', 4, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(142, 'Colinas de La Tahona', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(143, 'Vista el Valle', 2, '2019-06-24 01:38:57', '2019-06-24 01:38:57'),
(144, 'Los Olivitos', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(145, 'El Cigarral', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(146, 'Los Pinos', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(147, 'La Lagunita Country CLub', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(148, 'Lomas de La Lagunita', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(149, 'Bosques de La Lagunita', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(150, 'Altos de Villanueva', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(151, 'Loma Linda', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(152, 'El Manantial', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(153, 'Cantarrana', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(154, 'El Arroyo', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(155, 'Lomas del Halcón', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(156, 'Altos del Halcón', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(157, 'Los Robles', 2, '2019-06-24 01:38:58', '2019-06-24 01:38:58'),
(158, 'La Unión', 2, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(159, 'Corralito', 2, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(160, 'Sabaneta', 2, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(161, 'La Mata', 2, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(162, 'Gavilán', 2, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(163, 'El Peñón de Gavilán', 2, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(164, 'El Hatillo', 2, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(165, 'Santa Eduvigis', 4, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(166, 'Sebucán', 4, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(167, 'Los Chorros', 4, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(168, 'San Michelle', 4, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(169, 'Dos Caminos', 4, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(170, 'Santa Cecilia', 4, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(171, 'Los Ruices', 4, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(172, 'Los Cortijos de Lourdes', 4, '2019-06-24 01:38:59', '2019-06-24 01:38:59'),
(173, 'Colinas de Los Ruices', 4, '2019-06-24 01:39:00', '2019-06-24 01:39:00'),
(174, 'La California', 4, '2019-06-24 01:39:00', '2019-06-24 01:39:00'),
(175, 'La California Sur', 4, '2019-06-24 01:39:00', '2019-06-24 01:39:00'),
(176, 'Boleíta', 4, '2019-06-24 01:39:00', '2019-06-24 01:39:00'),
(177, 'El Marqués', 4, '2019-06-24 01:39:00', '2019-06-24 01:39:00'),
(178, 'Horizonte', 4, '2019-06-24 01:39:00', '2019-06-24 01:39:00'),
(179, 'La Urbina', 4, '2019-06-24 01:39:00', '2019-06-24 01:39:00'),
(180, 'Lebrún', 4, '2019-06-24 01:39:00', '2019-06-24 01:39:00'),
(181, 'El Llanito', 4, '2019-06-24 01:39:00', '2019-06-24 01:39:00'),
(182, 'El Dorado', 4, '2019-06-24 01:39:00', '2019-06-24 01:39:00'),
(183, 'Buena Vista', 4, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(184, 'Montecristo', 4, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(185, 'Rosario', 4, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(186, 'Boleíta Norte', 4, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(187, 'Terrazas del Avila', 4, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(188, 'Macaracuay', 4, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(189, 'Montalban II', 1, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(190, 'Montalban III', 1, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(191, 'Antimano', 1, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(192, 'Zona Industrial La Yaguara', 1, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(193, 'El Junquito', 1, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(194, 'Urbanización Luis Hurtado', 1, '2019-06-24 01:39:01', '2019-06-24 01:39:01'),
(195, 'Maripérez', 1, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(196, 'Los Caobos', 1, '2019-06-24 01:39:02', '2019-06-24 01:39:02'),
(197, 'San Antonio de los Altos', 6, '2019-06-24 01:39:02', '2019-06-24 01:39:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `charge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_types`
--

CREATE TABLE `users_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users_types`
--

INSERT INTO `users_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2019-06-24 01:38:45', '2019-06-24 01:38:45'),
(2, 'Director', '2019-06-24 01:38:46', '2019-06-24 01:38:46'),
(3, 'Empleado', '2019-06-24 01:38:46', '2019-06-24 01:38:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `antennas`
--
ALTER TABLE `antennas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD KEY `clients_urbanization_id_foreign` (`urbanization_id`),
  ADD KEY `clients_origin_id_foreign` (`origin_id`),
  ADD KEY `clients_lead_id_foreign` (`lead_id`),
  ADD KEY `clients_seller_id_foreign` (`seller_id`),
  ADD KEY `clients_plan_id_foreign` (`plan_id`);

--
-- Indices de la tabla `clients_proyects`
--
ALTER TABLE `clients_proyects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_proyects_client_id_foreign` (`client_id`),
  ADD KEY `clients_proyects_proyect_id_foreign` (`proyect_id`);

--
-- Indices de la tabla `deparments`
--
ALTER TABLE `deparments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_seller_id_foreign` (`seller_id`);

--
-- Indices de la tabla `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estructures`
--
ALTER TABLE `estructures`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followings_lead_id_foreign` (`lead_id`),
  ADD KEY `followings_client_id_foreign` (`client_id`),
  ADD KEY `followings_seller_id_foreign` (`seller_id`),
  ADD KEY `followings_following_type_id_foreign` (`following_type_id`);

--
-- Indices de la tabla `followings_types`
--
ALTER TABLE `followings_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `infrastructures`
--
ALTER TABLE `infrastructures`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leads_email_unique` (`email`),
  ADD KEY `leads_urbanization_id_foreign` (`urbanization_id`),
  ADD KEY `leads_estructure_id_foreign` (`estructure_id`),
  ADD KEY `leads_origin_id_foreign` (`origin_id`),
  ADD KEY `leads_lead_type_id_foreign` (`lead_type_id`),
  ADD KEY `leads_seller_id_foreign` (`seller_id`),
  ADD KEY `leads_node_id_foreign` (`node_id`),
  ADD KEY `leads_plan_id_foreign` (`plan_id`);

--
-- Indices de la tabla `lead_import`
--
ALTER TABLE `lead_import`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lead_import_email_unique` (`email`);

--
-- Indices de la tabla `lead_migrations`
--
ALTER TABLE `lead_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lead_types`
--
ALTER TABLE `lead_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipalities`
--
ALTER TABLE `municipalities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nodes_node_address_id_foreign` (`node_address_id`),
  ADD KEY `nodes_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `nodes_addresses`
--
ALTER TABLE `nodes_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nodes_addresses_urbanization_id_foreign` (`urbanization_id`);

--
-- Indices de la tabla `nodes_antennas`
--
ALTER TABLE `nodes_antennas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nodes_antennas_node_id_foreign` (`node_id`),
  ADD KEY `nodes_antennas_antenna_id_foreign` (`antenna_id`);

--
-- Indices de la tabla `nodes_equipments`
--
ALTER TABLE `nodes_equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nodes_equipments_node_id_foreign` (`node_id`),
  ADD KEY `nodes_equipments_equipment_id_foreign` (`equipment_id`);

--
-- Indices de la tabla `node_medias`
--
ALTER TABLE `node_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `node_medias_node_id_foreign` (`node_id`);

--
-- Indices de la tabla `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_client_proyect_id_foreign` (`client_proyect_id`);

--
-- Indices de la tabla `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plans_lead_type_id_foreign` (`lead_type_id`);

--
-- Indices de la tabla `ports`
--
ALTER TABLE `ports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ports_node_equipment_id_foreign` (`node_equipment_id`);

--
-- Indices de la tabla `proyects`
--
ALTER TABLE `proyects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proyects_site_survey_id_foreign` (`site_survey_id`),
  ADD KEY `proyects_client_id_foreign` (`client_id`),
  ADD KEY `proyects_node_id_foreign` (`node_id`);

--
-- Indices de la tabla `proyect_equipments`
--
ALTER TABLE `proyect_equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proyect_equipments_proyect_id_foreign` (`proyect_id`),
  ADD KEY `proyect_equipments_infrastructure_id_foreign` (`infrastructure_id`),
  ADD KEY `proyect_equipments_equipment_id_foreign` (`equipment_id`),
  ADD KEY `proyect_equipments_proyect_hardware_id_foreign` (`proyect_hardware_id`),
  ADD KEY `proyect_equipments_antenna_id_foreign` (`antenna_id`);

--
-- Indices de la tabla `proyect_hardware`
--
ALTER TABLE `proyect_hardware`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `report_medias`
--
ALTER TABLE `report_medias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `report_medias_site_survey_id_foreign` (`site_survey_id`);

--
-- Indices de la tabla `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_email_unique` (`email`);

--
-- Indices de la tabla `site_surveys`
--
ALTER TABLE `site_surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_surveys_lead_id_foreign` (`lead_id`),
  ADD KEY `site_surveys_seller_id_foreign` (`seller_id`),
  ADD KEY `site_surveys_plan_id_foreign` (`plan_id`),
  ADD KEY `site_surveys_surveyor_id_foreign` (`surveyor_id`);

--
-- Indices de la tabla `surveyors`
--
ALTER TABLE `surveyors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `surveyors_email_unique` (`email`);

--
-- Indices de la tabla `survey_reports`
--
ALTER TABLE `survey_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `survey_reports_site_survey_id_foreign` (`site_survey_id`),
  ADD KEY `survey_reports_surveyor_id_foreign` (`surveyor_id`);

--
-- Indices de la tabla `survey_report_nodes`
--
ALTER TABLE `survey_report_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `survey_report_nodes_survey_report_id_foreign` (`survey_report_id`);

--
-- Indices de la tabla `urbanizations`
--
ALTER TABLE `urbanizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `urbanizations_municipality_id_foreign` (`municipality_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_user_type_id_foreign` (`user_type_id`),
  ADD KEY `users_charge_id_foreign` (`charge_id`);

--
-- Indices de la tabla `users_types`
--
ALTER TABLE `users_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `antennas`
--
ALTER TABLE `antennas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `charges`
--
ALTER TABLE `charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clients_proyects`
--
ALTER TABLE `clients_proyects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deparments`
--
ALTER TABLE `deparments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `estructures`
--
ALTER TABLE `estructures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `followings`
--
ALTER TABLE `followings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `followings_types`
--
ALTER TABLE `followings_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `infrastructures`
--
ALTER TABLE `infrastructures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lead_import`
--
ALTER TABLE `lead_import`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lead_migrations`
--
ALTER TABLE `lead_migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lead_types`
--
ALTER TABLE `lead_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `municipalities`
--
ALTER TABLE `municipalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `nodes`
--
ALTER TABLE `nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nodes_addresses`
--
ALTER TABLE `nodes_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nodes_antennas`
--
ALTER TABLE `nodes_antennas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nodes_equipments`
--
ALTER TABLE `nodes_equipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `node_medias`
--
ALTER TABLE `node_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `origins`
--
ALTER TABLE `origins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ports`
--
ALTER TABLE `ports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyects`
--
ALTER TABLE `proyects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyect_equipments`
--
ALTER TABLE `proyect_equipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyect_hardware`
--
ALTER TABLE `proyect_hardware`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `report_medias`
--
ALTER TABLE `report_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `site_surveys`
--
ALTER TABLE `site_surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `surveyors`
--
ALTER TABLE `surveyors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survey_reports`
--
ALTER TABLE `survey_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `survey_report_nodes`
--
ALTER TABLE `survey_report_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `urbanizations`
--
ALTER TABLE `urbanizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users_types`
--
ALTER TABLE `users_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`),
  ADD CONSTRAINT `clients_origin_id_foreign` FOREIGN KEY (`origin_id`) REFERENCES `origins` (`id`),
  ADD CONSTRAINT `clients_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  ADD CONSTRAINT `clients_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`),
  ADD CONSTRAINT `clients_urbanization_id_foreign` FOREIGN KEY (`urbanization_id`) REFERENCES `urbanizations` (`id`);

--
-- Filtros para la tabla `clients_proyects`
--
ALTER TABLE `clients_proyects`
  ADD CONSTRAINT `clients_proyects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `clients_proyects_proyect_id_foreign` FOREIGN KEY (`proyect_id`) REFERENCES `proyects` (`id`);

--
-- Filtros para la tabla `email_templates`
--
ALTER TABLE `email_templates`
  ADD CONSTRAINT `email_templates_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`);

--
-- Filtros para la tabla `followings`
--
ALTER TABLE `followings`
  ADD CONSTRAINT `followings_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `followings_following_type_id_foreign` FOREIGN KEY (`following_type_id`) REFERENCES `followings_types` (`id`),
  ADD CONSTRAINT `followings_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`),
  ADD CONSTRAINT `followings_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`);

--
-- Filtros para la tabla `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_estructure_id_foreign` FOREIGN KEY (`estructure_id`) REFERENCES `estructures` (`id`),
  ADD CONSTRAINT `leads_lead_type_id_foreign` FOREIGN KEY (`lead_type_id`) REFERENCES `lead_types` (`id`),
  ADD CONSTRAINT `leads_node_id_foreign` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`),
  ADD CONSTRAINT `leads_origin_id_foreign` FOREIGN KEY (`origin_id`) REFERENCES `origins` (`id`),
  ADD CONSTRAINT `leads_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  ADD CONSTRAINT `leads_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`),
  ADD CONSTRAINT `leads_urbanization_id_foreign` FOREIGN KEY (`urbanization_id`) REFERENCES `urbanizations` (`id`);

--
-- Filtros para la tabla `nodes`
--
ALTER TABLE `nodes`
  ADD CONSTRAINT `nodes_node_address_id_foreign` FOREIGN KEY (`node_address_id`) REFERENCES `nodes_addresses` (`id`),
  ADD CONSTRAINT `nodes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `nodes_addresses`
--
ALTER TABLE `nodes_addresses`
  ADD CONSTRAINT `nodes_addresses_urbanization_id_foreign` FOREIGN KEY (`urbanization_id`) REFERENCES `urbanizations` (`id`);

--
-- Filtros para la tabla `nodes_antennas`
--
ALTER TABLE `nodes_antennas`
  ADD CONSTRAINT `nodes_antennas_antenna_id_foreign` FOREIGN KEY (`antenna_id`) REFERENCES `antennas` (`id`),
  ADD CONSTRAINT `nodes_antennas_node_id_foreign` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`);

--
-- Filtros para la tabla `nodes_equipments`
--
ALTER TABLE `nodes_equipments`
  ADD CONSTRAINT `nodes_equipments_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`),
  ADD CONSTRAINT `nodes_equipments_node_id_foreign` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`);

--
-- Filtros para la tabla `node_medias`
--
ALTER TABLE `node_medias`
  ADD CONSTRAINT `node_medias_node_id_foreign` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`);

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_client_proyect_id_foreign` FOREIGN KEY (`client_proyect_id`) REFERENCES `clients_proyects` (`id`);

--
-- Filtros para la tabla `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_lead_type_id_foreign` FOREIGN KEY (`lead_type_id`) REFERENCES `lead_types` (`id`);

--
-- Filtros para la tabla `ports`
--
ALTER TABLE `ports`
  ADD CONSTRAINT `ports_node_equipment_id_foreign` FOREIGN KEY (`node_equipment_id`) REFERENCES `nodes_equipments` (`id`);

--
-- Filtros para la tabla `proyects`
--
ALTER TABLE `proyects`
  ADD CONSTRAINT `proyects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `proyects_node_id_foreign` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`),
  ADD CONSTRAINT `proyects_site_survey_id_foreign` FOREIGN KEY (`site_survey_id`) REFERENCES `site_surveys` (`id`);

--
-- Filtros para la tabla `proyect_equipments`
--
ALTER TABLE `proyect_equipments`
  ADD CONSTRAINT `proyect_equipments_antenna_id_foreign` FOREIGN KEY (`antenna_id`) REFERENCES `antennas` (`id`),
  ADD CONSTRAINT `proyect_equipments_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`),
  ADD CONSTRAINT `proyect_equipments_infrastructure_id_foreign` FOREIGN KEY (`infrastructure_id`) REFERENCES `infrastructures` (`id`),
  ADD CONSTRAINT `proyect_equipments_proyect_hardware_id_foreign` FOREIGN KEY (`proyect_hardware_id`) REFERENCES `proyect_hardware` (`id`),
  ADD CONSTRAINT `proyect_equipments_proyect_id_foreign` FOREIGN KEY (`proyect_id`) REFERENCES `proyects` (`id`);

--
-- Filtros para la tabla `report_medias`
--
ALTER TABLE `report_medias`
  ADD CONSTRAINT `report_medias_site_survey_id_foreign` FOREIGN KEY (`site_survey_id`) REFERENCES `site_surveys` (`id`);

--
-- Filtros para la tabla `site_surveys`
--
ALTER TABLE `site_surveys`
  ADD CONSTRAINT `site_surveys_lead_id_foreign` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`id`),
  ADD CONSTRAINT `site_surveys_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  ADD CONSTRAINT `site_surveys_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`),
  ADD CONSTRAINT `site_surveys_surveyor_id_foreign` FOREIGN KEY (`surveyor_id`) REFERENCES `surveyors` (`id`);

--
-- Filtros para la tabla `survey_reports`
--
ALTER TABLE `survey_reports`
  ADD CONSTRAINT `survey_reports_site_survey_id_foreign` FOREIGN KEY (`site_survey_id`) REFERENCES `site_surveys` (`id`),
  ADD CONSTRAINT `survey_reports_surveyor_id_foreign` FOREIGN KEY (`surveyor_id`) REFERENCES `surveyors` (`id`);

--
-- Filtros para la tabla `survey_report_nodes`
--
ALTER TABLE `survey_report_nodes`
  ADD CONSTRAINT `survey_report_nodes_survey_report_id_foreign` FOREIGN KEY (`survey_report_id`) REFERENCES `survey_reports` (`id`);

--
-- Filtros para la tabla `urbanizations`
--
ALTER TABLE `urbanizations`
  ADD CONSTRAINT `urbanizations_municipality_id_foreign` FOREIGN KEY (`municipality_id`) REFERENCES `municipalities` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_charge_id_foreign` FOREIGN KEY (`charge_id`) REFERENCES `charges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_user_type_id_foreign` FOREIGN KEY (`user_type_id`) REFERENCES `users_types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
