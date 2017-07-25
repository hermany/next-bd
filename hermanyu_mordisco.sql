-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 24-07-2017 a las 19:18:16
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hermanyu_mordisco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `alb_id` int(11) NOT NULL,
  `alb_ruta_amigable` varchar(255) NOT NULL,
  `alb_nombre` varchar(255) NOT NULL,
  `alb_descripcion` varchar(255) NOT NULL,
  `alb_ubicacion` varchar(255) NOT NULL,
  `alb_tags` varchar(255) NOT NULL,
  `alb_etiquetados` varchar(255) NOT NULL,
  `alb_fecha` date NOT NULL,
  `alb_usuario` int(11) NOT NULL,
  `alb_activar` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_multimedia`
--

CREATE TABLE `album_multimedia` (
  `alb_mul_alb_id` int(11) NOT NULL,
  `alb_mul_mul_id` int(11) NOT NULL,
  `alb_mul_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE `aplicacion` (
  `app_id` int(11) NOT NULL,
  `app_nombre` varchar(140) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_ruta_amigable` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_nav_url` varchar(150) CHARACTER SET ucs2 COLLATE ucs2_spanish_ci NOT NULL,
  `app_url` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_icono` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_color` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_orden` int(11) NOT NULL,
  `app_activar` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`app_id`, `app_nombre`, `app_descripcion`, `app_ruta_amigable`, `app_nav_url`, `app_url`, `app_icono`, `app_color`, `app_orden`, `app_activar`) VALUES
(1, 'Mensajes', '', '', '', '', 'icn-comment', '#2D9EE0', 0, 0),
(2, 'Alertas', '', '', '', '', '', '', 0, 0),
(3, 'Calendarios', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `aut_id` int(11) NOT NULL,
  `aut_nombre` varchar(100) NOT NULL,
  `aut_descripcion` tinytext NOT NULL,
  `aut_descripcion_larga` text NOT NULL,
  `aut_activar` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario`
--

CREATE TABLE `calendario` (
  `cal_id` int(11) NOT NULL,
  `cal_nombre` varchar(150) NOT NULL,
  `cal_ruta_amigable` varchar(255) NOT NULL,
  `cal_descripcion` varchar(255) NOT NULL,
  `cal_color` varchar(20) NOT NULL,
  `cal_papelera` int(11) NOT NULL,
  `cal_usuario` int(11) NOT NULL,
  `cal_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_categoria`
--

CREATE TABLE `calendario_categoria` (
  `cal_cat_id_cal` int(11) NOT NULL,
  `cal_cat_id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario_grupo`
--

CREATE TABLE `calendario_grupo` (
  `cal_grp_id_cal` int(11) NOT NULL,
  `cal_grp_id_grp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `cat_id` int(11) NOT NULL,
  `cat_nombre` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_descripcion` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_ruta_amigable` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_imagen` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_icono` varchar(45) CHARACTER SET utf8 NOT NULL,
  `cat_color` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cat_codigos` text CHARACTER SET utf8 NOT NULL,
  `cat_css` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_clase` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_meta` text COLLATE utf8_spanish_ci NOT NULL,
  `cat_theme` text COLLATE utf8_spanish_ci NOT NULL,
  `cat_id_padre` int(11) NOT NULL DEFAULT '0',
  `cat_id_plantilla` int(11) NOT NULL DEFAULT '0',
  `cat_orden` int(11) NOT NULL DEFAULT '0',
  `cat_tipo` char(1) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `cat_url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_destino` varchar(20) COLLATE utf8_spanish_ci NOT NULL DEFAULT '_self',
  `cat_favicon` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_analitica` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_ruta_sitio` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cat_dominio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `cat_activar` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`cat_id`, `cat_nombre`, `cat_descripcion`, `cat_ruta_amigable`, `cat_imagen`, `cat_icono`, `cat_color`, `cat_codigos`, `cat_css`, `cat_clase`, `cat_meta`, `cat_theme`, `cat_id_padre`, `cat_id_plantilla`, `cat_orden`, `cat_tipo`, `cat_url`, `cat_destino`, `cat_favicon`, `cat_analitica`, `cat_ruta_sitio`, `cat_dominio`, `cat_activar`) VALUES
(1, 'Inicio', '', 'inicio', '', '', '#ffffff', '', '', '', '', '', 0, 1, 0, '0', '', '_self', '', '', '', '', 1),
(77, 'El Almacen', '', 'el-almacen', '', '', '#ffffff', '', '', '', '', '', 0, 1, 6, '0', '', '_self', '', '', '', '', 1),
(78, 'Variedades', '', 'variedades', '', '', '#ffffff', '', '', '', '', '', 0, 1, 4, '0', '', '_self', '', '', '', '', 1),
(79, 'Recetas', '', 'recetas', '', '', '#ffffff', '', '', '', '', '', 0, 1, 4, '0', '', '_self', '', '', '', '', 1),
(80, 'Contacto', '', 'contacto', '', '', '', '', '', '', '', '', 0, 1, 6, '0', '', '_self', '', '', '', '', 1),
(81, 'Masas', '', 'masas', '', '', '#ffffff', '', '', '', '', '', 77, 1, 1, '0', '', '_self', '', '', '', '', 1),
(83, 'Pescados', '', 'pescados', '', '', '#ffffff', '', '', '', '', '', 77, 1, 3, '0', '', '_self', '', '', '', '', 1),
(89, 'Pastas', '', 'pastas', '', '', '#ffffff', '', '', '', '', '', 77, 1, 2, '0', '', '_self', '', '', '', '', 1),
(90, 'Mariscos', '', 'mariscos', '', '', '#ffffff', '', '', '', '', '', 77, 1, 4, '0', '', '_self', '', '', '', '', 1),
(97, 'Pedidos', '', 'pedidos', '', '', '', '', '', '', '', '', 0, 1, 3, '0', '', '_self', '', '', '', '', 0),
(101, 'Cuenta', '', 'cuenta', '', '', '', '', '', '', '', '', 0, 1, 10, '0', '', '_self', '', '', '', '', 0),
(102, 'Cat 5', '', 'cat-5', '', '', '#ffffff', '', '', '', '', '', 77, 1, 0, '0', '', '_self', '', '', '', '', 0),
(103, 'Nosotros', '', 'nosotros', '', '', '#ffffff', '', '', '', '', '', 0, 1, 0, '0', '', '_self', '', '', '', '', 1),
(104, 'Noticias', '', 'noticias', '', '', '#ffffff', '', '', '', '', '', 0, 1, 0, '0', '', '_self', '', '', '', '', 1),
(105, '5 Tenedores', '', '5-tenedores', '', '', '#ffffff', '', '', '', '', '', 0, 1, 0, '0', '', '_self', '', '', '', '', 1),
(106, 'Novedades', '', 'novedades', '', '', '#ffffff', '', '', '', '', '', 0, 1, 0, '0', '', '_self', '', '', '', '', 0),
(107, 'Tipo comida', '', 'tipo-comida', '', '', '#ffffff', '', '', '', '', '', 105, 1, 0, '0', '', '_self', '', '', '', '', 1),
(108, 'Chefs', '', 'chefs', '', '', '#ffffff', '', '', '', '', '', 104, 1, 0, '0', '', '_self', '', '', '', '', 1),
(109, 'Viajes', 'Lugares, recetas típicas, crónicas de viajes', 'viajes', '', '', '#ffffff', '', '', '', '', '', 104, 1, 0, '0', '', '_self', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `com_id` int(11) NOT NULL,
  `com_texto` text CHARACTER SET latin1 NOT NULL,
  `com_usuario` int(11) NOT NULL,
  `com_fecha` datetime NOT NULL,
  `com_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`com_id`, `com_texto`, `com_usuario`, `com_fecha`, `com_activar`) VALUES
(1, 'hola mundo', 1, '2016-08-11 00:08:47', 1),
(2, 'ya tenemos  la base de comentarios :D', 1, '2016-08-11 00:08:33', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `conf_nombre_sitio` varchar(255) CHARACTER SET utf8 NOT NULL,
  `conf_imagen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `conf_favicon` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `conf_script_head` text CHARACTER SET utf8 NOT NULL,
  `conf_script_footer` text CHARACTER SET utf8 NOT NULL,
  `conf_meta` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`conf_nombre_sitio`, `conf_imagen`, `conf_favicon`, `conf_script_head`, `conf_script_footer`, `conf_meta`) VALUES
('Mordisco Gourmet ', 'images/logo-mordisco-gourmet.svg', 'images/favicon.png', '', '', 'modulos/meta.pub.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenedor`
--

CREATE TABLE `contenedor` (
  `cont_id` int(11) NOT NULL,
  `cont_nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cont_clase` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cont_css` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cont_codigos` text CHARACTER SET utf8 NOT NULL,
  `cont_id_padre` int(11) NOT NULL,
  `cont_orden` int(11) NOT NULL DEFAULT '1',
  `cont_activar` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `contenedor`
--

INSERT INTO `contenedor` (`cont_id`, `cont_nombre`, `cont_clase`, `cont_css`, `cont_codigos`, `cont_id_padre`, `cont_orden`, `cont_activar`) VALUES
(1, 'diagrama_general', '', '', '', 0, 1, 1),
(2, 'diagrama_2', 'clase', 'css', 'codigos', 0, 2, 1),
(4, 'bloque_sidebar', 'bloque_sidebar', '', '', 1, 3, 1),
(5, 'bloque_cuerpo', 'bloque_cuerpo', '', '', 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenedor_plantilla`
--

CREATE TABLE `contenedor_plantilla` (
  `contenedor_cont_id` int(11) NOT NULL,
  `plantilla_pla_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `contenedor_plantilla`
--

INSERT INTO `contenedor_plantilla` (`contenedor_cont_id`, `plantilla_pla_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `conte_id` int(11) NOT NULL,
  `conte_titulo` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_ruta_amigable` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_subtitulo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_cuerpo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_foto` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_fecha` datetime NOT NULL,
  `conte_id_usuario` int(11) NOT NULL,
  `conte_tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_id_dominio` int(11) NOT NULL,
  `conte_activar` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `contenido`
--

INSERT INTO `contenido` (`conte_id`, `conte_titulo`, `conte_ruta_amigable`, `conte_subtitulo`, `conte_cuerpo`, `conte_foto`, `conte_fecha`, `conte_id_usuario`, `conte_tag`, `conte_id_dominio`, `conte_activar`) VALUES
(1, 'Nosotros', 'nosotros', '', '<p>Donec id elit non mi porta gravida at eget metus. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p><br></p><p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id dolor id nibh ultricies vehicula ut id elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>', '', '2017-07-24 13:02:34', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_categorias`
--

CREATE TABLE `contenido_categorias` (
  `conte_cat_conte_id` int(11) NOT NULL,
  `conte_cat_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `contenido_categorias`
--

INSERT INTO `contenido_categorias` (`conte_cat_conte_id`, `conte_cat_cat_id`) VALUES
(1, 103);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_documentos`
--

CREATE TABLE `contenido_documentos` (
  `conte_doc_conte_id` int(11) NOT NULL,
  `conte_doc_doc_id` int(11) NOT NULL,
  `conte_doc_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cron_jobs`
--

CREATE TABLE `cron_jobs` (
  `cron_id` int(11) NOT NULL,
  `cron_fecha` datetime NOT NULL,
  `cron_total` int(11) NOT NULL,
  `cron_num` int(11) NOT NULL,
  `cron_accion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cron_id_accion` int(11) NOT NULL,
  `cron_estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `cuenta_id` int(11) NOT NULL,
  `cuenta_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `doc_id` int(11) NOT NULL,
  `doc_nombre` varchar(255) NOT NULL,
  `doc_ruta_amigable` varchar(255) NOT NULL,
  `doc_descripcion` text NOT NULL,
  `doc_url` varchar(255) NOT NULL,
  `doc_imagen` varchar(255) NOT NULL,
  `doc_tipo_archivo` varchar(255) NOT NULL,
  `doc_tamano` varchar(255) NOT NULL,
  `doc_tags` varchar(255) NOT NULL,
  `doc_fecha` date NOT NULL,
  `doc_usuario` int(11) NOT NULL,
  `doc_id_dominio` int(11) NOT NULL,
  `doc_orden` int(11) NOT NULL,
  `doc_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`doc_id`, `doc_nombre`, `doc_ruta_amigable`, `doc_descripcion`, `doc_url`, `doc_imagen`, `doc_tipo_archivo`, `doc_tamano`, `doc_tags`, `doc_fecha`, `doc_usuario`, `doc_id_dominio`, `doc_orden`, `doc_activar`) VALUES
(1, '10-al-16-de-octubre-2016', '', '', 'archivos/docs/10-al-16-de-octubre-2016.xls', '', 'xls', '397 bytes', '', '2016-10-25', 1, 0, 0, 1),
(2, 'comparacion de pulverizadoras', 'comparacion-de-pulverizadoras.xlsx', '', 'archivos/docs/comparacion-de-pulverizadoras.xlsx', '', 'xlsx', '3 MB', '', '2016-10-25', 1, 0, 0, 1),
(3, '10-al-16-de-octubre-2016 (1)', '10-al-16-de-octubre-2016-1.xls', '', 'archivos/docs/10-al-16-de-octubre-2016-1.xls', '', 'xls', '397 bytes', '', '2016-10-25', 1, 0, 0, 1),
(4, '10-al-16-de-octubre-2016 (1)', '10-al-16-de-octubre-2016-1.xls', '', 'archivos/docs/10-al-16-de-octubre-2016-1.xls', '', 'xls', '397 bytes', '', '2016-10-25', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_categorias`
--

CREATE TABLE `documento_categorias` (
  `doc_cat_doc_id` int(11) NOT NULL,
  `doc_cat_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `emp_id` int(11) NOT NULL,
  `emp_nombre` varchar(255) NOT NULL,
  `emp_descripcion` varchar(255) NOT NULL,
  `emp_ruta_amigable` varchar(50) NOT NULL,
  `emp_logo` varchar(255) NOT NULL,
  `emp_icon` varchar(255) NOT NULL,
  `emp_razon_social` varchar(255) NOT NULL,
  `emp_nit` varchar(255) NOT NULL,
  `emp_direccion` varchar(255) NOT NULL,
  `emp_coordenadas` varchar(255) NOT NULL,
  `emp_rubro` varchar(255) NOT NULL,
  `emp_telefono` varchar(255) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_web` varchar(255) NOT NULL,
  `emp_pais` varchar(50) NOT NULL,
  `emp_ciudad` varchar(50) NOT NULL,
  `emp_nombre_contacto` varchar(150) NOT NULL,
  `emp_telefono_contacto` varchar(50) NOT NULL,
  `emp_email_contacto` varchar(255) NOT NULL,
  `emp_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_categorias`
--

CREATE TABLE `empresa_categorias` (
  `emp_cat_emp_id` int(11) NOT NULL,
  `emp_cat_cat_id` int(11) NOT NULL,
  `emp_cat_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_tipos`
--

CREATE TABLE `empresa_tipos` (
  `emp_tip_emp_id` int(11) NOT NULL,
  `emp_tip_tip_id` int(11) NOT NULL,
  `emp_tip_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enlace`
--

CREATE TABLE `enlace` (
  `enl_id` int(11) NOT NULL,
  `enl_nombre` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_target` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_imagen` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_clases` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_activar` int(11) NOT NULL,
  `enl_papelera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enlace_categorias`
--

CREATE TABLE `enlace_categorias` (
  `enl_cat_enl_id` int(11) NOT NULL,
  `enl_cat_cat_id` int(11) NOT NULL,
  `enl_cat_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enlace_grupo_usuarios`
--

CREATE TABLE `enlace_grupo_usuarios` (
  `enl_grp_us_enl_id` int(11) NOT NULL,
  `enl_grp_us_grp_us_id` int(11) NOT NULL,
  `enl_grp_us_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enlace_publicaciones`
--

CREATE TABLE `enlace_publicaciones` (
  `enl_pub_enl_id` int(11) NOT NULL,
  `enl_pub_pub_id` int(11) NOT NULL,
  `enl_pub_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `eve_id` int(11) NOT NULL,
  `eve_nombre` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `eve_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `eve_coordenadas` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `eve_localizacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `eve_dia` int(1) NOT NULL,
  `eve_inicio` datetime NOT NULL,
  `eve_fin` datetime NOT NULL,
  `eve_alerta_mail` int(11) NOT NULL,
  `eve_ver` int(1) NOT NULL COMMENT '1=Libre; 2=Ocupado',
  `eve_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `eve_notas` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `eve_invitados` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `eve_usuario` int(11) NOT NULL,
  `eve_papelera` int(11) NOT NULL,
  `eve_activar` int(11) NOT NULL,
  `eve_imagen` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `eve_id_dominio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_calendarios`
--

CREATE TABLE `evento_calendarios` (
  `eve_cal_eve_id` int(11) NOT NULL,
  `eve_cal_cal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_grupos`
--

CREATE TABLE `evento_grupos` (
  `eve_grp_id_eve` int(11) NOT NULL,
  `eve_grp_id_grp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_roles`
--

CREATE TABLE `evento_roles` (
  `eve_rol_id_eve` int(11) NOT NULL,
  `eve_rol_id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `grupo_id` int(11) NOT NULL,
  `grupo_nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grupo_detalle` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grupo_funciones` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grupo_activar` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `mod_id` int(11) NOT NULL,
  `mod_nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_ruta_amigable` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_bd` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_bd_prefijo` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_bd_relaciones` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `mod_icono` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `mod_color` varchar(7) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_tipo` int(11) NOT NULL,
  `mod_id_padre` int(11) NOT NULL,
  `mod_activar` int(11) NOT NULL COMMENT '0 - no publicado1 - publicado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`mod_id`, `mod_nombre`, `mod_descripcion`, `mod_ruta_amigable`, `mod_bd`, `mod_bd_prefijo`, `mod_bd_relaciones`, `mod_url`, `mod_icono`, `mod_color`, `mod_tipo`, `mod_id_padre`, `mod_activar`) VALUES
(1, 'Sistemas', '', 'sistemas', 'sistema', 'sis_', 'sistema_modulos:sis_mod_sis_id', 'modulos/sistemas/sistemas.adm.php', 'icn-system', '#191B1C', 2, 0, 1),
(2, 'Modulos', '', 'modulos', 'modulo', 'mod_', 'modulo_categorias:mod_cat_mod_id,sistema_modulos:sis_mod_mod_id', 'modulos/modulos/modulos.adm.php', 'icn-box', '#99C14C', 2, 1, 1),
(3, 'Aplicaciones', '', 'aplicaciones', 'aplicacion', 'app_', '', 'modulos/aplicaciones/apps.adm.php', 'icn-apps', '#f39333', 2, 0, 1),
(4, 'Usuarios', '', 'usuarios', 'usuario', 'usu_', 'usuario_grupos:usu_grupo_usu_id,usuario_roles:usu_rol_usu_id', 'modulos/usuarios/usuarios.adm.php', 'icn-users', '#0076ff', 2, 0, 1),
(5, 'Estructura', '', 'estructura', 'categoria', 'cat_', '', 'modulos/categorias/categorias.adm.php', 'icn-category color-text-violeta-a', '#806aad', 2, 0, 1),
(6, 'Estructura-Contenidos', '', 'estructura-contenidos', 'contenedor', 'cont_', 'contenedor_plantilla:contenedor_cont_id', 'modulos/categorias/contenedor.adm.php', 'icn-block-page', '#806aad', 2, 5, 1),
(7, 'Sitios', '', 'sitios', 'sitios', 'sitios_', '', 'modulos/sitios/sitios.adm.php', 'icn-boxs', '#2d9ee0', 2, 0, 1),
(8, 'Contenedores', '', 'contenedores', 'contenedor', 'cont_', 'contenedor_plantilla:contenedor_cont_id', 'modulos/config/contenedores.adm.php', ' icn-block-page', '#0076ff', 2, 13, 1),
(9, 'Publicaciones', '', 'publicaciones', 'publicacion', 'pub_', 'publicacion_rel:pub_rel_pub_id', 'modulos/config/publicaciones.adm.php', 'icn-rocket', '#e71882', 2, 13, 1),
(10, 'Plantillas', '', 'plantillas', 'plantilla', 'pla_', '', 'modulos/config/plantilas.adm.php', 'icn-level-page', '#8a7354', 2, 13, 1),
(11, 'Roles', '', 'roles', 'rol', 'rol_', 'sitio_roles:sis_rol_rol_id,usuario_roles:usu_rol_rol_id,sistema_roles:sis_rol_rol_id,modulo_roles:mod_rol_rol_id,rol_categorias:rol_cat_rol_id', 'modulos/usuarios/roles.adm.php', 'icn icn-credential', '#8b3b8f', 2, 4, 1),
(12, 'Grupos', '', 'grupos', 'grupos', 'grupo_', '', 'modulos/usuarios/grupos.adm.php', 'icn icn-group', '#eb5c43', 2, 4, 1),
(13, 'Configuración General', '', 'configuracion-sites', 'configuracion', 'config_', '', 'modulos/config/config.adm.php', 'icn-conf color-text-rojo', '#e71882', 2, 0, 1),
(50, 'Multimedia', '', 'multimedia', 'multimedia', 'mul_', 'multimedia_categorias:mul_cat_mul_id', 'modulos/multimedia/multimedia.adm.php', 'icn-media color-text-rojo-b', '#E83759', 0, 0, 1),
(51, 'Slides', '', 'slides', 'slide', 'sli_', 'slide_categoria:sli_cat_sli_id', 'modulos/multimedia/slide.adm.php', 'icn-slide', '#c2b4d9', 0, 0, 1),
(60, 'Notas', 'Modulo informativo, para sitios e intranet', 'notas', 'nota', 'not_', 'nota_categorias:not_cat_not_id,nota_multimedia:not_mul_not_id,nota_valores:not_val_not_id,nota_comentarios:not_com_not_id', 'modulos/notas/notas.adm.php', 'icn-newspaper color-text-naranja-a', '#2d9ee0', 0, 0, 1),
(61, 'Configuración', '', 'config-noticias', '', '', '', 'modulos/noticias/noticias-config.adm.php', 'icn-conf ', '#eb5c43', 1, 51, 1),
(70, 'Contenidos', '', 'contenidos', 'contenidos', 'conte_', 'contenidos_categorias:conte_cat_conte_id,contenidos_documento:conte_doc_conte_id', 'modulos/contenidos/contenidos.adm.php', 'icn-content', '#00bdc6', 0, 0, 1),
(80, 'Documentos', '', 'documentos', 'documento', 'doc_', 'documento_categoria:doc_cat_doc_id', 'modulos/documentos/documentos.adm.php', 'icn-folder', '#00bdc6', 0, 0, 1),
(90, 'Calendarios', '', 'calendarios', 'calendario', 'cal_', 'calendario_categoria:cal_cat_cal_id, calendario_grupo:cal_grp_cal_id', 'modulos/calendarios/calendario.adm.php', 'icn-calendar', '#e83759', 0, 0, 1),
(91, 'Eventos', '', '', 'eventos_', 'eve_', '', 'modulos/eventos/evento.adm.php', 'icn-calendar-ok', '#eb5c43', 0, 0, 1),
(100, 'Enlaces', '', 'enlaces', 'enlaces', 'enl_', 'enlaces_categorias:enl_cat_enl_id,enlaces_grupo_usuario:enl_grup_usu_enl_id,enlaces_publicaciones:enl_pub_enl_id', 'modulos/', 'icn-link', '#806aad', 0, 0, 1),
(150, 'Productos', '', 'productos', 'mod_productos', 'mod_prod_', 'mod_productos_mul:mod_pro_mul_id_prod,mod_productos_pestana:mod_pro_pes_pro_id,mod_productos_rel:mod_prod_rel_prod_id', 'modulos/ecommerce/productos.adm.php', 'icn-box-o ', '#f39333', 0, 0, 1),
(151, 'Catalogo interno ', '', 'catalogo-interno', '', '', '', 'modulos/ecommerce/catalogo.adm.php', 'icn icn-catalog', '#f39333', 0, 0, 1),
(152, 'Configuración Catálogo ', '', 'config-catalogo', 'mod_catalogo', 'mod_catg_', 'mod_catalogo_categorias:mod_catg_cat_catg_id,mod_catalogo_roles:	mod_catg_rol_catg_id', 'modulos/ecommerce/config-catalogo.adm.php', 'icn-conf', '#e71882', 0, 151, 1),
(153, 'Marcas', '', 'marcas', 'mod_marcas', 'mod_mar_', 'mod_marcas_categorias:mod_mar_mar_id,mod_marcas_productos:mod_mar_mar_id', 'modulos/marcas/marcas.adm.php', 'icn-marca', '#24aa5b', 0, 10, 1),
(154, 'Sucursales', '', 'sucursales', 'mod_sucursales', 'mod_suc_', '', 'modulos/productos/sucursales.adm.php', 'icn-shop', '#e71882', 1, 0, 1),
(155, 'Configuración', 'E-commerse', 'configuracion-ec', '', '', '', 'modulos/productos/config-ec.adm.php', 'icn icn-conf', '#8b3b8f', 1, 150, 1),
(200, 'Empresas', '', '', 'empresa', 'emp_', 'empresa_categoria:emp_cat_emp_id', 'modulos/adm/empresas.adm.php', 'icn-apartament', '#0076ff', 0, 0, 1),
(210, 'Solicitud de Permiso Fuera de oficina', '', 'solicitud-permiso-fuera-oficina', '', '', '', 'modulos/solicitud_permiso/solicitud_permiso.adm.php', 'icn-order-ok', '#c2975c', 0, 0, 1),
(220, 'Kardex', '', 'karex', 'mod_kardex', 'mod_krk_', '', 'modulos/rrhh/kardex.adm.php', 'icn-kardex', '#806aad', 0, 0, 1),
(250, 'Inventario', '', '', 'mod_inventario', 'mod_inv_', '', 'modulos/rrhh/inventario.adm.php', 'icn-inventary', '#333333', 0, 0, 1),
(255, 'Pedidos almacen', 'Cafeteria y Papeleria', '', 'mod_pedidos', 'mod_ped_', '', 'modulos/rrhh/pedido.adm.php', 'icn-order ', '#00bdc6', 0, 0, 1),
(270, 'Configuración', 'Logistica', 'config-logistica', '', '', '', 'modulos/logistica/config-logistica.adm.php', 'icn icn-conf', '#33aadd', 1, 0, 1),
(271, 'Registro de transporte', 'Logistica', 'registro-transporte', '', '', '', 'modulos/logistica/registro-transporte.adm.php', 'icn icn-truck-register', '#00bdc6', 0, 0, 1),
(272, 'Zonas de distribución', '', 'zonas-distribucion', '', '', '', 'modulos/logistica/zonas-distribucion.adm.php', 'icn icn-zone', '#f39333', 0, 0, 1),
(273, 'Pedidos e-commerce', 'E-commerce', 'pedidos-ec', 'mod_pedidos_clientes', 'mod_ped_cli_', 'mod_pedidos_productos:mod_ped_prod_ped_id', 'modulos/logistica/pedidos-ec.adm.php', 'icn icn-cart-go', '#eb5c43', 0, 0, 1),
(300, 'Clientes', 'CRM, marketing', 'clientes', 'mod_clientes', 'mod_cli_', '', 'modulos/crm/clientes.adm.php', 'icn icn-clients', '#33aadd', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_categorias`
--

CREATE TABLE `modulo_categorias` (
  `mod_cat_mod_id` int(11) NOT NULL,
  `mod_cat_cat_id` int(11) NOT NULL,
  `mod_cat_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modulo_categorias`
--

INSERT INTO `modulo_categorias` (`mod_cat_mod_id`, `mod_cat_cat_id`, `mod_cat_orden`) VALUES
(22, 32, 0),
(27, 2, 0),
(27, 3, 0),
(27, 4, 0),
(27, 85, 0),
(27, 89, 0),
(27, 97, 0),
(27, 104, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_roles`
--

CREATE TABLE `modulo_roles` (
  `mod_rol_mod_id` int(11) NOT NULL,
  `mod_rol_rol_id` int(11) NOT NULL,
  `mod_rol_permisos` varchar(20) NOT NULL DEFAULT '0,0,0,0,0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `modulo_roles`
--

INSERT INTO `modulo_roles` (`mod_rol_mod_id`, `mod_rol_rol_id`, `mod_rol_permisos`) VALUES
(60, 2, '1,1,1,0,0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_almacen`
--

CREATE TABLE `mod_almacen` (
  `alm_id` int(11) NOT NULL,
  `alm_nombre` varchar(255) NOT NULL,
  `alm_descripcion` varchar(255) NOT NULL,
  `alm_cant_min` int(11) NOT NULL,
  `alm_imagen` varchar(255) NOT NULL,
  `alm_costo_unit` float NOT NULL,
  `alm_activar` int(11) NOT NULL,
  `alm_usuario` int(11) NOT NULL,
  `alm_id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_almacen_categorias`
--

CREATE TABLE `mod_almacen_categorias` (
  `cat_alm_id` int(11) NOT NULL,
  `cat_alm_nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cat_alm_descripcion` varchar(250) CHARACTER SET latin1 NOT NULL,
  `cat_alm_activar` int(11) NOT NULL,
  `cat_alm_id_padre` int(11) NOT NULL,
  `cat_alm_usuario` int(11) NOT NULL,
  `cat_alm_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_catalogo`
--

CREATE TABLE `mod_catalogo` (
  `mod_catg_id` int(11) NOT NULL,
  `mod_catg_nombre` varchar(100) NOT NULL,
  `mod_catg_descripcion` text NOT NULL,
  `mod_catg_ruta_amigable` varchar(150) NOT NULL,
  `mod_catg_id_cat_arranque` int(11) NOT NULL,
  `mod_catg_orden` int(11) NOT NULL,
  `mod_catg_id_padre` int(11) NOT NULL DEFAULT '0',
  `mod_catg_id_empresa` int(11) NOT NULL,
  `mod_catg_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_catalogo_categorias`
--

CREATE TABLE `mod_catalogo_categorias` (
  `mod_catg_cat_catg_id` int(11) NOT NULL,
  `mod_catg_cat_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_catalogo_roles`
--

CREATE TABLE `mod_catalogo_roles` (
  `mod_catg_rol_catg_id` int(11) NOT NULL,
  `mod_catg_rol_rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_cats`
--

CREATE TABLE `mod_cats` (
  `cts_id` int(11) NOT NULL,
  `cts_nombre` varchar(50) NOT NULL,
  `cts_email` varchar(150) NOT NULL,
  `cts_encargado` varchar(150) NOT NULL,
  `cts_zona` varchar(20) NOT NULL,
  `cts_direccion` varchar(255) NOT NULL,
  `cts_telefono` varchar(20) NOT NULL,
  `cts_celular` varchar(20) NOT NULL,
  `cts_activar` int(11) NOT NULL,
  `cts_id_usuario` int(11) NOT NULL,
  `cts_id_roles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_clientes`
--

CREATE TABLE `mod_clientes` (
  `mod_cli_id` int(11) NOT NULL,
  `mod_cli_nombre` varchar(150) NOT NULL,
  `mod_cli_email` varchar(150) NOT NULL,
  `mod_cli_telefono` varchar(50) NOT NULL,
  `mod_cli_nit` varchar(50) NOT NULL,
  `mod_cli_razon_social` varchar(100) NOT NULL,
  `mod_cli_id_facebook` varchar(50) NOT NULL,
  `mod_cli_foto_facebook` varchar(255) NOT NULL,
  `mod_cli_password` varchar(50) NOT NULL,
  `mod_cli_estado` int(11) NOT NULL,
  `mod_cli_fecha_ingreso` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_clientes_estados`
--

CREATE TABLE `mod_clientes_estados` (
  `mod_cli_est_id` int(11) NOT NULL,
  `mod_cli_est_nombre` varchar(100) NOT NULL,
  `mod_cli_est_descripcion` tinytext NOT NULL,
  `mod_cli_est_icon` varchar(200) NOT NULL,
  `mod_cli_est_color` varchar(200) NOT NULL,
  `mod_cli_esta_activar` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex`
--

CREATE TABLE `mod_kardex` (
  `mod_kdx_id` int(11) NOT NULL,
  `mod_kdx_nombre` varchar(255) NOT NULL,
  `mod_kdx_apellido_paterno` varchar(255) NOT NULL,
  `mod_kdx_apellido_materno` varchar(255) NOT NULL,
  `mod_kdx_identificacion` varchar(255) NOT NULL,
  `mod_kdx_extension` varchar(255) NOT NULL,
  `mod_kdx_fecha_vencimiento_identificacion` date NOT NULL,
  `mod_kdx_fecha_vencimiento_licencia_conducir` date NOT NULL,
  `mod_kdx_fecha_nacimiento` date NOT NULL,
  `mod_kdx_nacionalidad` varchar(255) NOT NULL,
  `mod_kdx_lugar_nacimiento` varchar(255) NOT NULL,
  `mod_kdx_sexo` int(11) NOT NULL,
  `mod_kdx_estado_civil` int(11) NOT NULL,
  `mod_kdx_nombre_esp` varchar(150) NOT NULL,
  `mod_kdx_formacion_esp` varchar(150) NOT NULL,
  `mod_kdx_trabajo_esp` varchar(255) NOT NULL,
  `mod_kdx_fecha_nac_esp` date NOT NULL,
  `mod_kdx_telefono_domicilio` varchar(255) NOT NULL,
  `mod_kdx_telefono_corporativo` varchar(255) NOT NULL,
  `mod_kdx_telefono_corporativo_ext` int(11) NOT NULL,
  `mod_kdx_celular_personal` varchar(255) NOT NULL,
  `mod_kdx_celular_corporativo` varchar(255) NOT NULL,
  `mod_kdx_email_personal` varchar(255) NOT NULL,
  `mod_kdx_email_corporativo` varchar(255) NOT NULL,
  `mod_kdx_direccion_domicilio` varchar(255) NOT NULL,
  `mod_kdx_coordenadas_domicilio` varchar(255) NOT NULL,
  `mod_kdx_nro_afiliacion_cns` varchar(255) NOT NULL,
  `mod_kdx_nro_afp` varchar(255) NOT NULL,
  `mod_kdx_afp` int(11) NOT NULL,
  `mod_kdx_talla_camisa` varchar(255) NOT NULL,
  `mod_kdx_talla_pantalon` varchar(255) NOT NULL,
  `mod_kdx_talla_botines` varchar(255) NOT NULL,
  `mod_kdx_tipo_sangre` varchar(255) NOT NULL,
  `mod_kdx_empresa_actual` int(11) NOT NULL,
  `mod_kdx_division` int(11) NOT NULL,
  `mod_kdx_cargo` int(11) NOT NULL,
  `mod_kdx_departamento` int(11) NOT NULL,
  `mod_kdx_fecha_ingreso` date NOT NULL,
  `mod_kdx_fecha_retiro` date NOT NULL,
  `mod_kdx_antiguedad` int(11) NOT NULL,
  `mod_kdx_codigo_sap` int(11) NOT NULL,
  `mod_kdx_manual_funciones` int(11) NOT NULL,
  `mod_kdx_formato_contrato` int(11) NOT NULL,
  `mod_kdx_cargo_act` int(11) NOT NULL,
  `mod_kdx_cargo_ant` int(11) NOT NULL,
  `mod_kdx_abono_sueldo` varchar(50) NOT NULL,
  `mod_kdx_curriculum` varchar(255) NOT NULL,
  `mod_kdx_nivel_edu` int(11) NOT NULL,
  `mod_kdx_institucion_edu` varchar(150) NOT NULL,
  `mod_kdx_titulo` varchar(255) NOT NULL,
  `mod_kdx_fecha_titulo` varchar(150) NOT NULL,
  `mod_kdx_empresa_ant` varchar(255) NOT NULL,
  `mod_kdx_cargo_emp_ant` varchar(255) NOT NULL,
  `mod_kdx_fecha_ing_emp_ant` date NOT NULL,
  `mod_kdx_fecha_sal_emp_ant` date NOT NULL,
  `mod_kdx_antiguedad_emp_ant` int(11) NOT NULL,
  `mod_kdx_imagen` varchar(255) NOT NULL,
  `mod_kdx_id_usuario` int(11) NOT NULL,
  `mod_kdx_activar` int(11) NOT NULL,
  `mod_kdx_papelera` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_bancos`
--

CREATE TABLE `mod_kardex_bancos` (
  `mod_kdx_bnc_id` int(11) NOT NULL,
  `mod_kdx_bnc_nombre` int(11) NOT NULL,
  `mod_kdx_bnc_nro_cuenta` varchar(150) NOT NULL,
  `mod_kdx_bnc_moneda` int(11) NOT NULL,
  `mod_kdx_bnc_id_kardex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_cargo`
--

CREATE TABLE `mod_kardex_cargo` (
  `mod_kdx_car_id` int(11) NOT NULL,
  `mod_kdx_car_nombre` varchar(50) NOT NULL,
  `mod_kdx_car_descripcion` varchar(255) NOT NULL,
  `mod_kdx_car_atribuciones` varchar(255) NOT NULL,
  `mod_kdx_car_responsabilidades` varchar(255) NOT NULL,
  `mod_kdx_car_dependiente` int(11) NOT NULL,
  `mod_kdx_car_ascendencia` int(11) NOT NULL,
  `mod_kdx_car_destrezas` varchar(255) NOT NULL,
  `mod_kdx_car_lugar_de_trabajo` varchar(255) NOT NULL,
  `mod_kdx_car_requisitos` varchar(255) NOT NULL,
  `mod_kdx_car_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mod_kardex_cargo`
--

INSERT INTO `mod_kardex_cargo` (`mod_kdx_car_id`, `mod_kdx_car_nombre`, `mod_kdx_car_descripcion`, `mod_kdx_car_atribuciones`, `mod_kdx_car_responsabilidades`, `mod_kdx_car_dependiente`, `mod_kdx_car_ascendencia`, `mod_kdx_car_destrezas`, `mod_kdx_car_lugar_de_trabajo`, `mod_kdx_car_requisitos`, `mod_kdx_car_activar`) VALUES
(1, 'Gerente General', 'descripción', 'atr', 'res', 0, 0, 'des', 'Local', 'req', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_departamento`
--

CREATE TABLE `mod_kardex_departamento` (
  `mod_kdx_dep_id` int(11) NOT NULL,
  `mod_kdx_dep_nombre` varchar(255) NOT NULL,
  `mod_kdx_dep_descripcion` text NOT NULL,
  `mod_kdx_dep_id_padre` int(11) NOT NULL,
  `mod_kdx_dep_orden` int(11) NOT NULL,
  `mod_kdx_dep_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mod_kardex_departamento`
--

INSERT INTO `mod_kardex_departamento` (`mod_kdx_dep_id`, `mod_kdx_dep_nombre`, `mod_kdx_dep_descripcion`, `mod_kdx_dep_id_padre`, `mod_kdx_dep_orden`, `mod_kdx_dep_activar`) VALUES
(1, 'Gerente General', 'descripción', 0, 0, 1),
(2, 'Finanzas', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_division`
--

CREATE TABLE `mod_kardex_division` (
  `mod_kdx_div_id` int(11) NOT NULL,
  `mod_kdx_div_nombre` varchar(255) NOT NULL,
  `mod_kdx_div_descripcion` text NOT NULL,
  `mod_kdx_div_activar` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mod_kardex_division`
--

INSERT INTO `mod_kardex_division` (`mod_kdx_div_id`, `mod_kdx_div_nombre`, `mod_kdx_div_descripcion`, `mod_kdx_div_activar`) VALUES
(1, 'División Agrícola', 'descripción', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_empresa`
--

CREATE TABLE `mod_kardex_empresa` (
  `mod_kdx_emp_id` int(11) NOT NULL,
  `mod_kdx_emp_nombre` varchar(255) NOT NULL,
  `mod_kdx_emp_descripcion` varchar(255) NOT NULL,
  `mod_kdx_emp_logo` varchar(255) NOT NULL,
  `mod_kdx_emp_razon_social` varchar(255) NOT NULL,
  `mod_kdx_emp_nit` varchar(255) NOT NULL,
  `mod_kdx_emp_direccion` varchar(255) NOT NULL,
  `mod_kdx_emp_coordenadas` varchar(255) NOT NULL,
  `mod_kdx_emp_rubro` varchar(255) NOT NULL,
  `mod_kdx_emp_email` varchar(255) NOT NULL,
  `mod_kdx_emp_web` varchar(255) NOT NULL,
  `mod_kdx_emp_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mod_kardex_empresa`
--

INSERT INTO `mod_kardex_empresa` (`mod_kdx_emp_id`, `mod_kdx_emp_nombre`, `mod_kdx_emp_descripcion`, `mod_kdx_emp_logo`, `mod_kdx_emp_razon_social`, `mod_kdx_emp_nit`, `mod_kdx_emp_direccion`, `mod_kdx_emp_coordenadas`, `mod_kdx_emp_rubro`, `mod_kdx_emp_email`, `mod_kdx_emp_web`, `mod_kdx_emp_activar`) VALUES
(1, 'Landicorp S.A.', '', '', 'Landicorp S.A.', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_formacion`
--

CREATE TABLE `mod_kardex_formacion` (
  `mod_kdx_frm_id` int(11) NOT NULL,
  `mod_kdx_frm_nombre` varchar(255) NOT NULL,
  `mod_kdx_frm_institucion` varchar(150) NOT NULL,
  `mod_kdx_frm_fecha` varchar(150) NOT NULL,
  `mod_kdx_frm_id_kardex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_hijos`
--

CREATE TABLE `mod_kardex_hijos` (
  `mod_kdx_hj_id` int(11) NOT NULL,
  `mod_kdx_hj_nombre` varchar(255) NOT NULL,
  `mod_kdx_hj_inst_educativa` varchar(255) NOT NULL,
  `mod_kdx_hj_fecha_nac` date NOT NULL,
  `mod_kdx_hj_id_kardex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_historial_corporativo`
--

CREATE TABLE `mod_kardex_historial_corporativo` (
  `mod_kdx_his_corp_id` int(11) NOT NULL,
  `mod_kdx_his_corp_empresa` int(11) NOT NULL,
  `mod_kdx_his_corp_fecha_ingreso` date NOT NULL,
  `mod_kdx_his_corp_fecha_salida` date NOT NULL,
  `mod_kdx_his_corp_cargo` int(11) NOT NULL,
  `mod_kdx_his_corp_id_kardex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_manual_funciones`
--

CREATE TABLE `mod_kardex_manual_funciones` (
  `mod_kdx_mf_id` int(11) NOT NULL,
  `mod_kdx_mf_nombre` varchar(50) NOT NULL,
  `mod_kdx_mf_descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_referencias`
--

CREATE TABLE `mod_kardex_referencias` (
  `mod_kardex_ref_id` int(11) NOT NULL,
  `mod_kardex_ref_nombre` varchar(150) NOT NULL,
  `mod_kardex_ref_telefono` varchar(50) NOT NULL,
  `mod_kardex_ref_id_kardex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_kardex_ref_emergencia`
--

CREATE TABLE `mod_kardex_ref_emergencia` (
  `mod_kdx_ref_emg_id` int(11) NOT NULL,
  `mod_kdx_ref_emg_nombre` varchar(255) NOT NULL,
  `mod_kdx_ref_emg_parentesco` varchar(50) NOT NULL,
  `mod_kdx_ref_emg_telefono` varchar(50) NOT NULL,
  `mod_kdx_ref_emg_id_kardex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_marcas`
--

CREATE TABLE `mod_marcas` (
  `mod_mar_id` int(11) NOT NULL,
  `mod_mar_nombre` varchar(255) NOT NULL,
  `mod_mar_ruta_amigable` varchar(255) NOT NULL,
  `mod_mar_imagen` varchar(255) NOT NULL,
  `mod_mar_usuario` int(11) NOT NULL,
  `mod_mar_detalle` text NOT NULL,
  `mod_mar_id_dominio` int(11) NOT NULL,
  `mod_mar_activar` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mod_marcas`
--

INSERT INTO `mod_marcas` (`mod_mar_id`, `mod_mar_nombre`, `mod_mar_ruta_amigable`, `mod_mar_imagen`, `mod_mar_usuario`, `mod_mar_detalle`, `mod_mar_id_dominio`, `mod_mar_activar`) VALUES
(1, 'RapidMasa', 'rapidmasa', 'archivos/multimedia/rapidmasa.png', 1, '', 0, 1),
(2, 'Riomar', 'riomar', 'archivos/multimedia/riomar.png', 1, '', 0, 1),
(3, 'Pastas Emiliana', 'pastas-emiliana', 'archivos/multimedia/logo-pastas-emiliana.png', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_marcas_categorias`
--

CREATE TABLE `mod_marcas_categorias` (
  `mod_mar_cat_id` int(11) NOT NULL,
  `mod_mar_mar_id` int(11) NOT NULL,
  `mod_mar_cat_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mod_marcas_categorias`
--

INSERT INTO `mod_marcas_categorias` (`mod_mar_cat_id`, `mod_mar_mar_id`, `mod_mar_cat_orden`) VALUES
(77, 3, 0),
(77, 2, 0),
(77, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_marcas_productos`
--

CREATE TABLE `mod_marcas_productos` (
  `mod_mar_prod_id` int(11) NOT NULL,
  `mod_mar_mar_id` int(11) NOT NULL,
  `mod_mar_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_pedidos`
--

CREATE TABLE `mod_pedidos` (
  `mod_ped_id` int(11) NOT NULL,
  `mod_ped_costo` varchar(50) NOT NULL,
  `mod_ped_fecha_registro` datetime NOT NULL,
  `mod_ped_fecha_aprobacion` datetime NOT NULL,
  `mod_ped_fecha_entrega` datetime NOT NULL,
  `mod_ped_id_cats` int(11) NOT NULL,
  `mod_ped_id_usuario` int(11) NOT NULL,
  `mod_ped_estado` int(11) NOT NULL COMMENT '0-Pendiente; 1-Aprobado; 2-Cancelado; 3:Entregado'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_pedidos_almacen`
--

CREATE TABLE `mod_pedidos_almacen` (
  `mod_ped_alm_id_pedido` int(11) NOT NULL,
  `mod_ped_alm_id_almacen` int(11) NOT NULL,
  `mod_ped_alm_cantidad` int(11) NOT NULL,
  `mod_ped_alm_unidad` varchar(50) NOT NULL,
  `mod_ped_alm_observaciones` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_pedidos_cats`
--

CREATE TABLE `mod_pedidos_cats` (
  `mod_ped_id` int(11) NOT NULL,
  `mod_ped_costo` varchar(50) NOT NULL,
  `mod_ped_fecha_registro` datetime NOT NULL,
  `mod_ped_fecha_aprobacion` datetime NOT NULL,
  `mod_ped_fecha_entrega` datetime NOT NULL,
  `mod_ped_id_cats` int(11) NOT NULL,
  `mod_ped_id_usuario` int(11) NOT NULL,
  `mod_ped_estado` int(11) NOT NULL COMMENT '0-Pendiente; 1-Aprobado; 2-Cancelado; 3:Entregado'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_pedidos_clientes`
--

CREATE TABLE `mod_pedidos_clientes` (
  `mod_ped_cli_id` int(11) NOT NULL,
  `mod_ped_cli_id_cli` int(11) NOT NULL,
  `mod_ped_cli_tipo` int(11) NOT NULL,
  `mod_ped_cli_sucursal` int(11) NOT NULL,
  `mod_ped_cli_nro` int(11) NOT NULL,
  `mod_ped_cli_fecha_registro` datetime NOT NULL,
  `mod_ped_cli_fecha_aprovacion` datetime NOT NULL,
  `mod_ped_cli_fecha_entrega` datetime NOT NULL,
  `mod_ped_cli_estado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_pedidos_estados`
--

CREATE TABLE `mod_pedidos_estados` (
  `mod_ped_est_id` int(11) NOT NULL,
  `mod_ped_est_nombre` varchar(100) NOT NULL,
  `mod_ped_est_descripcion` tinytext NOT NULL,
  `mod_ped_est_icon` varchar(50) NOT NULL,
  `mod_ped_est_color` varchar(11) NOT NULL,
  `mod_ped_accion_email` varchar(11) NOT NULL,
  `mod_ped_accion_email_plantilla` varchar(11) NOT NULL,
  `mod_ped_accion_entrega` varchar(11) NOT NULL,
  `mod_ped_accion_facturacion` varchar(11) NOT NULL,
  `mod_ped_est_activar` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_pedidos_productos`
--

CREATE TABLE `mod_pedidos_productos` (
  `mod_ped_prod_id` int(11) NOT NULL,
  `mod_ped_prod_ped_id` int(11) NOT NULL,
  `mod_ped_prod_prod_id` int(11) NOT NULL,
  `mod_ped_prod_precio_unidad` int(11) NOT NULL,
  `mod_ped_prod_cantidad` int(11) NOT NULL,
  `mod_ped_prod_activar` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_pedidos_sucursales`
--

CREATE TABLE `mod_pedidos_sucursales` (
  `mod_ped_suc_mod_ped_id` int(11) NOT NULL,
  `mod_ped_suc_mod_suc_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_pedidos_tipo`
--

CREATE TABLE `mod_pedidos_tipo` (
  `mod_ped_tipo_id` int(11) NOT NULL,
  `mod_ped_tipo_nombre` varchar(100) NOT NULL,
  `mod_ped_tipo_ruta_amigable` varchar(100) NOT NULL,
  `mod_ped_tipo_descripcion` tinytext NOT NULL,
  `mod_ped_tipo_activar` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_pedidos_zonas_distribucion`
--

CREATE TABLE `mod_pedidos_zonas_distribucion` (
  `mod_ped_zod_mod_ped_id` int(11) NOT NULL,
  `mod_ped_zod_mod_zod_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_pestana`
--

CREATE TABLE `mod_pestana` (
  `mod_pes_id` int(11) NOT NULL,
  `mod_pes_nombre` varchar(150) CHARACTER SET latin1 NOT NULL,
  `mod_pes_descripcion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mod_pes_fecha` datetime NOT NULL,
  `mod_pes_usuario` int(11) NOT NULL,
  `mod_pes_activar` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_plan`
--

CREATE TABLE `mod_plan` (
  `mod_plan_id` int(11) NOT NULL,
  `mod_plan_nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_plan_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_plan_estado` int(11) NOT NULL COMMENT '0 no activo1 activo',
  `mod_plan_nivel` varchar(45) CHARACTER SET ucs2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_productos`
--

CREATE TABLE `mod_productos` (
  `mod_prod_id` int(11) NOT NULL,
  `mod_prod_nombre` varchar(255) NOT NULL,
  `mod_prod_ruta_amigable` varchar(255) NOT NULL,
  `mod_prod_tags` varchar(255) NOT NULL,
  `mod_prod_codigo` varchar(255) NOT NULL,
  `mod_prod_sap` varchar(30) NOT NULL,
  `mod_prod_modelo` varchar(255) NOT NULL,
  `mod_prod_resumen` text NOT NULL,
  `mod_prod_detalles` text NOT NULL,
  `mod_prod_especificaciones` text NOT NULL,
  `mod_prod_disponibilidad` int(11) NOT NULL DEFAULT '0',
  `mod_prod_imagen` varchar(255) NOT NULL DEFAULT 'images/producto_default.png',
  `mod_prod_precio` varchar(255) NOT NULL,
  `mod_prod_id_marca` int(11) NOT NULL,
  `mod_prod_id_doc` varchar(45) NOT NULL,
  `mod_prod_id_mul` int(11) NOT NULL,
  `mod_prod_id_dominio` int(11) NOT NULL,
  `mod_prod_activar` int(11) NOT NULL DEFAULT '0',
  `mod_prod_activar_cat` int(11) NOT NULL DEFAULT '1',
  `mod_prod_json` varchar(255) NOT NULL,
  `mod_prod_precio_detalle` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `mod_productos`
--

INSERT INTO `mod_productos` (`mod_prod_id`, `mod_prod_nombre`, `mod_prod_ruta_amigable`, `mod_prod_tags`, `mod_prod_codigo`, `mod_prod_sap`, `mod_prod_modelo`, `mod_prod_resumen`, `mod_prod_detalles`, `mod_prod_especificaciones`, `mod_prod_disponibilidad`, `mod_prod_imagen`, `mod_prod_precio`, `mod_prod_id_marca`, `mod_prod_id_doc`, `mod_prod_id_mul`, `mod_prod_id_dominio`, `mod_prod_activar`, `mod_prod_activar_cat`, `mod_prod_json`, `mod_prod_precio_detalle`) VALUES
(1, 'RapidMasa 2 discos de masa de hoja', 'rapidmasa-2-discos-de-masa-de-hoja', 'masa rapida, masa', '', '', '', 'Donec id elit non mi porta gravida at eget metus ullam id dolor id nibh ultricies vehicula ut id elit.', '', '', 0, 'archivos/multimedia/masa-rapida-2discos.jpg', '', 1, '', 0, 0, 1, 0, '', ''),
(2, 'RapidMasa 12 u. Tapas de empandas', 'rapidmasa-12-u-tapas-de-empandas', '', '', '', '', 'Aenean lacinia bibendum nulla sed consectetur.', '', '', 0, 'archivos/multimedia/masa-rapida-empanadas-12.jpg', '', 1, '', 0, 0, 1, 0, '', ''),
(3, 'RapidMasa 24 u. Tapas de empandas', 'rapidmasa-24-u-tapas-de-empandas', '', '', '', '', '', '', '', 0, 'archivos/multimedia/masa-rapida-empanadas-24.jpg', '', 1, '', 0, 0, 1, 0, '', ''),
(4, 'RapidMasa 24 u. Tapas de Tucumanas', 'rapidmasa-24-u-tapas-de-tucumanas', '', '', '', '', 'Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nib.', '', '', 0, 'archivos/multimedia/masa-rapida-tucumandas-24.jpg', '', 1, '', 0, 0, 1, 0, '', ''),
(5, 'RapidMasa 36 u. Tapas de coctel', 'rapidmasa-36-u-tapas-de-coctel', '', '', '', '', 'Maecenas sed diam eget risus varius blandit sit amet non magna.', '', '', 0, 'archivos/multimedia/masa-rapida-tapas-coctel-36.jpg', '', 1, '', 0, 0, 1, 0, '', ''),
(6, 'RapidMasa 12.u VOL-AU-VENTS', 'rapidmasa-12u-volauvents', 'tags', '', '', '', 'Etiam porta sem malesuada magna mollis euismod.', '', '', 0, 'archivos/multimedia/masa-rapida-vol-au-vents-12.jpg', '', 1, '', 0, 0, 1, 0, '', ''),
(7, 'Filete de Trucha del Lago Titicaca', '', '', '', '', '', '', '', '', 0, 'archivos/multimedia/filete-trucha-lago-titicaca-riomar.jpg', '', 2, '', 0, 0, 1, 0, '', ''),
(8, 'Trucha del Lago Titicaca 3u Entera evicerada', 'trucha-del-lago-titicaca-3u-entera-evicerada', '', '', '', '', '', '', '', 0, 'archivos/multimedia/trucha-lago-titicaca-3u-riomar.jpg', '', 2, '', 0, 0, 1, 0, '', ''),
(9, 'Trucha del Lago Titicaca 3u pequeños', 'trucha-del-lago-titicaca-3u-pequeos', '', '', '', '', '', '', '', 0, 'archivos/multimedia/trucha-lago-fillete.jpg', '', 2, '', 0, 0, 1, 0, '', ''),
(10, 'Ravioles espinaca y ricota 500gr 100u ', 'ravioles-espinaca-y-ricota-500gr-100u-', '', '', '', '', '', '', '', 0, 'archivos/multimedia/rabioles-espinaca-ricota-emiliana.jpg', '', 3, '', 0, 0, 1, 0, '', ''),
(11, 'Ravioles de verdura 500gr 100u', 'ravioles-de-verdura-500gr-100u', '', '', '', '', '', '', '', 0, 'archivos/multimedia/racioles-verdura-emiliana.jpg', '', 3, '', 0, 0, 1, 0, '', ''),
(12, 'Ravioles 4 quesos 500gr 100u', 'ravioles-4-quesos-500gr-100u', '', '', '', '', '', '', '', 0, 'archivos/multimedia/ravioles-4-quesos-emiliana.jpg', '', 3, '', 0, 0, 1, 0, '', ''),
(13, 'Ravioles Ricota y Nuez 500gr. 100u', 'ravioles-ricota-y-nuez-500gr-100u', '', '', '', '', '', '', '', 0, 'archivos/multimedia/ravioles-ricota-nuez-emiliana.jpg', '', 3, '', 0, 0, 1, 0, '', ''),
(14, 'Sorrentinos Jamón y Mozzarella', 'sorrentinos-jamn-y-mozzarella', 'pasta rellena', '', '', '', '', '', '', 0, 'archivos/multimedia/sorrentinos-jamon-mozzarella-emiliana.jpg', '', 3, '', 0, 0, 1, 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_productos_categorias`
--

CREATE TABLE `mod_productos_categorias` (
  `mod_prod_cat_prod_id` int(11) NOT NULL,
  `mod_prod_cat_cat_id` int(11) NOT NULL,
  `mod_prod_cat_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `mod_productos_categorias`
--

INSERT INTO `mod_productos_categorias` (`mod_prod_cat_prod_id`, `mod_prod_cat_cat_id`, `mod_prod_cat_orden`) VALUES
(1, 81, 0),
(1, 106, 0),
(2, 83, 0),
(2, 106, 0),
(3, 81, 0),
(3, 106, 0),
(4, 106, 0),
(5, 81, 0),
(6, 81, 0),
(6, 106, 0),
(7, 83, 0),
(8, 83, 0),
(8, 83, 0),
(9, 83, 0),
(10, 89, 0),
(11, 89, 0),
(12, 89, 0),
(13, 89, 0),
(14, 89, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_productos_conf`
--

CREATE TABLE `mod_productos_conf` (
  `mod_prod_conf_codigo` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_sap` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_modelo` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_avanzado_img` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_detalles` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_especificaciones` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_disponibilidad` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_marca` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_precio` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_precio_detalle` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_docs` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_multimedia` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_pestana` int(1) NOT NULL DEFAULT '0',
  `mod_prod_conf_json` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `mod_productos_conf`
--

INSERT INTO `mod_productos_conf` (`mod_prod_conf_codigo`, `mod_prod_conf_sap`, `mod_prod_conf_modelo`, `mod_prod_conf_avanzado_img`, `mod_prod_conf_detalles`, `mod_prod_conf_especificaciones`, `mod_prod_conf_disponibilidad`, `mod_prod_conf_marca`, `mod_prod_conf_precio`, `mod_prod_conf_precio_detalle`, `mod_prod_conf_docs`, `mod_prod_conf_multimedia`, `mod_prod_conf_pestana`, `mod_prod_conf_json`) VALUES
(0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_productos_docs`
--

CREATE TABLE `mod_productos_docs` (
  `mod_prod_doc_doc_id` int(11) NOT NULL,
  `mod_prod_doc_prod_id` int(11) NOT NULL,
  `mod_prod_doc_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_productos_mul`
--

CREATE TABLE `mod_productos_mul` (
  `mod_prod_mul_mul_id` int(11) NOT NULL,
  `mod_prod_mul_prod_id` int(11) NOT NULL,
  `mod_prod_mul_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `mod_productos_mul`
--

INSERT INTO `mod_productos_mul` (`mod_prod_mul_mul_id`, `mod_prod_mul_prod_id`, `mod_prod_mul_orden`) VALUES
(0, 0, 0),
(0, 0, 0),
(0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_productos_pestana`
--

CREATE TABLE `mod_productos_pestana` (
  `mod_pro_pes_pro_id` int(11) NOT NULL,
  `mod_pro_pes_pes_id` int(11) NOT NULL,
  `mod_pro_pes_contenido` text NOT NULL,
  `mod_pro_pes_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `mod_productos_pestana`
--

INSERT INTO `mod_productos_pestana` (`mod_pro_pes_pro_id`, `mod_pro_pes_pes_id`, `mod_pro_pes_contenido`, `mod_pro_pes_orden`) VALUES
(311, 2, '<p>sdfgsdg</p>', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_stock`
--

CREATE TABLE `mod_stock` (
  `mod_stk_prod` int(11) NOT NULL,
  `mod_stk_suc` int(11) NOT NULL,
  `mod_stk_cantidad` int(11) NOT NULL,
  `mod_stk_fecha` datetime NOT NULL,
  `mod_stk_fecha_ingreso` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mod_stock`
--

INSERT INTO `mod_stock` (`mod_stk_prod`, `mod_stk_suc`, `mod_stk_cantidad`, `mod_stk_fecha`, `mod_stk_fecha_ingreso`) VALUES
(3175, 1, 65, '2016-12-14 00:00:00', '2016-12-14'),
(3174, 1, 71, '2016-12-14 00:00:00', '2016-12-14'),
(3175, 5, 10, '2016-12-17 00:00:00', '2016-12-17'),
(3175, 5, 5, '2016-12-17 15:46:07', '2016-12-17'),
(3174, 5, 10, '2016-12-17 15:48:00', '2016-12-17'),
(3176, 5, 10, '2016-12-17 15:49:04', '2016-12-17'),
(3177, 5, 10, '2016-12-17 15:49:17', '2016-12-17'),
(3174, 5, 50, '2016-12-20 06:25:01', '2016-12-20'),
(3180, 1, 197, '2016-12-20 09:25:18', '2016-12-20'),
(3181, 1, 180, '2016-12-20 09:25:37', '2016-12-20'),
(3182, 1, 170, '2016-12-20 09:25:57', '2016-12-20'),
(3183, 1, 0, '2016-12-20 09:26:21', '2016-12-20'),
(3176, 1, 0, '2016-12-20 09:30:03', '2016-12-20'),
(3179, 1, 0, '2016-12-20 09:30:25', '2016-12-20'),
(3186, 1, 123, '2016-12-20 09:31:40', '2016-12-20'),
(3176, 1, 0, '2016-12-20 09:32:33', '2016-12-20'),
(3185, 1, 125, '2016-12-20 09:39:08', '2016-12-20'),
(3177, 1, 96, '2016-12-20 09:41:57', '2016-12-20'),
(3184, 1, 113, '2016-12-20 09:42:17', '2016-12-20'),
(3178, 1, 73, '2016-12-20 09:42:43', '2016-12-20'),
(3180, 4, 549, '2016-12-20 11:50:58', '2016-12-20'),
(3181, 4, 651, '2016-12-20 11:51:17', '2016-12-20'),
(3182, 4, 269, '2016-12-20 11:58:04', '2016-12-20'),
(3183, 4, 0, '2016-12-20 11:58:23', '2016-12-20'),
(3174, 4, 46, '2016-12-20 11:58:45', '2016-12-20'),
(3179, 4, 0, '2016-12-20 11:59:03', '2016-12-20'),
(3175, 4, 39, '2016-12-20 11:59:19', '2016-12-20'),
(3186, 4, 173, '2016-12-20 11:59:37', '2016-12-20'),
(3176, 4, 0, '2016-12-20 11:59:54', '2016-12-20'),
(3185, 4, 44, '2016-12-20 12:00:08', '2016-12-20'),
(3177, 4, 60, '2016-12-20 12:01:21', '2016-12-20'),
(3184, 4, 15, '2016-12-20 12:01:48', '2016-12-20'),
(3178, 4, 107, '2016-12-20 12:02:15', '2016-12-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mod_sucursales`
--

CREATE TABLE `mod_sucursales` (
  `mod_suc_id` int(11) NOT NULL,
  `mod_suc_nombre` varchar(50) NOT NULL,
  `mod_suc_direccion` varchar(150) NOT NULL,
  `mod_suc_telefono` varchar(100) NOT NULL,
  `mod_suc_coordenadas` varchar(50) NOT NULL,
  `mod_suc_activar` int(11) NOT NULL,
  `mod_suc_correo` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mod_sucursales`
--

INSERT INTO `mod_sucursales` (`mod_suc_id`, `mod_suc_nombre`, `mod_suc_direccion`, `mod_suc_telefono`, `mod_suc_coordenadas`, `mod_suc_activar`, `mod_suc_correo`) VALUES
(1, 'Sucursal Las Palmas', 'Av. Grigota #885 entre 3er y 4to anillo', '591 - 3 - 354-4149', '-17.809727,-63.206155', 1, 'laspalmas@panaderiavictoria.com'),
(2, 'Sucursal Alemana', 'Av. Alemana entre 3er y 4to anillo', '591 - 3 - 33419677', '-17.755105,-63.165109', 1, 'alemana@panaderiavictoria.com'),
(3, 'Sucursal Buenos Aires', 'Calle Buenos Aires No. 285', '591 - 3 - 332-3409 / 591 - 3- 333-4897', '-17.780973,-63.18546922', 1, 'ventascentral@panaderiavictoria.com'),
(4, 'Sucursal Brasil', 'Av. Brasil y Calle 1', '591 - 3 - 348-7070', '-17.785580,-63.15628', 1, 'brasil@panaderiavictoria.com'),
(5, 'Sucursal Prueba', 'Av. Brasil Tercer anillo', '333333', '', 1, 'angel11982@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `mul_id` int(11) NOT NULL,
  `mul_nombre` varchar(255) NOT NULL,
  `mul_tags` varchar(500) NOT NULL,
  `mul_url_archivo` varchar(255) NOT NULL,
  `mul_ruta_amigable` varchar(255) NOT NULL,
  `mul_url` varchar(255) NOT NULL,
  `mul_destino` varchar(10) NOT NULL DEFAULT '_self',
  `mul_embed` text NOT NULL,
  `mul_tipo_archivo` varchar(255) NOT NULL,
  `mul_leyenda` varchar(255) NOT NULL,
  `mul_texto_alternativo` varchar(255) NOT NULL,
  `mul_descripcion` text NOT NULL,
  `mul_dimension` varchar(255) NOT NULL,
  `mul_tamano` varchar(255) NOT NULL,
  `mul_fecha` datetime NOT NULL,
  `mul_usuario` int(11) NOT NULL,
  `mul_id_dominio` int(11) NOT NULL DEFAULT '0',
  `mul_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `multimedia`
--

INSERT INTO `multimedia` (`mul_id`, `mul_nombre`, `mul_tags`, `mul_url_archivo`, `mul_ruta_amigable`, `mul_url`, `mul_destino`, `mul_embed`, `mul_tipo_archivo`, `mul_leyenda`, `mul_texto_alternativo`, `mul_descripcion`, `mul_dimension`, `mul_tamano`, `mul_fecha`, `mul_usuario`, `mul_id_dominio`, `mul_activar`) VALUES
(1, 'banner-sidebar', '', 'archivos/multimedia/banner-sidebar.jpg', '', '', '', '', 'jpeg', '', '', '', '234 x 996', '96 KB', '2017-04-20 15:40:39', 1, 0, 1),
(2, 'banner-publicidad-header', '', 'archivos/multimedia/banner-publicidad-header.jpg', '', '', '', '', 'jpeg', '', '', '', '621 x 77', '2 KB', '2017-04-23 19:40:24', 1, 0, 1),
(3, 'formatoslide1', '', 'archivos/multimedia/formatoslide1.png', '', '', '_blank', '', 'png', 'Una guía para los que nos gusta comer, cocinar y saber ', '', '', '1500 x 415', '1 MB', '2017-07-24 12:42:12', 2, 0, 1),
(4, 'formatoslide2', '', 'archivos/multimedia/formatoslide2.png', '', '', '', '', 'png', 'Los mejores insumos y proveedores  desde la web a tu cocina.', '', '', '1500 x 415', '1 MB', '2017-07-24 12:48:37', 2, 0, 1),
(5, 'formatoslide3', '', 'archivos/multimedia/formatoslide3.png', '', '', '', '', 'png', 'Un encuentro entre los actores del sector gastronómico.', '', '', '1500 x 415', '861 KB', '2017-07-24 12:52:29', 2, 0, 1),
(6, 'formatoslide4', '', 'archivos/multimedia/formatoslide4.png', '', '', '', '', 'png', 'Secretos, recetas y curiosidades de las estrellas de la gastronomía cruceña.', '', '', '1500 x 415', '1 MB', '2017-07-24 12:53:59', 2, 0, 1),
(7, 'ganadores-de-the-worlds-50-best-restaurants-2016-con-massimo-bottura-en-el-centro', '', 'archivos/multimedia/ganadores-de-the-worlds-50-best-restaurants-2016-con-massimo-bottura-en-el-centro.jpg', 'ganadores-de-the-worlds-50-best-restaurants-2016-con-massimo-bottura-en-el-centro.jpg', '', '_self', '', 'jpeg', '', '', '', '655 x 436', '73190', '2017-05-05 12:03:05', 1, 0, 1),
(8, 'greenbar_fi', '', 'archivos/multimedia/greenbar_fi.jpg', 'greenbar_fi.jpg', '', '_self', '', 'jpeg', '', '', '', '1920 x 1134', '855451', '2017-05-05 13:00:35', 1, 0, 1),
(9, 'alijo_fi', '', 'archivos/multimedia/alijo_fi.jpg', 'alijo_fi.jpg', '', '_self', '', 'jpeg', '', '', '', '1920 x 1134', '914733', '2017-05-05 13:01:39', 1, 0, 1),
(10, 'masa-rapida-2discos', '', 'archivos/multimedia/masa-rapida-2discos.jpg', 'masa-rapida-2discos.jpg', '', '_self', '', 'jpeg', '', '', '', '800 x 800', '94280', '2017-05-05 14:23:12', 1, 0, 1),
(11, 'masa-rapida-empanadas-12', '', 'archivos/multimedia/masa-rapida-empanadas-12.jpg', 'masa-rapida-empanadas-12.jpg', '', '_self', '', 'jpeg', '', '', '', '800 x 800', '139727', '2017-05-05 15:01:00', 1, 0, 1),
(12, '24unidadestapasdeempanadasfritas', '', 'archivos/multimedia/24unidadestapasdeempanadasfritas.png', 'masa-rapida-empanadas-24.jpg', '', '_self', '', 'png', 'Tapas de empanadas para freir', '', '24 unidades\r\n10 cm de diámetro', '1618 x 2598', '4 MB', '2017-07-24 12:28:14', 2, 0, 1),
(13, '24unidadestucumanashorno---copia', '', 'archivos/multimedia/24unidadestucumanashorno---copia.png', 'masa-rapida-tucumandas-24.jpg', '', '_self', '', 'png', 'Tapas de hojalde para empanadas al horno', '', '24 unidades\r\n13 cm de diámetro', '1966 x 2166', '5 MB', '2017-07-24 12:12:33', 2, 0, 1),
(14, '36unidadestapasdecoctelfritas', '', 'archivos/multimedia/36unidadestapasdecoctelfritas.png', 'masa-rapida-tapas-coctel-36.jpg', '', '_self', '', 'png', '', '', '', '1698 x 2598', '4 MB', '2017-07-24 12:09:03', 2, 0, 1),
(15, 'vol-au-vents12unidades', '', 'archivos/multimedia/vol-au-vents12unidades.png', 'masa-rapida-vol-au-vents-12.jpg', '', '_self', '', 'png', '', '', '', '1322 x 2598', '4 MB', '2017-07-24 10:32:02', 2, 0, 1),
(16, 'fi_hummus-1', '', 'archivos/multimedia/fi_hummus-1.jpg', 'fi_hummus-1.jpg', '', '_self', '', 'jpeg', '', '', '', '1700 x 1133', '1937589', '2017-05-05 15:21:55', 1, 0, 1),
(17, 'chicken-seitan-fi', '', 'archivos/multimedia/chicken-seitan-fi.jpg', 'chicken-seitan-fi.jpg', '', '_self', '', 'jpeg', '', '', '', '2500 x 1667', '4500235', '2017-05-05 15:23:39', 1, 0, 1),
(18, 'fi1-1', '', 'archivos/multimedia/fi1-1.jpg', 'fi1-1.jpg', '', '_self', '', 'jpeg', '', '', '', '1700 x 1133', '1675380', '2017-05-05 15:39:27', 1, 0, 1),
(21, 'lalola_ci2', '', 'archivos/multimedia/lalola_ci2.jpg', 'lalola_ci2.jpg', '', '_self', '', 'jpeg', '', '', '', '2500 x 1666', '867742', '2017-05-24 12:42:48', 1, 0, 1),
(22, 'maxresdefault', '', 'archivos/multimedia/maxresdefault.jpg', 'maxresdefault.jpg', '', '_self', '', 'jpeg', '', '', '', '1920 x 1080', '361416', '2017-05-24 14:30:20', 1, 0, 1),
(23, 'logo-pastas-emiliana', '', 'archivos/multimedia/logo-pastas-emiliana.png', 'logo-pastas-emiliana.jpg', '', '_self', '', 'png', '', '', '', '320 x 320', '34 KB', '2017-06-01 10:27:19', 1, 0, 1),
(24, 'filete-trucha-lago-titicaca-riomar', '', 'archivos/multimedia/filete-trucha-lago-titicaca-riomar.jpg', 'filete-trucha-lago-titicaca-riomar.jpg', '', '_self', '', 'jpeg', '', '', '', '800 x 800', '106 KB', '2017-06-01 10:52:02', 1, 0, 1),
(25, 'rapidmasa', '', 'archivos/multimedia/rapidmasa.png', '', '', '', '', 'png', '', '', '', '200 x 113', '37 KB', '2017-06-01 13:52:35', 1, 0, 1),
(26, 'riomar', '', 'archivos/multimedia/riomar.png', '', '', '', '', 'png', '', '', '', '200 x 113', '10 KB', '2017-06-01 13:53:36', 1, 0, 1),
(27, 'trucha-lago-titicaca-3u-riomar', '', 'archivos/multimedia/trucha-lago-titicaca-3u-riomar.jpg', 'trucha-lago-titicaca-3u-riomar.jpg', '', '_self', '', 'jpeg', '', '', '', '800 x 800', '87511', '2017-06-13 10:24:50', 1, 0, 1),
(28, 'trucha-lago-fillete', '', 'archivos/multimedia/trucha-lago-fillete.jpg', 'trucha-lago-fillete.jpg', '', '_self', '', 'jpeg', '', '', '', '800 x 800', '98784', '2017-06-13 10:53:07', 1, 0, 1),
(29, 'rabioles-espinaca-ricota-emiliana', '', 'archivos/multimedia/rabioles-espinaca-ricota-emiliana.jpg', '', '', '', '', 'jpeg', '', '', '', '800 x 800', '106 KB', '2017-06-13 11:00:50', 1, 0, 1),
(30, 'ravioles-verdura-emiliana', '', 'archivos/multimedia/racioles-verdura-emiliana.jpg', '', '', '', '', 'jpeg', '', '', '', '800 x 800', '101 KB', '2017-06-13 11:11:02', 1, 0, 1),
(31, 'ravioles-4-quesos-emiliana', '', 'archivos/multimedia/ravioles-4-quesos-emiliana.jpg', '', '', '', '', 'jpeg', '', '', '', '800 x 800', '89 KB', '2017-06-13 11:08:59', 1, 0, 1),
(32, 'ravioles-ricota-nuez-emiliana', '', 'archivos/multimedia/ravioles-ricota-nuez-emiliana.jpg', 'ravioles-ricota-nuez-emiliana.jpg', '', '_self', '', 'jpeg', '', '', '', '800 x 800', '90884', '2017-06-13 11:18:05', 1, 0, 1),
(33, 'sorrentinos-jamon-mozzarella-emiliana', '', 'archivos/multimedia/sorrentinos-jamon-mozzarella-emiliana.jpg', '', '', '', '', 'jpeg', '', '', '', '800 x 800', '84 KB', '2017-06-13 11:21:08', 1, 0, 1),
(34, 'charquekan-oruro', '', 'archivos/multimedia/charquekan-oruro.jpg', 'charquekan-oruro.jpg', '', '_self', '', 'jpeg', '', '', '', '660 x 330', '36870', '2017-07-13 16:10:13', 2, 0, 1),
(35, 'charquekan-oruro', '', 'archivos/multimedia/charquekan-oruro.jpg', 'charquekan-oruro.jpg', '', '_self', '', 'jpeg', '', '', '', '660 x 330', '36870', '2017-07-14 15:20:50', 2, 0, 1),
(36, 'jamon', '', 'archivos/multimedia/jamon.jpg', 'jamon.jpg', '', '_self', '', 'jpeg', '', '', '', '474 x 214', '15499', '2017-07-17 15:04:46', 2, 0, 1),
(37, 'jamon', '', 'archivos/multimedia/jamon.jpg', 'jamon.jpg', '', '_self', '', 'jpeg', '', '', '', '474 x 214', '15499', '2017-07-17 17:11:59', 2, 0, 1),
(38, 'jamon', '', 'archivos/multimedia/jamon.jpg', 'jamon.jpg', '', '_self', '', 'jpeg', '', '', '', '474 x 214', '15499', '2017-07-17 17:27:55', 2, 0, 1),
(39, 'jamon', '', 'archivos/multimedia/jamon.jpg', 'jamon.jpg', '', '_self', '', 'jpeg', '', '', '', '474 x 214', '15499', '2017-07-18 10:52:59', 2, 0, 1),
(40, 'charquekan-oruro', '', 'archivos/multimedia/charquekan-oruro.jpg', 'charquekan-oruro.jpg', '', '_self', '', 'jpeg', '', '', '', '660 x 330', '36870', '2017-07-18 11:00:30', 2, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia_categorias`
--

CREATE TABLE `multimedia_categorias` (
  `mul_cat_mul_id` int(11) NOT NULL,
  `mul_cat_cat_id` int(11) NOT NULL,
  `mul_cat_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `multimedia_categorias`
--

INSERT INTO `multimedia_categorias` (`mul_cat_mul_id`, `mul_cat_cat_id`, `mul_cat_orden`) VALUES
(13, 77, 1),
(13, 81, 1),
(12, 77, 2),
(12, 81, 2),
(3, 1, 6),
(4, 1, 7),
(5, 1, 8),
(6, 1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia_conf`
--

CREATE TABLE `multimedia_conf` (
  `mul_conf_cropp` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `multimedia_conf`
--

INSERT INTO `multimedia_conf` (`mul_conf_cropp`) VALUES
('300x320:Estandar,250x170:prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `not_id` int(11) NOT NULL,
  `not_titulo` varchar(255) NOT NULL,
  `not_ruta_amigable` varchar(255) NOT NULL,
  `not_tags` varchar(255) NOT NULL,
  `not_resumen` varchar(255) NOT NULL,
  `not_cuerpo` text NOT NULL,
  `not_imagen` varchar(255) NOT NULL,
  `not_fecha` datetime NOT NULL,
  `not_comentarios` int(11) NOT NULL DEFAULT '0' COMMENT '0 - no comentarios 1 - con comentarios',
  `not_video` varchar(255) NOT NULL,
  `not_tipo_video` varchar(50) NOT NULL,
  `not_autor` varchar(100) NOT NULL,
  `not_lugar` varchar(45) NOT NULL,
  `not_usuario` int(11) NOT NULL,
  `not_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`not_id`, `not_titulo`, `not_ruta_amigable`, `not_tags`, `not_resumen`, `not_cuerpo`, `not_imagen`, `not_fecha`, `not_comentarios`, `not_video`, `not_tipo_video`, `not_autor`, `not_lugar`, `not_usuario`, `not_activar`) VALUES
(1, 'hola mundo', 'hola-mundo', 'nota, cuento, eso,1', 'pressq1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptat<span style=\"background-color: rgb(255, 255, 0);\">e velit esse c</span>illum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Donec elementum ligula eu sapien consequat eleifend. Donec nec dolor erat, condimentum sagittis</p><p><br></p><p><br></p><p><br></p>', 'iamgen/archivos/jsada.png', '2016-07-05 03:16:00', 0, '', '', '', '', 2, 1),
(3, 'Chef en contra de Maximo Botura ', 'chef-en-contra-de-maximo-botura-', 'tags, cuerpo, dos', 'La mejor camioneta del mercado para el campo.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Donec elementum ligula eu sapien consequat eleifend. Donec nec dolor erat, condimentum sagittis sem. Praesent porttitor porttitor risus, dapibus rutrum ipsum gravida et. Integer lectus nisi, facilisis sit amet eleifend nec, pharetra ut augue.<br></p><p><br></p>', 'archivos/multimedia/alijo_fi.jpg', '2017-05-05 16:39:31', 0, '', '', '', '', 1, 1),
(4, 'Lista de los 50 mejores restaurant del mundo', 'prueba-titulo-noticia', '', 'Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt 1<br></p>', 'archivos/multimedia/ganadores-de-the-worlds-50-best-restaurants-2016-con-massimo-bottura-en-el-centro.jpg', '2017-05-05 12:57:47', 0, '', '', '', '', 1, 1),
(5, 'humus', 'humus', '', 'Nullam quis risus eget urna mollis ornare vel eu leo.', '<p>Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Aenean lacinia bibendum nulla sed consectetur.</p><p><br></p><p>Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p><p><br></p><p>Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Sed posuere consectetur est at lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>', 'archivos/multimedia/fi_hummus-1.jpg', '2017-05-24 14:31:29', 0, '', '', '', '', 1, 1),
(6, ' Chicken Seitan', '-chicken-seitan', '', 'Nullam id dolor id nibh ultricies vehicula ut id elit.', '<p>Sed posuere consectetur est at lobortis. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p><p><br></p><p>Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', 'archivos/multimedia/chicken-seitan-fi.jpg', '2017-05-24 14:31:15', 0, '', '', '', '', 1, 1),
(7, 'Julia Child’s Chicken Fricassee', 'julia-childs-chicken-fricassee', '', 'Maecenas sed diam eget risus varius blandit sit amet non magna.', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam porta sem malesuada magna mollis euismod. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor.</p><p><br></p><p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam quis risus eget urna mollis ornare vel eu leo.</p>', 'archivos/multimedia/fi1-1.jpg', '2017-05-24 14:31:05', 0, '', '', '', '', 1, 1),
(8, 'Lolis churros', 'lolis-churros', '', 'Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum.', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed odio dui. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p><br></p><p>Curabitur blandit tempus porttitor. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec id elit non mi porta gravida at eget metus.</p>', 'archivos/multimedia/lalola_ci2.jpg', '2017-05-24 12:41:07', 0, '', '', '', '', 1, 1),
(9, 'La historia de un plato', 'la-historia-de-un-plato', '', 'Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.', '<p>Vestibulum id ligula porta felis euismod semper. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna.</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna.</p><p><br></p><p>Donec sed odio dui. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec sed odio dui. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Etiam porta sem malesuada magna mollis euismod.</p>', 'archivos/multimedia/maxresdefault.jpg', '2017-05-24 14:30:00', 0, '', '', '', '', 1, 1),
(10, 'Noticias de prueba XD', 'noticias-de-prueba-xd', 'tags', 'prueba', '<p>hola</p>', 'archivos/multimedia/fi1-1.jpg', '2017-07-10 16:13:00', 0, '', '', '', '', 1, 1),
(11, 'Camino a Orinoca. Charkecán en su hábitat ', 'caminoa-orinoca.-charkecan-en-su-hábitat-', 'Gastronomía Boliviana, Charkecán, Orinoca, Evo Morales, Oruro, carne de llama, Charke, gourme, plato tipicot', 'Orinoca pasó de ser un pueblo desconocido a tener fama mundial por ser la cuna de Evo Morales, el primer presidente indígena de Bolivia y del continente Latinoamericano. Un viaje de trabajo, por tierra, desde La Paz, se convirtió no solo en una buena expe', '<p class=\"MsoNormal\"><span lang=\"ES\">Empezaremos por decir que Orinoca pertenece a\r\nOruro, un departamento cuya gastronomía está muy bien reputada gracias al\r\ncordero, pero últimamente se ha revalorizado a nivel internacional la quinua y\r\nla llama. Oruro es productor de ambos, pero lo que antes era una alternativa a\r\nla pobreza se ha convertido en una oferta gourmet.</span></p><p class=\"MsoNormal\"><span lang=\"ES\">No obstante, en la zona todavía se disfruta de\r\nestos manjares de manera agreste. La primera parada es Patacamaya, todavía\r\ndentro de los límites de La Paz, justo en el cruce de la carretera que va hacia\r\nChile. En una pensión recomendada por viajeros y camioneros, un <b>charkecán de llama con su mote, quesillo,\r\nhuevo cocido y mote, se convierte en nuestro almuerzo. <o:p></o:p></b></span></p><p class=\"MsoNormal\"><span lang=\"ES\">La crocante carne deshidratada es un manjar en\r\npleno altiplano, además de brindar las calorías necesarias para seguir el viaje\r\nhasta llegar unas tres horas más tarde a Patacamaya, ya en territorio orureño.\r\nLuego buscar alojamiento, acomodarse y acicalarnos para descansar un poco antes\r\nde continuar viaje al día siguiente.</span></p><p class=\"MsoNormal\"><span lang=\"ES\">Con los últimos rayos del sol del día, seduce\r\nun fogón en un restaurante por la zona del mercado. La parrilla va asando\r\nextraños cortes, son de llama. Carne magra y fibrosa pero sabrosa. El\r\nacompañamiento ofrecido es de arroz con queso, papa y una ensalada mixta con\r\ntomates, zanahoria, lechuga y cebolla. Pero es lo de menos, la porción de carne\r\nes generosa y deliciosa. El camélido andino se hace querer por el paladar.</span></p><p class=\"MsoNormal\"><span lang=\"ES\">Al día siguiente se completa la trilogía\r\n‘llamística’ en Orinoca. El almuerzo preparado por unos comunarios (se\r\ncelebraba la fiesta de San Francisco, el patrono del pueblo) es Pampaku. En\r\nCochabamba se prepara brasas bajo la tierra, en este caso, se construyó un\r\nhorno de barro totalmente hermético en el que previamente se colocaron bandejas\r\ncon hortalizas como papas, camotes, ocas y zanahorias, además de cuatro\r\nvariedades de carne: res, cerdo, pollo y llama. Elegimos, claro, la última.</span></p><p class=\"MsoNormal\"><span lang=\"ES\">Cuando llegó la hora, con experticia se fue\r\ndesmontando el hornito y de sus entrañas salieron esas jugosas carnes adobadas\r\ny las hortalizas perfectamente cocinadas.</span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span lang=\"ES\">Había muchas cosas para contar, de lugar, de\r\nla gente, del presidente Evo que estuvo allí, de la fiesta, en fin. Pero la\r\ninesperada travesía gourmet del viaje nos obliga a hacer esta parada en lo\r\ngastronómico. Recomendable tour para los que gustan de descubrir nuevos\r\nsabores.</span></p>', 'archivos/multimedia/charquekan-oruro.jpg', '2017-07-13 16:00:00', 0, '', '', '', '', 2, 1),
(12, 'Jamones en Tarija', 'jamones-en-tarija', 'Jamón, Tarija, Bolivia, Chaco, Turismo, Gastronomía, embutidos, Fiambres, vino, queso', ' “Y Tarija su tipo andaluz”, dice la canción Salve ¡Oh! Patria. La Andalucía boliviana goza de buena reputación por sus viñedos y los productos que de allí surgen. “El que vino a Tarija y no tomó vino; ¿a qué vino?”, dice un refrán popular chapaco.', '<p class=\"MsoNormal\"><span lang=\"ES\">Pero la Andalucía original además es famosa\r\npor sus jamones y sus quesos. Pues su versión boliviana también debería, pues\r\nen Tarija se producen los mejores jamones crudos del país y sus quesos compiten\r\ncon variedades gourmet de La Paz, Santa Cruz y Cochabamba.</span></p><p class=\"MsoNormal\"><span lang=\"ES\">La llegada a la zona de órdenes religiosas\r\ncomo los Jesuitas y Franciscanos permitió que se cree una tradición de\r\nproducción de vinos, además de jamones y quesos.</span></p><p class=\"MsoNormal\"><span lang=\"ES\">De hecho, desde hace más de 15 años se\r\ndesarrolla un concurso ya tradicional, muy esperado, del mejor jamón. De esa\r\npráctica ya han surgido algunas casas productoras y una de las más\r\ntradicionales, pero que además se ha convertido en el principal referente es\r\nJamones Ulloa, que empezó como una empresa familiar hace más de 40 años.</span></p><p class=\"MsoNormal\"><span lang=\"ES\">También han incursionado en los quesos, con\r\nvariantes gourmet como queso con orégano, ají y otras opciones.</span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span lang=\"ES\">Así que el dicho puede crecer y si vino a\r\nTarija y no probó vino ni jamón ni queso, ¿a qué vino?</span></p>', 'archivos/multimedia/jamon.jpg', '2017-07-17 14:57:00', 0, '', '', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_categorias`
--

CREATE TABLE `nota_categorias` (
  `not_cat_not_id` int(11) NOT NULL,
  `not_cat_cat_id` int(11) NOT NULL,
  `not_cat_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `nota_categorias`
--

INSERT INTO `nota_categorias` (`not_cat_not_id`, `not_cat_cat_id`, `not_cat_orden`) VALUES
(3, 104, 0),
(3, 108, 0),
(4, 104, 0),
(5, 78, 0),
(5, 79, 0),
(6, 78, 0),
(6, 79, 0),
(7, 78, 0),
(7, 79, 0),
(8, 79, 0),
(9, 78, 0),
(10, 79, 0),
(11, 1, 0),
(11, 104, 0),
(11, 109, 0),
(12, 1, 0),
(12, 104, 0),
(12, 107, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_comentarios`
--

CREATE TABLE `nota_comentarios` (
  `not_com_id` int(11) NOT NULL,
  `not_com_not_id` int(11) NOT NULL,
  `not_com_com_id` int(11) NOT NULL,
  `not_com_padre_id` int(11) NOT NULL,
  `not_com_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_multimedia`
--

CREATE TABLE `nota_multimedia` (
  `not_mul_not_id` int(11) NOT NULL,
  `not_mul_mul_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_valores`
--

CREATE TABLE `nota_valores` (
  `not_val_not_id` int(11) NOT NULL,
  `not_val_val_id` int(11) NOT NULL,
  `not_val_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `pla_id` int(11) NOT NULL,
  `pla_nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_ruta_amigable` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_icono` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_imagen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_meta` text CHARACTER SET utf8 NOT NULL,
  `pla_css` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_clase` varchar(45) CHARACTER SET utf8 NOT NULL,
  `pla_codigos` text CHARACTER SET utf8 NOT NULL,
  `pla_tipo` int(11) NOT NULL DEFAULT '0',
  `pla_movil` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pla_onload` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `pla_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`pla_id`, `pla_nombre`, `pla_ruta_amigable`, `pla_icono`, `pla_imagen`, `pla_meta`, `pla_css`, `pla_clase`, `pla_codigos`, `pla_tipo`, `pla_movil`, `pla_onload`, `pla_activar`) VALUES
(1, 'plantilla_1', 'p=1', 'sitios/landicorp/images/favicon.icon', '', '', '', '', '', 0, '', 'page_precarga();', 1),
(2, 'plantilla_2', 'p=2', '', '', '', '', '', '', 0, '', '', 1),
(3, 'plantilla_3', 'p=3', '', '', '', '', '', '', 0, '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_texto` text NOT NULL,
  `post_id_usu_emisor` int(11) NOT NULL,
  `post_id_usu_receptor` int(11) NOT NULL,
  `post_fecha` datetime NOT NULL,
  `post_version` int(11) NOT NULL,
  `post_tipo` int(11) NOT NULL,
  `post_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `printer`
--

CREATE TABLE `printer` (
  `prit_id` int(11) NOT NULL,
  `prit_accion` varchar(50) NOT NULL,
  `prit_id_aux` int(11) NOT NULL,
  `prit_id_suc` int(11) NOT NULL,
  `prit_fecha` datetime NOT NULL,
  `prit_estado` int(11) NOT NULL,
  `prit_txt` varchar(5) NOT NULL DEFAULT 'SEÑOR'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `printer`
--

INSERT INTO `printer` (`prit_id`, `prit_accion`, `prit_id_aux`, `prit_id_suc`, `prit_fecha`, `prit_estado`, `prit_txt`) VALUES
(1, 'pedido', 1, 2, '2016-12-15 12:42:06', 1, 'SEÑOR'),
(4, 'pedido', 4, 4, '2016-12-16 10:08:10', 1, 'SEÑOR'),
(6, 'pedido', 6, 4, '2016-12-16 10:15:45', 1, 'SEÑOR'),
(7, 'pedido', 6, 4, '2016-12-16 11:53:14', 1, 'SEÑOR'),
(8, 'pedido', 7, 4, '2016-12-16 14:05:30', 1, 'SEÑOR'),
(9, 'pedido', 6, 4, '2016-12-16 14:53:25', 1, 'SEÑOR'),
(10, 'pedido', 6, 4, '2016-12-16 16:43:27', 1, 'SEÑOR'),
(11, 'pedido', 6, 4, '2016-12-16 16:51:33', 1, 'SEÑOR'),
(12, 'pedido', 8, 4, '2016-12-16 16:59:00', 1, 'SEÑOR'),
(13, 'pedido', 9, 2, '2016-12-16 17:04:22', 1, 'SEÑOR'),
(14, 'pedido', 6, 3, '2016-12-16 18:23:12', 1, 'SEÑOR'),
(15, 'pedido', 10, 0, '2016-12-19 16:56:39', 0, 'SEÑOR'),
(16, 'pedido', 11, 5, '2016-12-19 17:05:29', 0, 'SEÑOR'),
(17, 'pedido', 12, 5, '2016-12-19 18:48:38', 0, 'SEÑOR'),
(18, 'pedido', 13, 5, '2016-12-19 20:47:46', 0, 'SEÑOR'),
(19, 'pedido', 14, 5, '2016-12-20 09:36:47', 0, 'SEÑOR'),
(20, 'pedido', 15, 5, '2016-12-20 09:38:25', 0, 'SEÑOR'),
(21, 'pedido', 16, 5, '2016-12-20 09:41:41', 0, 'SEÑOR'),
(22, 'pedido', 17, 5, '2016-12-20 09:44:28', 0, 'SEÑOR'),
(23, 'pedido', 18, 5, '2016-12-20 09:44:46', 0, 'SEÑOR'),
(24, 'pedido', 19, 5, '2016-12-20 09:50:01', 0, 'SEÑOR'),
(25, 'pedido', 20, 5, '2016-12-20 09:50:12', 0, 'SEÑOR'),
(26, 'pedido', 21, 5, '2016-12-20 09:50:42', 0, 'SEÑOR'),
(27, 'pedido', 22, 5, '2016-12-20 09:51:39', 0, 'SEÑOR'),
(28, 'pedido', 26, 5, '2016-12-20 15:10:29', 0, 'SEÑOR'),
(29, 'pedido', 27, 4, '2016-12-20 16:20:31', 1, 'SEÑOR'),
(30, 'pedido', 28, 4, '2016-12-20 16:41:37', 1, 'SEÑOR'),
(31, 'pedido', 29, 4, '2016-12-20 16:57:19', 1, 'SEÑOR'),
(32, 'pedido', 30, 4, '2016-12-20 17:21:28', 1, 'SEÑOR'),
(33, 'pedido', 31, 4, '2016-12-20 17:32:39', 1, 'SEÑOR'),
(34, 'pedido', 32, 5, '2016-12-21 08:34:16', 0, 'SEÑOR'),
(35, 'pedido', 33, 5, '2016-12-21 09:44:49', 0, 'SEÑOR'),
(36, 'pedido', 34, 5, '2016-12-21 13:10:23', 0, 'SEÑOR'),
(37, 'pedido', 35, 5, '2016-12-21 13:38:10', 0, 'SEÑOR'),
(38, 'pedido', 36, 5, '2016-12-21 13:39:32', 0, 'SEÑOR'),
(39, 'pedido', 37, 5, '2016-12-21 13:42:49', 0, 'SEÑOR'),
(40, 'pedido', 38, 5, '2016-12-21 13:44:46', 0, 'SEÑOR'),
(41, 'pedido', 39, 5, '2016-12-22 14:14:14', 0, 'SEÑOR'),
(42, 'pedido', 40, 5, '2016-12-30 12:29:44', 0, 'SEÑOR'),
(43, 'pedido', 41, 5, '2017-01-09 15:39:02', 0, 'SEÑOR'),
(44, 'pedido', 42, 5, '2017-01-24 16:52:17', 0, 'SEÑOR'),
(45, 'pedido', 43, 5, '2017-01-26 15:25:19', 0, 'SEÑOR'),
(46, 'pedido', 44, 5, '2017-01-26 15:53:50', 0, 'SEÑOR'),
(47, 'pedido', 45, 4, '2017-01-27 14:34:11', 1, 'SEÑOR'),
(48, 'pedido', 46, 4, '2017-02-03 10:48:23', 1, 'SEÑOR'),
(49, 'pedido', 47, 4, '2017-02-03 11:19:31', 1, 'SEÑOR'),
(50, 'pedido', 48, 4, '2017-02-03 11:59:14', 1, 'SEÑOR'),
(51, 'pedido', 50, 4, '2017-02-10 10:14:17', 1, 'SEÑOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `pub_id` int(11) NOT NULL,
  `pub_nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_descripcion` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_imagen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_tipo` int(11) NOT NULL DEFAULT '0',
  `pub_archivo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_archivo_config` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pub_css` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_clase` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pub_id_item` int(11) NOT NULL DEFAULT '0',
  `pub_numero` int(11) NOT NULL DEFAULT '0',
  `pub_id_cat` int(11) NOT NULL DEFAULT '0',
  `pub_activar` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`pub_id`, `pub_nombre`, `pub_descripcion`, `pub_imagen`, `pub_titulo`, `pub_tipo`, `pub_archivo`, `pub_archivo_config`, `pub_css`, `pub_clase`, `pub_id_item`, `pub_numero`, `pub_id_cat`, `pub_activar`) VALUES
(1, 'nav', '', '', '', 1, 'modulos/nav.pub.php', '', '', '', 0, 0, 0, 1),
(2, 'pagina_normal', '', '', '', 1, 'modulos/pagina-normal.pub.php', '', '', '', 0, 0, 0, 0),
(3, 'catalogo', '', '', '', 1, 'modulos/catalogo.pub.php', '', '', '', 0, 0, 0, 0),
(4, 'sucursales', '', '', '', 1, 'modulos/sucursales.pub.php', '', '', '', 0, 0, 0, 0),
(5, 'social', '', '', '', 1, 'modulos/social-page.pub.php', '', '', '', 0, 0, 0, 0),
(6, 'contacto', '', '', '', 1, 'modulos/contacto.pub.php', '', '', '', 0, 0, 0, 0),
(7, 'producto', '', '', '', 1, 'modulos/producto.pub.php', '', '', '', 0, 0, 0, 0),
(8, 'nosotros', '', '', '', 1, 'modulos/nosotros.pub.php', '', '', '', 0, 0, 0, 1),
(9, 'buscar', '', '', '', 1, 'modulos/buscar.pub.php', '', '', '', 0, 0, 0, 1),
(10, 'menu', '', '', '', 1, 'modulos/nav.pub.php', '', '', '', 0, 0, 0, 1),
(11, 'multimedia-cat', '', '', '', 1, 'modulos/multimedia.pub.php', '', '', '', 0, 0, 0, 1),
(12, 'pedido', '', '', '', 1, 'modulos/pedido.pub.php', '', '', '', 0, 0, 0, 1),
(13, 'mi carrito', '', '', '', 1, 'modulos/mi_carrito.pub.php', '', '', '', 0, 0, 0, 1),
(14, 'mi cuenta', '', '', '', 1, 'modulos/cuenta.pub.php', '', '', '', 0, 0, 0, 1),
(15, 'cuenta', '', '', '', 1, 'modulos/mi_cuenta.pub.php', '', '', '', 0, 0, 0, 1),
(16, 'sidebar', '', '', '', 1, 'modulos/sidebar.pub.php', '', '', '', 0, 0, 0, 1),
(17, 'header', '', '', '', 1, 'modulos/header.pub.php', '', '', '', 0, 0, 0, 1),
(18, 'slide', '', '', '', 1, 'modulos/slide.pub.php', '', '', '', 0, 0, 0, 1),
(19, 'noticias-portada', '', '', '', 1, 'modulos/noticias-portada.pub.php', '', '', '', 0, 3, 104, 1),
(20, '5tenedores-portada', '', '', '', 1, 'modulos/5tenedores-portada.pub.php', '', '', '', 0, 0, 0, 1),
(21, 'novedades-portada', '', '', '', 1, 'modulos/novedades-productos.pub.php', '', '', '', 0, 0, 106, 1),
(22, 'notas', '', '', '', 1, 'modulos/nota.pub.php', '', '', '', 0, 0, 0, 1),
(23, 'recetas-portada', '', '', 'Ultimas Recetas', 1, 'modulos/noticias-portada.pub.php', '', '', '', 0, 6, 79, 1),
(24, 'variedades-portada', '', '', '', 1, 'modulos/variedades-portada.pub.php', '', '', '', 0, 4, 78, 1),
(25, 'footer', '', '', '', 1, 'modulos/footer.pub.php', '', '', '', 0, 0, 0, 1),
(26, 'pagina', '', '', '', 1, 'modulos/page.pub.php', '', '', '', 0, 0, 0, 1),
(27, 'lista-noticias', '', '', '', 1, 'modulos/lista-noticias.pub.php', '', '', '', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion_rel`
--

CREATE TABLE `publicacion_rel` (
  `pubrel_id` int(11) NOT NULL,
  `pubrel_cat_id` int(11) NOT NULL,
  `pubrel_pla_id` int(11) NOT NULL,
  `pubrel_cont_id` int(11) NOT NULL,
  `pubrel_pub_id` int(11) NOT NULL,
  `pubrel_activar` int(11) NOT NULL DEFAULT '0',
  `pubrel_orden` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `publicacion_rel`
--

INSERT INTO `publicacion_rel` (`pubrel_id`, `pubrel_cat_id`, `pubrel_pla_id`, `pubrel_cont_id`, `pubrel_pub_id`, `pubrel_activar`, `pubrel_orden`) VALUES
(2, 81, 1, 1, 3, 1, 1),
(3, 82, 1, 1, 3, 1, 1),
(4, 83, 1, 1, 3, 1, 1),
(5, 81, 3, 1, 7, 1, 1),
(6, 82, 3, 1, 7, 1, 1),
(7, 83, 3, 1, 7, 1, 1),
(8, 79, 1, 1, 5, 1, 1),
(9, 76, 1, 1, 8, 1, 0),
(10, 78, 1, 1, 4, 1, 0),
(11, 80, 1, 1, 6, 1, 0),
(14, 1, 2, 1, 9, 1, 0),
(15, 89, 1, 1, 3, 1, 0),
(16, 90, 1, 1, 3, 1, 0),
(17, 97, 1, 1, 12, 1, 0),
(18, 97, 3, 1, 13, 1, 0),
(19, 101, 1, 1, 14, 1, 0),
(20, 101, 3, 1, 15, 1, 0),
(28, 104, 2, 5, 1, 1, 0),
(29, 104, 2, 4, 16, 1, 0),
(30, 104, 3, 1, 1, 1, 0),
(31, 104, 3, 5, 17, 1, 0),
(32, 104, 3, 5, 22, 1, 1),
(33, 104, 3, 4, 16, 1, 0),
(43, 79, 3, 1, 1, 1, 0),
(44, 79, 3, 5, 17, 1, 0),
(45, 79, 3, 5, 22, 1, 1),
(46, 79, 3, 4, 16, 1, 0),
(47, 1, 1, 1, 1, 1, 0),
(48, 1, 1, 5, 17, 1, 0),
(49, 1, 1, 5, 18, 1, 1),
(50, 1, 1, 5, 19, 1, 2),
(51, 1, 1, 5, 20, 1, 3),
(52, 1, 1, 5, 21, 1, 4),
(53, 1, 1, 5, 23, 1, 5),
(54, 1, 1, 5, 24, 1, 6),
(55, 1, 1, 5, 25, 1, 7),
(56, 1, 1, 4, 16, 1, 0),
(57, 103, 1, 1, 1, 1, 0),
(58, 103, 1, 5, 17, 1, 0),
(59, 103, 1, 5, 26, 1, 1),
(60, 103, 1, 4, 16, 1, 0),
(61, 104, 1, 1, 1, 1, 0),
(62, 104, 1, 5, 17, 1, 0),
(63, 104, 1, 5, 27, 1, 1),
(64, 104, 1, 4, 16, 1, 0),
(65, 105, 1, 1, 1, 1, 0),
(66, 105, 1, 5, 17, 1, 0),
(67, 105, 1, 5, 27, 1, 1),
(68, 105, 1, 5, 25, 1, 2),
(69, 105, 1, 4, 16, 1, 0),
(70, 77, 1, 1, 1, 1, 0),
(71, 77, 1, 5, 17, 1, 0),
(72, 77, 1, 5, 3, 1, 1),
(73, 77, 1, 4, 16, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `rol_id` int(11) NOT NULL,
  `rol_nombre` varchar(45) NOT NULL,
  `rol_descripcion` varchar(255) NOT NULL,
  `rol_funciones` varchar(255) NOT NULL,
  `rol_redireccion` int(11) NOT NULL DEFAULT '1',
  `rol_id_padre` int(11) NOT NULL,
  `rol_grupo` int(11) NOT NULL,
  `rol_permisos` varchar(45) NOT NULL,
  `rol_activar` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`rol_id`, `rol_nombre`, `rol_descripcion`, `rol_funciones`, `rol_redireccion`, `rol_id_padre`, `rol_grupo`, `rol_permisos`, `rol_activar`) VALUES
(1, 'Administrador', '', 'todo poderoso', 2, 1, 1, '', 1),
(2, 'Diseñador web', '', '', 1, 1, 1, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_categorias`
--

CREATE TABLE `rol_categorias` (
  `rol_cat_cat_id` int(11) NOT NULL,
  `rol_cat_rol_id` int(11) NOT NULL,
  `rol_cat_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema`
--

CREATE TABLE `sistema` (
  `sis_id` int(11) NOT NULL,
  `sis_nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sis_descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sis_icono` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sis_color` varchar(7) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sis_tipo` int(11) NOT NULL COMMENT '0 - Multiproposito1 - CMS2 - CRM3 - ERP4 - RRHH5 - ADM7 - PROYECTOS8 - FiNANZAS9 - GERENCIA10 - TIC',
  `sis_activar` int(11) NOT NULL,
  `sis_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `sistema`
--

INSERT INTO `sistema` (`sis_id`, `sis_nombre`, `sis_descripcion`, `sis_icono`, `sis_color`, `sis_tipo`, `sis_activar`, `sis_orden`) VALUES
(1, 'Websites', '', 'icn-code', '#ffda43', 1, 1, 1),
(2, 'E-commerce', '', 'icn-cart', '#e83759', 10, 1, 2),
(3, 'Intranet', '', 'icn-intranet', '#879099', 0, 1, 6),
(4, 'Recursos Humanos', '', 'icn-rrhh color-text-violeta', '#8b3b8f', 4, 1, 4),
(5, 'Gerencia', '', 'icn-suitcase color-text-naranja', '#8a7354', 0, 1, 3),
(6, 'Proyectos', '', 'icn icn-proyect', '#0076ff', 0, 1, 5),
(7, 'Finazas', '', 'icn icn-finance', '#00bdc6', 6, 1, 7),
(8, 'Logistica', '', 'icn icn-logistics', '#99c14c', 10, 1, 8),
(9, 'CRM', '', 'icn icn-crm', '#e71882', 2, 1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_modulos`
--

CREATE TABLE `sistema_modulos` (
  `sis_mod_sis_id` int(11) NOT NULL,
  `sis_mod_mod_id` int(11) NOT NULL,
  `sis_mod_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_modulos`
--

INSERT INTO `sistema_modulos` (`sis_mod_sis_id`, `sis_mod_mod_id`, `sis_mod_orden`) VALUES
(1, 100, 0),
(1, 80, 0),
(1, 70, 0),
(1, 60, 0),
(1, 51, 0),
(1, 50, 0),
(2, 150, 0),
(2, 151, 0),
(2, 152, 0),
(2, 153, 0),
(2, 154, 0),
(2, 155, 0),
(2, 271, 0),
(2, 272, 0),
(2, 273, 0),
(2, 300, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_roles`
--

CREATE TABLE `sistema_roles` (
  `sis_rol_sis_id` int(11) NOT NULL,
  `sis_rol_rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema_roles`
--

INSERT INTO `sistema_roles` (`sis_rol_sis_id`, `sis_rol_rol_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitio`
--

CREATE TABLE `sitio` (
  `sitio_id` int(11) NOT NULL,
  `sitio_nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sitio_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sitio_ruta_amigable` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sitio_tipo` int(11) NOT NULL DEFAULT '0',
  `sitio_carpeta` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sitio_orden` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sitio_activar` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `sitio`
--

INSERT INTO `sitio` (`sitio_id`, `sitio_nombre`, `sitio_descripcion`, `sitio_ruta_amigable`, `sitio_tipo`, `sitio_carpeta`, `sitio_orden`, `sitio_activar`) VALUES
(1, 'Sitio Raiz', '', '', 0, '', '1', 1),
(2, 'Dashboard', '', 'dashboard', 2, '', '2', 1),
(3, 'Intranet', '', 'intranet', 0, '', '3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitio_categorias`
--

CREATE TABLE `sitio_categorias` (
  `sitio_cat_sitio_id` int(11) NOT NULL,
  `sitio_cat_cat_id` int(11) NOT NULL,
  `sitio_cat_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitio_roles`
--

CREATE TABLE `sitio_roles` (
  `sitio_rol_sitio_id` int(11) NOT NULL,
  `sitio_rol_rol_id` int(11) NOT NULL,
  `sitio_rol_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sitio_roles`
--

INSERT INTO `sitio_roles` (`sitio_rol_sitio_id`, `sitio_rol_rol_id`, `sitio_rol_orden`) VALUES
(2, 1, 0),
(2, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_permiso`
--

CREATE TABLE `solicitud_permiso` (
  `sol_per_id` int(11) NOT NULL,
  `sol_per_id_usuario` int(11) NOT NULL,
  `sol_per_id_dependencia` int(11) NOT NULL,
  `sol_per_fecha` date NOT NULL,
  `sol_per_fecha_inicio` datetime NOT NULL,
  `sol_per_fecha_final` datetime NOT NULL,
  `sol_per_motivo` text NOT NULL,
  `sol_per_compensar` int(1) NOT NULL COMMENT '0=si;1=no',
  `sol_per_fecha_autorizado` datetime NOT NULL,
  `sol_per_nota` text NOT NULL,
  `sol_per_estado` int(1) NOT NULL COMMENT '0=solicitado;1=Revision;2=Aprobado;3=denegado',
  `sol_per_activar` int(1) NOT NULL,
  `sol_per_papelera` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empresa`
--

CREATE TABLE `tipo_empresa` (
  `tip_emp_id` int(11) NOT NULL,
  `tip_emp_nombre` varchar(150) NOT NULL,
  `tip_emp_descripcion` varchar(255) NOT NULL,
  `tip_emp_activar` int(11) NOT NULL,
  `tip_emp_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_nombre` varchar(255) NOT NULL,
  `usu_apellidos` varchar(255) NOT NULL,
  `usu_email` varchar(255) NOT NULL,
  `usu_password` varchar(45) DEFAULT NULL,
  `usu_estado` int(11) NOT NULL,
  `usu_imagen` varchar(255) NOT NULL,
  `usu_padre` int(11) NOT NULL,
  `usu_ruta_amigable` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usu_activar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_id`, `usu_nombre`, `usu_apellidos`, `usu_email`, `usu_password`, `usu_estado`, `usu_imagen`, `usu_padre`, `usu_ruta_amigable`, `usu_activar`) VALUES
(1, 'Hermany', 'Terrazas', 'hterrazas@wappcom.com', 'NDg2Mg==', 1, '', 0, '', 1),
(2, 'Carolina ', 'Kavlin', 'carolina@consultoraplanb.com', 'UGxhbkIxMjNBIQ==', 1, '', 0, '', 1),
(3, 'Carolina ', 'Ottonello', 'administracion@consultoraplanb.com', 'UGxhbkIxMjNBIQ==', 1, '', 0, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_grupos`
--

CREATE TABLE `usuario_grupos` (
  `usu_grupo_usu_id` int(11) NOT NULL,
  `usu_grupo_grupo_id` int(11) NOT NULL,
  `usu_grupo_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_roles`
--

CREATE TABLE `usuario_roles` (
  `usu_rol_usu_id` int(11) NOT NULL,
  `usu_rol_rol_id` int(11) NOT NULL,
  `usu_rol_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `usuario_roles`
--

INSERT INTO `usuario_roles` (`usu_rol_usu_id`, `usu_rol_rol_id`, `usu_rol_orden`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor`
--

CREATE TABLE `valor` (
  `val_id` int(11) NOT NULL,
  `val_tipo` int(11) NOT NULL COMMENT '1. Like  2. De 0 a 5 3. V o F  4. De 1 a 10  5. De 1 a 100',
  `val_valor` int(11) NOT NULL,
  `val_usario` int(11) NOT NULL,
  `val_fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor_notas`
--

CREATE TABLE `valor_notas` (
  `val_not_id` int(11) NOT NULL,
  `val_usuario` int(11) NOT NULL,
  `val_tipo` int(11) NOT NULL COMMENT '1. Like  2. De 0 a 5 3. V o F  4. De 1 a 10  5. De 1 a 100',
  `val_valor` int(11) NOT NULL,
  `val_fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`alb_id`);

--
-- Indices de la tabla `album_multimedia`
--
ALTER TABLE `album_multimedia`
  ADD PRIMARY KEY (`alb_mul_mul_id`,`alb_mul_alb_id`);

--
-- Indices de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`app_id`);

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`aut_id`);

--
-- Indices de la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`cal_id`);

--
-- Indices de la tabla `calendario_categoria`
--
ALTER TABLE `calendario_categoria`
  ADD PRIMARY KEY (`cal_cat_id_cal`,`cal_cat_id_cat`);

--
-- Indices de la tabla `calendario_grupo`
--
ALTER TABLE `calendario_grupo`
  ADD PRIMARY KEY (`cal_grp_id_cal`,`cal_grp_id_grp`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cat_id`);
ALTER TABLE `categoria` ADD FULLTEXT KEY `busqueda` (`cat_nombre`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`com_id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`conf_nombre_sitio`);

--
-- Indices de la tabla `contenedor`
--
ALTER TABLE `contenedor`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indices de la tabla `contenedor_plantilla`
--
ALTER TABLE `contenedor_plantilla`
  ADD PRIMARY KEY (`contenedor_cont_id`,`plantilla_pla_id`);

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`conte_id`);

--
-- Indices de la tabla `contenido_categorias`
--
ALTER TABLE `contenido_categorias`
  ADD PRIMARY KEY (`conte_cat_conte_id`,`conte_cat_cat_id`);

--
-- Indices de la tabla `contenido_documentos`
--
ALTER TABLE `contenido_documentos`
  ADD PRIMARY KEY (`conte_doc_conte_id`,`conte_doc_doc_id`);

--
-- Indices de la tabla `cron_jobs`
--
ALTER TABLE `cron_jobs`
  ADD PRIMARY KEY (`cron_id`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`cuenta_id`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indices de la tabla `empresa_categorias`
--
ALTER TABLE `empresa_categorias`
  ADD PRIMARY KEY (`emp_cat_emp_id`,`emp_cat_cat_id`);

--
-- Indices de la tabla `empresa_tipos`
--
ALTER TABLE `empresa_tipos`
  ADD PRIMARY KEY (`emp_tip_emp_id`,`emp_tip_tip_id`);

--
-- Indices de la tabla `enlace`
--
ALTER TABLE `enlace`
  ADD PRIMARY KEY (`enl_id`);

--
-- Indices de la tabla `enlace_categorias`
--
ALTER TABLE `enlace_categorias`
  ADD PRIMARY KEY (`enl_cat_enl_id`,`enl_cat_cat_id`);

--
-- Indices de la tabla `enlace_grupo_usuarios`
--
ALTER TABLE `enlace_grupo_usuarios`
  ADD PRIMARY KEY (`enl_grp_us_enl_id`,`enl_grp_us_grp_us_id`);

--
-- Indices de la tabla `enlace_publicaciones`
--
ALTER TABLE `enlace_publicaciones`
  ADD PRIMARY KEY (`enl_pub_enl_id`,`enl_pub_pub_id`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`eve_id`);

--
-- Indices de la tabla `evento_calendarios`
--
ALTER TABLE `evento_calendarios`
  ADD PRIMARY KEY (`eve_cal_eve_id`,`eve_cal_cal_id`);

--
-- Indices de la tabla `evento_grupos`
--
ALTER TABLE `evento_grupos`
  ADD PRIMARY KEY (`eve_grp_id_eve`,`eve_grp_id_grp`);

--
-- Indices de la tabla `evento_roles`
--
ALTER TABLE `evento_roles`
  ADD PRIMARY KEY (`eve_rol_id_eve`,`eve_rol_id_rol`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`grupo_id`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indices de la tabla `modulo_categorias`
--
ALTER TABLE `modulo_categorias`
  ADD PRIMARY KEY (`mod_cat_mod_id`,`mod_cat_cat_id`);

--
-- Indices de la tabla `modulo_roles`
--
ALTER TABLE `modulo_roles`
  ADD PRIMARY KEY (`mod_rol_mod_id`,`mod_rol_rol_id`);

--
-- Indices de la tabla `mod_almacen`
--
ALTER TABLE `mod_almacen`
  ADD PRIMARY KEY (`alm_id`);

--
-- Indices de la tabla `mod_almacen_categorias`
--
ALTER TABLE `mod_almacen_categorias`
  ADD PRIMARY KEY (`cat_alm_id`);

--
-- Indices de la tabla `mod_catalogo`
--
ALTER TABLE `mod_catalogo`
  ADD PRIMARY KEY (`mod_catg_id`);

--
-- Indices de la tabla `mod_catalogo_categorias`
--
ALTER TABLE `mod_catalogo_categorias`
  ADD PRIMARY KEY (`mod_catg_cat_catg_id`,`mod_catg_cat_cat_id`);

--
-- Indices de la tabla `mod_catalogo_roles`
--
ALTER TABLE `mod_catalogo_roles`
  ADD PRIMARY KEY (`mod_catg_rol_catg_id`,`mod_catg_rol_rol_id`);

--
-- Indices de la tabla `mod_cats`
--
ALTER TABLE `mod_cats`
  ADD PRIMARY KEY (`cts_id`);

--
-- Indices de la tabla `mod_clientes`
--
ALTER TABLE `mod_clientes`
  ADD PRIMARY KEY (`mod_cli_id`);

--
-- Indices de la tabla `mod_clientes_estados`
--
ALTER TABLE `mod_clientes_estados`
  ADD PRIMARY KEY (`mod_cli_est_id`);

--
-- Indices de la tabla `mod_kardex`
--
ALTER TABLE `mod_kardex`
  ADD PRIMARY KEY (`mod_kdx_id`);

--
-- Indices de la tabla `mod_kardex_bancos`
--
ALTER TABLE `mod_kardex_bancos`
  ADD PRIMARY KEY (`mod_kdx_bnc_id`);

--
-- Indices de la tabla `mod_kardex_cargo`
--
ALTER TABLE `mod_kardex_cargo`
  ADD PRIMARY KEY (`mod_kdx_car_id`);

--
-- Indices de la tabla `mod_kardex_departamento`
--
ALTER TABLE `mod_kardex_departamento`
  ADD PRIMARY KEY (`mod_kdx_dep_id`);

--
-- Indices de la tabla `mod_kardex_division`
--
ALTER TABLE `mod_kardex_division`
  ADD PRIMARY KEY (`mod_kdx_div_id`);

--
-- Indices de la tabla `mod_kardex_empresa`
--
ALTER TABLE `mod_kardex_empresa`
  ADD PRIMARY KEY (`mod_kdx_emp_id`);

--
-- Indices de la tabla `mod_kardex_formacion`
--
ALTER TABLE `mod_kardex_formacion`
  ADD PRIMARY KEY (`mod_kdx_frm_id`);

--
-- Indices de la tabla `mod_kardex_hijos`
--
ALTER TABLE `mod_kardex_hijos`
  ADD PRIMARY KEY (`mod_kdx_hj_id`);

--
-- Indices de la tabla `mod_kardex_historial_corporativo`
--
ALTER TABLE `mod_kardex_historial_corporativo`
  ADD PRIMARY KEY (`mod_kdx_his_corp_id`);

--
-- Indices de la tabla `mod_kardex_manual_funciones`
--
ALTER TABLE `mod_kardex_manual_funciones`
  ADD PRIMARY KEY (`mod_kdx_mf_id`);

--
-- Indices de la tabla `mod_kardex_referencias`
--
ALTER TABLE `mod_kardex_referencias`
  ADD PRIMARY KEY (`mod_kardex_ref_id`);

--
-- Indices de la tabla `mod_kardex_ref_emergencia`
--
ALTER TABLE `mod_kardex_ref_emergencia`
  ADD PRIMARY KEY (`mod_kdx_ref_emg_id`);

--
-- Indices de la tabla `mod_marcas`
--
ALTER TABLE `mod_marcas`
  ADD PRIMARY KEY (`mod_mar_id`);

--
-- Indices de la tabla `mod_pedidos`
--
ALTER TABLE `mod_pedidos`
  ADD PRIMARY KEY (`mod_ped_id`);

--
-- Indices de la tabla `mod_pedidos_almacen`
--
ALTER TABLE `mod_pedidos_almacen`
  ADD PRIMARY KEY (`mod_ped_alm_id_pedido`,`mod_ped_alm_id_almacen`);

--
-- Indices de la tabla `mod_pedidos_cats`
--
ALTER TABLE `mod_pedidos_cats`
  ADD PRIMARY KEY (`mod_ped_id`);

--
-- Indices de la tabla `mod_pedidos_clientes`
--
ALTER TABLE `mod_pedidos_clientes`
  ADD PRIMARY KEY (`mod_ped_cli_id`);

--
-- Indices de la tabla `mod_pedidos_estados`
--
ALTER TABLE `mod_pedidos_estados`
  ADD PRIMARY KEY (`mod_ped_est_id`);

--
-- Indices de la tabla `mod_pedidos_productos`
--
ALTER TABLE `mod_pedidos_productos`
  ADD PRIMARY KEY (`mod_ped_prod_id`);

--
-- Indices de la tabla `mod_pedidos_tipo`
--
ALTER TABLE `mod_pedidos_tipo`
  ADD PRIMARY KEY (`mod_ped_tipo_id`);

--
-- Indices de la tabla `mod_pestana`
--
ALTER TABLE `mod_pestana`
  ADD PRIMARY KEY (`mod_pes_id`);

--
-- Indices de la tabla `mod_plan`
--
ALTER TABLE `mod_plan`
  ADD PRIMARY KEY (`mod_plan_id`);

--
-- Indices de la tabla `mod_productos`
--
ALTER TABLE `mod_productos`
  ADD PRIMARY KEY (`mod_prod_id`);
ALTER TABLE `mod_productos` ADD FULLTEXT KEY `busqueda` (`mod_prod_nombre`,`mod_prod_tags`,`mod_prod_detalles`,`mod_prod_especificaciones`);

--
-- Indices de la tabla `mod_productos_docs`
--
ALTER TABLE `mod_productos_docs`
  ADD PRIMARY KEY (`mod_prod_doc_doc_id`,`mod_prod_doc_prod_id`);

--
-- Indices de la tabla `mod_productos_pestana`
--
ALTER TABLE `mod_productos_pestana`
  ADD PRIMARY KEY (`mod_pro_pes_pro_id`,`mod_pro_pes_pes_id`);

--
-- Indices de la tabla `mod_stock`
--
ALTER TABLE `mod_stock`
  ADD PRIMARY KEY (`mod_stk_prod`,`mod_stk_suc`,`mod_stk_fecha`);

--
-- Indices de la tabla `mod_sucursales`
--
ALTER TABLE `mod_sucursales`
  ADD PRIMARY KEY (`mod_suc_id`);

--
-- Indices de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`mul_id`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`not_id`);

--
-- Indices de la tabla `nota_categorias`
--
ALTER TABLE `nota_categorias`
  ADD PRIMARY KEY (`not_cat_not_id`,`not_cat_cat_id`);

--
-- Indices de la tabla `nota_comentarios`
--
ALTER TABLE `nota_comentarios`
  ADD PRIMARY KEY (`not_com_id`);

--
-- Indices de la tabla `nota_multimedia`
--
ALTER TABLE `nota_multimedia`
  ADD PRIMARY KEY (`not_mul_not_id`,`not_mul_mul_id`);

--
-- Indices de la tabla `nota_valores`
--
ALTER TABLE `nota_valores`
  ADD PRIMARY KEY (`not_val_not_id`,`not_val_val_id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`pla_id`),
  ADD KEY `pla_id` (`pla_id`) USING BTREE;

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indices de la tabla `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`prit_id`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`pub_id`);

--
-- Indices de la tabla `publicacion_rel`
--
ALTER TABLE `publicacion_rel`
  ADD PRIMARY KEY (`pubrel_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `sistema`
--
ALTER TABLE `sistema`
  ADD PRIMARY KEY (`sis_id`);

--
-- Indices de la tabla `sistema_modulos`
--
ALTER TABLE `sistema_modulos`
  ADD PRIMARY KEY (`sis_mod_sis_id`,`sis_mod_mod_id`);

--
-- Indices de la tabla `sistema_roles`
--
ALTER TABLE `sistema_roles`
  ADD PRIMARY KEY (`sis_rol_sis_id`,`sis_rol_rol_id`);

--
-- Indices de la tabla `sitio`
--
ALTER TABLE `sitio`
  ADD PRIMARY KEY (`sitio_id`);

--
-- Indices de la tabla `sitio_roles`
--
ALTER TABLE `sitio_roles`
  ADD PRIMARY KEY (`sitio_rol_sitio_id`,`sitio_rol_rol_id`);

--
-- Indices de la tabla `solicitud_permiso`
--
ALTER TABLE `solicitud_permiso`
  ADD PRIMARY KEY (`sol_per_id`);

--
-- Indices de la tabla `tipo_empresa`
--
ALTER TABLE `tipo_empresa`
  ADD PRIMARY KEY (`tip_emp_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- Indices de la tabla `usuario_grupos`
--
ALTER TABLE `usuario_grupos`
  ADD PRIMARY KEY (`usu_grupo_usu_id`,`usu_grupo_grupo_id`);

--
-- Indices de la tabla `usuario_roles`
--
ALTER TABLE `usuario_roles`
  ADD PRIMARY KEY (`usu_rol_usu_id`,`usu_rol_rol_id`);

--
-- Indices de la tabla `valor`
--
ALTER TABLE `valor`
  ADD PRIMARY KEY (`val_id`);

--
-- Indices de la tabla `valor_notas`
--
ALTER TABLE `valor_notas`
  ADD PRIMARY KEY (`val_usuario`,`val_not_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `alb_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `aut_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `calendario`
--
ALTER TABLE `calendario`
  MODIFY `cal_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `contenedor`
--
ALTER TABLE `contenedor`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `contenido`
--
ALTER TABLE `contenido`
  MODIFY `conte_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cron_jobs`
--
ALTER TABLE `cron_jobs`
  MODIFY `cron_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `cuenta_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `enlace`
--
ALTER TABLE `enlace`
  MODIFY `enl_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `eve_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `grupo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `mod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT de la tabla `mod_almacen`
--
ALTER TABLE `mod_almacen`
  MODIFY `alm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_almacen_categorias`
--
ALTER TABLE `mod_almacen_categorias`
  MODIFY `cat_alm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_catalogo`
--
ALTER TABLE `mod_catalogo`
  MODIFY `mod_catg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_cats`
--
ALTER TABLE `mod_cats`
  MODIFY `cts_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_clientes`
--
ALTER TABLE `mod_clientes`
  MODIFY `mod_cli_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_clientes_estados`
--
ALTER TABLE `mod_clientes_estados`
  MODIFY `mod_cli_est_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_kardex`
--
ALTER TABLE `mod_kardex`
  MODIFY `mod_kdx_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_bancos`
--
ALTER TABLE `mod_kardex_bancos`
  MODIFY `mod_kdx_bnc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_cargo`
--
ALTER TABLE `mod_kardex_cargo`
  MODIFY `mod_kdx_car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_departamento`
--
ALTER TABLE `mod_kardex_departamento`
  MODIFY `mod_kdx_dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_division`
--
ALTER TABLE `mod_kardex_division`
  MODIFY `mod_kdx_div_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_empresa`
--
ALTER TABLE `mod_kardex_empresa`
  MODIFY `mod_kdx_emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_formacion`
--
ALTER TABLE `mod_kardex_formacion`
  MODIFY `mod_kdx_frm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_hijos`
--
ALTER TABLE `mod_kardex_hijos`
  MODIFY `mod_kdx_hj_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_historial_corporativo`
--
ALTER TABLE `mod_kardex_historial_corporativo`
  MODIFY `mod_kdx_his_corp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_manual_funciones`
--
ALTER TABLE `mod_kardex_manual_funciones`
  MODIFY `mod_kdx_mf_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_referencias`
--
ALTER TABLE `mod_kardex_referencias`
  MODIFY `mod_kardex_ref_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_kardex_ref_emergencia`
--
ALTER TABLE `mod_kardex_ref_emergencia`
  MODIFY `mod_kdx_ref_emg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_marcas`
--
ALTER TABLE `mod_marcas`
  MODIFY `mod_mar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `mod_pedidos`
--
ALTER TABLE `mod_pedidos`
  MODIFY `mod_ped_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_pedidos_cats`
--
ALTER TABLE `mod_pedidos_cats`
  MODIFY `mod_ped_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_pedidos_clientes`
--
ALTER TABLE `mod_pedidos_clientes`
  MODIFY `mod_ped_cli_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_pedidos_estados`
--
ALTER TABLE `mod_pedidos_estados`
  MODIFY `mod_ped_est_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_pedidos_productos`
--
ALTER TABLE `mod_pedidos_productos`
  MODIFY `mod_ped_prod_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_pedidos_tipo`
--
ALTER TABLE `mod_pedidos_tipo`
  MODIFY `mod_ped_tipo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_pestana`
--
ALTER TABLE `mod_pestana`
  MODIFY `mod_pes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `mod_plan`
--
ALTER TABLE `mod_plan`
  MODIFY `mod_plan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mod_productos`
--
ALTER TABLE `mod_productos`
  MODIFY `mod_prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `mod_sucursales`
--
ALTER TABLE `mod_sucursales`
  MODIFY `mod_suc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `mul_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `nota`
--
ALTER TABLE `nota`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `nota_comentarios`
--
ALTER TABLE `nota_comentarios`
  MODIFY `not_com_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `pla_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `printer`
--
ALTER TABLE `printer`
  MODIFY `prit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `publicacion_rel`
--
ALTER TABLE `publicacion_rel`
  MODIFY `pubrel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `sistema`
--
ALTER TABLE `sistema`
  MODIFY `sis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `sitio`
--
ALTER TABLE `sitio`
  MODIFY `sitio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `solicitud_permiso`
--
ALTER TABLE `solicitud_permiso`
  MODIFY `sol_per_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_empresa`
--
ALTER TABLE `tipo_empresa`
  MODIFY `tip_emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `valor`
--
ALTER TABLE `valor`
  MODIFY `val_id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
