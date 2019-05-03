-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2019 a las 22:47:07
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
-- Base de datos: `mision`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `art_code` int(11) NOT NULL,
  `emp_code` int(11) NOT NULL,
  `cat_code` int(11) NOT NULL,
  `subc_code` int(11) NOT NULL,
  `art_codigo` varchar(100) NOT NULL,
  `art_name` varchar(100) NOT NULL,
  `art_name_ingles` varchar(100) NOT NULL,
  `art_foto` varchar(200) NOT NULL,
  `art_descripcion` varchar(200) NOT NULL,
  `art_costounitario` int(11) NOT NULL,
  `art_cantart` int(11) NOT NULL,
  `art_medida` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`art_code`, `emp_code`, `cat_code`, `subc_code`, `art_codigo`, `art_name`, `art_name_ingles`, `art_foto`, `art_descripcion`, `art_costounitario`, `art_cantart`, `art_medida`) VALUES
(1, 1, 1, 1, '12345678', 'Café Piyis', 'Piyis Coffee', '1.jpeg', 'Café de calidad Turialbeña', 2500, 25, '250 gramos'),
(2, 1, 1, 1, '87654321', 'Cafe Piyis Rojo', 'Red Piyis Coffee', '3.jpeg', 'Café Turialbeño', 3000, 25, '1 Kilogram'),
(3, 1, 1, 1, '2345671', 'Cafe Piyis Blanco', 'White Piyis Coffee', '2.jpeg', 'Cafe', 3000, 25, '1 Kilogram'),
(4, 1, 2, 2, '2222222AS', 'Camiseta 1', 'Shirt 1', '4.jpeg', 'Camisas', 6500, 25, 'L, M, S, X'),
(5, 1, 2, 2, '2222222AS', 'Camiseta 2', 'Shirt 2', '7.jpg', 'Camisas', 6500, 25, 'L, M, S, X'),
(6, 1, 2, 2, '2222222AS', 'Camiseta 3', 'Shirt 3', '6.jpg', 'Camisas', 6500, 25, 'L, M, S, X'),
(7, 1, 2, 2, 'wwsw2', 'Camiseta 4', 'Shirt 4\r\n', '8.jpg', 'ksjsj', 2500, 21, 'L, M, S, X'),
(8, 1, 1, 1, 'wwsw2', 'Camiseta 4', 'Shirt 4\r\n', '8.jpg', 'ksjsj', 2500, 21, 'L, M, S, X');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cantones`
--

CREATE TABLE `cantones` (
  `can_code` int(11) NOT NULL,
  `can_name` int(11) NOT NULL,
  `can_descripcion` int(11) NOT NULL,
  `prov_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `cat_code` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad_us`
--

CREATE TABLE `ciudad_us` (
  `ciu_code` int(11) NOT NULL,
  `ciu_name` int(11) NOT NULL,
  `ciu_descripcion` int(11) NOT NULL,
  `est_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cli_code` int(11) NOT NULL,
  `emp_code` int(11) NOT NULL,
  `cli_nombre` varchar(100) NOT NULL,
  `cli_apellido1` varchar(100) NOT NULL,
  `cli_apellido2` varchar(100) NOT NULL,
  `cli_status` int(11) NOT NULL,
  `cli_telefono` varchar(20) NOT NULL,
  `cli_celular` varchar(20) NOT NULL,
  `cli_cedula` varchar(15) NOT NULL,
  `pai_code` int(11) NOT NULL,
  `prov_code` int(11) NOT NULL,
  `can_code` int(11) NOT NULL,
  `dis_code` int(11) NOT NULL,
  `est_code` int(11) NOT NULL,
  `ciu_code` int(11) NOT NULL,
  `cli_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distritos`
--

CREATE TABLE `distritos` (
  `dis_code` int(11) NOT NULL,
  `dis_name` varchar(100) NOT NULL,
  `dis_descripcion` varchar(200) NOT NULL,
  `prov_code` int(11) NOT NULL,
  `can_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `emp_code` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_telefono` varchar(15) NOT NULL,
  `emp_mail` varchar(50) NOT NULL,
  `emp_cedula` varchar(20) NOT NULL,
  `emp_ivi` int(11) NOT NULL,
  `emp_num_factura` int(11) NOT NULL,
  `emp_cantidad_vendida` int(11) NOT NULL,
  `emp_mercaderia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_us`
--

CREATE TABLE `estados_us` (
  `est_code` int(11) NOT NULL,
  `est_name` varchar(100) NOT NULL,
  `est_descripcion` varchar(200) NOT NULL,
  `pai_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion_detalle`
--

CREATE TABLE `facturacion_detalle` (
  `facd_code` int(11) NOT NULL,
  `emp_code` int(11) NOT NULL,
  `face_factura` int(11) NOT NULL,
  `mon_code` int(11) NOT NULL,
  `face_mes` varchar(10) NOT NULL,
  `face_anno` varchar(10) NOT NULL,
  `art_codigo` varchar(50) NOT NULL,
  `subc_code` int(11) NOT NULL,
  `cat_code` int(11) NOT NULL,
  `facd_nombre` varchar(100) NOT NULL,
  `facd_montounitario` int(11) NOT NULL,
  `facd_montototal` int(11) NOT NULL,
  `facd_cantidad` int(11) NOT NULL,
  `facd_montodescuento` int(11) NOT NULL,
  `facd_montoimpuesto` int(11) NOT NULL,
  `facd_impuestoventa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion_encabezado`
--

CREATE TABLE `facturacion_encabezado` (
  `face_code` int(11) NOT NULL,
  `emp_code` int(11) NOT NULL,
  `face_factura` int(11) NOT NULL,
  `mon_code` int(11) NOT NULL,
  `face_mes` varchar(11) NOT NULL,
  `face_anno` varchar(11) NOT NULL,
  `cli_code` int(11) NOT NULL,
  `cli_direccion` int(11) NOT NULL,
  `cli_cedula` varchar(100) NOT NULL,
  `cli_phone` varchar(15) NOT NULL,
  `face_fecha` date NOT NULL,
  `face_hora` time NOT NULL,
  `face_nombre` varchar(100) NOT NULL,
  `face_montototal` int(11) NOT NULL,
  `face_montoimpuestoVenta` int(11) NOT NULL,
  `face_montoimpuestoTransporte` int(11) NOT NULL,
  `face_descuento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuesto`
--

CREATE TABLE `impuesto` (
  `imp_code` int(11) NOT NULL,
  `imp_name` varchar(100) NOT NULL,
  `imp_monto` int(11) NOT NULL,
  `imp_descripcion` varchar(200) NOT NULL,
  `mon_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `mon_code` int(11) NOT NULL,
  `mon_name` varchar(100) NOT NULL,
  `mon_simbolo` varchar(100) NOT NULL,
  `mon_descrippcion` varchar(200) NOT NULL,
  `mon_tipo_cambio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `pai_code` int(11) NOT NULL,
  `pai_name` text NOT NULL,
  `mon_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  `precio` double NOT NULL,
  `pai_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `prov_code` int(11) NOT NULL,
  `prov_name` varchar(100) NOT NULL,
  `prov_descripcion` varchar(200) NOT NULL,
  `pai_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

