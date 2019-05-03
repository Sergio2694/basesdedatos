-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2019 a las 22:47:19
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `misiondb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costo`
--

CREATE TABLE `costo` (
  `id_Costo` int(11) NOT NULL,
  `costo_MO` int(11) NOT NULL,
  `costo_Por_Insumo` int(11) NOT NULL,
  `costo_Total` int(11) NOT NULL,
  `costo_Por_Lotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `precision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'US Dollar', '$', '2', ',', '.', 'USD'),
(2, 'Libra Esterlina', '&pound;', '2', ',', '.', 'GBP'),
(3, 'Euro', 'ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬', '2', '.', ',', 'EUR'),
(4, 'South African Rand', 'R', '2', '.', ',', 'ZAR'),
(5, 'Danish Krone', 'kr ', '2', '.', ',', 'DKK'),
(6, 'Israeli Shekel', 'NIS ', '2', ',', '.', 'ILS'),
(7, 'Swedish Krona', 'kr ', '2', '.', ',', 'SEK'),
(8, 'Kenyan Shilling', 'KSh ', '2', ',', '.', 'KES'),
(9, 'Canadian Dollar', 'C$', '2', ',', '.', 'CAD'),
(10, 'Philippine Peso', 'P ', '2', ',', '.', 'PHP'),
(11, 'Indian Rupee', 'Rs. ', '2', ',', '.', 'INR'),
(12, 'Australian Dollar', '$', '2', ',', '.', 'AUD'),
(13, 'Singapore Dollar', 'SGD ', '2', ',', '.', 'SGD'),
(14, 'Norske Kroner', 'kr ', '2', '.', ',', 'NOK'),
(15, 'New Zealand Dollar', '$', '2', ',', '.', 'NZD'),
(16, 'Vietnamese Dong', 'VND ', '0', '.', ',', 'VND'),
(17, 'Swiss Franc', 'CHF ', '2', '\'', '.', 'CHF'),
(18, 'Quetzal Guatemalteco', 'Q', '2', ',', '.', 'GTQ'),
(19, 'Malaysian Ringgit', 'RM', '2', ',', '.', 'MYR'),
(20, 'Real Brasile&ntilde;o', 'R$', '2', '.', ',', 'BRL'),
(21, 'Thai Baht', 'THB ', '2', ',', '.', 'THB'),
(22, 'Nigerian Naira', 'NGN ', '2', ',', '.', 'NGN'),
(23, 'Peso Argentino', '$', '2', '.', ',', 'ARS'),
(24, 'Bangladeshi Taka', 'Tk', '2', ',', '.', 'BDT'),
(25, 'United Arab Emirates Dirham', 'DH ', '2', ',', '.', 'AED'),
(26, 'Hong Kong Dollar', '$', '2', ',', '.', 'HKD'),
(27, 'Indonesian Rupiah', 'Rp', '2', ',', '.', 'IDR'),
(28, 'Peso Mexicano', '$', '2', ',', '.', 'MXN'),
(29, 'Egyptian Pound', '&pound;', '2', ',', '.', 'EGP'),
(30, 'Peso Colombiano', '$', '2', '.', ',', 'COP'),
(31, 'West African Franc', 'CFA ', '2', ',', '.', 'XOF'),
(32, 'Chinese Renminbi', 'RMB ', '2', ',', '.', 'CNY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `finca`
--

CREATE TABLE `finca` (
  `id_Finca` int(11) NOT NULL,
  `nombre_Finca` varchar(50) NOT NULL,
  `descripcion_Finca` varchar(500) NOT NULL,
  `cantidad_Lotes` int(11) NOT NULL,
  `area_Neta` int(11) NOT NULL,
  `area_Bruta` float NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `dueno` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `finca`
--

INSERT INTO `finca` (`id_Finca`, `nombre_Finca`, `descripcion_Finca`, `cantidad_Lotes`, `area_Neta`, `area_Bruta`, `telefono`, `mail`, `dueno`) VALUES
(3, 'CafÃ© MisiÃ³n', 'Finca exportadora de cafÃ©', 2, 4, 3.15, '71141914', 'cafemisionco@gmail.com', 'Hector Soto y Daniel Montoya ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `information`
--

CREATE TABLE `information` (
  `ID` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `hora` varchar(20) NOT NULL,
  `lugar_entrega` varchar(200) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `otro` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `information`
--

INSERT INTO `information` (`ID`, `fecha`, `hora`, `lugar_entrega`, `numero_factura`, `otro`) VALUES
(27, '2017-12-24 00:00:00', '10:00', 'Tayutic', 1, 'Serguito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo`
--

CREATE TABLE `insumo` (
  `id_Insumo` int(11) NOT NULL,
  `nombre_Producto_Inventario` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_De_Ingreso` date NOT NULL,
  `lote` int(11) NOT NULL,
  `id_Finca` int(11) NOT NULL,
  `id_Inventario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `insumo`
--

INSERT INTO `insumo` (`id_Insumo`, `nombre_Producto_Inventario`, `cantidad`, `fecha_De_Ingreso`, `lote`, `id_Finca`, `id_Inventario`) VALUES
(8, 'Glifosato', 11, '2018-07-15', 1, 3, 1),
(9, 'Sergio', 88, '2018-07-15', 1, 3, 1),
(10, 'Glifosato', 2, '2018-07-28', 1, 3, 1),
(11, 'enrrique', 4, '2018-09-05', 1, 3, 2),
(12, 'enrrique', 4, '2018-09-07', 1, 3, 2),
(15, 'E', 0, '0000-00-00', 1, 3, 3),
(16, 'T', 1, '2018-10-06', 1, 3, 3),
(17, 'Enrique', 1, '2019-10-18', 1, 3, 1),
(18, 'Enrique', 3, '2020-05-19', 1, 3, 4),
(19, 'Sergio gamboa martinez', 12, '2019-01-30', 2, 3, 1),
(20, 'Sergio gamboa martinez', 1, '2019-01-30', 3, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_Inventario` int(11) NOT NULL,
  `nombre_Producto_Inventario` varchar(50) NOT NULL,
  `descripcion_Inventario` varchar(1000) NOT NULL,
  `casa_Comercial` varchar(50) NOT NULL,
  `IA` varchar(50) NOT NULL,
  `presentacion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `unidad` int(11) NOT NULL,
  `precio_Por_Unidad` int(11) NOT NULL,
  `uso_Tecnico` varchar(100) DEFAULT NULL,
  `lote` int(11) NOT NULL,
  `id_Finca` int(11) NOT NULL,
  `fecha_De_Compra` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_Inventario`, `nombre_Producto_Inventario`, `descripcion_Inventario`, `casa_Comercial`, `IA`, `presentacion`, `precio`, `unidad`, `precio_Por_Unidad`, `uso_Tecnico`, `lote`, `id_Finca`, `fecha_De_Compra`) VALUES
(1, 'Glifosato', 'Para plantas', 'sksksk', 'kdkd', 'Litro', 111, -4, 2, 'Fungicida Sistematico para Roya', 1, 3, '2018-07-07'),
(2, 'atila', 'quemante', 'El Colono', 'Paraquat', 'Litro', 4000, -3, 0, 'herbicida ', 1, 3, '2018-08-22'),
(3, 'CASCABEL', 'INSECTICIDA', 'COLONO', 'PIRE', 'Litro', 3200, 1, 0, 'INSECITICDA PARA HORMIGAS', 1, 3, '0000-00-00'),
(4, 'Cosmo-IN', 'Foliar', 'COSMO-AGRO', '62% K', 'Litro', 16000, 2, 0, 'Llenado de fruto', 1, 3, '2022-10-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_mo`
--

CREATE TABLE `inventario_mo` (
  `id_MO_Inventario` int(11) NOT NULL,
  `labor` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad_Horas` int(11) NOT NULL,
  `lote` int(11) NOT NULL,
  `costo_MO` int(11) NOT NULL,
  `id_Finca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario_mo`
--

INSERT INTO `inventario_mo` (`id_MO_Inventario`, `labor`, `fecha`, `cantidad_Horas`, `lote`, `costo_MO`, `id_Finca`) VALUES
(5, 'InvestigaciÃ³n', '2019-10-18', 2, 1, 2400, 3),
(6, 'Cosecha', '2019-10-18', 6, 1, 7200, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mano_de_obra`
--

CREATE TABLE `mano_de_obra` (
  `id_MO` int(11) NOT NULL,
  `labor` varchar(50) NOT NULL,
  `detalle` varchar(500) NOT NULL,
  `descripcion_Y_Uso` varchar(50) NOT NULL,
  `tiempo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `lote` int(11) NOT NULL,
  `producto_Usado` varchar(50) DEFAULT NULL,
  `precio_Por_Hora` int(11) DEFAULT NULL,
  `id_Finca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mano_de_obra`
--

INSERT INTO `mano_de_obra` (`id_MO`, `labor`, `detalle`, `descripcion_Y_Uso`, `tiempo`, `fecha`, `lote`, `producto_Usado`, `precio_Por_Hora`, `id_Finca`) VALUES
(3, 'Chapea', 'Control manual de malezas, generalmente usada en drenajes y caminos, en campo \"bejuco\".', 'Control manual de malezas, generalmente usada en d', 1, '2018-01-01', 1, 'N.A', 1200, 3),
(4, 'Riega de Herbicida', 'AplicaciÃ³n quÃ­mica de herbicidas para control de malezas', 'AplicaciÃ³n quÃ­mica de herbicidas para control de', 1, '2018-01-01', 1, 'N.A', 1200, 3),
(5, 'Cosecha', 'Proceso final del ciclo de la planta de cafÃ© en campo.', 'Proceso final del ciclo de la planta de cafÃ© en c', 1, '2018-01-01', 1, 'N.A', 1200, 3),
(6, 'Abonado', 'AplicaciÃ³n de Fertilizante Granular', 'AplicaciÃ³n de Fertilizante Granular', 1, '2018-01-01', 1, 'N.A', 1200, 3),
(7, 'Atomizo', 'AplicaciÃ³n de fertilizantes foliares o Fungicidas', 'Control de Enfermedades, insectos y NutriciÃ³n fol', 1, '2018-01-01', 1, 'N.A', 1200, 3),
(8, 'Poda', 'Corta de bandolas ya cosechadas, se usa para darle vigor y nuevo follaje al cultivo', 'Aumentar follaje nuevo en las plantas de cafÃ©', 1, '2018-01-01', 1, 'N.A', 1200, 3),
(9, 'DesHija', 'Corta de hijos en los ejes basales de la planta.', 'Aumentar capacidad de vigor de la planta', 1, '2018-01-01', 1, 'N.A', 1200, 3),
(10, 'InvestigaciÃ³n', 'InvestigaciÃ³n con personal tÃ©cnico', 'Aumentar posibilidades de mejorar la productividad', 1, '2018-01-01', 1, 'N.A', 1200, 3),
(13, 'Julian', 'es', 'gay', 1, '0000-00-00', 1, 'FD', 1200, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapas`
--

CREATE TABLE `mapas` (
  `id_Mapas` int(11) NOT NULL,
  `aÃƒÂ±o` varchar(15) NOT NULL,
  `mes` varchar(15) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `id_finca` int(11) NOT NULL,
  `lote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(64) NOT NULL,
  `impuesto` int(2) NOT NULL,
  `moneda` varchar(6) NOT NULL,
  `logo_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_empresa`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `impuesto`, `moneda`, `logo_url`) VALUES
(1, 'PanaderÃƒÆ’Ã‚Â­a La Esmeralda', 'Tuis Centro', 'Tuis', '30507', 'Turrialba', '+(506) 86268355', 'Cieloazulalimentos@hotmail.es', 0, ' ?', 'img/1513283791_logo2.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_Producto` int(11) NOT NULL,
  `nombre_Producto` varchar(50) NOT NULL,
  `descripcion_Producto` varchar(1000) NOT NULL,
  `casa_Comercial` varchar(50) NOT NULL,
  `IA` varchar(50) NOT NULL,
  `presentacion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `unidad` int(11) NOT NULL,
  `precio_Por_Unidad` int(11) NOT NULL,
  `uso_Tecnico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_Producto`, `nombre_Producto`, `descripcion_Producto`, `casa_Comercial`, `IA`, `presentacion`, `precio`, `unidad`, `precio_Por_Unidad`, `uso_Tecnico`) VALUES
(3, 'Glifocol 35.6 SL', 'Herbicida ', 'Colono S.A', 'Glifosato 35.6%', 'Litro', 2913, 0, 0, 'Herbicida sistÃ©mico  para malezas'),
(4, 'Atila 20 SL', 'Herbicida ', 'Colono S.A', 'Paraquat 20%', 'Litro', 3601, 0, 0, 'Herbicida quemante para malezas'),
(5, 'Espada 60 WP', 'Herbicida ', 'El Colono S.A', 'Metsulfuron Metil', '250ml', 880, 0, 0, 'Herbicida sistÃ©mico para malezas de Hoja Anchas. NOTA:No es recomendable su uso en cafÃ©, pero se p'),
(6, 'Preglone 20 SL', 'Herbicida ', 'El Colono S.A', 'Paraquat + Diquat', 'Litro', 4527, 0, 0, 'Herbicida de contacto, especial para hoja anches y hojas angostas.'),
(7, 'Esfera 26.75 EC', 'Fungicida', 'El Colono S.A', 'Trifloxiestrobina + Ciproconazol', 'Litro', 33431, 0, 0, 'Fungicida translaminar, sistÃ©mico, contacto y curativo, especial para protecciÃ³n, usar antes de lo'),
(8, 'Opera 18.3 SE', 'Fungicida', 'El Colono S.A', 'Epoxiconazol + Piraclostrobin', 'Litro', 39409, 0, 0, 'Fungicida translaminar, sistÃ©mico y protectante. Especial para protecciÃ³n, usar antes de los sÃ­nt'),
(9, 'Atemi 10 SL', 'Fungicida', 'El Colono S.A', 'Cicopronazol', 'Litro', 36462, 0, 0, 'Fungicida sistÃ©mico y contacto, Curativo. Especial para protecciÃ³n, usar antes de los sÃ­ntomas in'),
(10, 'Soprano C 25 SC', 'Fungicida', 'El Colono S.A', 'Epoxiconazol + Carbendazina', 'Litro', 16410, 0, 0, 'Fungicida erradicante, curativo y protector. Especial para protecciÃ³n, usar antes de los sÃ­ntomas '),
(11, 'Labifol PotÃ¡sico 50V', 'Fertilizante Foliar', 'El Colono S.A', 'Potasio (K) 50 %', 'Litro', 6300, 0, 0, 'Fertilizante Foliar para llenado del Fruto. Usar Como ayuda al llenado de la cereza del cafÃ© antes '),
(12, 'Humate Zinc Boro', 'Fertilizante Foliar', 'El Colono S.A', 'Boro + Zinc', 'Kilo', 3528, 0, 0, 'Fertilizante Foliar. Usar principalmente para mejorar calidad del fruto. Usar antes de floraciÃ³n y '),
(13, 'Bayfolan', 'Fertilizante Foliar', 'El Colono S.A', 'Macro y Microelementos', 'Litro', 4228, 0, 0, 'Multimineral para desarrollo foliar. Usar preferiblemnte con otros fertilizantes para una excelencia'),
(14, 'NUTRIPLANT PLUS LITRO(G)', 'Fertilizante Foliar', 'El Colono S.A', 'Macro y Microelementos', 'Litro', 5329, 0, 0, 'Multimineral para desarrollo foliar. Usar preferiblemnte con otros fertilizantes para una excelencia'),
(15, 'COLONO FÃ‰RTIL UREA GRANULAR', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 46% (N)', 'Saco 45Kg', 11500, 0, 0, 'Fertilizante granular, usado preferiblemente para desarrollo foliar, excelente despuÃ©s de poda. Tam'),
(16, 'COLONO FÃ‰RTIL 10-30-10', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 10 % (N) + FÃ³sforo 30% (P) + Potasio 1', 'Saco 25kg', 13421, 0, 0, 'Fertilizante Granular, usado para siembra, usado como para el desarrollo radicular.'),
(17, 'COLONO FÃ‰RTIL 12-24-12', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 12 % (N) + FÃ³sforo 24% (P) + Potasio 1', 'Saco 45Kg', 13246, 0, 0, 'Fertilizante Granular, usado para siembra, usado para el desarrollo radicular. '),
(18, 'Formula Completa (7-27-7)', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 7 % (N) + FÃ³sforo 27% (P) + Potasio 7%', 'Saco 45Kg', 15910, 0, 0, 'OpciÃ³n para aportar en la primera abonada de siembra FÃ³sforo y Micro elementos.'),
(19, 'Formula Completa (8-32-6) (Pre-Siembra)', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 8 % (N) + FÃ³sforo 32% (P) + Potasio 6%', 'Saco 45Kg', 17149, 0, 0, 'OpciÃ³n para aportar en la primera abonada de siembra alta cantidad de FÃ³sforo y Silicio.'),
(20, 'Colono Fertil 15-3-31', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 15 % (N) + FÃ³sforo 3% (P) + Potasio 31', 'Saco 45Kg', 11460, 0, 0, 'Formula usada para llenado y desarrollo del fruto. '),
(21, 'Formula Completa (17-4-23 + B + CaO+ S+ SiO)', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 17 % (N) + FÃ³sforo 4% (P) + Potasio 23', 'Saco 45Kg', 11460, 0, 0, 'Formula excelente para llenado de Fruto. Excelente para aportaar Ca, Si y B.'),
(22, 'Formula Completa (17-4-23 + B + CaO+ S+ SiO)', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 17 % (N) + FÃ³sforo 4% (P) + Potasio 23', 'Saco 45Kg', 12577, 0, 0, 'Formula excelente para llenado de Fruto. Excelente para aportar Ca, Si y B.'),
(23, 'Formula Completa (18-5-15)', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 18 % (N) + FÃ³sforo 5% (P) + Potasio 15', 'Saco 45Kg', 11593, 0, 0, 'Fertilizante granular, usado preferiblemente antes de floraciÃ³n, como segunda abonada. para Desarro'),
(24, 'Formula Completa (21-0-0-7-11)', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 21 % (N) + 11% CaO', 'Saco 45Kg', 11000, 0, 0, 'Fertilizante nitrogenado, preferiemnte usao para despues de poda, o inicio de la primera abonada, ap'),
(25, 'Colono FÃ©rtil Nitrato de Amonio', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 33.5 % (N) ', 'Saco 45Kg', 9948, 0, 0, 'Fertilizante nitrogenado, preferiblemente usado para despuÃ©s de poda, o inicio de la primera abonad'),
(26, 'Colono FÃ©rtil (40-0-0-0-5.8 (S))', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 40 % (N)  + 5.5% Asufre (S)', 'Saco 45Kg', 13000, 0, 0, 'Fertilizante nitrogenado, preferiblemente usado para despuÃ©s de poda, o inicio de la primera abonad'),
(27, 'Formula Completa (26-6-3)', 'Fertilizante Granular', 'El Colono S.A', 'NitrÃ³geno 26 % (N) + FÃ³sforo 6% (P) + Potasio 3%', 'Saco 45Kg', 13000, 0, 0, 'Formula completa, usada para aportar nitrÃ³geno en la primera abonada mas miroelementos como S, Ca, '),
(28, 'Melaza', 'Miel o Melaza', 'Colono S.A', 'Carbohidratos', 'Saco 25kg', 4600, 0, 0, 'Materia prima para realizar  bioles orgÃ¡nicos '),
(29, 'Semolina', 'Semolina de Arroz', 'Colono S.A', 'Semolina ', 'Saco', 11800, 0, 0, 'Materia prima para realizar  bioles orgÃ¡nicos '),
(30, 'EstaÃ±on Plastico 200 L', 'EstaÃ±on ', 'Colono S.A', 'PlÃ¡stico ', 'Litro', 14000, 0, 0, 'Almacenamiento y preparaciÃ³n  de mezclas o productos para uso agrÃ­cola '),
(31, 'EstaÃ±on Metalico 200 L', 'EstaÃ±on ', 'Colono S.A', 'Metal', 'Litro', 5000, 0, 0, 'Almacenamiento y preparaciÃ³n  de mezclas o productos para uso agrÃ­cola '),
(32, 'Fertilizante granular KCl', 'Fertilizante granular', 'El Colono S.A', 'KCL 0-0-60% k ', 'Saco 45Kg', 12200, 0, 0, 'Fertilizante granular par engrosamiento del fruto del cafÃ©'),
(33, 'Fertilizante granular Urea', 'Fertilizante granular', 'El Colono S.A', ' 46%N - 0 - 0  (Urea)', 'Saco', 12200, 0, 0, 'Fertilizante granular para desarrollo foliar y crecimiento de la planta'),
(34, 'Fertilizante granular MAP', 'Fertilizante granular', 'El Colono S.A', '12% N  - 61% P - 0 ', 'Saco 45Kg', 13600, 0, 0, 'Fertilizante granular para desarrollo foliar y crecimiento en etapas de desarrollo temprana, optimo '),
(36, 'Melaza', 'Miel como materia prima para bioles', 'El Colono S.A', 'Carbohidratos', 'Kilo', 750, 0, 0, 'Materia prima para bioles'),
(37, 'Carbonato de Calcio', 'Enmienda', 'El Colono S.A', 'CaCo3', 'Saco 50Kg', 2600, 0, 0, 'Cal para disminuir problemas de acidez en el suelo'),
(38, 'Cal Dolomita Plus', 'Enmienda', 'El Colono S.A', 'CaCo3 (50%) MgCo3 (40%)', 'Saco 50Kg', 6000, 0, 0, 'Cal + Magnesio, disminuye acidez, ayuda a mejorar la condicion de falta de Mg en suelos deficientes '),
(39, 'DAP', 'Fertilizante Granular', 'El Colono S.A', '18-46-0', 'Saco 45Kg', 17715, 0, 0, 'Siembra y Resiembras de CafÃ©, Transplante, Etapa inicial del Cultivo'),
(40, 'Urea-S', 'Fertilizante Granular', 'El Colono S.A', '46-0-0-05.8(S)', 'Saco', 12650, 0, 0, 'Aplicar despuÃ©s o Antes de Poda, Como inicio o fin del ciclo de fertilizaciÃ³n, Inicio Desarrollo v'),
(41, 'K-MAG', 'Fertilizante Granular', 'El Colono S.A', '0-0-22-11()Mg', 'Saco 45Kg', 21000, 0, 0, 'Materia Prima, se usa para formular, tambiÃ©n sirve para llenado de fruto y aportar magnesio'),
(42, 'DAPHOS', 'Fertilizante Granular', 'El Colono S.A', '0-25-0-7(Mg)-35(Ca)-22(Si)-3(S)', 'Saco 45Kg', 21500, 0, 0, 'Materia Prima, se usa para formular, tambiÃ©n sirve para inicio de siembra, en el ciclo aporta P com'),
(43, 'SULFATO DE AMONIO', 'Fertilizante Granular', 'El Colono S.A', '21-0-0-24(S)', 'Saco 45Kg', 9700, 0, 0, 'Materia Prima, se usa para formular,Aporta N y S, especial para inicio de desarrollo vegetativo.'),
(44, 'Nitrato De Potasio', 'Fertilizante Granular', 'El Colono S.A', '27-0-44', 'Saco 45Kg', 28500, 0, 0, 'Especial para llenado, exelente antes de poda, materia prima para formular.'),
(45, 'Sulfato de Potacio', 'Fertilizante Granular', 'El Colono S.A', '0-0-50-18(S)', 'Saco 45Kg', 14000, 0, 0, 'Especial para llenado, aporta S, materia prima para formular.'),
(46, 'Nitrato de Calcio', 'Fertilizante Granular', 'El Colono S.A', '27-0-0-26,5(Ca)', 'Saco 45Kg', 8400, 0, 0, 'Especial para desarrollo vegetativo, aporta Ca, materia prima para formular,se puede usar como un ci'),
(47, 'Magnesil', 'Fertilizante Granular', 'El Colono S.A', '0-0-0-28(Mg)37(Si)', 'Saco 45Kg', 17500, 0, 0, 'Materia prima para formular, Influye en el control de plagas y enfermedades, aumenta ligeramente la '),
(48, 'Magnesamon', 'Fertilizante Granular', 'El Colono S.A', '21-0-0-7-11(CaO)', 'Saco 45Kg', 11100, 0, 0, 'Materia prima para formular, excelente antes o despuÃ©s de poda, aporta Ca y Mg, ayuda al control de'),
(49, 'Traspore 30,4 SL', 'Humectante,Penetrante,Sulfactante', 'El Colono S.A', 'Propilenglicol', 'Litro', 4400, 0, 0, 'Coadyuvante para mezclar con fungicidas o insecticidas de carÃ¡cter sistÃ©micos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `firstname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `user_name`, `user_password_hash`, `user_email`, `date_added`) VALUES
(1, 'Hector', 'Soto', 'Mision', '$2y$10$MPVHzZ2ZPOWmtUUGCq3RXu31OTB.jo7M9LZ7PmPQYmgETSNn19ejO', 'admin@admin.com', '2016-05-21 15:06:00'),
(4, 'Julian', 'Araya', 'Jaraya', '$2y$10$ZasOAGyKZbDjJO/6dekT/OAsVm.kquD.2gP2eptb43yp5MbElJszC', 'jjaraya.93@gmail.com', '2018-08-22 19:15:21'),
(5, 'Hector', 'Soto Rojas', 'hectorsoto11', '$2y$10$dm7edZOC0zulVG.UHKOUx.KURhwNwIJRd6WTRGAAnydB.RQg.KfRe', 'cafemisionco@gmail.com', '2018-08-22 19:15:49'),
(6, 'Daniel', 'Montoya', 'Daniel', '$2y$10$MmA2Pr9HpBoQCrsftN13LeOJQCqSS4B6TZ0VgFy.3QhOoWYTFRXGm', 'danielsalas900@hotmail.com', '2018-09-14 21:17:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `costo`
--
ALTER TABLE `costo`
  ADD PRIMARY KEY (`id_Costo`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `finca`
--
ALTER TABLE `finca`
  ADD PRIMARY KEY (`id_Finca`);

--
-- Indices de la tabla `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD PRIMARY KEY (`id_Insumo`),
  ADD KEY `FK_Finca_Insumo` (`id_Finca`),
  ADD KEY `FK_Inventario_Insumo` (`id_Inventario`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_Inventario`),
  ADD KEY `FK_Finca` (`id_Finca`);

--
-- Indices de la tabla `inventario_mo`
--
ALTER TABLE `inventario_mo`
  ADD PRIMARY KEY (`id_MO_Inventario`),
  ADD KEY `FK_Finca_MO_Inventario` (`id_Finca`);

--
-- Indices de la tabla `mano_de_obra`
--
ALTER TABLE `mano_de_obra`
  ADD PRIMARY KEY (`id_MO`),
  ADD KEY `FK_Finca_MO` (`id_Finca`);

--
-- Indices de la tabla `mapas`
--
ALTER TABLE `mapas`
  ADD PRIMARY KEY (`id_Mapas`),
  ADD KEY `FK_Finca_Mapas` (`id_finca`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_Producto`);

--
-- Indices de la tabla `tmp`
--
ALTER TABLE `tmp`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `costo`
--
ALTER TABLE `costo`
  MODIFY `id_Costo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `finca`
--
ALTER TABLE `finca`
  MODIFY `id_Finca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `information`
--
ALTER TABLE `information`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `insumo`
--
ALTER TABLE `insumo`
  MODIFY `id_Insumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_Inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inventario_mo`
--
ALTER TABLE `inventario_mo`
  MODIFY `id_MO_Inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `mano_de_obra`
--
ALTER TABLE `mano_de_obra`
  MODIFY `id_MO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `mapas`
--
ALTER TABLE `mapas`
  MODIFY `id_Mapas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_Producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD CONSTRAINT `FK_Finca_Insumo` FOREIGN KEY (`id_Finca`) REFERENCES `finca` (`id_Finca`),
  ADD CONSTRAINT `FK_Inventario_Insumo` FOREIGN KEY (`id_Inventario`) REFERENCES `inventario` (`id_Inventario`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `FK_Finca` FOREIGN KEY (`id_Finca`) REFERENCES `finca` (`id_Finca`);

--
-- Filtros para la tabla `inventario_mo`
--
ALTER TABLE `inventario_mo`
  ADD CONSTRAINT `FK_Finca_MO_Inventario` FOREIGN KEY (`id_Finca`) REFERENCES `finca` (`id_Finca`);

--
-- Filtros para la tabla `mano_de_obra`
--
ALTER TABLE `mano_de_obra`
  ADD CONSTRAINT `FK_Finca_MO` FOREIGN KEY (`id_Finca`) REFERENCES `finca` (`id_Finca`);

--
-- Filtros para la tabla `mapas`
--
ALTER TABLE `mapas`
  ADD CONSTRAINT `FK_Finca_Mapas` FOREIGN KEY (`id_finca`) REFERENCES `finca` (`id_Finca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
