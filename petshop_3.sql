-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2023 a las 03:19:06
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `petshop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`, `css_generic_link_active_color`, `collapsible_stacked_inlines`, `collapsible_stacked_inlines_collapsed`, `collapsible_tabular_inlines`, `collapsible_tabular_inlines_collapsed`) VALUES
(1, 'Django', 1, 'Administración de Django', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'administrador'),
(1, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 36),
(2, 1, 40),
(3, 1, 42),
(4, 1, 44),
(5, 1, 53),
(6, 1, 56),
(7, 1, 60),
(8, 2, 1),
(9, 2, 2),
(10, 2, 3),
(11, 2, 4),
(12, 2, 5),
(13, 2, 6),
(14, 2, 7),
(15, 2, 8),
(16, 2, 9),
(17, 2, 10),
(18, 2, 11),
(19, 2, 12),
(20, 2, 13),
(21, 2, 14),
(22, 2, 15),
(23, 2, 16),
(24, 2, 17),
(25, 2, 18),
(26, 2, 19),
(27, 2, 20),
(28, 2, 21),
(29, 2, 22),
(30, 2, 23),
(31, 2, 24),
(32, 2, 25),
(33, 2, 26),
(34, 2, 27),
(35, 2, 28),
(36, 2, 29),
(37, 2, 30),
(38, 2, 31),
(39, 2, 32),
(40, 2, 33),
(41, 2, 34),
(42, 2, 35),
(43, 2, 36),
(44, 2, 37),
(45, 2, 38),
(46, 2, 39),
(47, 2, 40),
(48, 2, 41),
(49, 2, 42),
(50, 2, 43),
(51, 2, 44),
(52, 2, 45),
(53, 2, 46),
(54, 2, 47),
(55, 2, 48),
(56, 2, 49),
(57, 2, 50),
(58, 2, 51),
(59, 2, 52),
(60, 2, 53),
(61, 2, 54),
(62, 2, 55),
(63, 2, 56),
(64, 2, 57),
(65, 2, 58),
(66, 2, 59),
(67, 2, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add contacto', 8, 'add_contacto'),
(30, 'Can change contacto', 8, 'change_contacto'),
(31, 'Can delete contacto', 8, 'delete_contacto'),
(32, 'Can view contacto', 8, 'view_contacto'),
(33, 'Can add cupon', 9, 'add_cupon'),
(34, 'Can change cupon', 9, 'change_cupon'),
(35, 'Can delete cupon', 9, 'delete_cupon'),
(36, 'Can view cupon', 9, 'view_cupon'),
(37, 'Can add tipo producto', 10, 'add_tipoproducto'),
(38, 'Can change tipo producto', 10, 'change_tipoproducto'),
(39, 'Can delete tipo producto', 10, 'delete_tipoproducto'),
(40, 'Can view tipo producto', 10, 'view_tipoproducto'),
(41, 'Can add suscriptor', 11, 'add_suscriptor'),
(42, 'Can change suscriptor', 11, 'change_suscriptor'),
(43, 'Can delete suscriptor', 11, 'delete_suscriptor'),
(44, 'Can view suscriptor', 11, 'view_suscriptor'),
(45, 'Can add producto', 12, 'add_producto'),
(46, 'Can change producto', 12, 'change_producto'),
(47, 'Can delete producto', 12, 'delete_producto'),
(48, 'Can view producto', 12, 'view_producto'),
(49, 'Can add historial', 13, 'add_historial'),
(50, 'Can change historial', 13, 'change_historial'),
(51, 'Can delete historial', 13, 'delete_historial'),
(52, 'Can view historial', 13, 'view_historial'),
(53, 'Can add carrito', 14, 'add_carrito'),
(54, 'Can change carrito', 14, 'change_carrito'),
(55, 'Can delete carrito', 14, 'delete_carrito'),
(56, 'Can view carrito', 14, 'view_carrito'),
(57, 'Can add seguimiento', 15, 'add_seguimiento'),
(58, 'Can change seguimiento', 15, 'change_seguimiento'),
(59, 'Can delete seguimiento', 15, 'delete_seguimiento'),
(60, 'Can view seguimiento', 15, 'view_seguimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$Uk5C0EUrQpCO$9gEUHQVdyHb5QHWnELikoHDjQSHiEajfNGHwTpU4Qto=', '2023-06-26 01:08:21.000000', 1, 'admin', 'admin', 'admin', 'admin@admin.cl', 1, 1, '2023-06-05 17:02:05.000000'),
(3, 'pbkdf2_sha256$216000$fRicp0EV2nKp$0oGeQcV5d37JrA64iegem58HmHMI4jQhdYJSMyAi09o=', '2023-06-05 17:52:04.000000', 0, 'juan', '', '', 'juan@juan.cl', 0, 1, '2023-06-05 17:51:54.000000'),
(5, 'pbkdf2_sha256$216000$GLYJCqd4TJ8W$x/UUYxMTYoYjm211nNGtX6laCl6wjS5vSMxE6lFf3oc=', '2023-06-24 21:31:13.000000', 0, 'reikoz', '', '', 'alla.manriquez@gmail.com', 0, 1, '2023-06-23 00:05:29.000000'),
(6, 'pbkdf2_sha256$216000$nLJkCQHyqQEt$MvrRFzWWPeviNRZfxl9jWiIiGO8OvU+vw/DLnoFihY4=', '2023-06-26 01:11:55.360160', 0, 'destt', '', '', 'aqhjkwehjqw@qhewnasd.cl', 0, 1, '2023-06-26 01:11:45.423071');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 3, 1),
(4, 5, 1),
(5, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carrito`
--

CREATE TABLE `core_carrito` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_carrito`
--

INSERT INTO `core_carrito` (`id`, `cantidad`, `created_at`, `updated_at`, `producto_id`, `usuario_id`) VALUES
(3, 2, '2023-06-05 17:37:29.169144', '2023-06-24 21:15:08.794325', 4, 1),
(4, 1, '2023-06-05 17:49:36.668800', '2023-06-05 17:49:36.671196', 3, 1),
(5, 1, '2023-06-05 17:52:12.551997', '2023-06-05 17:52:12.554582', 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_contacto`
--

CREATE TABLE `core_contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mensaje` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_cupon`
--

CREATE TABLE `core_cupon` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descuento` double NOT NULL,
  `fecha_fin` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_cupon`
--

INSERT INTO `core_cupon` (`id`, `codigo`, `descuento`, `fecha_fin`, `created_at`, `updated_at`) VALUES
(1, 'controlandoelki', 10, '2023-06-14', '2023-06-05 17:53:00.657644', '2023-06-05 17:53:00.662646');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_historial`
--

CREATE TABLE `core_historial` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `total` int(11) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_producto`
--

CREATE TABLE `core_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(800) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `precio`, `stock`, `descripcion`, `imagen`, `created_at`, `updated_at`, `tipo_id`) VALUES
(2, 'Nomade adulto para perros', 39990, 148, 'kjnadskjnsdkjnfdfskjndfskjndfskjndfsdfsdfsdfsdfsdfsdfsdfs', 'producto1_zoAiadC.png', '2023-06-05 17:17:59.429451', '2023-06-21 23:06:58.020286', 3),
(3, 'Champion Dog para perros medianos y grandes', 45990, 97, 'dsjndfsjndfskjndfskjndfskjndfskjndfskjndfskjndfskjndfskjndfskjndfs', 'producto2_dLBS9RM.png', '2023-06-05 17:18:44.269260', '2023-06-21 23:06:58.037005', 3),
(4, 'Nomade gato adulto', 32990, 86, 'gdfdgfsdgfsdgfsdgfsdgfsdgfdgfsdgf', 'producto3_iSFtvYZ.png', '2023-06-05 17:19:19.843573', '2023-06-21 22:34:17.091674', 2),
(5, 'Cat Chow para gatos adultos 3kg', 12990, 123, 'dasadadsadsadsadsadsadsadsadsadsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsds', 'producto4_u8hhrBq.png', '2023-06-05 17:36:51.512613', '2023-06-05 17:36:51.677650', 2),
(6, 'Bandana negra', 9990, 1000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce malesuada leo id mi varius, ut feugiat urna consectetur. Vestibulum finibus mauris vel ullamcorper dignissim. Duis luctus leo vitae mauris lobortis pulvinar. Proin fringilla tincidunt leo sed scelerisque. Nam vulputate nunc eu lorem lacinia feugiat. Suspendisse potenti. Etiam cursus sem vel nulla faucibus, non lacinia massa ultricies. Donec volutpat pulvinar libero, vel viverra lorem auctor ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla ac pellentesque purus. Vivamus tincidunt vestibulum mi, eu dignissim enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque facilisis justo id laoreet volutpat. Mauris sed sagittis ex. Suspend', 'BANDANA1.png', '2023-06-26 00:57:32.139755', '2023-06-26 00:57:32.287770', 4),
(7, 'Bandana reversible', 10990, 53, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce malesuada leo id mi varius, ut feugiat urna consectetur. Vestibulum finibus mauris vel ullamcorper dignissim. Duis luctus leo vitae mauris lobortis pulvinar. Proin fringilla tincidunt leo sed scelerisque. Nam vulputate nunc eu lorem lacinia feugiat. Suspendisse potenti. Etiam cursus sem vel nulla faucibus, non lacinia massa ultricies. Donec volutpat pulvinar libero, vel viverra lorem auctor ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla ac pellentesque purus. Vivamus tincidunt vestibulum mi, eu dignissim enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque facilisis justo id laoreet volutpat. Mauris sed sagittis ex. Suspend', 'BANDANA2.png', '2023-06-26 00:58:14.780861', '2023-06-26 00:58:14.788891', 4),
(8, 'Correa negra', 7990, 721, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce malesuada leo id mi varius, ut feugiat urna consectetur. Vestibulum finibus mauris vel ullamcorper dignissim. Duis luctus leo vitae mauris lobortis pulvinar. Proin fringilla tincidunt leo sed scelerisque. Nam vulputate nunc eu lorem lacinia feugiat. Suspendisse potenti. Etiam cursus sem vel nulla faucibus, non lacinia massa ultricies. Donec volutpat pulvinar libero, vel viverra lorem auctor ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla ac pellentesque purus. Vivamus tincidunt vestibulum mi, eu dignissim enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque facilisis justo id laoreet volutpat. Mauris sed sagittis ex. Suspend', 'CORREA1.png', '2023-06-26 00:58:43.679542', '2023-06-26 00:58:43.686541', 7),
(9, 'Correa de la U', 0, 9999, 'Peor correa del mundo', 'CORREA2.png', '2023-06-26 00:59:20.070361', '2023-06-26 00:59:20.076872', 7),
(10, 'Identificacion Carnet', 4990, 999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce malesuada leo id mi varius, ut feugiat urna consectetur. Vestibulum finibus mauris vel ullamcorper dignissim. Duis luctus leo vitae mauris lobortis pulvinar. Proin fringilla tincidunt leo sed scelerisque. Nam vulputate nunc eu lorem lacinia feugiat. Suspendisse potenti. Etiam cursus sem vel nulla faucibus, non lacinia massa ultricies. Donec volutpat pulvinar libero, vel viverra lorem auctor ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla ac pellentesque purus. Vivamus tincidunt vestibulum mi, eu dignissim enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque facilisis justo id laoreet volutpat. Mauris sed sagittis ex. Suspend', 'IDENTIFICACION1.png', '2023-06-26 01:00:26.705868', '2023-06-26 01:00:26.713154', 6),
(11, 'Identificacion tradicional', 1990, 123, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce malesuada leo id mi varius, ut feugiat urna consectetur. Vestibulum finibus mauris vel ullamcorper dignissim. Duis luctus leo vitae mauris lobortis pulvinar. Proin fringilla tincidunt leo sed scelerisque. Nam vulputate nunc eu lorem lacinia feugiat. Suspendisse potenti. Etiam cursus sem vel nulla faucibus, non lacinia massa ultricies. Donec volutpat pulvinar libero, vel viverra lorem auctor ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla ac pellentesque purus. Vivamus tincidunt vestibulum mi, eu dignissim enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque facilisis justo id laoreet volutpat. Mauris sed sagittis ex. Suspend', 'IDENTIFICACION2.png', '2023-06-26 01:00:50.605769', '2023-06-26 01:00:50.612501', 6),
(12, 'Poleron celeste', 8990, 987, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce malesuada leo id mi varius, ut feugiat urna consectetur. Vestibulum finibus mauris vel ullamcorper dignissim. Duis luctus leo vitae mauris lobortis pulvinar. Proin fringilla tincidunt leo sed scelerisque. Nam vulputate nunc eu lorem lacinia feugiat. Suspendisse potenti. Etiam cursus sem vel nulla faucibus, non lacinia massa ultricies. Donec volutpat pulvinar libero, vel viverra lorem auctor ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla ac pellentesque purus. Vivamus tincidunt vestibulum mi, eu dignissim enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque facilisis justo id laoreet volutpat. Mauris sed sagittis ex. Suspend', 'ROPITA_1.png', '2023-06-26 01:01:40.565649', '2023-06-26 01:01:40.572649', 5),
(13, 'Corta vientos Adidas', 99990, 567, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce malesuada leo id mi varius, ut feugiat urna consectetur. Vestibulum finibus mauris vel ullamcorper dignissim. Duis luctus leo vitae mauris lobortis pulvinar. Proin fringilla tincidunt leo sed scelerisque. Nam vulputate nunc eu lorem lacinia feugiat. Suspendisse potenti. Etiam cursus sem vel nulla faucibus, non lacinia massa ultricies. Donec volutpat pulvinar libero, vel viverra lorem auctor ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla ac pellentesque purus. Vivamus tincidunt vestibulum mi, eu dignissim enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque facilisis justo id laoreet volutpat. Mauris sed sagittis ex. Suspend', 'ROPITA_2.png', '2023-06-26 01:02:09.813816', '2023-06-26 01:02:09.819852', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_seguimiento`
--

CREATE TABLE `core_seguimiento` (
  `id` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_suscriptor`
--

CREATE TABLE `core_suscriptor` (
  `id` int(11) NOT NULL,
  `es_suscriptor` tinyint(1) NOT NULL,
  `descuento` double NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_suscriptor`
--

INSERT INTO `core_suscriptor` (`id`, `es_suscriptor`, `descuento`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 0, 5, '2023-06-05 17:51:54.340467', '2023-06-05 17:51:54.340467', 3),
(4, 0, 0, '2023-06-22 23:52:54.065065', '2023-06-24 21:08:46.429700', 1),
(5, 0, 5, '2023-06-23 00:05:30.008470', '2023-06-23 00:05:30.008470', 5),
(6, 0, 5, '2023-06-26 01:11:45.631009', '2023-06-26 01:11:45.632008', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(2, 'Alimento gatos', '2023-06-05 17:13:05.000000', '2023-06-05 17:13:11.097202'),
(3, 'Alimento perros', '2023-06-05 17:13:12.000000', '2023-06-05 17:13:16.521295'),
(4, 'Bandanas', '2023-06-05 17:13:59.000000', '2023-06-05 17:14:04.856789'),
(5, 'Ropita', '2023-06-05 17:14:04.000000', '2023-06-05 17:14:09.297556'),
(6, 'Identificacion', '2023-06-05 17:14:09.000000', '2023-06-05 17:14:13.312673'),
(7, 'Correas', '2023-06-05 17:14:15.000000', '2023-06-05 17:14:20.463102');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-05 17:07:16.210138', '1', 'colo colo', 1, '[{\"added\": {}}]', 10, 1),
(2, '2023-06-05 17:07:43.556445', '1', 'DAMIAN Y PATAN', 1, '[{\"added\": {}}]', 12, 1),
(3, '2023-06-05 17:13:11.098564', '2', 'Alimento gatos', 1, '[{\"added\": {}}]', 10, 1),
(4, '2023-06-05 17:13:16.522263', '3', 'Alimento perros', 1, '[{\"added\": {}}]', 10, 1),
(5, '2023-06-05 17:14:04.856789', '4', 'Bandanas', 1, '[{\"added\": {}}]', 10, 1),
(6, '2023-06-05 17:14:09.298556', '5', 'Ropita', 1, '[{\"added\": {}}]', 10, 1),
(7, '2023-06-05 17:14:13.312979', '6', 'Identificacion', 1, '[{\"added\": {}}]', 10, 1),
(8, '2023-06-05 17:14:20.464102', '7', 'Correas', 1, '[{\"added\": {}}]', 10, 1),
(9, '2023-06-05 17:15:58.104420', '1', 'colo colo', 3, '', 10, 1),
(10, '2023-06-05 17:17:59.437453', '2', 'Nomade adulto para perros', 1, '[{\"added\": {}}]', 12, 1),
(11, '2023-06-05 17:18:44.277263', '3', 'Champion Dog para perros medianos y grandes', 1, '[{\"added\": {}}]', 12, 1),
(12, '2023-06-05 17:19:19.850575', '4', 'Nomade gato adulto', 1, '[{\"added\": {}}]', 12, 1),
(13, '2023-06-05 17:22:46.160108', '2', 'juan', 3, '', 5, 1),
(14, '2023-06-05 17:36:51.679651', '5', 'Cat Chow para gatos adultos 3kg', 1, '[{\"added\": {}}]', 12, 1),
(15, '2023-06-26 00:57:32.289778', '6', 'Bandana negra', 1, '[{\"added\": {}}]', 12, 1),
(16, '2023-06-26 00:58:14.790889', '7', 'Bandana reversible', 1, '[{\"added\": {}}]', 12, 1),
(17, '2023-06-26 00:58:43.688991', '8', 'Correa negra', 1, '[{\"added\": {}}]', 12, 1),
(18, '2023-06-26 00:59:20.078868', '9', 'Correa de la U', 1, '[{\"added\": {}}]', 12, 1),
(19, '2023-06-26 01:00:26.714151', '10', 'Identificacion Carnet', 1, '[{\"added\": {}}]', 12, 1),
(20, '2023-06-26 01:00:50.614495', '11', 'Identificacion tradicional', 1, '[{\"added\": {}}]', 12, 1),
(21, '2023-06-26 01:01:40.574643', '12', 'Poleron celeste', 1, '[{\"added\": {}}]', 12, 1),
(22, '2023-06-26 01:02:09.821846', '13', 'Corta vientos Adidas', 1, '[{\"added\": {}}]', 12, 1),
(23, '2023-06-26 01:09:29.592679', '1', 'cliente', 1, '[{\"added\": {}}]', 4, 1),
(24, '2023-06-26 01:09:40.248145', '2', 'administrador', 1, '[{\"added\": {}}]', 4, 1),
(25, '2023-06-26 01:09:53.586383', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(26, '2023-06-26 01:10:06.760683', '3', 'juan', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(27, '2023-06-26 01:10:18.071638', '5', 'reikoz', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(14, 'core', 'carrito'),
(8, 'core', 'contacto'),
(9, 'core', 'cupon'),
(13, 'core', 'historial'),
(12, 'core', 'producto'),
(15, 'core', 'seguimiento'),
(11, 'core', 'suscriptor'),
(10, 'core', 'tipoproducto'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-05 16:58:22.311190'),
(2, 'auth', '0001_initial', '2023-06-05 16:58:22.397246'),
(3, 'admin', '0001_initial', '2023-06-05 16:58:22.680465'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-05 16:58:22.749930'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-05 16:58:22.757931'),
(6, 'admin_interface', '0001_initial', '2023-06-05 16:58:22.786476'),
(7, 'admin_interface', '0002_add_related_modal', '2023-06-05 16:58:22.852465'),
(8, 'admin_interface', '0003_add_logo_color', '2023-06-05 16:58:22.874469'),
(9, 'admin_interface', '0004_rename_title_color', '2023-06-05 16:58:22.887165'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2023-06-05 16:58:22.905935'),
(11, 'admin_interface', '0006_bytes_to_str', '2023-06-05 16:58:22.982952'),
(12, 'admin_interface', '0007_add_favicon', '2023-06-05 16:58:23.003109'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-06-05 16:58:23.035042'),
(14, 'admin_interface', '0009_add_enviroment', '2023-06-05 16:58:23.069317'),
(15, 'admin_interface', '0010_add_localization', '2023-06-05 16:58:23.083099'),
(16, 'admin_interface', '0011_add_environment_options', '2023-06-05 16:58:23.140063'),
(17, 'admin_interface', '0012_update_verbose_names', '2023-06-05 16:58:23.148064'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2023-06-05 16:58:23.166240'),
(19, 'admin_interface', '0014_name_unique', '2023-06-05 16:58:23.204487'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2023-06-05 16:58:23.225492'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2023-06-05 16:58:23.249254'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2023-06-05 16:58:23.257257'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2023-06-05 16:58:23.280263'),
(24, 'admin_interface', '0019_add_form_sticky', '2023-06-05 16:58:23.318444'),
(25, 'admin_interface', '0020_module_selected_colors', '2023-06-05 16:58:23.362400'),
(26, 'admin_interface', '0021_file_extension_validator', '2023-06-05 16:58:23.371492'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-06-05 16:58:23.406367'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2023-06-05 16:58:23.427377'),
(29, 'admin_interface', '0024_remove_theme_css', '2023-06-05 16:58:23.441377'),
(30, 'admin_interface', '0025_theme_language_chooser_control', '2023-06-05 16:58:23.462092'),
(31, 'admin_interface', '0026_theme_list_filter_highlight', '2023-06-05 16:58:23.481927'),
(32, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-06-05 16:58:23.502645'),
(33, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-06-05 16:58:23.540820'),
(34, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-06-05 16:58:23.561829'),
(35, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2023-06-05 16:58:23.631128'),
(36, 'contenttypes', '0002_remove_content_type_name', '2023-06-05 16:58:23.679324'),
(37, 'auth', '0002_alter_permission_name_max_length', '2023-06-05 16:58:23.694349'),
(38, 'auth', '0003_alter_user_email_max_length', '2023-06-05 16:58:23.709357'),
(39, 'auth', '0004_alter_user_username_opts', '2023-06-05 16:58:23.717364'),
(40, 'auth', '0005_alter_user_last_login_null', '2023-06-05 16:58:23.748320'),
(41, 'auth', '0006_require_contenttypes_0002', '2023-06-05 16:58:23.751855'),
(42, 'auth', '0007_alter_validators_add_error_messages', '2023-06-05 16:58:23.759856'),
(43, 'auth', '0008_alter_user_username_max_length', '2023-06-05 16:58:23.778777'),
(44, 'auth', '0009_alter_user_last_name_max_length', '2023-06-05 16:58:23.794211'),
(45, 'auth', '0010_alter_group_name_max_length', '2023-06-05 16:58:23.809214'),
(46, 'auth', '0011_update_proxy_permissions', '2023-06-05 16:58:23.819217'),
(47, 'auth', '0012_alter_user_first_name_max_length', '2023-06-05 16:58:23.833870'),
(48, 'core', '0001_initial', '2023-06-05 16:58:23.954883'),
(49, 'core', '0002_auto_20230528_1720', '2023-06-05 16:58:24.157884'),
(50, 'sessions', '0001_initial', '2023-06-05 16:58:24.174704'),
(51, 'core', '0003_seguimiento', '2023-06-21 22:30:15.969177'),
(52, 'core', '0004_remove_seguimiento_fecha_pago', '2023-06-21 22:30:16.090871'),
(53, 'core', '0005_seguimiento_producto', '2023-06-21 22:58:32.447874');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('awbtgdas14lr8t0buh3mfqymtsznxo3j', '.eJxVjEEOwiAURO_C2hDhAwWX7nsG8vmAVA0kpV0Z764kXWgyq3lv5sU87lvxe0-rXyK7MMNOv11AeqQ6QLxjvTVOrW7rEvhQ-EE7n1tMz-vh_h0U7GWsHRotgrFTNprUNxLARHAoQTkknU3SkiJNwupgnZDkLEjhQlKQz8DeH9EzNyg:1qDaln:XyfMIh4jzmmA_4s8jki5EJCG0qjJ50BXTttlBBpiK88', '2023-07-10 01:11:55.369156'),
('gfqxtqktmdnyw3kv2a079bdtovwr4aj5', '.eJxVjMEOwiAQRP-FsyEsrFvw6N1vIMCCVA1NSnsy_rtt0oMeZ96beQsf1qX6tefZjywuwojTbxdDeua2A36Edp9kmtoyj1Huijxol7eJ8-t6uH8HNfS6rc8OiQBRaY46u8QOXYK05RicjWAZTVCDKeigWGIwVJBpUISJtQHx-QLANDbl:1q6ENA:M1wKw36UGiHXKDH9-RY6z9Done6DDGTYoWdgk6uGOxQ', '2023-06-19 17:52:04.509042'),
('irgogf6mf1bvheg5c3j25g2sbo0ajaaw', '.eJxVjEsOAiEQBe_C2hCaj4JL956BNA0towaSYWZlvLtOMgvdvqp6LxFxXWpcR5njlMVZWHH43RLSo7QN5Du2W5fU2zJPSW6K3OmQ157L87K7fwcVR_3WxiDbYsEjnYIz7mgysTPGKwhsATUEpTMFjcwJoATNqVBwVilmTyDeH9XGN84:1qC6Oa:TbYig8ZhZpoIGLiATtsO_AfnJ4ESW-7paHBGfSbyNgc', '2023-07-05 22:33:48.473145'),
('j5xxjm9d6ry5f3ry69lv2287oacf1zlc', '.eJxVjDsOwjAQBe_iGln2Jv5R0nMGa23v4gBypDipEHeHSCmgfTPzXiLitta4dVriVMRZaHH63RLmB7UdlDu22yzz3NZlSnJX5EG7vM6FnpfD_Tuo2Ou3zqx50M5wIrI-2xCs0mSJDTs18mhwyFCQGSgkn8AAOCDtvVPBBHLi_QH5QTf0:1q6DfZ:cFyHTw2SkF9rtYPI3mXmP7YjYOcGnoAFMV4BsK3n3ZU', '2023-06-19 17:07:01.298288'),
('pcudis1ko54reb4i2zc8ywa5thsn9g80', '.eJxVjDsOwjAQBe_iGln2Jv5R0nMGa23v4gBypDipEHeHSCmgfTPzXiLitta4dVriVMRZaHH63RLmB7UdlDu22yzz3NZlSnJX5EG7vM6FnpfD_Tuo2Ou3zqx50M5wIrI-2xCs0mSJDTs18mhwyFCQGSgkn8AAOCDtvVPBBHLi_QH5QTf0:1q6Db4:RMze6-qD4bZrAzgpZO-rG7_O5o4SsrhUddQaHPJobQ0', '2023-06-19 17:02:22.590223'),
('q3sfn8sn2kcal5d9g49dkefne8gja67g', '.eJxVjDsOwjAQBe_iGln2Jv5R0nMGa23v4gBypDipEHeHSCmgfTPzXiLitta4dVriVMRZaHH63RLmB7UdlDu22yzz3NZlSnJX5EG7vM6FnpfD_Tuo2Ou3zqx50M5wIrI-2xCs0mSJDTs18mhwyFCQGSgkn8AAOCDtvVPBBHLi_QH5QTf0:1qDaVw:cXfwP3t9Igdhs5HZGX11qEfduy0_q6La9JqQXNJEzPw', '2023-07-10 00:55:32.656864');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `core_carrito`
--
ALTER TABLE `core_carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_carrito_producto_id_f9c36034_fk_core_producto_id` (`producto_id`),
  ADD KEY `core_carrito_usuario_id_9eafcb26_fk_auth_user_id` (`usuario_id`);

--
-- Indices de la tabla `core_contacto`
--
ALTER TABLE `core_contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_cupon`
--
ALTER TABLE `core_cupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `core_historial`
--
ALTER TABLE `core_historial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_historial_producto_id_f81965ef_fk_core_producto_id` (`producto_id`),
  ADD KEY `core_historial_usuario_id_831c82ae_fk_auth_user_id` (`usuario_id`);

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` (`tipo_id`);

--
-- Indices de la tabla `core_seguimiento`
--
ALTER TABLE `core_seguimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_seguimiento_usuario_id_1f59b804_fk_auth_user_id` (`usuario_id`),
  ADD KEY `core_seguimiento_producto_id_e864ec31_fk_core_producto_id` (`producto_id`);

--
-- Indices de la tabla `core_suscriptor`
--
ALTER TABLE `core_suscriptor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_carrito`
--
ALTER TABLE `core_carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `core_contacto`
--
ALTER TABLE `core_contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_cupon`
--
ALTER TABLE `core_cupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_historial`
--
ALTER TABLE `core_historial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `core_seguimiento`
--
ALTER TABLE `core_seguimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `core_suscriptor`
--
ALTER TABLE `core_suscriptor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_carrito`
--
ALTER TABLE `core_carrito`
  ADD CONSTRAINT `core_carrito_producto_id_f9c36034_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`),
  ADD CONSTRAINT `core_carrito_usuario_id_9eafcb26_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_historial`
--
ALTER TABLE `core_historial`
  ADD CONSTRAINT `core_historial_producto_id_f81965ef_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`),
  ADD CONSTRAINT `core_historial_usuario_id_831c82ae_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Filtros para la tabla `core_seguimiento`
--
ALTER TABLE `core_seguimiento`
  ADD CONSTRAINT `core_seguimiento_producto_id_e864ec31_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`),
  ADD CONSTRAINT `core_seguimiento_usuario_id_1f59b804_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_suscriptor`
--
ALTER TABLE `core_suscriptor`
  ADD CONSTRAINT `core_suscriptor_user_id_6ff44b3e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
