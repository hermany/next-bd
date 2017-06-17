-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `alb_id` int(11) NOT NULL AUTO_INCREMENT,
  `alb_nombre` varchar(255) NOT NULL,
  `alb_descripcion` varchar(255) NOT NULL,
  `alb_ubicacion` varchar(255) NOT NULL,
  `alb_tags` varchar(255) NOT NULL,
  `alb_etiquetados` varchar(255) NOT NULL,
  `alb_fecha` date NOT NULL,
  `alb_usuario` int(11) NOT NULL,
  `alb_activar` int(11) NOT NULL,
  PRIMARY KEY (`alb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `album_multimedia`;
CREATE TABLE `album_multimedia` (
  `alb_mul_alb_id` int(11) NOT NULL,
  `alb_mul_mul_id` int(11) NOT NULL,
  `alb_mul__orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `aplicacion`;
CREATE TABLE `aplicacion` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_nombre` varchar(140) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_ruta_amigable` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_nav_url` varchar(150) CHARACTER SET ucs2 COLLATE ucs2_spanish_ci NOT NULL,
  `app_url` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_icono` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_color` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `app_orden` int(11) NOT NULL,
  `app_activar` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `autor`;
CREATE TABLE `autor` (
  `aut_id` int(11) NOT NULL AUTO_INCREMENT,
  `aut_nombre` varchar(100) NOT NULL,
  `aut_descripcion` tinytext NOT NULL,
  `aut_descripcion_larga` text NOT NULL,
  `aut_activar` int(11) NOT NULL,
  PRIMARY KEY (`aut_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `calendario`;
CREATE TABLE `calendario` (
  `cal_id` int(11) NOT NULL AUTO_INCREMENT,
  `cal_nombre` varchar(150) NOT NULL,
  `cal_ruta_amigable` varchar(255) NOT NULL,
  `cal_descripcion` varchar(255) NOT NULL,
  `cal_color` varchar(20) NOT NULL,
  `cal_papelera` int(11) NOT NULL,
  `cal_usuario` int(11) NOT NULL,
  `cal_activar` int(11) NOT NULL,
  PRIMARY KEY (`cal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `calendario_categoria`;
CREATE TABLE `calendario_categoria` (
  `cal_cat_id_cal` int(11) NOT NULL,
  `cal_cat_id_cat` int(11) NOT NULL,
  PRIMARY KEY (`cal_cat_id_cal`,`cal_cat_id_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `calendario_grupo`;
CREATE TABLE `calendario_grupo` (
  `cal_grp_id_cal` int(11) NOT NULL,
  `cal_grp_id_grp` int(11) NOT NULL,
  PRIMARY KEY (`cal_grp_id_cal`,`cal_grp_id_grp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `cat_activar` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`),
  FULLTEXT KEY `busqueda` (`cat_nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `categoria` (`cat_id`, `cat_nombre`, `cat_descripcion`, `cat_ruta_amigable`, `cat_imagen`, `cat_icono`, `cat_color`, `cat_codigos`, `cat_css`, `cat_clase`, `cat_meta`, `cat_theme`, `cat_id_padre`, `cat_id_plantilla`, `cat_orden`, `cat_tipo`, `cat_url`, `cat_destino`, `cat_favicon`, `cat_analitica`, `cat_ruta_sitio`, `cat_dominio`, `cat_activar`) VALUES
(1,	'Portada',	'',	'portada',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	1,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(2,	'Opinión',	'',	'op',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	2,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(3,	'Política',	'',	'pol',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	3,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(4,	'Nacional',	'',	'nacional',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	4,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(5,	'Deportes',	'',	'deportes',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	5,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(6,	'Santa Cruz',	'',	'santa-cruz',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	6,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(7,	'Encuentro',	'',	'encuentro',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	7,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(8,	'Portafolio',	'',	'portafolio',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	8,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(9,	'Internacional',	'',	'internacional',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	22,	1,	1,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(10,	'Al Cierre',	'',	'al-cierre',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	22,	1,	10,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(11,	'Especiales',	'',	'especiales',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	22,	1,	11,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(12,	'+Vida',	'',	'vida',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	22,	1,	12,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(13,	'10+Interesantes',	'',	'10interesantes',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	22,	1,	13,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(14,	'Suscripción',	'',	'suscripcin',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	16,	'0',	'',	'_self',	'',	'',	'',	'',	0),
(15,	'Publicaciones',	'',	'publicaciones',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	14,	'0',	'',	'_self',	'',	'',	'',	'',	0),
(16,	'Portadas',	'',	'portadas',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	15,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(17,	'Portada Encuentro',	'',	'portada-encuentro',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	15,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(18,	'Portadas Deportes',	'',	'portadas-deportes',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	15,	1,	0,	'0',	'',	'_self',	'',	'',	'',	'',	1),
(19,	'Trending',	'',	'trending',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	1,	'0',	'',	'_self',	'',	'',	'',	'',	0),
(20,	'Magazine',	'',	'magazine',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	1,	'0',	'',	'_self',	'',	'',	'',	'',	0),
(21,	'Destacados',	'',	'destacados',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	1,	'0',	'',	'_self',	'',	'',	'',	'',	0),
(22,	'Más',	'',	'ms',	'',	'',	'#ffffff',	'',	'',	'',	'',	'',	0,	1,	10,	'0',	'',	'_self',	'',	'',	'',	'',	1);

DROP TABLE IF EXISTS `comentario`;
CREATE TABLE `comentario` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_texto` text CHARACTER SET latin1 NOT NULL,
  `com_usuario` int(11) NOT NULL,
  `com_fecha` datetime NOT NULL,
  `com_activar` int(11) NOT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `comentario` (`com_id`, `com_texto`, `com_usuario`, `com_fecha`, `com_activar`) VALUES
(1,	'hola mundo',	1,	'2016-08-11 00:08:47',	1),
(2,	'ya tenemos  la base de comentarios :D',	1,	'2016-08-11 00:08:33',	1);

DROP TABLE IF EXISTS `configuracion`;
CREATE TABLE `configuracion` (
  `conf_nombre_sitio` varchar(255) CHARACTER SET utf8 NOT NULL,
  `conf_imagen` varchar(255) CHARACTER SET utf8 NOT NULL,
  `conf_favicon` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `conf_script_head` text CHARACTER SET utf8 NOT NULL,
  `conf_script_footer` text CHARACTER SET utf8 NOT NULL,
  `conf_meta` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`conf_nombre_sitio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `configuracion` (`conf_nombre_sitio`, `conf_imagen`, `conf_favicon`, `conf_script_head`, `conf_script_footer`, `conf_meta`) VALUES
('El día, diario digital, Noticias de Bolivia',	'images/logo-eldia-o.svg',	'images/favicon.png',	'',	'',	'modulos/meta.pub.php');

DROP TABLE IF EXISTS `contenedor`;
CREATE TABLE `contenedor` (
  `cont_id` int(11) NOT NULL AUTO_INCREMENT,
  `cont_nombre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cont_clase` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cont_css` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cont_codigos` text CHARACTER SET utf8 NOT NULL,
  `cont_id_padre` int(11) NOT NULL,
  `cont_orden` int(11) NOT NULL DEFAULT '1',
  `cont_activar` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cont_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `contenedor` (`cont_id`, `cont_nombre`, `cont_clase`, `cont_css`, `cont_codigos`, `cont_id_padre`, `cont_orden`, `cont_activar`) VALUES
(1,	'diagrama_general',	'',	'',	'',	0,	1,	1),
(2,	'diagrama_2',	'clase',	'css',	'codigos',	0,	2,	1),
(4,	'bloque-pie',	'bloque-pie',	'',	'',	1,	3,	1),
(5,	'bloque-cuerpo',	'bloque-cuerpo',	'',	'',	1,	2,	1),
(6,	'bloque-cabecera',	'bloque-cabecera',	'',	'',	1,	1,	1),
(7,	'bloque-cuerpo-header',	'bloque-cuerpo-header container',	'',	'',	5,	1,	1),
(8,	'bloque-cuerpo-left',	'bloque-cuerpo-left',	'',	'',	5,	2,	1),
(9,	'bloque-cuerpo-sidebar-left',	'bloque-cuerpo-sidebar-left',	'',	'',	5,	3,	1);

DROP TABLE IF EXISTS `contenedor_plantilla`;
CREATE TABLE `contenedor_plantilla` (
  `contenedor_cont_id` int(11) NOT NULL,
  `plantilla_pla_id` int(11) NOT NULL,
  PRIMARY KEY (`contenedor_cont_id`,`plantilla_pla_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `contenedor_plantilla` (`contenedor_cont_id`, `plantilla_pla_id`) VALUES
(1,	1),
(1,	2),
(1,	3);

DROP TABLE IF EXISTS `contenido`;
CREATE TABLE `contenido` (
  `conte_id` int(11) NOT NULL AUTO_INCREMENT,
  `conte_titulo` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_ruta_amigable` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_subtitulo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_cuerpo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_foto` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_fecha` datetime NOT NULL,
  `conte_id_usuario` int(11) NOT NULL,
  `conte_tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `conte_id_dominio` int(11) NOT NULL,
  `conte_activar` int(1) NOT NULL,
  PRIMARY KEY (`conte_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `contenido_categorias`;
CREATE TABLE `contenido_categorias` (
  `conte_cat_conte_id` int(11) NOT NULL,
  `conte_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`conte_cat_conte_id`,`conte_cat_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `contenido_documentos`;
CREATE TABLE `contenido_documentos` (
  `conte_doc_conte_id` int(11) NOT NULL,
  `conte_doc_doc_id` int(11) NOT NULL,
  PRIMARY KEY (`conte_doc_conte_id`,`conte_doc_doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `cron_jobs`;
CREATE TABLE `cron_jobs` (
  `cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `cron_fecha` datetime NOT NULL,
  `cron_total` int(11) NOT NULL,
  `cron_num` int(11) NOT NULL,
  `cron_accion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cron_id_accion` int(11) NOT NULL,
  `cron_estado` int(1) NOT NULL,
  PRIMARY KEY (`cron_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `cuenta`;
CREATE TABLE `cuenta` (
  `cuenta_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_tipo` int(11) NOT NULL,
  PRIMARY KEY (`cuenta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `documento`;
CREATE TABLE `documento` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `doc_activar` int(11) NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `documento` (`doc_id`, `doc_nombre`, `doc_ruta_amigable`, `doc_descripcion`, `doc_url`, `doc_imagen`, `doc_tipo_archivo`, `doc_tamano`, `doc_tags`, `doc_fecha`, `doc_usuario`, `doc_id_dominio`, `doc_orden`, `doc_activar`) VALUES
(1,	'10-al-16-de-octubre-2016',	'',	'',	'archivos/docs/10-al-16-de-octubre-2016.xls',	'',	'xls',	'397 bytes',	'',	'2016-10-25',	1,	0,	0,	1),
(2,	'comparacion de pulverizadoras',	'comparacion-de-pulverizadoras.xlsx',	'',	'archivos/docs/comparacion-de-pulverizadoras.xlsx',	'',	'xlsx',	'3 MB',	'',	'2016-10-25',	1,	0,	0,	1),
(3,	'10-al-16-de-octubre-2016 (1)',	'10-al-16-de-octubre-2016-1.xls',	'',	'archivos/docs/10-al-16-de-octubre-2016-1.xls',	'',	'xls',	'397 bytes',	'',	'2016-10-25',	1,	0,	0,	1),
(4,	'10-al-16-de-octubre-2016 (1)',	'10-al-16-de-octubre-2016-1.xls',	'',	'archivos/docs/10-al-16-de-octubre-2016-1.xls',	'',	'xls',	'397 bytes',	'',	'2016-10-25',	1,	0,	0,	1);

DROP TABLE IF EXISTS `documento_categorias`;
CREATE TABLE `documento_categorias` (
  `doc_cat_doc_id` int(11) NOT NULL,
  `doc_cat_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_nombre` varchar(255) NOT NULL,
  `emp_descripcion` varchar(255) NOT NULL,
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
  `emp_activar` int(11) NOT NULL,
  `emp_nombre_contacto` varchar(150) NOT NULL,
  `emp_telefono_contacto` varchar(50) NOT NULL,
  `emp_email_contacto` varchar(255) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `empresa_categorias`;
CREATE TABLE `empresa_categorias` (
  `emp_cat_emp_id` int(11) NOT NULL,
  `emp_cat_cat_id` int(11) NOT NULL,
  `emp_cat_orden` int(11) NOT NULL,
  PRIMARY KEY (`emp_cat_emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `empresa_tipos`;
CREATE TABLE `empresa_tipos` (
  `emp_tip_emp_id` int(11) NOT NULL,
  `emp_tip_tip_id` int(11) NOT NULL,
  `emp_tip_orden` int(11) NOT NULL,
  PRIMARY KEY (`emp_tip_emp_id`,`emp_tip_tip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `enlace`;
CREATE TABLE `enlace` (
  `enl_id` int(11) NOT NULL AUTO_INCREMENT,
  `enl_nombre` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_target` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_imagen` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_clases` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enl_activar` int(11) NOT NULL,
  `enl_papelera` int(11) NOT NULL,
  PRIMARY KEY (`enl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `enlace_categorias`;
CREATE TABLE `enlace_categorias` (
  `enl_cat_enl_id` int(11) NOT NULL,
  `enl_cat_cat_id` int(11) NOT NULL,
  `enl_cat_orden` int(11) NOT NULL,
  PRIMARY KEY (`enl_cat_enl_id`,`enl_cat_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `enlace_grupo_usuarios`;
CREATE TABLE `enlace_grupo_usuarios` (
  `enl_grp_us_enl_id` int(11) NOT NULL,
  `enl_grp_us_grp_us_id` int(11) NOT NULL,
  `enl_grp_us_orden` int(11) NOT NULL,
  PRIMARY KEY (`enl_grp_us_enl_id`,`enl_grp_us_grp_us_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `enlace_publicaciones`;
CREATE TABLE `enlace_publicaciones` (
  `enl_pub_enl_id` int(11) NOT NULL,
  `enl_pub_pub_id` int(11) NOT NULL,
  `enl_pub_orden` int(11) NOT NULL,
  PRIMARY KEY (`enl_pub_enl_id`,`enl_pub_pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `evento`;
CREATE TABLE `evento` (
  `eve_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `eve_id_dominio` int(11) NOT NULL,
  PRIMARY KEY (`eve_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `evento_calendarios`;
CREATE TABLE `evento_calendarios` (
  `eve_cal_eve_id` int(11) NOT NULL,
  `eve_cal_cal_id` int(11) NOT NULL,
  PRIMARY KEY (`eve_cal_eve_id`,`eve_cal_cal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `evento_grupos`;
CREATE TABLE `evento_grupos` (
  `eve_grp_id_eve` int(11) NOT NULL,
  `eve_grp_id_grp` int(11) NOT NULL,
  PRIMARY KEY (`eve_grp_id_eve`,`eve_grp_id_grp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `evento_roles`;
CREATE TABLE `evento_roles` (
  `eve_rol_id_eve` int(11) NOT NULL,
  `eve_rol_id_rol` int(11) NOT NULL,
  PRIMARY KEY (`eve_rol_id_eve`,`eve_rol_id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `grupo`;
CREATE TABLE `grupo` (
  `grupo_id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo_nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grupo_detalle` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grupo_funciones` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grupo_activar` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`grupo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `modulo`;
CREATE TABLE `modulo` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `mod_activar` int(11) NOT NULL COMMENT '0 - no publicado1 - publicado',
  PRIMARY KEY (`mod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `modulo` (`mod_id`, `mod_nombre`, `mod_descripcion`, `mod_ruta_amigable`, `mod_bd`, `mod_bd_prefijo`, `mod_bd_relaciones`, `mod_url`, `mod_icono`, `mod_color`, `mod_tipo`, `mod_id_padre`, `mod_activar`) VALUES
(1,	'Sistemas',	'',	'sistemas',	'sistema',	'sis_',	'sistema_modulos:sis_mod_sis_id',	'modulos/sistemas/sistemas.adm.php',	'icn-system',	'#191B1C',	2,	0,	1),
(2,	'Modulos',	'',	'modulos',	'modulo',	'mod_',	'modulo_categorias:mod_cat_mod_id,sistema_modulos:sis_mod_mod_id',	'modulos/modulos/modulos.adm.php',	'icn-box',	'#99C14C',	2,	1,	1),
(3,	'Aplicaciones',	'',	'aplicaciones',	'aplicacion',	'app_',	'',	'modulos/aplicaciones/apps.adm.php',	'icn-apps',	'#f39333',	2,	0,	1),
(4,	'Usuarios',	'',	'usuarios',	'usuario',	'usu_',	'usuario_grupos:usu_grupo_usu_id,usuario_roles:usu_rol_usu_id',	'modulos/usuarios/usuarios.adm.php',	'icn-users',	'#0076ff',	2,	0,	1),
(5,	'Estructura',	'',	'estructura',	'categoria',	'cat_',	'',	'modulos/categorias/categorias.adm.php',	'icn-category color-text-violeta-a',	'#806aad',	2,	0,	1),
(6,	'Estructura-Contenidos',	'',	'estructura-contenidos',	'contenedor',	'cont_',	'contenedor_plantilla:contenedor_cont_id',	'modulos/categorias/contenedor.adm.php',	'icn-block-page',	'#806aad',	2,	5,	1),
(7,	'Sitios',	'',	'sitios',	'sitios',	'sitios_',	'',	'modulos/sitios/sitios.adm.php',	'icn-boxs',	'#2d9ee0',	2,	0,	1),
(8,	'Contenedores',	'',	'contenedores',	'contenedor',	'cont_',	'contenedor_plantilla:contenedor_cont_id',	'modulos/config/contenedores.adm.php',	' icn-block-page',	'#0076ff',	2,	13,	1),
(9,	'Publicaciones',	'',	'publicaciones',	'publicacion',	'pub_',	'publicacion_rel:pub_rel_pub_id',	'modulos/config/publicaciones.adm.php',	'icn-rocket',	'#e71882',	2,	13,	1),
(10,	'Plantillas',	'',	'plantillas',	'plantilla',	'pla_',	'',	'modulos/config/plantilas.adm.php',	'icn-level-page',	'#8a7354',	2,	13,	1),
(11,	'Roles',	'',	'roles',	'rol',	'rol_',	'sitio_roles:sitio_rol_rol_id,usuario_roles:usu_rol_rol_id,sistema_roles:sis_rol_rol_id,modulo_roles:mod_rol_rol_id,rol_categorias:rol_cat_rol_id',	'modulos/usuarios/roles.adm.php',	'icn icn-credential',	'#8b3b8f',	2,	4,	1),
(12,	'Grupos',	'',	'grupos',	'grupos',	'grupo_',	'',	'modulos/usuarios/grupos.adm.php',	'icn icn-group',	'#eb5c43',	2,	4,	1),
(13,	'Configuración General',	'',	'configuracion-sites',	'configuracion',	'config_',	'',	'modulos/config/config.adm.php',	'icn-conf color-text-rojo',	'#e71882',	2,	0,	1),
(50,	'Multimedia',	'',	'multimedia',	'multimedia',	'mul_',	'multimedia_categorias:mul_cat_mul_id',	'modulos/multimedia/multimedia.adm.php',	'icn-media color-text-rojo-b',	'#E83759',	0,	0,	1),
(51,	'Slides',	'',	'slides',	'slide',	'sli_',	'slide_categoria:sli_cat_sli_id',	'modulos/multimedia/slide.adm.php',	'icn-slide',	'#c2b4d9',	0,	0,	1),
(60,	'Notas',	'Modulo informativo, para sitios e intranet',	'notas',	'nota',	'not_',	'nota_categorias:not_cat_not_id,nota_multimedia:not_mul_not_id,nota_valores:not_val_not_id,nota_comentarios:not_com_not_id',	'modulos/notas/notas.adm.php',	'icn-newspaper color-text-naranja-a',	'#2d9ee0',	0,	0,	1),
(61,	'Configuración',	'',	'config-noticias',	'',	'',	'',	'modulos/noticias/noticias-config.adm.php',	'icn-conf ',	'#eb5c43',	1,	51,	1),
(70,	'Contenidos',	'',	'contenidos',	'contenidos',	'conte_',	'contenidos_categorias:conte_cat_conte_id,contenidos_documento:conte_doc_conte_id',	'modulos/contenidos/contenidos.adm.php',	'icn-content',	'#00bdc6',	0,	0,	1),
(80,	'Documentos',	'',	'documentos',	'documento',	'doc_',	'documento_categoria:doc_cat_doc_id',	'modulos/documentos/documentos.adm.php',	'icn-folder',	'#00bdc6',	0,	0,	1),
(90,	'Calendarios',	'',	'calendarios',	'calendario',	'cal_',	'calendario_categoria:cal_cat_cal_id, calendario_grupo:cal_grp_cal_id',	'modulos/calendarios/calendario.adm.php',	'icn-calendar',	'#e83759',	0,	0,	1),
(91,	'Eventos',	'',	'',	'eventos_',	'eve_',	'',	'modulos/eventos/evento.adm.php',	'icn-calendar-ok',	'#eb5c43',	0,	0,	1),
(100,	'Enlaces',	'',	'enlaces',	'enlaces',	'enl_',	'enlaces_categorias:enl_cat_enl_id,enlaces_grupo_usuario:enl_grup_usu_enl_id,enlaces_publicaciones:enl_pub_enl_id',	'modulos/',	'icn-link',	'#806aad',	0,	0,	1),
(150,	'Productos',	'',	'productos',	'mod_productos',	'mod_prod_',	'mod_productos_mul:mod_pro_mul_id_prod,mod_productos_pestana:mod_pro_pes_pro_id,mod_productos_rel:mod_prod_rel_prod_id',	'modulos/productos/productos.adm.php',	'icn-box-o ',	'#2d9ee0',	0,	0,	1),
(151,	'Catalogo interno ',	'',	'catalogo-interno',	'',	'',	'',	'modulos/productos/catalogo.adm.php',	'icn icn-catalog',	'#f39333',	0,	0,	1),
(152,	'Configuración Catálogo ',	'',	'config-catalogo',	'mod_productos_catalogos',	'mod_prod_catg_',	'',	'modulos/productos/config-catalogo.adm.php',	'icn-conf',	'#e71882',	0,	151,	1),
(153,	'Marcas',	'',	'marcas',	'mod_marcas',	'mod_mar_',	'mod_marcas_categorias:mod_mar_mar_id,mod_marcas_productos:mod_mar_mar_id',	'modulos/marcas/marcas.adm.php',	'icn-marca',	'#24aa5b',	0,	10,	1),
(154,	'Sucursales',	'',	'sucursales',	'mod_sucursales',	'mod_suc_',	'',	'modulos/productos/sucursales.adm.php',	'icn-shop',	'#e71882',	1,	0,	1),
(155,	'Configuración',	'E-commerse',	'configuracion-ec',	'',	'',	'',	'modulos/productos/config-ec.adm.php',	'icn icn-conf',	'#8b3b8f',	1,	150,	1),
(200,	'Empresas',	'',	'',	'empresa',	'emp_',	'empresa_categoria:emp_cat_emp_id',	'modulos/adm/empresas.adm.php',	'icn-apartament',	'#0076ff',	0,	0,	1),
(210,	'Solicitud de Permiso Fuera de oficina',	'',	'solicitud-permiso-fuera-oficina',	'',	'',	'',	'modulos/solicitud_permiso/solicitud_permiso.adm.php',	'icn-order-ok',	'#c2975c',	0,	0,	1),
(220,	'Kardex',	'',	'karex',	'mod_kardex',	'mod_krk_',	'',	'modulos/rrhh/kardex.adm.php',	'icn-kardex',	'#806aad',	0,	0,	1),
(250,	'Inventario',	'',	'',	'mod_inventario',	'mod_inv_',	'',	'modulos/rrhh/inventario.adm.php',	'icn-inventary',	'#333333',	0,	0,	1),
(255,	'Pedidos almacen',	'Cafeteria y Papeleria',	'',	'mod_pedidos',	'mod_ped_',	'',	'modulos/rrhh/pedido.adm.php',	'icn-order ',	'#00bdc6',	0,	0,	1),
(270,	'Configuración',	'Logistica',	'config-logistica',	'',	'',	'',	'modulos/logistica/config-logistica.adm.php',	'icn icn-conf',	'#33aadd',	1,	0,	1),
(271,	'Registro de transporte',	'Logistica',	'registro-transporte',	'',	'',	'',	'modulos/logistica/registro-transporte.adm.php',	'icn icn-truck-register',	'#00bdc6',	0,	0,	1),
(272,	'Zonas de distribución',	'',	'zonas-distribucion',	'',	'',	'',	'modulos/logistica/zonas-distribucion.adm.php',	'icn icn-zone',	'#f39333',	0,	0,	1),
(273,	'Pedidos e-commerce',	'E-commerce',	'pedidos-ec',	'mod_pedidos_clientes',	'mod_ped_cli_',	'mod_pedidos_productos:mod_ped_prod_ped_id',	'modulos/logistica/pedidos-ec.adm.php',	'icn icn-cart-go',	'#eb5c43',	0,	0,	1),
(300,	'Clientes',	'CRM, marketing',	'clientes',	'mod_clientes',	'mod_cli_',	'',	'modulos/crm/clientes.adm.php',	'icn icn-clients',	'#33aadd',	0,	0,	1);

DROP TABLE IF EXISTS `modulo_categorias`;
CREATE TABLE `modulo_categorias` (
  `mod_cat_mod_id` int(11) NOT NULL,
  `mod_cat_cat_id` int(11) NOT NULL,
  `mod_cat_orden` int(11) NOT NULL,
  PRIMARY KEY (`mod_cat_mod_id`,`mod_cat_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `modulo_categorias` (`mod_cat_mod_id`, `mod_cat_cat_id`, `mod_cat_orden`) VALUES
(22,	32,	0),
(27,	2,	0),
(27,	3,	0),
(27,	4,	0),
(27,	85,	0),
(27,	89,	0),
(27,	97,	0),
(27,	104,	0);

DROP TABLE IF EXISTS `modulo_roles`;
CREATE TABLE `modulo_roles` (
  `mod_rol_mod_id` int(11) NOT NULL,
  `mod_rol_rol_id` int(11) NOT NULL,
  `mod_rol_permisos` varchar(20) NOT NULL DEFAULT '0,0,0,0,0',
  PRIMARY KEY (`mod_rol_mod_id`,`mod_rol_rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `modulo_roles` (`mod_rol_mod_id`, `mod_rol_rol_id`, `mod_rol_permisos`) VALUES
(50,	2,	'1,1,1,1,1'),
(50,	3,	'0,1,1,1,1'),
(50,	4,	'1,1,1,1,1'),
(51,	2,	'0,0,0,0,0'),
(60,	2,	'1,1,1,1,1'),
(60,	3,	'0,1,1,1,1'),
(60,	4,	'1,1,1,1,1'),
(70,	2,	'0,0,0,0,0'),
(80,	2,	'0,0,0,0,0'),
(100,	2,	'0,0,0,0,0'),
(100,	4,	'1,1,1,1,1');

DROP TABLE IF EXISTS `mod_almacen`;
CREATE TABLE `mod_almacen` (
  `alm_id` int(11) NOT NULL AUTO_INCREMENT,
  `alm_nombre` varchar(255) NOT NULL,
  `alm_descripcion` varchar(255) NOT NULL,
  `alm_cant_min` int(11) NOT NULL,
  `alm_imagen` varchar(255) NOT NULL,
  `alm_costo_unit` float NOT NULL,
  `alm_activar` int(11) NOT NULL,
  `alm_usuario` int(11) NOT NULL,
  `alm_id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`alm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_almacen_categorias`;
CREATE TABLE `mod_almacen_categorias` (
  `cat_alm_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_alm_nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cat_alm_descripcion` varchar(250) CHARACTER SET latin1 NOT NULL,
  `cat_alm_activar` int(11) NOT NULL,
  `cat_alm_id_padre` int(11) NOT NULL,
  `cat_alm_usuario` int(11) NOT NULL,
  `cat_alm_orden` int(11) NOT NULL,
  PRIMARY KEY (`cat_alm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_catalogo`;
CREATE TABLE `mod_catalogo` (
  `mod_catg_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_catg_nombre` varchar(100) NOT NULL,
  `mod_catg_descripcion` text NOT NULL,
  `mod_catg_ruta_amigable` varchar(150) NOT NULL,
  `mod_catg_orden` int(11) NOT NULL,
  `mod_catg_id_padre` int(11) NOT NULL DEFAULT '0',
  `mod_catg_id_empresa` int(11) NOT NULL,
  `mod_catg_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_catg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_catalogo_categorias`;
CREATE TABLE `mod_catalogo_categorias` (
  `mod_catg_cat_catg_id` int(11) NOT NULL,
  `mod_catg_cat_cat_id` int(11) NOT NULL,
  PRIMARY KEY (`mod_catg_cat_catg_id`,`mod_catg_cat_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_catalogo_roles`;
CREATE TABLE `mod_catalogo_roles` (
  `mod_catg_rol_catg_id` int(11) NOT NULL,
  `mod_catg_rol_rol_id` int(11) NOT NULL,
  PRIMARY KEY (`mod_catg_rol_catg_id`,`mod_catg_rol_rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_cats`;
CREATE TABLE `mod_cats` (
  `cts_id` int(11) NOT NULL AUTO_INCREMENT,
  `cts_nombre` varchar(50) NOT NULL,
  `cts_email` varchar(150) NOT NULL,
  `cts_encargado` varchar(150) NOT NULL,
  `cts_zona` varchar(20) NOT NULL,
  `cts_direccion` varchar(255) NOT NULL,
  `cts_telefono` varchar(20) NOT NULL,
  `cts_celular` varchar(20) NOT NULL,
  `cts_activar` int(11) NOT NULL,
  `cts_id_usuario` int(11) NOT NULL,
  `cts_id_roles` int(11) NOT NULL,
  PRIMARY KEY (`cts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_clientes`;
CREATE TABLE `mod_clientes` (
  `mod_cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_cli_nombre` varchar(150) NOT NULL,
  `mod_cli_email` varchar(150) NOT NULL,
  `mod_cli_telefono` varchar(50) NOT NULL,
  `mod_cli_nit` varchar(50) NOT NULL,
  `mod_cli_razon_social` varchar(100) NOT NULL,
  `mod_cli_id_facebook` varchar(50) NOT NULL,
  `mod_cli_foto_facebook` varchar(255) NOT NULL,
  `mod_cli_password` varchar(50) NOT NULL,
  `mod_cli_estado` int(11) NOT NULL,
  `mod_cli_fecha_ingreso` datetime NOT NULL,
  PRIMARY KEY (`mod_cli_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_clientes_estados`;
CREATE TABLE `mod_clientes_estados` (
  `mod_cli_est_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_cli_est_nombre` varchar(100) NOT NULL,
  `mod_cli_est_descripcion` tinytext NOT NULL,
  `mod_cli_est_icon` varchar(200) NOT NULL,
  `mod_cli_est_color` varchar(200) NOT NULL,
  `mod_cli_esta_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_cli_est_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_kardex`;
CREATE TABLE `mod_kardex` (
  `mod_kdx_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `mod_kdx_papelera` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_kardex_bancos`;
CREATE TABLE `mod_kardex_bancos` (
  `mod_kdx_bnc_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_bnc_nombre` int(11) NOT NULL,
  `mod_kdx_bnc_nro_cuenta` varchar(150) NOT NULL,
  `mod_kdx_bnc_moneda` int(11) NOT NULL,
  `mod_kdx_bnc_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_bnc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_cargo`;
CREATE TABLE `mod_kardex_cargo` (
  `mod_kdx_car_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_car_nombre` varchar(50) NOT NULL,
  `mod_kdx_car_descripcion` varchar(255) NOT NULL,
  `mod_kdx_car_atribuciones` varchar(255) NOT NULL,
  `mod_kdx_car_responsabilidades` varchar(255) NOT NULL,
  `mod_kdx_car_dependiente` int(11) NOT NULL,
  `mod_kdx_car_ascendencia` int(11) NOT NULL,
  `mod_kdx_car_destrezas` varchar(255) NOT NULL,
  `mod_kdx_car_lugar_de_trabajo` varchar(255) NOT NULL,
  `mod_kdx_car_requisitos` varchar(255) NOT NULL,
  `mod_kdx_car_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `mod_kardex_cargo` (`mod_kdx_car_id`, `mod_kdx_car_nombre`, `mod_kdx_car_descripcion`, `mod_kdx_car_atribuciones`, `mod_kdx_car_responsabilidades`, `mod_kdx_car_dependiente`, `mod_kdx_car_ascendencia`, `mod_kdx_car_destrezas`, `mod_kdx_car_lugar_de_trabajo`, `mod_kdx_car_requisitos`, `mod_kdx_car_activar`) VALUES
(1,	'Gerente General',	'descripción',	'atr',	'res',	0,	0,	'des',	'Local',	'req',	1);

DROP TABLE IF EXISTS `mod_kardex_departamento`;
CREATE TABLE `mod_kardex_departamento` (
  `mod_kdx_dep_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_dep_nombre` varchar(255) NOT NULL,
  `mod_kdx_dep_descripcion` text NOT NULL,
  `mod_kdx_dep_id_padre` int(11) NOT NULL,
  `mod_kdx_dep_orden` int(11) NOT NULL,
  `mod_kdx_dep_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `mod_kardex_departamento` (`mod_kdx_dep_id`, `mod_kdx_dep_nombre`, `mod_kdx_dep_descripcion`, `mod_kdx_dep_id_padre`, `mod_kdx_dep_orden`, `mod_kdx_dep_activar`) VALUES
(1,	'Gerente General',	'descripción',	0,	0,	1),
(2,	'Finanzas',	'',	1,	1,	1);

DROP TABLE IF EXISTS `mod_kardex_division`;
CREATE TABLE `mod_kardex_division` (
  `mod_kdx_div_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_div_nombre` varchar(255) NOT NULL,
  `mod_kdx_div_descripcion` text NOT NULL,
  `mod_kdx_div_activar` int(1) NOT NULL,
  PRIMARY KEY (`mod_kdx_div_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `mod_kardex_division` (`mod_kdx_div_id`, `mod_kdx_div_nombre`, `mod_kdx_div_descripcion`, `mod_kdx_div_activar`) VALUES
(1,	'División Agrícola',	'descripción',	1);

DROP TABLE IF EXISTS `mod_kardex_empresa`;
CREATE TABLE `mod_kardex_empresa` (
  `mod_kdx_emp_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `mod_kdx_emp_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `mod_kardex_empresa` (`mod_kdx_emp_id`, `mod_kdx_emp_nombre`, `mod_kdx_emp_descripcion`, `mod_kdx_emp_logo`, `mod_kdx_emp_razon_social`, `mod_kdx_emp_nit`, `mod_kdx_emp_direccion`, `mod_kdx_emp_coordenadas`, `mod_kdx_emp_rubro`, `mod_kdx_emp_email`, `mod_kdx_emp_web`, `mod_kdx_emp_activar`) VALUES
(1,	'Landicorp S.A.',	'',	'',	'Landicorp S.A.',	'',	'',	'',	'',	'',	'',	1);

DROP TABLE IF EXISTS `mod_kardex_formacion`;
CREATE TABLE `mod_kardex_formacion` (
  `mod_kdx_frm_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_frm_nombre` varchar(255) NOT NULL,
  `mod_kdx_frm_institucion` varchar(150) NOT NULL,
  `mod_kdx_frm_fecha` varchar(150) NOT NULL,
  `mod_kdx_frm_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_frm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_hijos`;
CREATE TABLE `mod_kardex_hijos` (
  `mod_kdx_hj_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_hj_nombre` varchar(255) NOT NULL,
  `mod_kdx_hj_inst_educativa` varchar(255) NOT NULL,
  `mod_kdx_hj_fecha_nac` date NOT NULL,
  `mod_kdx_hj_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_hj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_historial_corporativo`;
CREATE TABLE `mod_kardex_historial_corporativo` (
  `mod_kdx_his_corp_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_his_corp_empresa` int(11) NOT NULL,
  `mod_kdx_his_corp_fecha_ingreso` date NOT NULL,
  `mod_kdx_his_corp_fecha_salida` date NOT NULL,
  `mod_kdx_his_corp_cargo` int(11) NOT NULL,
  `mod_kdx_his_corp_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_his_corp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_manual_funciones`;
CREATE TABLE `mod_kardex_manual_funciones` (
  `mod_kdx_mf_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_mf_nombre` varchar(50) NOT NULL,
  `mod_kdx_mf_descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`mod_kdx_mf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_referencias`;
CREATE TABLE `mod_kardex_referencias` (
  `mod_kardex_ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kardex_ref_nombre` varchar(150) NOT NULL,
  `mod_kardex_ref_telefono` varchar(50) NOT NULL,
  `mod_kardex_ref_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kardex_ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_kardex_ref_emergencia`;
CREATE TABLE `mod_kardex_ref_emergencia` (
  `mod_kdx_ref_emg_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_kdx_ref_emg_nombre` varchar(255) NOT NULL,
  `mod_kdx_ref_emg_parentesco` varchar(50) NOT NULL,
  `mod_kdx_ref_emg_telefono` varchar(50) NOT NULL,
  `mod_kdx_ref_emg_id_kardex` int(11) NOT NULL,
  PRIMARY KEY (`mod_kdx_ref_emg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_marcas`;
CREATE TABLE `mod_marcas` (
  `mod_mar_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_mar_nombre` varchar(255) NOT NULL,
  `mod_mar_ruta_amigable` varchar(255) NOT NULL,
  `mod_mar_imagen` varchar(255) NOT NULL,
  `mod_mar_usuario` int(11) NOT NULL,
  `mod_mar_detalle` text NOT NULL,
  `mod_mar_id_dominio` int(11) NOT NULL,
  `mod_mar_activar` int(1) NOT NULL,
  PRIMARY KEY (`mod_mar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_marcas_categorias`;
CREATE TABLE `mod_marcas_categorias` (
  `mod_mar_cat_id` int(11) NOT NULL,
  `mod_mar_mar_id` int(11) NOT NULL,
  `mod_mar_cat_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_marcas_productos`;
CREATE TABLE `mod_marcas_productos` (
  `mod_mar_prod_id` int(11) NOT NULL,
  `mod_mar_mar_id` int(11) NOT NULL,
  `mod_mar_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_pedidos`;
CREATE TABLE `mod_pedidos` (
  `mod_ped_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ped_costo` varchar(50) NOT NULL,
  `mod_ped_fecha_registro` datetime NOT NULL,
  `mod_ped_fecha_aprobacion` datetime NOT NULL,
  `mod_ped_fecha_entrega` datetime NOT NULL,
  `mod_ped_id_cats` int(11) NOT NULL,
  `mod_ped_id_usuario` int(11) NOT NULL,
  `mod_ped_estado` int(11) NOT NULL COMMENT '0-Pendiente; 1-Aprobado; 2-Cancelado; 3:Entregado',
  PRIMARY KEY (`mod_ped_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_pedidos_almacen`;
CREATE TABLE `mod_pedidos_almacen` (
  `mod_ped_alm_id_pedido` int(11) NOT NULL,
  `mod_ped_alm_id_almacen` int(11) NOT NULL,
  `mod_ped_alm_cantidad` int(11) NOT NULL,
  `mod_ped_alm_unidad` varchar(50) NOT NULL,
  `mod_ped_alm_observaciones` varchar(255) NOT NULL,
  PRIMARY KEY (`mod_ped_alm_id_pedido`,`mod_ped_alm_id_almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_pedidos_cats`;
CREATE TABLE `mod_pedidos_cats` (
  `mod_ped_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ped_costo` varchar(50) NOT NULL,
  `mod_ped_fecha_registro` datetime NOT NULL,
  `mod_ped_fecha_aprobacion` datetime NOT NULL,
  `mod_ped_fecha_entrega` datetime NOT NULL,
  `mod_ped_id_cats` int(11) NOT NULL,
  `mod_ped_id_usuario` int(11) NOT NULL,
  `mod_ped_estado` int(11) NOT NULL COMMENT '0-Pendiente; 1-Aprobado; 2-Cancelado; 3:Entregado',
  PRIMARY KEY (`mod_ped_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_pedidos_clientes`;
CREATE TABLE `mod_pedidos_clientes` (
  `mod_ped_cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ped_cli_id_cli` int(11) NOT NULL,
  `mod_ped_cli_tipo` int(11) NOT NULL,
  `mod_ped_cli_sucursal` int(11) NOT NULL,
  `mod_ped_cli_nro` int(11) NOT NULL,
  `mod_ped_cli_fecha_registro` datetime NOT NULL,
  `mod_ped_cli_fecha_aprovacion` datetime NOT NULL,
  `mod_ped_cli_fecha_entrega` datetime NOT NULL,
  `mod_ped_cli_estado` int(11) NOT NULL,
  PRIMARY KEY (`mod_ped_cli_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_pedidos_estados`;
CREATE TABLE `mod_pedidos_estados` (
  `mod_ped_est_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ped_est_nombre` varchar(100) NOT NULL,
  `mod_ped_est_descripcion` tinytext NOT NULL,
  `mod_ped_est_icon` varchar(50) NOT NULL,
  `mod_ped_est_color` varchar(11) NOT NULL,
  `mod_ped_accion_email` varchar(11) NOT NULL,
  `mod_ped_accion_email_plantilla` varchar(11) NOT NULL,
  `mod_ped_accion_entrega` varchar(11) NOT NULL,
  `mod_ped_accion_facturacion` varchar(11) NOT NULL,
  `mod_ped_est_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_ped_est_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_pedidos_productos`;
CREATE TABLE `mod_pedidos_productos` (
  `mod_ped_prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ped_prod_ped_id` int(11) NOT NULL,
  `mod_ped_prod_prod_id` int(11) NOT NULL,
  `mod_ped_prod_precio_unidad` int(11) NOT NULL,
  `mod_ped_prod_cantidad` int(11) NOT NULL,
  `mod_ped_prod_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_ped_prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_pedidos_sucursales`;
CREATE TABLE `mod_pedidos_sucursales` (
  `mod_ped_suc_mod_ped_id` int(11) NOT NULL,
  `mod_ped_suc_mod_suc_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_pedidos_tipo`;
CREATE TABLE `mod_pedidos_tipo` (
  `mod_ped_tipo_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_ped_tipo_nombre` varchar(100) NOT NULL,
  `mod_ped_tipo_ruta_amigable` varchar(100) NOT NULL,
  `mod_ped_tipo_descripcion` tinytext NOT NULL,
  `mod_ped_tipo_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_ped_tipo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_pedidos_zonas_distribucion`;
CREATE TABLE `mod_pedidos_zonas_distribucion` (
  `mod_ped_zod_mod_ped_id` int(11) NOT NULL,
  `mod_ped_zod_mod_zod_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_pestana`;
CREATE TABLE `mod_pestana` (
  `mod_pes_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_pes_nombre` varchar(150) NOT NULL,
  `mod_pes_descripcion` varchar(255) NOT NULL,
  `mod_pes_fecha` datetime NOT NULL,
  `mod_pes_usuario` int(11) NOT NULL,
  `mod_pes_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_pes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_plan`;
CREATE TABLE `mod_plan` (
  `mod_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_plan_nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_plan_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `mod_plan_estado` int(11) NOT NULL COMMENT '0 no activo1 activo',
  `mod_plan_nivel` varchar(45) CHARACTER SET ucs2 NOT NULL,
  PRIMARY KEY (`mod_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_productos`;
CREATE TABLE `mod_productos` (
  `mod_prod_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `mod_prod_precio_detalle` varchar(255) NOT NULL,
  PRIMARY KEY (`mod_prod_id`),
  FULLTEXT KEY `busqueda` (`mod_prod_nombre`,`mod_prod_tags`,`mod_prod_detalles`,`mod_prod_especificaciones`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `mod_productos_categorias`;
CREATE TABLE `mod_productos_categorias` (
  `mod_prod_cat_cat_id` int(50) NOT NULL,
  `mod_prod_cat_prod_id` int(50) NOT NULL,
  `mod_prod_cat_orden` int(50) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;


DROP TABLE IF EXISTS `mod_productos_conf`;
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


DROP TABLE IF EXISTS `mod_productos_mul`;
CREATE TABLE `mod_productos_mul` (
  `mod_prod_mul_mul_id` int(11) NOT NULL,
  `mod_prod_mul_prod_id` int(11) NOT NULL,
  `mod_prod_mul_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `mod_productos_pestana`;
CREATE TABLE `mod_productos_pestana` (
  `mod_pro_pes_pro_id` int(11) NOT NULL,
  `mod_pro_pes_pes_id` int(11) NOT NULL,
  `mod_pro_pes_contenido` text NOT NULL,
  `mod_pro_pes_orden` int(11) NOT NULL,
  PRIMARY KEY (`mod_pro_pes_pro_id`,`mod_pro_pes_pes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `mod_productos_pestana` (`mod_pro_pes_pro_id`, `mod_pro_pes_pes_id`, `mod_pro_pes_contenido`, `mod_pro_pes_orden`) VALUES
(311,	2,	'<p>sdfgsdg</p>',	1);

DROP TABLE IF EXISTS `mod_stock`;
CREATE TABLE `mod_stock` (
  `mod_stk_prod` int(11) NOT NULL,
  `mod_stk_suc` int(11) NOT NULL,
  `mod_stk_cantidad` int(11) NOT NULL,
  `mod_stk_fecha` datetime NOT NULL,
  `mod_stk_fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`mod_stk_prod`,`mod_stk_suc`,`mod_stk_fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `mod_stock` (`mod_stk_prod`, `mod_stk_suc`, `mod_stk_cantidad`, `mod_stk_fecha`, `mod_stk_fecha_ingreso`) VALUES
(3175,	1,	65,	'2016-12-14 00:00:00',	'2016-12-14'),
(3174,	1,	71,	'2016-12-14 00:00:00',	'2016-12-14'),
(3175,	5,	10,	'2016-12-17 00:00:00',	'2016-12-17'),
(3175,	5,	5,	'2016-12-17 15:46:07',	'2016-12-17'),
(3174,	5,	10,	'2016-12-17 15:48:00',	'2016-12-17'),
(3176,	5,	10,	'2016-12-17 15:49:04',	'2016-12-17'),
(3177,	5,	10,	'2016-12-17 15:49:17',	'2016-12-17'),
(3174,	5,	50,	'2016-12-20 06:25:01',	'2016-12-20'),
(3180,	1,	197,	'2016-12-20 09:25:18',	'2016-12-20'),
(3181,	1,	180,	'2016-12-20 09:25:37',	'2016-12-20'),
(3182,	1,	170,	'2016-12-20 09:25:57',	'2016-12-20'),
(3183,	1,	0,	'2016-12-20 09:26:21',	'2016-12-20'),
(3176,	1,	0,	'2016-12-20 09:30:03',	'2016-12-20'),
(3179,	1,	0,	'2016-12-20 09:30:25',	'2016-12-20'),
(3186,	1,	123,	'2016-12-20 09:31:40',	'2016-12-20'),
(3176,	1,	0,	'2016-12-20 09:32:33',	'2016-12-20'),
(3185,	1,	125,	'2016-12-20 09:39:08',	'2016-12-20'),
(3177,	1,	96,	'2016-12-20 09:41:57',	'2016-12-20'),
(3184,	1,	113,	'2016-12-20 09:42:17',	'2016-12-20'),
(3178,	1,	73,	'2016-12-20 09:42:43',	'2016-12-20'),
(3180,	4,	549,	'2016-12-20 11:50:58',	'2016-12-20'),
(3181,	4,	651,	'2016-12-20 11:51:17',	'2016-12-20'),
(3182,	4,	269,	'2016-12-20 11:58:04',	'2016-12-20'),
(3183,	4,	0,	'2016-12-20 11:58:23',	'2016-12-20'),
(3174,	4,	46,	'2016-12-20 11:58:45',	'2016-12-20'),
(3179,	4,	0,	'2016-12-20 11:59:03',	'2016-12-20'),
(3175,	4,	39,	'2016-12-20 11:59:19',	'2016-12-20'),
(3186,	4,	173,	'2016-12-20 11:59:37',	'2016-12-20'),
(3176,	4,	0,	'2016-12-20 11:59:54',	'2016-12-20'),
(3185,	4,	44,	'2016-12-20 12:00:08',	'2016-12-20'),
(3177,	4,	60,	'2016-12-20 12:01:21',	'2016-12-20'),
(3184,	4,	15,	'2016-12-20 12:01:48',	'2016-12-20'),
(3178,	4,	107,	'2016-12-20 12:02:15',	'2016-12-20');

DROP TABLE IF EXISTS `mod_sucursales`;
CREATE TABLE `mod_sucursales` (
  `mod_suc_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_suc_nombre` varchar(50) NOT NULL,
  `mod_suc_direccion` varchar(150) NOT NULL,
  `mod_suc_telefono` varchar(100) NOT NULL,
  `mod_suc_coordenadas` varchar(50) NOT NULL,
  `mod_suc_activar` int(11) NOT NULL,
  `mod_suc_correo` varchar(150) NOT NULL,
  PRIMARY KEY (`mod_suc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `mod_sucursales` (`mod_suc_id`, `mod_suc_nombre`, `mod_suc_direccion`, `mod_suc_telefono`, `mod_suc_coordenadas`, `mod_suc_activar`, `mod_suc_correo`) VALUES
(1,	'Sucursal Las Palmas',	'Av. Grigota #885 entre 3er y 4to anillo',	'591 - 3 - 354-4149',	'-17.809727,-63.206155',	1,	'laspalmas@panaderiavictoria.com'),
(2,	'Sucursal Alemana',	'Av. Alemana entre 3er y 4to anillo',	'591 - 3 - 33419677',	'-17.755105,-63.165109',	1,	'alemana@panaderiavictoria.com'),
(3,	'Sucursal Buenos Aires',	'Calle Buenos Aires No. 285',	'591 - 3 - 332-3409 / 591 - 3- 333-4897',	'-17.780973,-63.18546922',	1,	'ventascentral@panaderiavictoria.com'),
(4,	'Sucursal Brasil',	'Av. Brasil y Calle 1',	'591 - 3 - 348-7070',	'-17.785580,-63.15628',	1,	'brasil@panaderiavictoria.com'),
(5,	'Sucursal Prueba',	'Av. Brasil Tercer anillo',	'333333',	'',	1,	'angel11982@gmail.com');

DROP TABLE IF EXISTS `multimedia`;
CREATE TABLE `multimedia` (
  `mul_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `mul_activar` int(11) NOT NULL,
  PRIMARY KEY (`mul_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `multimedia` (`mul_id`, `mul_nombre`, `mul_tags`, `mul_url_archivo`, `mul_ruta_amigable`, `mul_url`, `mul_destino`, `mul_embed`, `mul_tipo_archivo`, `mul_leyenda`, `mul_texto_alternativo`, `mul_descripcion`, `mul_dimension`, `mul_tamano`, `mul_fecha`, `mul_usuario`, `mul_id_dominio`, `mul_activar`) VALUES
(1,	'manosde',	'',	'archivos/multimedia/manosde.jpg',	'manosde.jpg',	'',	'_self',	'',	'jpeg',	'',	'',	'',	'480 x 287',	'99454',	'2017-06-16 13:40:13',	1,	0,	1),
(2,	'prueba 10',	'tags',	'',	'prueba-10',	'',	'_self',	'<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LHkMo9pZkq0\" frameborder=\"0\" allowfullscreen></iframe>',	'embed',	'',	'',	'',	'',	'',	'2017-06-16 14:04:08',	1,	0,	1);

DROP TABLE IF EXISTS `multimedia_categorias`;
CREATE TABLE `multimedia_categorias` (
  `mul_cat_mul_id` int(11) NOT NULL,
  `mul_cat_cat_id` int(11) NOT NULL,
  `mul_cat_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `multimedia_conf`;
CREATE TABLE `multimedia_conf` (
  `mul_conf_cropp` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `nota`;
CREATE TABLE `nota` (
  `not_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `not_lugar` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `not_usuario` int(11) NOT NULL,
  `not_activar` int(11) NOT NULL,
  PRIMARY KEY (`not_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `nota` (`not_id`, `not_titulo`, `not_ruta_amigable`, `not_tags`, `not_resumen`, `not_cuerpo`, `not_imagen`, `not_fecha`, `not_comentarios`, `not_video`, `not_tipo_video`, `not_autor`, `not_lugar`, `not_usuario`, `not_activar`) VALUES
(1,	'Envían a la cárcel a los cuatro involucrados en el caso de las \'narcoavionetas\'',	'envian-a-la-carcel-a-los-cuatro-involucrados-en-el-caso-de-las-\'narcoavionetas\'',	'',	'resumen',	'<p><span style=\"text-align: justify;\">Las cuatro personas, que fueron capturadas en un operativo de lucha contra el narcotráfico en Beni y donde también se secuestraron tres avionetas, fueron enviadas a la cárcel de Mocoví con detención preventiva.</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">\"En audiencia de medidas cautelares desarrollada (ayer) en el Juzgado 1° de Instrucción Cautelar en lo Penal de la ciudad de Trinidad, el Ministerio Público demostró que estas personas son con probabilidad autores de los delitos por los que se imputó\", dijo la directora Nacional de Sustancias Controladas, Ximena Morales.</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">Las cuatro personas, identificadas como Felipe A. A. (boliviano), Walter S. R. (boliviano), Víctor Alfredo V. G. (paraguayo) y Johan Manuel V. (colombiano), fueron imputadas por la comisión de los delitos de tráfico de sustancias controladas, asociación delictuosa y confabulación.</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">Morales recordó que estas personas fueron capturadas en un operativo que se realizó en la propiedad denominada \"Las Vegas\" en la provincia Santa Ana de Yacuma, departamento del Beni, y donde también fueron secuestrados 122 kilos con 918 gramos de clorhidrato de cocaína, además de las tres aeronaves.</span><br style=\"text-align: justify;\"><br style=\"text-align: justify;\"><span style=\"text-align: justify;\">Una de las avionetas tenía matrícula boliviana, otra brasileña y una tercera nave se encontraba sin matrícula.</span><span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: justify;\"> </span><br></p>',	'archivos/multimedia/manosde.jpg',	'2017-06-16 13:41:00',	0,	'0',	'0',	'Martin  Llanos',	'Santa Cruz',	1,	1),
(2,	'prueba nota',	'prueba-nota',	'dasdsa',	'asdasdas',	'<p>as asdas dasdasd asd asdasd</p><p><br></p><p><br></p><p><br></p>',	'',	'2017-06-16 18:15:00',	0,	'<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LHkMo9pZkq0\" frameborder=\"0\" allowfullscreen></iframe>',	'embed',	'',	'',	1,	0);

DROP TABLE IF EXISTS `nota_categorias`;
CREATE TABLE `nota_categorias` (
  `not_cat_not_id` int(11) NOT NULL,
  `not_cat_cat_id` int(11) NOT NULL,
  `not_cat_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `nota_categorias` (`not_cat_not_id`, `not_cat_cat_id`, `not_cat_orden`) VALUES
(1,	20,	0),
(2,	21,	0);

DROP TABLE IF EXISTS `nota_comentarios`;
CREATE TABLE `nota_comentarios` (
  `not_com_id` int(11) NOT NULL AUTO_INCREMENT,
  `not_com_not_id` int(11) NOT NULL,
  `not_com_com_id` int(11) NOT NULL,
  `not_com_padre_id` int(11) NOT NULL,
  `not_com_orden` int(11) NOT NULL,
  PRIMARY KEY (`not_com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `nota_multimedia`;
CREATE TABLE `nota_multimedia` (
  `not_mul_not_id` int(11) NOT NULL,
  `not_mul_mul_id` int(11) NOT NULL,
  PRIMARY KEY (`not_mul_not_id`,`not_mul_mul_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `nota_valores`;
CREATE TABLE `nota_valores` (
  `not_val_not_id` int(11) NOT NULL,
  `not_val_val_id` int(11) NOT NULL,
  PRIMARY KEY (`not_val_not_id`,`not_val_val_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `pestana`;
CREATE TABLE `pestana` (
  `mod_pes_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_pes_nombre` varchar(150) NOT NULL,
  `mod_pes_descripcion` varchar(255) NOT NULL,
  `mod_pes_fecha` datetime NOT NULL,
  `mod_pes_usuario` int(11) NOT NULL,
  `mod_pes_activar` int(11) NOT NULL,
  PRIMARY KEY (`mod_pes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `plantilla`;
CREATE TABLE `plantilla` (
  `pla_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `pla_activar` int(11) NOT NULL,
  PRIMARY KEY (`pla_id`),
  KEY `pla_id` (`pla_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `plantilla` (`pla_id`, `pla_nombre`, `pla_ruta_amigable`, `pla_icono`, `pla_imagen`, `pla_meta`, `pla_css`, `pla_clase`, `pla_codigos`, `pla_tipo`, `pla_movil`, `pla_onload`, `pla_activar`) VALUES
(1,	'plantilla_1',	'p=1',	'sitios/landicorp/images/favicon.icon',	'',	'',	'',	'',	'',	0,	'',	'page_precarga();',	1),
(2,	'plantilla_2',	'p=2',	'',	'',	'',	'',	'',	'',	0,	'',	'',	1),
(3,	'plantilla_3',	'p=3',	'',	'',	'',	'',	'',	'',	0,	'',	'',	1);

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_texto` text NOT NULL,
  `post_id_usu_emisor` int(11) NOT NULL,
  `post_id_usu_receptor` int(11) NOT NULL,
  `post_fecha` datetime NOT NULL,
  `post_version` int(11) NOT NULL,
  `post_tipo` int(11) NOT NULL,
  `post_activar` int(11) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `printer`;
CREATE TABLE `printer` (
  `prit_id` int(11) NOT NULL AUTO_INCREMENT,
  `prit_accion` varchar(50) NOT NULL,
  `prit_id_aux` int(11) NOT NULL,
  `prit_id_suc` int(11) NOT NULL,
  `prit_fecha` datetime NOT NULL,
  `prit_estado` int(11) NOT NULL,
  `prit_txt` varchar(5) NOT NULL DEFAULT 'SEÑOR',
  PRIMARY KEY (`prit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `printer` (`prit_id`, `prit_accion`, `prit_id_aux`, `prit_id_suc`, `prit_fecha`, `prit_estado`, `prit_txt`) VALUES
(1,	'pedido',	1,	2,	'2016-12-15 12:42:06',	1,	'SEÑOR'),
(4,	'pedido',	4,	4,	'2016-12-16 10:08:10',	1,	'SEÑOR'),
(6,	'pedido',	6,	4,	'2016-12-16 10:15:45',	1,	'SEÑOR'),
(7,	'pedido',	6,	4,	'2016-12-16 11:53:14',	1,	'SEÑOR'),
(8,	'pedido',	7,	4,	'2016-12-16 14:05:30',	1,	'SEÑOR'),
(9,	'pedido',	6,	4,	'2016-12-16 14:53:25',	1,	'SEÑOR'),
(10,	'pedido',	6,	4,	'2016-12-16 16:43:27',	1,	'SEÑOR'),
(11,	'pedido',	6,	4,	'2016-12-16 16:51:33',	1,	'SEÑOR'),
(12,	'pedido',	8,	4,	'2016-12-16 16:59:00',	1,	'SEÑOR'),
(13,	'pedido',	9,	2,	'2016-12-16 17:04:22',	1,	'SEÑOR'),
(14,	'pedido',	6,	3,	'2016-12-16 18:23:12',	1,	'SEÑOR'),
(15,	'pedido',	10,	0,	'2016-12-19 16:56:39',	0,	'SEÑOR'),
(16,	'pedido',	11,	5,	'2016-12-19 17:05:29',	0,	'SEÑOR'),
(17,	'pedido',	12,	5,	'2016-12-19 18:48:38',	0,	'SEÑOR'),
(18,	'pedido',	13,	5,	'2016-12-19 20:47:46',	0,	'SEÑOR'),
(19,	'pedido',	14,	5,	'2016-12-20 09:36:47',	0,	'SEÑOR'),
(20,	'pedido',	15,	5,	'2016-12-20 09:38:25',	0,	'SEÑOR'),
(21,	'pedido',	16,	5,	'2016-12-20 09:41:41',	0,	'SEÑOR'),
(22,	'pedido',	17,	5,	'2016-12-20 09:44:28',	0,	'SEÑOR'),
(23,	'pedido',	18,	5,	'2016-12-20 09:44:46',	0,	'SEÑOR'),
(24,	'pedido',	19,	5,	'2016-12-20 09:50:01',	0,	'SEÑOR'),
(25,	'pedido',	20,	5,	'2016-12-20 09:50:12',	0,	'SEÑOR'),
(26,	'pedido',	21,	5,	'2016-12-20 09:50:42',	0,	'SEÑOR'),
(27,	'pedido',	22,	5,	'2016-12-20 09:51:39',	0,	'SEÑOR'),
(28,	'pedido',	26,	5,	'2016-12-20 15:10:29',	0,	'SEÑOR'),
(29,	'pedido',	27,	4,	'2016-12-20 16:20:31',	1,	'SEÑOR'),
(30,	'pedido',	28,	4,	'2016-12-20 16:41:37',	1,	'SEÑOR'),
(31,	'pedido',	29,	4,	'2016-12-20 16:57:19',	1,	'SEÑOR'),
(32,	'pedido',	30,	4,	'2016-12-20 17:21:28',	1,	'SEÑOR'),
(33,	'pedido',	31,	4,	'2016-12-20 17:32:39',	1,	'SEÑOR'),
(34,	'pedido',	32,	5,	'2016-12-21 08:34:16',	0,	'SEÑOR'),
(35,	'pedido',	33,	5,	'2016-12-21 09:44:49',	0,	'SEÑOR'),
(36,	'pedido',	34,	5,	'2016-12-21 13:10:23',	0,	'SEÑOR'),
(37,	'pedido',	35,	5,	'2016-12-21 13:38:10',	0,	'SEÑOR'),
(38,	'pedido',	36,	5,	'2016-12-21 13:39:32',	0,	'SEÑOR'),
(39,	'pedido',	37,	5,	'2016-12-21 13:42:49',	0,	'SEÑOR'),
(40,	'pedido',	38,	5,	'2016-12-21 13:44:46',	0,	'SEÑOR'),
(41,	'pedido',	39,	5,	'2016-12-22 14:14:14',	0,	'SEÑOR'),
(42,	'pedido',	40,	5,	'2016-12-30 12:29:44',	0,	'SEÑOR'),
(43,	'pedido',	41,	5,	'2017-01-09 15:39:02',	0,	'SEÑOR'),
(44,	'pedido',	42,	5,	'2017-01-24 16:52:17',	0,	'SEÑOR'),
(45,	'pedido',	43,	5,	'2017-01-26 15:25:19',	0,	'SEÑOR'),
(46,	'pedido',	44,	5,	'2017-01-26 15:53:50',	0,	'SEÑOR'),
(47,	'pedido',	45,	4,	'2017-01-27 14:34:11',	1,	'SEÑOR'),
(48,	'pedido',	46,	4,	'2017-02-03 10:48:23',	1,	'SEÑOR'),
(49,	'pedido',	47,	4,	'2017-02-03 11:19:31',	1,	'SEÑOR'),
(50,	'pedido',	48,	4,	'2017-02-03 11:59:14',	1,	'SEÑOR'),
(51,	'pedido',	50,	4,	'2017-02-10 10:14:17',	1,	'SEÑOR');

DROP TABLE IF EXISTS `publicacion`;
CREATE TABLE `publicacion` (
  `pub_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `pub_activar` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `publicacion` (`pub_id`, `pub_nombre`, `pub_descripcion`, `pub_imagen`, `pub_titulo`, `pub_tipo`, `pub_archivo`, `pub_archivo_config`, `pub_css`, `pub_clase`, `pub_id_item`, `pub_numero`, `pub_id_cat`, `pub_activar`) VALUES
(1,	'nav',	'',	'',	'',	1,	'modulos/nav.pub.php',	'',	'',	'',	0,	0,	0,	1),
(2,	'pagina_normal',	'',	'',	'',	1,	'modulos/pagina-normal.pub.php',	'',	'',	'',	0,	0,	0,	0),
(3,	'catalogo',	'',	'',	'',	1,	'modulos/catalogo.pub.php',	'',	'',	'',	0,	0,	0,	0),
(4,	'sucursales',	'',	'',	'',	1,	'modulos/sucursales.pub.php',	'',	'',	'',	0,	0,	0,	0),
(5,	'social',	'',	'',	'',	1,	'modulos/social-page.pub.php',	'',	'',	'',	0,	0,	0,	0),
(6,	'contacto',	'',	'',	'',	1,	'modulos/contacto.pub.php',	'',	'',	'',	0,	0,	0,	0),
(7,	'producto',	'',	'',	'',	1,	'modulos/producto.pub.php',	'',	'',	'',	0,	0,	0,	0),
(8,	'nosotros',	'',	'',	'',	1,	'modulos/nosotros.pub.php',	'',	'',	'',	0,	0,	0,	1),
(9,	'buscar',	'',	'',	'',	1,	'modulos/buscar.pub.php',	'',	'',	'',	0,	0,	0,	1),
(10,	'menu',	'',	'',	'',	1,	'modulos/nav.pub.php',	'',	'',	'',	0,	0,	0,	1),
(11,	'multimedia-cat',	'',	'',	'',	1,	'modulos/multimedia.pub.php',	'',	'',	'',	0,	0,	0,	1),
(12,	'pedido',	'',	'',	'',	1,	'modulos/pedido.pub.php',	'',	'',	'',	0,	0,	0,	1),
(13,	'mi carrito',	'',	'',	'',	1,	'modulos/mi_carrito.pub.php',	'',	'',	'',	0,	0,	0,	1),
(14,	'mi cuenta',	'',	'',	'',	1,	'modulos/cuenta.pub.php',	'',	'',	'',	0,	0,	0,	1),
(15,	'cuenta',	'',	'',	'',	1,	'modulos/mi_cuenta.pub.php',	'',	'',	'',	0,	0,	0,	1),
(16,	'sidebar',	'',	'',	'',	1,	'modulos/sidebar.pub.php',	'',	'',	'',	0,	0,	0,	1),
(17,	'header',	'',	'',	'',	1,	'modulos/header.pub.php',	'',	'',	'',	0,	0,	0,	1),
(18,	'slide',	'',	'',	'',	1,	'modulos/slide.pub.php',	'',	'',	'',	0,	0,	0,	1),
(19,	'ads-vertical-left',	'',	'',	'',	1,	'modulos/ads-vertical.pub.php',	'',	'',	'',	0,	0,	0,	1),
(20,	'trending',	'',	'',	'',	1,	'modulos/trending.pub.php',	'',	'',	'',	0,	0,	0,	1),
(21,	'ads-vertical-right',	'',	'',	'',	1,	'modulos/ads-vertical.pub.php',	'',	'',	'',	0,	0,	0,	1),
(22,	'ads-body',	'',	'',	'',	1,	'modulos/ads-body.pub.php',	'',	'',	'',	0,	0,	0,	1),
(23,	'magazine',	'',	'',	'',	1,	'modulos/magazine.pub.php',	'',	'',	'',	0,	0,	0,	1);

DROP TABLE IF EXISTS `publicacion_rel`;
CREATE TABLE `publicacion_rel` (
  `pubrel_id` int(11) NOT NULL AUTO_INCREMENT,
  `pubrel_cat_id` int(11) NOT NULL,
  `pubrel_pla_id` int(11) NOT NULL,
  `pubrel_cont_id` int(11) NOT NULL,
  `pubrel_pub_id` int(11) NOT NULL,
  `pubrel_activar` int(11) NOT NULL DEFAULT '0',
  `pubrel_orden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pubrel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `publicacion_rel` (`pubrel_id`, `pubrel_cat_id`, `pubrel_pla_id`, `pubrel_cont_id`, `pubrel_pub_id`, `pubrel_activar`, `pubrel_orden`) VALUES
(2,	81,	1,	1,	3,	1,	1),
(3,	82,	1,	1,	3,	1,	1),
(4,	83,	1,	1,	3,	1,	1),
(5,	81,	3,	1,	7,	1,	1),
(6,	82,	3,	1,	7,	1,	1),
(7,	83,	3,	1,	7,	1,	1),
(8,	79,	1,	1,	5,	1,	1),
(9,	76,	1,	1,	8,	1,	0),
(10,	78,	1,	1,	4,	1,	0),
(11,	80,	1,	1,	6,	1,	0),
(14,	1,	2,	1,	9,	1,	0),
(15,	89,	1,	1,	3,	1,	0),
(16,	90,	1,	1,	3,	1,	0),
(17,	97,	1,	1,	12,	1,	0),
(18,	97,	3,	1,	13,	1,	0),
(19,	101,	1,	1,	14,	1,	0),
(20,	101,	3,	1,	15,	1,	0),
(21,	1,	1,	1,	1,	1,	0),
(22,	1,	1,	7,	19,	1,	0),
(23,	1,	1,	7,	21,	1,	1),
(24,	1,	1,	7,	20,	1,	2),
(25,	1,	1,	7,	22,	1,	3),
(26,	1,	1,	7,	23,	1,	4);

DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `rol_id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_nombre` varchar(45) NOT NULL,
  `rol_descripcion` varchar(255) NOT NULL,
  `rol_funciones` varchar(255) NOT NULL,
  `rol_redireccion` int(11) NOT NULL DEFAULT '1',
  `rol_id_padre` int(11) NOT NULL,
  `rol_grupo` int(11) NOT NULL,
  `rol_permisos` varchar(45) NOT NULL,
  `rol_activar` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `rol` (`rol_id`, `rol_nombre`, `rol_descripcion`, `rol_funciones`, `rol_redireccion`, `rol_id_padre`, `rol_grupo`, `rol_permisos`, `rol_activar`) VALUES
(1,	'Administrador',	'',	'',	2,	0,	0,	'',	1),
(2,	'Diseñador web',	'',	'',	2,	1,	0,	'',	1),
(3,	'Periodista',	'',	'',	2,	2,	0,	'',	1),
(4,	'Editor',	'',	'',	2,	1,	0,	'',	1);

DROP TABLE IF EXISTS `rol_categorias`;
CREATE TABLE `rol_categorias` (
  `rol_cat_cat_id` int(11) NOT NULL,
  `rol_cat_rol_id` int(11) NOT NULL,
  `rol_cat_orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `rol_categorias` (`rol_cat_cat_id`, `rol_cat_rol_id`, `rol_cat_orden`) VALUES
(20,	3,	0),
(21,	3,	0),
(1,	2,	0),
(20,	2,	0),
(21,	2,	0),
(19,	2,	0),
(2,	2,	0),
(3,	2,	0),
(4,	2,	0),
(5,	2,	0),
(6,	2,	0),
(7,	2,	0),
(8,	2,	0),
(22,	2,	0),
(9,	2,	0),
(10,	2,	0),
(11,	2,	0),
(12,	2,	0),
(13,	2,	0),
(15,	2,	0),
(16,	2,	0),
(17,	2,	0),
(18,	2,	0),
(14,	2,	0),
(1,	4,	0),
(20,	4,	0),
(21,	4,	0),
(19,	4,	0),
(2,	4,	0),
(3,	4,	0),
(4,	4,	0),
(5,	4,	0),
(6,	4,	0),
(7,	4,	0),
(8,	4,	0),
(22,	4,	0),
(9,	4,	0),
(10,	4,	0),
(11,	4,	0),
(12,	4,	0),
(13,	4,	0),
(15,	4,	0),
(16,	4,	0),
(17,	4,	0),
(18,	4,	0),
(14,	4,	0);

DROP TABLE IF EXISTS `sistema`;
CREATE TABLE `sistema` (
  `sis_id` int(11) NOT NULL AUTO_INCREMENT,
  `sis_nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sis_descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sis_icono` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sis_color` varchar(7) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sis_tipo` int(11) NOT NULL COMMENT '0 - Multiproposito1 - CMS2 - CRM3 - ERP4 - RRHH5 - ADM7 - PROYECTOS8 - FiNANZAS9 - GERENCIA10 - TIC',
  `sis_activar` int(11) NOT NULL,
  `sis_orden` int(11) NOT NULL,
  PRIMARY KEY (`sis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `sistema` (`sis_id`, `sis_nombre`, `sis_descripcion`, `sis_icono`, `sis_color`, `sis_tipo`, `sis_activar`, `sis_orden`) VALUES
(1,	'Websites',	'',	'icn-code',	'#ffda43',	1,	1,	1),
(2,	'E-commerce',	'',	'icn-cart',	'#e83759',	10,	0,	2),
(3,	'Intranet',	'',	'icn-intranet',	'#879099',	0,	0,	6),
(4,	'Recursos Humanos',	'',	'icn-rrhh color-text-violeta',	'#8b3b8f',	4,	1,	4),
(5,	'Gerencia',	'',	'icn-suitcase color-text-naranja',	'#8a7354',	0,	0,	3),
(6,	'Proyectos',	'',	'icn icn-proyect',	'#0076ff',	0,	0,	5),
(7,	'Finazas',	'',	'icn icn-finance',	'#00bdc6',	6,	0,	7),
(8,	'Logistica',	'',	'icn icn-logistics',	'#99c14c',	10,	0,	8),
(9,	'CRM',	'',	'icn icn-crm',	'#e71882',	2,	0,	9);

DROP TABLE IF EXISTS `sistema_modulos`;
CREATE TABLE `sistema_modulos` (
  `sis_mod_sis_id` int(11) NOT NULL,
  `sis_mod_mod_id` int(11) NOT NULL,
  `sis_mod_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `sistema_modulos` (`sis_mod_sis_id`, `sis_mod_mod_id`, `sis_mod_orden`) VALUES
(1,	100,	3),
(1,	80,	4),
(1,	70,	5),
(1,	60,	1),
(1,	51,	6),
(1,	50,	2),
(2,	150,	0),
(2,	151,	0),
(2,	152,	0),
(2,	153,	0),
(2,	154,	0),
(2,	155,	0),
(2,	271,	0),
(2,	272,	0),
(2,	273,	0),
(2,	300,	0);

DROP TABLE IF EXISTS `sistema_roles`;
CREATE TABLE `sistema_roles` (
  `sis_rol_sis_id` int(11) NOT NULL,
  `sis_rol_rol_id` int(11) NOT NULL,
  PRIMARY KEY (`sis_rol_sis_id`,`sis_rol_rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sistema_roles` (`sis_rol_sis_id`, `sis_rol_rol_id`) VALUES
(1,	2),
(1,	3),
(1,	4);

DROP TABLE IF EXISTS `sitio`;
CREATE TABLE `sitio` (
  `sitio_id` int(11) NOT NULL AUTO_INCREMENT,
  `sitio_nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sitio_descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sitio_ruta_amigable` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sitio_tipo` int(11) NOT NULL DEFAULT '0',
  `sitio_carpeta` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sitio_orden` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sitio_activar` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sitio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `sitio` (`sitio_id`, `sitio_nombre`, `sitio_descripcion`, `sitio_ruta_amigable`, `sitio_tipo`, `sitio_carpeta`, `sitio_orden`, `sitio_activar`) VALUES
(1,	'Sitio Raiz',	'',	'',	0,	'',	'1',	1),
(2,	'Dashboard',	'',	'dashboard',	2,	'',	'2',	1);

DROP TABLE IF EXISTS `sitio_categorias`;
CREATE TABLE `sitio_categorias` (
  `sitio_cat_sitio_id` int(11) NOT NULL,
  `sitio_cat_cat_id` int(11) NOT NULL,
  `sitio_cat_orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `sitio_roles`;
CREATE TABLE `sitio_roles` (
  `sitio_rol_sitio_id` int(11) NOT NULL,
  `sitio_rol_rol_id` int(11) NOT NULL,
  `sitio_rol_orden` int(11) NOT NULL,
  PRIMARY KEY (`sitio_rol_sitio_id`,`sitio_rol_rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sitio_roles` (`sitio_rol_sitio_id`, `sitio_rol_rol_id`, `sitio_rol_orden`) VALUES
(2,	1,	0),
(2,	2,	0),
(2,	3,	0),
(2,	4,	0);

DROP TABLE IF EXISTS `solicitud_permiso`;
CREATE TABLE `solicitud_permiso` (
  `sol_per_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `sol_per_papelera` int(1) NOT NULL,
  PRIMARY KEY (`sol_per_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `usu_id` int(11) NOT NULL AUTO_INCREMENT,
  `usu_nombre` varchar(255) NOT NULL,
  `usu_apellidos` varchar(255) NOT NULL,
  `usu_email` varchar(255) NOT NULL,
  `usu_password` varchar(45) DEFAULT NULL,
  `usu_estado` int(11) NOT NULL,
  `usu_imagen` varchar(255) NOT NULL,
  `usu_padre` int(11) NOT NULL,
  `usu_ruta_amigable` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usu_activar` int(11) NOT NULL,
  PRIMARY KEY (`usu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `usuario` (`usu_id`, `usu_nombre`, `usu_apellidos`, `usu_email`, `usu_password`, `usu_estado`, `usu_imagen`, `usu_padre`, `usu_ruta_amigable`, `usu_activar`) VALUES
(1,	'Hermany',	'Terrazas',	'hterrazas@wappcom.com',	'NDg2Mg==',	1,	'',	0,	'hermany',	1),
(2,	'Yascara',	'Caballero',	'ycaballero@eldia.com.bo',	'NDg2Mg==',	1,	'',	0,	'yascara',	1),
(4,	'Gerson',	'Rivero',	'grivero@eldia.com.bo',	'NDg2Mg==',	1,	'',	1,	'',	1);

DROP TABLE IF EXISTS `usuario_grupos`;
CREATE TABLE `usuario_grupos` (
  `usu_grupo_usu_id` int(11) NOT NULL,
  `usu_grupo_grupo_id` int(11) NOT NULL,
  `usu_grupo_orden` int(11) NOT NULL,
  PRIMARY KEY (`usu_grupo_usu_id`,`usu_grupo_grupo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `usuario_roles`;
CREATE TABLE `usuario_roles` (
  `usu_rol_usu_id` int(11) NOT NULL,
  `usu_rol_rol_id` int(11) NOT NULL,
  `usu_rol_orden` int(11) NOT NULL,
  PRIMARY KEY (`usu_rol_usu_id`,`usu_rol_rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

INSERT INTO `usuario_roles` (`usu_rol_usu_id`, `usu_rol_rol_id`, `usu_rol_orden`) VALUES
(1,	1,	0),
(2,	3,	0),
(4,	4,	0);

DROP TABLE IF EXISTS `valor`;
CREATE TABLE `valor` (
  `val_id` int(11) NOT NULL AUTO_INCREMENT,
  `val_tipo` int(11) NOT NULL COMMENT '1. Like  2. De 0 a 5 3. V o F  4. De 1 a 10  5. De 1 a 100',
  `val_valor` int(11) NOT NULL,
  `val_usario` int(11) NOT NULL,
  `val_fecha` datetime NOT NULL,
  PRIMARY KEY (`val_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `valor_notas`;
CREATE TABLE `valor_notas` (
  `val_not_id` int(11) NOT NULL,
  `val_usuario` int(11) NOT NULL,
  `val_tipo` int(11) NOT NULL COMMENT '1. Like  2. De 0 a 5 3. V o F  4. De 1 a 10  5. De 1 a 100',
  `val_valor` int(11) NOT NULL,
  `val_fecha` datetime NOT NULL,
  PRIMARY KEY (`val_usuario`,`val_not_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


-- 2017-06-17 16:56:40