CREATE TABLE `subcategoria` (
  `subc_code` int(11) NOT NULL,
  `subc_name` varchar(100) NOT NULL,
  `subc_descripcion` varchar(100) NOT NULL,
  `cat_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usu_code` int(11) NOT NULL,
  `usu_username` varchar(100) NOT NULL,
  `emp_code` int(11) NOT NULL,
  `usu_nombre` varchar(100) NOT NULL,
  `usu_password` varchar(100) NOT NULL,
  `usu_apellido1` varchar(100) NOT NULL,
  `usu_apellido2` varchar(100) NOT NULL,
  `usu_status` int(11) NOT NULL,
  `usu_telefono` varchar(20) NOT NULL,
  `usu_celular` varchar(20) NOT NULL,
  `usu_cedula` varchar(15) NOT NULL,
  `pai_code` int(11) NOT NULL,
  `prov_code` int(11) NOT NULL,
  `can_code` int(11) NOT NULL,
  `dis_code` int(11) NOT NULL,
  `est_code` int(11) NOT NULL,
  `ciu_code` int(11) NOT NULL,
  `usu_mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`art_code`);

--
-- Indices de la tabla `cantones`
--
ALTER TABLE `cantones`
  ADD PRIMARY KEY (`can_code`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cat_code`);

--
-- Indices de la tabla `ciudad_us`
--
ALTER TABLE `ciudad_us`
  ADD PRIMARY KEY (`ciu_code`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_code`);

--
-- Indices de la tabla `distritos`
--
ALTER TABLE `distritos`
  ADD PRIMARY KEY (`dis_code`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`emp_code`);

--
-- Indices de la tabla `estados_us`
--
ALTER TABLE `estados_us`
  ADD PRIMARY KEY (`est_code`);

--
-- Indices de la tabla `facturacion_detalle`
--
ALTER TABLE `facturacion_detalle`
  ADD PRIMARY KEY (`facd_code`);

--
-- Indices de la tabla `facturacion_encabezado`
--
ALTER TABLE `facturacion_encabezado`
  ADD PRIMARY KEY (`face_code`);

--
-- Indices de la tabla `impuesto`
--
ALTER TABLE `impuesto`
  ADD PRIMARY KEY (`imp_code`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`mon_code`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`pai_code`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`prov_code`);

--
-- Indices de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`subc_code`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usu_code`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `art_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cantones`
--
ALTER TABLE `cantones`
  MODIFY `can_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `cat_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciudad_us`
--
ALTER TABLE `ciudad_us`
  MODIFY `ciu_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `distritos`
--
ALTER TABLE `distritos`
  MODIFY `dis_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `emp_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estados_us`
--
ALTER TABLE `estados_us`
  MODIFY `est_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturacion_detalle`
--
ALTER TABLE `facturacion_detalle`
  MODIFY `facd_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturacion_encabezado`
--
ALTER TABLE `facturacion_encabezado`
  MODIFY `face_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `impuesto`
--
ALTER TABLE `impuesto`
  MODIFY `imp_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `mon_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `pai_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `prov_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `subc_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usu_code` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
