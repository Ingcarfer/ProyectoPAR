-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-06-2024 a las 00:52:59
-- Versión del servidor: 10.11.6-MariaDB-0+deb12u1
-- Versión de PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `construc_etitc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `ID` int(11) NOT NULL,
  `Proyectos_ID` int(11) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Unidad_de_Medida` varchar(50) DEFAULT NULL,
  `Cantidad` decimal(10,2) DEFAULT NULL,
  `Valor_Unitario` decimal(10,2) DEFAULT NULL,
  `Valor_Total` decimal(10,2) DEFAULT NULL,
  `Dias_de_Ejecucion` int(11) DEFAULT NULL,
  `Prioridad_ID` int(11) DEFAULT NULL,
  `Estado_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`ID`, `Proyectos_ID`, `Descripcion`, `Unidad_de_Medida`, `Cantidad`, `Valor_Unitario`, `Valor_Total`, `Dias_de_Ejecucion`, `Prioridad_ID`, `Estado_ID`) VALUES
(1, 2, 'ACERO REFUERZO SALON COMUNAL', 'kg', 17199.00, 2.13, 36547875.00, 121, 1, 1),
(2, 5, 'MALLA REFUERZO SALON COMUNAL', 'kg', 2329.00, 2.48, 5764275.00, 184, 3, 2),
(3, 4, 'MUROS CONCRETO SUB-ESTACION', 'm2', 22.40, 69.18, 1549520.00, 136, 1, 3),
(4, 1, 'CONCRETO ESCALERAS', 'm3', 3.00, 597.00, 1791000.00, 75, 3, 2),
(5, 4, 'CONCRETO COLUMNAS', 'm3', 15.00, 597.00, 8955000.00, 215, 2, 2),
(6, 1, 'CONCRETO CIMENTACION SUB-ESTACION', 'm2', 48.00, 146.50, 7032048.00, 60, 2, 3),
(7, 5, 'CONCRETO VIGAS CUBIERTA', 'm3', 7.50, 420.00, 3150000.00, 95, 1, 1),
(8, 5, 'CONCRETO PLACA ALIGERADA ENTREPISO-SALON COMUNAL', 'm2', 460.00, 146.50, 67390460.00, 62, 3, 2),
(9, 2, 'MAMPOSTERIA', 'm2', 511.00, 43.76, 22362382.00, 58, 2, 3),
(10, 2, 'HILADA PARADA', 'ml', 28.00, 11.50, 322000.00, 80, 3, 2),
(11, 5, 'ANTEPECHO', 'ml', 28.00, 26.50, 742000.00, 23, 1, 1),
(12, 1, 'AFINADO INTERIOR PISOS', 'm2', 450.00, 10.20, 4590000.00, 192, 3, 2),
(13, 2, 'PISO EN TABLETA GRES Y GRAVILLA', 'm2', 367.00, 41.25, 15138750.00, 57, 2, 2),
(14, 4, 'AFINADO ESCALERAS', 'un', 18.00, 13.63, 245286.00, 268, 2, 3),
(15, 3, 'PASOS ESCALERAS TABLETA Y GRAVILLA', 'un', 18.00, 17.85, 321300.00, 21, 3, 1),
(16, 4, 'REMATE MUROS Y TECHO', 'm2', 188.00, 5000.00, 940000.00, 223, 2, 3),
(17, 3, 'REMATE FACHADA', 'm2', 250.00, 1.04, 260250.00, 93, 2, 2),
(18, 2, 'CENEFA EN GRAVILLA', 'ml', 300.00, 8.94, 2682900.00, 257, 2, 3),
(19, 1, 'MEDIA CAÑA EN GRAVILLA', 'ml', 82.00, 8.73, 716106.00, 49, 1, 1),
(20, 1, 'GUARDAESCOBA EN GRAVILLA', 'ml', 170.00, 8.94, 1520310.00, 176, 3, 1),
(21, 5, 'PAÑETE FACHADA', 'm2', 130.00, 18.63, 2421250.00, 142, 3, 1),
(22, 2, 'PINTURA SOBRE PAÑETE FACHADA', 'm2', 130.00, 9000.00, 1170000.00, 52, 3, 2),
(23, 4, 'AFINADO IMPERMEABILIZADO BAÑOS', 'm2', 33.00, 18.61, 614097.00, 216, 2, 2),
(24, 3, 'ENCHAPE PISO BAÑOS', 'm2', 33.00, 30.86, 1018248.00, 108, 3, 3),
(25, 5, 'PAÑETE MUROS BAÑOS', 'm2', 150.00, 11.17, 1675650.00, 338, 2, 1),
(26, 5, 'ENCHAPE MUROS BAÑO', 'm2', 150.00, 30000.00, 4500000.00, 183, 3, 2),
(27, 4, 'IMPERMEABILIZACION TERRAZA', 'm2', 89.00, 30000.00, 2670000.00, 231, 1, 2),
(28, 1, 'PAÑETE BAJO PLACA', 'm2', 188.00, 18.50, 3478000.00, 101, 3, 3),
(29, 2, 'PINTURA PUERTA PRINCIPAL', 'un', 1.00, 25500.00, 25500.00, 351, 2, 1),
(30, 2, 'PINTURA MARCO EN LAMINA', 'un', 4.00, 9800.00, 39200.00, 102, 3, 2),
(31, 1, 'PINTURA CARAPLAST', 'm2', 200.00, 5.26, 1051600.00, 95, 1, 3),
(32, 4, 'PINTURA PUERTA BAÑO', 'un', 4.00, 14912.00, 59648.00, 174, 3, 2),
(33, 2, 'LAVAMANOS', 'un', 6.00, 90000.00, 540000.00, 123, 3, 3),
(34, 5, 'SANITARIO', 'un', 7.00, 90000.00, 630000.00, 350, 2, 2),
(35, 5, 'SANITARIO PARA DISCAPACITADOS', 'un', 1.00, 120000.00, 120000.00, 188, 3, 3),
(36, 1, 'REJILLAS DE PISO', 'un', 8.00, 1173.00, 9384.00, 31, 2, 1),
(37, 5, 'ESPEJO DE BAÑO', 'un', 4.00, 13866.00, 55464.00, 142, 2, 2),
(38, 2, 'DIVISIONES DE BAÑO', 'm2', 16.00, 110000.00, 1760000.00, 225, 3, 3),
(39, 1, 'GRIFERIA LAVAPLATOS', 'un', 4.00, 22000.00, 88000.00, 200, 3, 3),
(40, 3, 'MESON EN GRANITO PULIDO', 'un', 1.00, 150000.00, 150000.00, 201, 1, 1),
(41, 4, 'PUERTA MADEFLEX', 'un', 4.00, 47050.00, 188200.00, 225, 3, 2),
(42, 4, 'MARCO EN LAMINA BAÑO', 'un', 4.00, 43935.00, 175740.00, 286, 3, 3),
(43, 1, 'PUERTA EN LAMINA', 'un', 6.00, 390000.00, 2340000.00, 315, 2, 1),
(44, 2, 'CERRADURA BAÑO', 'un', 4.00, 13400.00, 53600.00, 109, 2, 3),
(45, 2, 'VENTANERIA EN ALUMINIO', 'm2', 61.00, 120000.00, 7320000.00, 293, 3, 2),
(46, 3, 'SEÑALIZACION', 'gl', 1.00, 500000.00, 500000.00, 221, 3, 3),
(47, 4, 'LAVADO MUROS INTERIORES', 'm2', 798.00, 2490.00, 1987020.00, 348, 1, 1),
(48, 3, 'LAVADO MUROS EXTERIORES', 'm2', 260.00, 4317.00, 1122420.00, 60, 3, 3),
(49, 1, 'IMPERMEABILIZACION MUROS EXETRIORES', 'm2', 260.00, 2238.00, 581880.00, 46, 2, 3),
(50, 4, 'CUBIERTA TERMOACUSTICA', 'm2', 177.00, 52991.00, 9379407.00, 272, 3, 2),
(51, 2, 'ENCHAPE LADRILLO', 'ml', 360.00, 8700.00, 3132000.00, 339, 3, 1),
(52, 4, 'CUCHILLAS REMATE', 'ml', 25.00, 16600.00, 415000.00, 270, 3, 3),
(53, 2, 'ANCLAJES CON EPOXICO PARA MAMPOSTERIA', 'un', 326.00, 3500.00, 1141000.00, 318, 1, 1),
(54, 4, 'MURO INSONORO', 'm2', 95.00, 40000.00, 3800000.00, 101, 3, 2),
(55, 1, 'PAÑETE MURO INSONORO', 'm2', 95.00, 9000.00, 855000.00, 330, 2, 3),
(56, 4, 'PINTURA MURO INSONORO', 'm2', 95.00, 6000.00, 570000.00, 271, 3, 2),
(57, 4, 'BARANDA METALICA TERRAZA', 'ml', 45.00, 65000.00, 2925000.00, 184, 1, 1),
(58, 5, 'BARANDA METALICA ESCALERA', 'ml', 7.00, 65000.00, 455000.00, 252, 2, 2),
(59, 2, 'PERFILERIA METALICA PARA CUBIERTA', 'gl', 1.00, 15600000.00, 15600000.00, 237, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `ID` int(11) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `Salario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`ID`, `Cargo`, `Salario`) VALUES
(1, 'gerente', 12000000),
(2, 'director de obra', 8000000),
(3, 'residente de obra', 4000000),
(4, 'residente administrativo', 4000000),
(5, 'almacenista', 3200000),
(6, 'residente sst', 4000000),
(7, 'control de calidad', 3500000),
(8, 'maestro de obra', 3000000),
(9, 'oficial de obra', 2000000),
(10, 'ayudante de obra', 1500000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Ciudad` varchar(255) DEFAULT NULL,
  `Correo_Electronico` varchar(255) DEFAULT NULL,
  `Numero_de_Telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID`, `Nombre`, `Direccion`, `Ciudad`, `Correo_Electronico`, `Numero_de_Telefono`) VALUES
(1, 'Loida Martinez Vilalta S.L.', 'Urbanización de Ruy Gallego 9, Mitú', 'Cartagena de Indias', 'loidamartinezvilaltas.l.@gmail.com', '3128839091'),
(2, 'Inversiones Cáceres S.Coop.', 'Vial de Felicidad Exposito 7, Medellín', 'Sincelejo', 'inversionescáceress.coop.@yahoo.com', '3234463128'),
(3, 'Grupo Baquero S.Com.', 'Alameda de Emma Pascual 178 Apt. 77 , Pereira', 'Bogotá', 'grupobaqueros.com.@yahoo.com', '3109707915'),
(4, 'Miralles y asociados S.L.', 'Rambla de Pastor Gil 72, Villavicencio', 'Cartagena de Indias', 'mirallesyasociadoss.l.@yahoo.com', '3234846289'),
(5, 'Familia Ochoa S.Coop.', 'Cañada Bernabé Castells 631, Pasto', 'Neiva', 'familiaochoas.coop.@hotmail.com', '3134333461'),
(6, 'Servicios Sedano S.L.', 'Calle de Melchor Cárdenas 13, Cúcuta', 'Neiva', 'serviciossedanos.l.@gmail.com', '3049778330'),
(7, 'Varela y Mínguez S.Com.', 'Pasadizo de Noemí Gutierrez 6 Piso 0 , Cúcuta', 'Mitú', 'varelaymínguezs.com.@yahoo.com', '3156557161'),
(8, 'Comercial Española S.A.', 'Avenida de Clímaco Perera 374, San Andrés', 'Pasto', 'comercialespañolas.a.@yahoo.com', '3117813289'),
(9, 'Familia Cabañas S.L.', 'C. de Vito Gallego 13, Bogotá', 'Barranquilla', 'familiacabañass.l.@gmail.com', '3128507442'),
(10, 'Inmobiliaria Moreno S.L.', 'Paseo de Amador Clemente 343, Pereira', 'Montería', 'inmobiliariamorenos.l.@gmail.com', '3515097061'),
(11, 'Inversiones Bayón S.Com.', 'Rambla Encarna Barón 744 Apt. 19 , Bucaramanga', 'Pereira', 'inversionesbayóns.com.@gmail.com', '3518199615'),
(12, 'Distribuciones del Mediterráneo S.A.', 'Via de Carmen Álvarez 10, Tunja', 'Cartagena de Indias', 'distribucionesdelmediterráneos.a.@hotmail.com', '3105411718'),
(13, 'Alvarado y Benítez S.L.N.E', 'Glorieta Goyo Heredia 987 Puerta 7 , Popayán', 'Medellín', 'alvaradoybenítezs.l.n.e@hotmail.com', '3059516467'),
(14, 'Hermanos Cortes S.Com.', 'Paseo Evangelina Nevado 89 Piso 6 , Quibdó', 'Sincelejo', 'hermanoscortess.com.@gmail.com', '3019585061'),
(15, 'Alimentación Española S.C.P', 'Rambla María Ricart 45 Piso 4 , Medellín', 'Quibdó', 'alimentaciónespañolas.c.p@yahoo.com', '3008530783'),
(16, 'Mauricio Criado Tejero S.L.L.', 'Rambla de Maura Ariño 96 Puerta 8 , Puerto Carreño', 'Manizales', 'mauriciocriadotejeros.l.l.@yahoo.com', '3514235487'),
(17, 'Hermanos Sarabia S.A.', 'Plaza de Wálter Ribes 61 Apt. 50 , Pasto', 'Santa Marta', 'hermanossarabias.a.@gmail.com', '3115933993'),
(18, 'Infraestructuras Prado y asociados S.A.', 'Plaza de Félix Pulido 829 Puerta 7 , Cali', 'Puerto Carreño', 'infraestructuraspradoyasociadoss.a.@gmail.com', '3126700450'),
(19, 'Gabino Bauzà Marquez S.A.', 'Avenida de Lorenzo Coloma 84 Puerta 6 , Quibdó', 'Montería', 'gabinobauzàmarquezs.a.@hotmail.com', '3058707724'),
(20, 'Compañía Iberia S.Com.', 'Cuesta Elisa Díez 50, Yopal', 'Bogotá', 'compañíaiberias.com.@yahoo.com', '3206113846'),
(21, 'Industrias Giner & Asociados S.Coop.', 'Cañada de Amelia Cuesta 604 Apt. 44 , Puerto Carreño', 'San Andrés', 'industriasginer&asociadoss.coop.@yahoo.com', '3029759263'),
(22, 'Florina Riba Pons S.Com.', 'Avenida de Toribio Tamarit 83 Piso 9 , Cartagena de Indias', 'Leticia', 'florinaribaponss.com.@hotmail.com', '3181639582'),
(23, 'Hotel Inteligentes S.L.', 'Pasadizo Aroa Carmona 851, Villavicencio', 'Pereira', 'hotelinteligentess.l.@gmail.com', '3225127861'),
(24, 'Alimentación del Sur S.A.', 'Alameda de Hilda Benavides 37, Yopal', 'Cúcuta', 'alimentacióndelsurs.a.@yahoo.com', '3049089712'),
(25, 'Servicios Iglesia & Asociados S.L.N.E', 'Pasadizo Diana Alfonso 27, Sincelejo', 'Santa Marta', 'serviciosiglesia&asociadoss.l.n.e@hotmail.com', '3128479145'),
(26, 'Águila y asociados S.L.L.', 'Acceso de Xavier Olmedo 37, Bucaramanga', 'San José del Guaviare', 'águilayasociadoss.l.l.@hotmail.com', '3198351671'),
(27, 'Tecnologías JL S.L.', 'Calle Nilo Alegre 95 Puerta 7 , Leticia', 'Manizales', 'tecnologíasjls.l.@gmail.com', '3164044364'),
(28, 'Camacho y asociados S.L.', 'Plaza de Felipa Tello 77, Quibdó', 'Cúcuta', 'camachoyasociadoss.l.@hotmail.com', '3001919785'),
(29, 'Familia Guillen S.A.', 'Urbanización de Melchor Vizcaíno 4 Piso 4 , Tunja', 'Barranquilla', 'familiaguillens.a.@gmail.com', '3215414470'),
(30, 'Construcción del Norte S.Com.', 'Pasaje de Jafet Seco 592 Piso 6 , Valledupar', 'Sincelejo', 'construccióndelnortes.com.@gmail.com', '3505062726'),
(31, 'Farmaceútica Bravo S.A.T.', 'Camino de Vera Llamas 4 Apt. 84 , Pasto', 'Barranquilla', 'farmaceúticabravos.a.t.@yahoo.com', '3157453098'),
(32, 'Talleres Alegre y asociados S.A.', 'Paseo Eusebia Borrás 77, Quibdó', 'Puerto Carreño', 'talleresalegreyasociadoss.a.@gmail.com', '3102165386'),
(33, 'Suministros EB S.L.N.E', 'Callejón Jerónimo Herrera 751, Cali', 'Popayán', 'suministrosebs.l.n.e@gmail.com', '3137583417'),
(34, 'Hnos Moliner S.L.N.E', 'Camino Emperatriz Pastor 192, Yopal', 'Riohacha', 'hnosmoliners.l.n.e@hotmail.com', '3195259679'),
(35, 'Clemente Solsona Valle S.L.', 'Ronda María Manuela Paz 59 Piso 4 , Medellín', 'Bogotá', 'clementesolsonavalles.l.@yahoo.com', '3175437734'),
(36, 'Restauración Alvarez y asociados S.Com.', 'Paseo de Toribio Herranz 728 Piso 0 , Tunja', 'Quibdó', 'restauraciónalvarezyasociadoss.com.@hotmail.com', '3125616808'),
(37, 'Minería CTJ S.L.', 'Pasadizo de Joaquín Ruiz 69 Apt. 72 , Inírida', 'Inírida', 'mineríactjs.l.@yahoo.com', '3168642747'),
(38, 'Minería Guardia & Asociados S.L.', 'Via de Sonia Pedrero 38 Puerta 8 , Tunja', 'Tunja', 'mineríaguardia&asociadoss.l.@gmail.com', '3144328687'),
(39, 'Alimentación Española S.L.', 'Plaza Teófilo Dominguez 71 Puerta 4 , Quibdó', 'Santa Marta', 'alimentaciónespañolas.l.@yahoo.com', '3109308811'),
(40, 'Inmobiliaria Inteligentes S.L.L.', 'Ronda de Ricarda Rosales 27 Puerta 2 , Villavicencio', 'Santa Marta', 'inmobiliariainteligentess.l.l.@hotmail.com', '3518700261'),
(41, 'Garrido y Alcolea S.A.', 'Pasaje Ruth Barrera 54 Puerta 5 , Quibdó', 'Neiva', 'garridoyalcoleas.a.@yahoo.com', '3004800090'),
(42, 'Consultoría Inteligentes S.L.N.E', 'Paseo Imelda Navarro 248 Piso 4 , Quibdó', 'Pereira', 'consultoríainteligentess.l.n.e@gmail.com', '3234481552'),
(43, 'Familia Codina S.L.', 'Avenida de Cleto Córdoba 83 Puerta 6 , Riohacha', 'Arauca', 'familiacodinas.l.@gmail.com', '3205879906'),
(44, 'Desarrollo Cabanillas S.A.', 'Ronda de Mireia Garay 146, Arauca', 'Montería', 'desarrollocabanillass.a.@yahoo.com', '3159113434'),
(45, 'Manola Roca Giralt S.Coop.', 'Callejón Vanesa Nevado 43 Puerta 3 , Villavicencio', 'Leticia', 'manolarocagiralts.coop.@gmail.com', '3225462303'),
(46, 'Fábrica del Mediterráneo S.Coop.', 'Vial de Yésica Alvarado 53 Apt. 05 , Leticia', 'Puerto Carreño', 'fábricadelmediterráneos.coop.@gmail.com', '3183982527'),
(47, 'Augusto Castañeda Cervantes S.Coop.', 'Alameda de Agustina Baena 73, Pereira', 'Villavicencio', 'augustocastañedacervantess.coop.@hotmail.com', '3225402130'),
(48, 'Manufacturas KRZ S.L.', 'Plaza de Eva María Talavera 2, Cartagena de Indias', 'Medellín', 'manufacturaskrzs.l.@gmail.com', '3235341274'),
(49, 'Herminia Tello Reina S.A.', 'Pasaje Armando Arco 150 Puerta 5 , Bogotá', 'Arauca', 'herminiatelloreinas.a.@gmail.com', '3126379937'),
(50, 'Tecnologías Solsona S.A.U', 'Pasadizo de Obdulia Sanz 8 Piso 0 , Leticia', 'Cúcuta', 'tecnologíassolsonas.a.u@yahoo.com', '3213042323'),
(51, 'Desarrollo Integrales S.Coop.', 'Cañada de Erasmo Guillén 448, Tunja', 'Pereira', 'desarrollointegraless.coop.@hotmail.com', '3233608682'),
(52, 'Tecnologías Agustí S.C.P', 'Paseo Julie Mínguez 707 Puerta 9 , Pasto', 'Yopal', 'tecnologíasagustís.c.p@gmail.com', '3012453562'),
(53, 'Monreal y Lillo S.L.L.', 'Callejón de Obdulia Román 3, Pasto', 'Villavicencio', 'monrealylillos.l.l.@gmail.com', '3029212441'),
(54, 'Farmaceútica Durán S.L.N.E', 'Acceso Albina Landa 69, Bucaramanga', 'Pereira', 'farmaceúticaduráns.l.n.e@gmail.com', '3215565643'),
(55, 'Compañía del Norte S.Coop.', 'Vial Atilio Marí 40 Piso 6 , Leticia', 'Sincelejo', 'compañíadelnortes.coop.@hotmail.com', '3223436564'),
(56, 'Promociones Pavón S.L.', 'Ronda Maximiliano Bermejo 62, Manizales', 'Sincelejo', 'promocionespavóns.l.@hotmail.com', '3209769532'),
(57, 'Íñigo Martín Álamo S.Coop.', 'Acceso Socorro Figuerola 99, Pereira', 'Manizales', 'íñigomartínálamos.coop.@gmail.com', '3189836499'),
(58, 'Fábrica Pol S.Coop.', 'Pasaje de Onofre Anglada 66 Apt. 54 , Puerto Carreño', 'Mitú', 'fábricapols.coop.@hotmail.com', '3045855713'),
(59, 'Consultoría Amores & Asociados S.L.N.E', 'Cañada José Luis Barral 949, Cartagena de Indias', 'Inírida', 'consultoríaamores&asociadoss.l.n.e@hotmail.com', '3114177236'),
(60, 'Galvez y Sobrino S.L.', 'Pasaje Bibiana Granados 314, San Andrés', 'Yopal', 'galvezysobrinos.l.@hotmail.com', '3002089148'),
(61, 'Inmobiliaria Tello S.Com.', 'Acceso Marisela Moraleda 75, Pasto', 'Manizales', 'inmobiliariatellos.com.@gmail.com', '3006560487'),
(62, 'Alimentación CIQR S.Com.', 'Avenida Amanda Alcázar 470 Apt. 99 , Puerto Carreño', 'Cartagena de Indias', 'alimentaciónciqrs.com.@yahoo.com', '3038810208'),
(63, 'Finanzas Esparza & Asociados S.A.', 'Pasadizo de Olegario Báez 65 Puerta 9 , Bucaramanga', 'Yopal', 'finanzasesparza&asociadoss.a.@hotmail.com', '3116517081'),
(64, 'Talleres Ricart S.A.', 'Plaza Candelaria Antúnez 13 Piso 2 , Puerto Carreño', 'Barranquilla', 'talleresricarts.a.@yahoo.com', '3019783163'),
(65, 'Nicolasa Uribe Báez S.A.', 'Avenida de Calixta Iglesia 23 Puerta 1 , Montería', 'Pasto', 'nicolasauribebáezs.a.@yahoo.com', '3118486552'),
(66, 'Grupo Cases S.L.N.E', 'Rambla de Encarnacion Samper 8, San Andrés', 'Mitú', 'grupocasess.l.n.e@yahoo.com', '3054184913'),
(67, 'Compañía Cañellas S.L.N.E', 'Ronda Maricruz Cuevas 29 Apt. 27 , Inírida', 'Cartagena de Indias', 'compañíacañellass.l.n.e@yahoo.com', '3146051099'),
(68, 'Suministros Castellana S.A.', 'Rambla Esther Rosell 5 Piso 7 , Bucaramanga', 'Neiva', 'suministroscastellanas.a.@gmail.com', '3168620390'),
(69, 'Hnos Arévalo S.L.', 'Vial de Jafet Bayona 1, Cali', 'Barranquilla', 'hnosarévalos.l.@gmail.com', '3165438872'),
(70, 'Nuñez & Asociados S.L.', 'Cañada María Ángeles Mármol 7 Puerta 9 , Bogotá', 'Santa Marta', 'nuñez&asociadoss.l.@yahoo.com', '3501176820'),
(71, 'Carmelita Álvarez Ballester S.Coop.', 'Cañada de Samu Mosquera 748 Piso 4 , Riohacha', 'Santa Marta', 'carmelitaálvarezballesters.coop.@yahoo.com', '3138952404'),
(72, 'Talleres QMC S.Com.', 'Via Juan José Galán 20 Piso 1 , Bucaramanga', 'Cartagena de Indias', 'talleresqmcs.com.@gmail.com', '3148202277'),
(73, 'Supermercados Monreal y asociados S.L.U.', 'Pasaje Ariadna Trujillo 36, Bucaramanga', 'Popayán', 'supermercadosmonrealyasociadoss.l.u.@gmail.com', '3004036646'),
(74, 'Tomasa Pastor Losa S.L.', 'Callejón de Febe Coll 767 Puerta 4 , Bucaramanga', 'Valledupar', 'tomasapastorlosas.l.@yahoo.com', '3205101237'),
(75, 'Familia Bello S.L.U.', 'Glorieta de Estefanía Jover 3 Apt. 73 , Pereira', 'Montería', 'familiabellos.l.u.@yahoo.com', '3237053383'),
(76, 'Sebastián y Sancho S.L.N.E', 'Rambla de Porfirio Cabanillas 30, Popayán', 'Yopal', 'sebastiánysanchos.l.n.e@gmail.com', '3249978127'),
(77, 'Comercializadora Hervia y asociados S.A.', 'Pasaje Pelayo Alegria 934, San José del Guaviare', 'Cúcuta', 'comercializadoraherviayasociadoss.a.@yahoo.com', '3205831053'),
(78, 'Arnau y Aparicio S.L.N.E', 'Cañada Leocadio Noriega 17 Piso 8 , San Andrés', 'Mitú', 'arnauyaparicios.l.n.e@hotmail.com', '3113026199'),
(79, 'Correa y Pinto S.C.P', 'Camino Prudencio Cabeza 186, Santa Marta', 'Arauca', 'correaypintos.c.p@yahoo.com', '3134247206'),
(80, 'Blas Guardia Crespo S.C.P', 'Cañada de Juan Bautista Bernat 749 Piso 6 , Cartagena de Indias', 'Sincelejo', 'blasguardiacrespos.c.p@hotmail.com', '3148131165'),
(81, 'Industrias Ibéricos S.Coop.', 'Camino de Eutimio Carrera 32 Apt. 51 , Riohacha', 'Villavicencio', 'industriasibéricoss.coop.@hotmail.com', '3175343337'),
(82, 'Barral y Domingo S.Coop.', 'Urbanización de Aníbal Poza 24, Riohacha', 'Quibdó', 'barralydomingos.coop.@hotmail.com', '3203085361'),
(83, 'Industrias Llanos y asociados S.L.', 'Camino de Remigio Bejarano 6 Piso 7 , Manizales', 'Montería', 'industriasllanosyasociadoss.l.@gmail.com', '3043166363'),
(84, 'Instalaciones WGCZ S.L.', 'Glorieta Ruperta Silva 847, Cúcuta', 'Bogotá', 'instalacioneswgczs.l.@yahoo.com', '3042917311'),
(85, 'Hermanos Pastor S.Coop.', 'Pasadizo de Fernanda Amador 112 Piso 6 , Mitú', 'Medellín', 'hermanospastors.coop.@hotmail.com', '3107477102'),
(86, 'Cortés y Sarabia S.A.', 'Glorieta Leonel Pedro 61 Piso 2 , Quibdó', 'Valledupar', 'cortésysarabias.a.@yahoo.com', '3022376513'),
(87, 'Fábregas & Asociados S.Com.', 'Rambla Renata Sanmiguel 33, Pasto', 'San Andrés', 'fábregas&asociadoss.com.@hotmail.com', '3141021622'),
(88, 'Logística Españolas S.L.', 'Camino de Fernanda Bilbao 815 Piso 7 , Valledupar', 'Quibdó', 'logísticaespañolass.l.@gmail.com', '3047214893'),
(89, 'Banco Francisco S.L.L.', 'Rambla de Pío Agudo 53, Neiva', 'Popayán', 'bancofranciscos.l.l.@gmail.com', '3223193945'),
(90, 'Hermanos Mendizábal S.Coop.', 'Paseo Jerónimo Luque 79 Apt. 86 , Bucaramanga', 'Quibdó', 'hermanosmendizábals.coop.@gmail.com', '3155926873'),
(91, 'Transportes Aller y asociados S.A.', 'Acceso de Belen Juárez 39 Apt. 11 , Neiva', 'Santa Marta', 'transportesalleryasociadoss.a.@yahoo.com', '3513601764'),
(92, 'Badía y asociados S.L.U.', 'Camino de Gisela Vilaplana 415 Apt. 02 , Bucaramanga', 'Bucaramanga', 'badíayasociadoss.l.u.@hotmail.com', '3125273888'),
(93, 'Griselda Muro Hoyos S.Coop.', 'Plaza de Benito Alberola 83 Puerta 8 , Riohacha', 'Tunja', 'griseldamurohoyoss.coop.@yahoo.com', '3125485481'),
(94, 'Construcción Morcillo y asociados S.Com.', 'Pasaje de Guadalupe Castilla 32 Apt. 30 , Villavicencio', 'Montería', 'construcciónmorcilloyasociadoss.com.@yahoo.com', '3029128280'),
(95, 'Restauración Aguirre & Asociados S.A.U', 'Plaza Lupita Batlle 19 Puerta 5 , Popayán', 'Tunja', 'restauraciónaguirre&asociadoss.a.u@hotmail.com', '3048840226'),
(96, 'Eligio Luís Company S.L.', 'Acceso Natanael Alarcón 39 Apt. 33 , Medellín', 'Pasto', 'eligioluíscompanys.l.@hotmail.com', '3159846677'),
(97, 'Rosario Amaya Yuste S.L.N.E', 'C. de Isidoro Garzón 99, Sincelejo', 'San José del Guaviare', 'rosarioamayayustes.l.n.e@yahoo.com', '3177982393'),
(98, 'Banca Privada Inteligentes S.Com.', 'Alameda Casemiro Gil 47 Apt. 96 , Yopal', 'Puerto Carreño', 'bancaprivadainteligentess.com.@gmail.com', '3019659667'),
(99, 'Egea y Gabaldón S.A.', 'Glorieta Alma Sureda 33, Mitú', 'Inírida', 'egeaygabaldóns.a.@hotmail.com', '3052191130'),
(100, 'Hermanos Barriga S.C.P', 'Callejón de Fátima Tena 6 Piso 4 , Quibdó', 'Bucaramanga', 'hermanosbarrigas.c.p@yahoo.com', '3143822140');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratistas`
--

CREATE TABLE `contratistas` (
  `ID` int(11) NOT NULL,
  `Nit` varchar(20) DEFAULT NULL,
  `Nombre_de_la_Empresa` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Correo_Electronico` varchar(255) DEFAULT NULL,
  `Actividad_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contratistas`
--

INSERT INTO `contratistas` (`ID`, `Nit`, `Nombre_de_la_Empresa`, `Direccion`, `Correo_Electronico`, `Actividad_ID`) VALUES
(2, '3682571018', 'Grupo Poza S.Com.', 'Glorieta de Clara Hierro 807\nVizcaya, 46977', 'grupopozas.com.@gmail.com', 3),
(3, '5632576648', 'Bárcena y asociados S.Com.', 'Plaza de Diego Benet 12\nGuadalajara, 25931', 'bárcenayasociadoss.com.@gmail.com', 2),
(4, '1412590629', 'Alemán y Rodríguez S.A.U', 'C. Rosaura Novoa 63 Piso 5 \nNavarra, 11521', 'alemányrodríguezs.a.u@yahoo.com', 5),
(5, '4855142379', 'Consultoría del Sur S.A.', 'Callejón Rosenda Santamaría 56 Puerta 2 \nLleida, 19334', 'consultoríadelsurs.a.@gmail.com', 4),
(6, '3214406256', 'Dan Quintero Caparrós S.C.P', 'Cañada Fabián Silva 29\nLugo, 17554', 'danquinterocaparróss.c.p@yahoo.com', 5),
(7, '2572680042', 'Grupo Hoyos S.L.U.', 'Plaza de Nydia Valenciano 14 Puerta 9 \nCeuta, 33333', 'grupohoyoss.l.u.@gmail.com', 2),
(8, '316297530', 'Hnos Tenorio S.A.', 'Acceso de Sofía Alonso 83\nÁlava, 26811', 'hnostenorios.a.@yahoo.com', 5),
(9, '151706278', 'Comercial Luján & Asociados S.A.', 'Plaza Atilio Chico 23\nBaleares, 49082', 'comercialluján&asociadoss.a.@gmail.com', 5),
(10, '2587443806', 'Aliaga y Mayoral S.Coop.', 'Plaza de Sandra Alcaraz 11 Piso 5 \nCáceres, 22456', 'aliagaymayorals.coop.@gmail.com', 4),
(11, '9361883832', 'Bellido y asociados S.A.', 'Camino de Marta Murillo 458\nNavarra, 36195', 'bellidoyasociadoss.a.@gmail.com', 4),
(12, '5341204628', 'Pellicer y Alarcón S.Com.', 'Glorieta de Lara Carranza 34\nGranada, 34917', 'pelliceryalarcóns.com.@yahoo.com', 1),
(13, '5612609897', 'Inversiones WGA S.A.T.', 'Calle de Edu Gras 721 Piso 5 \nCeuta, 32443', 'inversioneswgas.a.t.@yahoo.com', 4),
(14, '8680940072', 'Navas y Durán S.L.', 'Paseo Sara Quevedo 25\nVizcaya, 42592', 'navasyduráns.l.@yahoo.com', 2),
(15, '2145651641', 'Banco IUYB S.L.L.', 'Alameda Susana Rios 17 Puerta 1 \nOurense, 28385', 'bancoiuybs.l.l.@hotmail.com', 2),
(16, '1849803570', 'Promociones Marco S.A.', 'Alameda de Curro Amo 2\nSalamanca, 43540', 'promocionesmarcos.a.@gmail.com', 5),
(17, '6003417645', 'Moreno Puerta Gallego S.A.', 'Avenida de Vasco Sanz 49\nBarcelona, 16458', 'morenopuertagallegos.a.@gmail.com', 4),
(18, '4014592468', 'Francisco Jose Valderrama Prado S.Coop.', 'Glorieta de Teófila Sierra 6\nLugo, 22822', 'franciscojosevalderramaprados.coop.@yahoo.com', 5),
(19, '1944146728', 'Ibarra y Nicolás S.A.', 'Callejón de Nicodemo Otero 4\nSoria, 46218', 'ibarraynicoláss.a.@hotmail.com', 2),
(20, '8700355586', 'Instalaciones Rosa S.Coop.', 'Calle de Angélica Ferrera 145 Piso 8 \nLleida, 27827', 'instalacionesrosas.coop.@gmail.com', 1),
(21, '6716607492', 'Estévez y asociados S.L.N.E', 'Glorieta Isidora Sans 5\nGuadalajara, 19564', 'estévezyasociadoss.l.n.e@hotmail.com', 4),
(22, '1735595340', 'Consultoría Ibéricos S.L.', 'Glorieta Berta Folch 9 Puerta 0 \nPalencia, 23492', 'consultoríaibéricoss.l.@gmail.com', 1),
(23, '8807270956', 'Finanzas Ibéricos S.L.', 'Pasadizo Andrea Carranza 66 Apt. 34 \nGirona, 04176', 'finanzasibéricoss.l.@hotmail.com', 1),
(24, '8200752908', 'Talleres Bernad y asociados S.Coop.', 'Avenida Adrián Osuna 70 Puerta 3 \nLa Coruña, 34186', 'talleresbernadyasociadoss.coop.@hotmail.com', 2),
(25, '2870292573', 'Fábrica Meléndez S.L.U.', 'Callejón de Emilio Quiroga 201 Puerta 1 \nCantabria, 15549', 'fábricameléndezs.l.u.@yahoo.com', 3),
(26, '1478904887', 'Inversiones Gascón S.A.', 'Cañada Eutimio Duran 1 Apt. 72 \nSalamanca, 44152', 'inversionesgascóns.a.@hotmail.com', 5),
(27, '2321637187', 'Finanzas del Sur S.A.', 'Avenida de Adoración Arana 8\nCastellón, 22399', 'finanzasdelsurs.a.@gmail.com', 5),
(28, '8009131660', 'Tecnologías EJ S.Coop.', 'Pasaje Plácido Vaquero 90\nMadrid, 11948', 'tecnologíasejs.coop.@hotmail.com', 1),
(29, '5112319268', 'Desarrollo JS S.A.', 'Glorieta de Manolo Ródenas 65 Piso 7 \nToledo, 33329', 'desarrollojss.a.@hotmail.com', 1),
(30, '2856963364', 'Despacho Corral y asociados S.Coop.', 'Urbanización de Ciro Arellano 4 Puerta 6 \nLeón, 01957', 'despachocorralyasociadoss.coop.@yahoo.com', 4),
(31, '6743318269', 'Promociones Conesa S.Coop.', 'Ronda de Moisés Recio 5 Puerta 2 \nPontevedra, 21544', 'promocionesconesas.coop.@hotmail.com', 3),
(32, '1195055688', 'Cabrero & Asociados S.Coop.', 'Urbanización Urbano Mata 29\nSevilla, 33289', 'cabrero&asociadoss.coop.@yahoo.com', 4),
(33, '7021038599', 'Suministros Delgado & Asociados S.Com.', 'Pasaje Maximino Alcázar 722\nMurcia, 06775', 'suministrosdelgado&asociadoss.com.@gmail.com', 1),
(34, '4255587435', 'Compañía YDOH S.L.', 'C. Jacinta Bastida 813 Apt. 37 \nAlmería, 05608', 'compañíaydohs.l.@hotmail.com', 2),
(35, '7899718205', 'Adán Alegria Cabeza S.A.', 'Vial Calixto Sanmartín 60 Apt. 76 \nPontevedra, 10434', 'adánalegriacabezas.a.@hotmail.com', 1),
(36, '7738445800', 'Garcia y asociados S.L.', 'Ronda de Candelaria Huguet 80\nZamora, 47686', 'garciayasociadoss.l.@gmail.com', 1),
(37, '2102715787', 'Hnos Castañeda S.L.', 'Urbanización de Cecilia Maestre 74 Piso 2 \nValencia, 11347', 'hnoscastañedas.l.@gmail.com', 1),
(38, '7045816037', 'Inmobiliaria Española S.Coop.', 'Cuesta de Íngrid Calatayud 12 Piso 9 \nZamora, 46440', 'inmobiliariaespañolas.coop.@gmail.com', 5),
(39, '4333686127', 'Sales & Asociados S.Coop.', 'Avenida Telmo Peiró 610 Puerta 4 \nNavarra, 02809', 'sales&asociadoss.coop.@gmail.com', 4),
(40, '9232412145', 'Arana y Lamas S.A.D', 'Plaza Sabas Álamo 15 Piso 8 \nOurense, 18076', 'aranaylamass.a.d@hotmail.com', 1),
(41, '2137098788', 'Comercializadora OA S.L.', 'Urbanización América Bellido 94 Puerta 3 \nToledo, 20845', 'comercializadoraoas.l.@yahoo.com', 1),
(42, '4159181122', 'Compañía Burgos S.C.P', 'C. de Juan Carlos Ochoa 29 Apt. 10 \nAsturias, 13305', 'compañíaburgoss.c.p@yahoo.com', 5),
(43, '7221919169', 'Fábrica Pacheco & Asociados S.Coop.', 'Paseo José Ángel Borrego 80 Apt. 69 \nPontevedra, 38024', 'fábricapacheco&asociadoss.coop.@yahoo.com', 1),
(44, '3941725777', 'Coca & Asociados S.A.', 'Callejón Reyes Gimenez 72\nBaleares, 05145', 'coca&asociadoss.a.@gmail.com', 4),
(45, '5631276652', 'Industrias UG S.L.', 'Glorieta de Edelmiro Cáceres 80 Piso 5 \nCiudad, 25603', 'industriasugs.l.@hotmail.com', 2),
(46, '8871241942', 'Finanzas Casal y asociados S.Coop.', 'Acceso de Bartolomé Guardia 95\nGirona, 22692', 'finanzascasalyasociadoss.coop.@yahoo.com', 5),
(47, '2648916898', 'Transportes Ibérica S.L.', 'Callejón Dominga Elorza 50\nMurcia, 11594', 'transportesibéricas.l.@yahoo.com', 5),
(48, '3864876985', 'Jordán Valenzuela Vera S.C.P', 'Calle de Georgina Coronado 490 Apt. 76 \nGuadalajara, 38552', 'jordánvalenzuelaveras.c.p@yahoo.com', 5),
(49, '6756032382', 'Aznar y asociados S.Com.', 'Cuesta de Celestina Bas 997\nLleida, 26549', 'aznaryasociadoss.com.@gmail.com', 1),
(50, '3780107138', 'Hnos Somoza S.Com.', 'Plaza Ana Belén Quevedo 32\nVizcaya, 37077', 'hnossomozas.com.@gmail.com', 2),
(51, '3542227682', 'Huguet y Pedrosa S.L.U.', 'Plaza de Laura Portillo 9\nValencia, 30002', 'huguetypedrosas.l.u.@hotmail.com', 1),
(52, '8508033493', 'Feijoo y Lucas S.Coop.', 'Glorieta Fortunata Cabo 72 Puerta 9 \nLa Coruña, 18758', 'feijooylucass.coop.@hotmail.com', 2),
(53, '4206470681', 'Despacho Muro y asociados S.Com.', 'Cuesta Simón Castelló 944\nHuelva, 11912', 'despachomuroyasociadoss.com.@yahoo.com', 3),
(54, '4819492064', 'Familia Marco S.Com.', 'C. Pánfilo Pera 193 Apt. 19 \nValencia, 24052', 'familiamarcos.com.@yahoo.com', 5),
(55, '5430681606', 'Familia Camino S.A.T.', 'Paseo Zacarías Miró 80 Apt. 34 \nZamora, 43635', 'familiacaminos.a.t.@yahoo.com', 5),
(56, '853688434', 'Infraestructuras Cañellas & Asociados S.L.L.', 'Avenida Fermín Barreda 48\nBaleares, 11984', 'infraestructurascañellas&asociadoss.l.l.@gmail.com', 1),
(57, '8195122594', 'Solsona & Asociados S.Com.', 'Via Aura Herrera 619 Piso 1 \nLas Palmas, 13780', 'solsona&asociadoss.com.@gmail.com', 4),
(58, '8304145976', 'Promociones Valderrama & Asociados S.Coop.', 'Ronda de Rita Valle 968 Apt. 08 \nHuelva, 13325', 'promocionesvalderrama&asociadoss.coop.@gmail.com', 5),
(59, '7275416618', 'Blanca y Bonet S.Com.', 'Cuesta Estrella Montoya 2 Puerta 2 \nMálaga, 45307', 'blancaybonets.com.@gmail.com', 2),
(60, '3936979481', 'Atilio Peláez Revilla S.Com.', 'Cuesta Mariana Vigil 31\nZaragoza, 12029', 'atiliopeláezrevillas.com.@hotmail.com', 2),
(61, '707417435', 'Infraestructuras Zamora S.Coop.', 'Ronda de Noé Donoso 7\nMurcia, 51358', 'infraestructuraszamoras.coop.@yahoo.com', 1),
(62, '3709754177', 'Román & Asociados S.Com.', 'Avenida Martina Macías 21 Apt. 68 \nCuenca, 51283', 'román&asociadoss.com.@yahoo.com', 1),
(63, '172402916', 'Logística PEI S.L.N.E', 'Glorieta de Asdrubal Barral 30 Piso 1 \nAlicante, 49517', 'logísticapeis.l.n.e@hotmail.com', 2),
(64, '9188728270', 'Minería Globales S.A.', 'Vial de Erasmo Serrano 25 Apt. 53 \nLa Coruña, 25543', 'mineríaglobaless.a.@yahoo.com', 1),
(65, '4042936685', 'Rosalina Haro Donaire S.L.', 'Glorieta Rufino Nicolás 709 Puerta 6 \nCáceres, 47793', 'rosalinaharodonaires.l.@yahoo.com', 3),
(66, '3057383940', 'Grupo Galván S.L.', 'Avenida de Jose Priego 84\nÁlava, 22562', 'grupogalváns.l.@hotmail.com', 5),
(67, '9964406806', 'Promociones Jordá y asociados S.Coop.', 'Vial de Anselmo Ricart 80 Puerta 1 \nSevilla, 20184', 'promocionesjordáyasociadoss.coop.@hotmail.com', 5),
(68, '9695790941', 'Compañía Lara y asociados S.A.', 'Ronda de Adolfo Barba 4\nCádiz, 48123', 'compañíalarayasociadoss.a.@yahoo.com', 1),
(69, '8106616153', 'Manufacturas EX S.A.', 'Acceso de Tere Villar 463 Puerta 7 \nOurense, 40902', 'manufacturasexs.a.@yahoo.com', 1),
(70, '2208986000', 'Abellán y Garmendia S.A.', 'C. Baldomero Prieto 22 Piso 4 \nNavarra, 28665', 'abellánygarmendias.a.@gmail.com', 4),
(71, '9061546282', 'Zacarías Sáez Campillo S.L.', 'Urbanización Sarita Tejedor 51 Piso 6 \nPalencia, 19063', 'zacaríassáezcampillos.l.@hotmail.com', 5),
(72, '6135705224', 'Fábrica Amaya S.A.', 'Callejón de Francisco Mosquera 7 Puerta 6 \nVizcaya, 13300', 'fábricaamayas.a.@hotmail.com', 4),
(73, '5804810422', 'Hnos Torralba S.L.N.E', 'Paseo de Emilio Heredia 50\nAlbacete, 47392', 'hnostorralbas.l.n.e@gmail.com', 5),
(74, '208420686', 'Pallarès y Sobrino S.A.T.', 'Ronda de Maricruz Batalla 787 Apt. 31 \nLas Palmas, 30068', 'pallarèsysobrinos.a.t.@gmail.com', 2),
(75, '2861121813', 'Industrias Ibérica S.A.', 'Rambla de Rómulo Pulido 39 Puerta 8 \nAlbacete, 01822', 'industriasibéricas.a.@gmail.com', 1),
(76, '9454729948', 'Distribuciones Española S.L.N.E', 'Cañada de Onofre Carballo 778\nSanta Cruz de Tenerife, 01544', 'distribucionesespañolas.l.n.e@gmail.com', 3),
(77, '8760142640', 'Moisés Peinado Porras S.A.', 'Urbanización de Armida Meléndez 71\nCórdoba, 34902', 'moiséspeinadoporrass.a.@hotmail.com', 2),
(78, '1541691008', 'Desarrollo Girón y asociados S.Com.', 'Rambla de Valero Río 42 Apt. 93 \nHuesca, 41983', 'desarrollogirónyasociadoss.com.@hotmail.com', 1),
(79, '266300443', 'Hnos Malo S.Coop.', 'Acceso Chita Cáceres 3 Piso 1 \nSegovia, 22646', 'hnosmalos.coop.@gmail.com', 5),
(80, '8279762742', 'Banco DD S.L.', 'Rambla Omar Valdés 29 Piso 2 \nGuipúzcoa, 07970', 'bancodds.l.@hotmail.com', 5),
(81, '159080646', 'Hermanos Calleja S.A.', 'Callejón Lucho Abascal 50 Apt. 04 \nBadajoz, 41597', 'hermanoscallejas.a.@gmail.com', 5),
(82, '2496564220', 'Alimentación Aparicio S.L.', 'Avenida Tomás Mateo 36 Piso 9 \nCórdoba, 46924', 'alimentaciónaparicios.l.@yahoo.com', 3),
(83, '3351445215', 'Redondo y Dueñas S.Coop.', 'Glorieta de Aureliano Mínguez 87\nMadrid, 13254', 'redondoydueñass.coop.@gmail.com', 3),
(84, '4129170480', 'Infraestructuras Guzman S.Com.', 'Plaza Tamara Quiroga 11\nTarragona, 30420', 'infraestructurasguzmans.com.@hotmail.com', 1),
(85, '4703410501', 'Ildefonso Pedraza Escribano S.Coop.', 'Ronda de Juan Bautista Cortés 39\nSanta Cruz de Tenerife, 19840', 'ildefonsopedrazaescribanos.coop.@hotmail.com', 5),
(86, '7699445310', 'Hnos Ramis S.L.L.', 'Alameda Corona Pedrosa 8 Apt. 66 \nGuipúzcoa, 34602', 'hnosramiss.l.l.@hotmail.com', 1),
(87, '2745981704', 'Supermercados Haro S.L.', 'Acceso Roque Ruiz 66 Puerta 8 \nHuelva, 09707', 'supermercadosharos.l.@yahoo.com', 2),
(88, '5591957470', 'Fábrica REG S.Coop.', 'Pasaje Wálter Sevillano 81\nBarcelona, 30438', 'fábricaregs.coop.@hotmail.com', 3),
(89, '3482563142', 'Tecnologías Gallardo & Asociados S.L.N.E', 'Glorieta de Ariel Parra 52 Puerta 0 \nNavarra, 28925', 'tecnologíasgallardo&asociadoss.l.n.e@gmail.com', 4),
(90, '801789040', 'Compañía NN S.Coop.', 'Avenida Anacleto Macías 8 Puerta 9 \nSanta Cruz de Tenerife, 03058', 'compañíanns.coop.@yahoo.com', 5),
(91, '9588734168', 'Hnos Nicolás S.A.', 'Vial Regina Carbajo 49 Apt. 64 \nAlbacete, 34020', 'hnosnicoláss.a.@hotmail.com', 3),
(92, '5667645398', 'Hnos Ferrán S.A.', 'Via Jenny Estrada 7\nPalencia, 22407', 'hnosferráns.a.@yahoo.com', 1),
(93, '954272838', 'Pelayo y asociados S.Com.', 'Via Leopoldo Gual 3\nSoria, 51768', 'pelayoyasociadoss.com.@gmail.com', 1),
(94, '4086077855', 'Curro Almeida Toledo S.A.', 'Rambla Delfina Gilabert 612\nAlbacete, 26903', 'curroalmeidatoledos.a.@yahoo.com', 5),
(95, '4404578870', 'Manu Alemán Segarra S.L.N.E', 'Camino de Genoveva Santamaría 31\nHuelva, 38699', 'manualemánsegarras.l.n.e@yahoo.com', 4),
(96, '8877770114', 'Comercializadora Palomar S.Coop.', 'Callejón Ruben Sosa 76 Piso 4 \nAlicante, 01916', 'comercializadorapalomars.coop.@yahoo.com', 2),
(97, '9228567347', 'Flor & Asociados S.Coop.', 'Ronda Ester Herrera 7 Apt. 09 \nBarcelona, 21360', 'flor&asociadoss.coop.@hotmail.com', 4),
(98, '3147965941', 'Consultoría del Noroeste S.L.', 'Rambla de Segismundo Mate 94 Piso 8 \nSanta Cruz de Tenerife, 48674', 'consultoríadelnoroestes.l.@yahoo.com', 2),
(99, '9774761177', 'Miguel Ángel Boada Cuadrado S.A.', 'Urbanización de Eliseo Aguilar 1 Puerta 7 \nGirona, 43919', 'miguelángelboadacuadrados.a.@yahoo.com', 2),
(100, '6912250620', 'Talleres Iberia S.L.', 'Avenida Bibiana Campillo 55 Puerta 2 \nCastellón, 38483', 'talleresiberias.l.@hotmail.com', 3),
(101, '2734074219', 'Hermanos Muñoz S.Coop.', 'Via Leonardo Ferrera 95 Puerta 9 \nToledo, 30043', 'hermanosmuñozs.coop.@yahoo.com', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `ID` int(11) NOT NULL,
  `Documento` varchar(50) DEFAULT NULL,
  `Tipo_de_documento` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Correo_Electronico` varchar(255) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Cargos_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`ID`, `Documento`, `Tipo_de_documento`, `Nombre`, `Apellido`, `Correo_Electronico`, `Telefono`, `Cargos_ID`) VALUES
(1, '3299981328', 'CC', 'Xavier', 'Piquer', 'xavierpiquer@hotmail.com', '+34843 058 534', 5),
(2, '2524964164', 'CE', 'Azahar', 'Zabaleta', 'azaharzabaleta@hotmail.com', '+34925 880 841', 3),
(3, '7560750032', 'CE', 'Jafet', 'Linares', 'jafetlinares@hotmail.com', '+34975 489 507', 2),
(4, '7379618232', 'TI', 'Chucho', 'Carlos', 'chuchocarlos@yahoo.com', '+34 821 89 38 70', 1),
(5, '9803467077', 'CE', 'Juliana', 'Carretero', 'julianacarretero@gmail.com', '+34920282555', 10),
(6, '8983214890', 'TI', 'Alexandra', 'Sánchez', 'alexandrasánchez@hotmail.com', '+34 976 067 858', 3),
(7, '705531039', 'TI', 'Mauricio', 'Cerezo', 'mauriciocerezo@yahoo.com', '+34921 75 56 01', 9),
(8, '5913037302', 'TI', 'Nieves', 'Sastre', 'nievessastre@gmail.com', '+34 885 033 741', 8),
(9, '9461031780', 'CE', 'Manuelita', 'Riba', 'manuelitariba@gmail.com', '+34873 234 416', 4),
(10, '6914014001', 'TI', 'Eliseo', 'Bueno', 'eliseobueno@yahoo.com', '+34820 94 90 06', 2),
(11, '9131597541', 'CC', 'Fabiana', 'Alfaro', 'fabianaalfaro@yahoo.com', '+34 941 44 32 55', 4),
(12, '5331405307', 'TI', 'Petrona', 'Rios', 'petronarios@hotmail.com', '+34 706 576 153', 3),
(13, '6925201045', 'TI', 'Rafa', 'López', 'rafalópez@yahoo.com', '+34 942 657 452', 5),
(14, '7956048541', 'CC', 'Primitiva', 'Querol', 'primitivaquerol@gmail.com', '+34846 02 01 38', 10),
(15, '5198662417', 'TI', 'José Manuel', 'Vidal', 'josémanuelvidal@yahoo.com', '+34 941 578 594', 8),
(16, '7048621917', 'CC', 'Severino', 'Zamorano', 'severinozamorano@gmail.com', '+34887 212 938', 1),
(17, '3623365663', 'CC', 'Jennifer', 'Palomares', 'jenniferpalomares@hotmail.com', '+34 924805963', 3),
(18, '5604430093', 'TI', 'Jordana', 'Marí', 'jordanamarí@yahoo.com', '+34 827 977 736', 8),
(19, '4171058719', 'TI', 'Leandro', 'Oliva', 'leandrooliva@gmail.com', '+34 972110049', 6),
(20, '5581727525', 'CC', 'Josep', 'Conde', 'josepconde@hotmail.com', '+34 872 79 48 12', 8),
(21, '3365991485', 'TI', 'Herberto', 'Uribe', 'herbertouribe@hotmail.com', '+34924 586 620', 10),
(22, '9473982492', 'CE', 'Joaquina', 'Benito', 'joaquinabenito@yahoo.com', '+34876 407 905', 9),
(23, '5450550600', 'CE', 'Sofía', 'Cantón', 'sofíacantón@gmail.com', '+34 971 854 845', 5),
(24, '9812705006', 'CC', 'Benigno', 'Baquero', 'benignobaquero@yahoo.com', '+34961 698 194', 5),
(25, '2724323385', 'CC', 'Victor', 'Tenorio', 'victortenorio@yahoo.com', '+34988254858', 6),
(26, '2961923488', 'CE', 'Violeta', 'Tovar', 'violetatovar@yahoo.com', '+34 947 793 310', 8),
(27, '1674454669', 'TI', 'Tristán', 'Rosado', 'tristánrosado@gmail.com', '+34 879 880 204', 4),
(28, '3935007472', 'TI', 'Nilo', 'Cerezo', 'nilocerezo@hotmail.com', '+34925 66 37 31', 6),
(29, '4934796185', 'CC', 'Ciro', 'Vendrell', 'cirovendrell@hotmail.com', '+34 824940295', 3),
(30, '130638074', 'TI', 'Blas', 'Busquets', 'blasbusquets@gmail.com', '+34888318674', 9),
(31, '3695539439', 'TI', 'Fausto', 'Cuesta', 'faustocuesta@hotmail.com', '+34 845 09 64 35', 4),
(32, '7671932340', 'CE', 'Nazaret', 'Martin', 'nazaretmartin@hotmail.com', '+34847 347 973', 10),
(33, '8225544482', 'CC', 'María Ángeles', 'Cuervo', 'maríaángelescuervo@yahoo.com', '+34822061720', 9),
(34, '5863005884', 'CE', 'Diana', 'Aguirre', 'dianaaguirre@yahoo.com', '+34846 86 23 13', 5),
(35, '5335698323', 'TI', 'Isidro', 'Priego', 'isidropriego@hotmail.com', '+34901350662', 1),
(36, '2147091647', 'CE', 'Édgar', 'Lamas', 'édgarlamas@hotmail.com', '+34 973 07 16 42', 1),
(37, '14656773', 'CC', 'Sara', 'Macías', 'saramacías@gmail.com', '+34 979413937', 4),
(38, '1837484331', 'CC', 'Socorro', 'Cornejo', 'socorrocornejo@yahoo.com', '+34 874280573', 10),
(39, '6661679161', 'TI', 'Cristóbal', 'Olmo', 'cristóbalolmo@gmail.com', '+34846 56 35 50', 2),
(40, '9568234502', 'TI', 'Isa', 'Pereira', 'isapereira@hotmail.com', '+34 926 52 40 07', 10),
(41, '4982244622', 'TI', 'Roberta', 'Dávila', 'robertadávila@yahoo.com', '+34942 75 84 87', 2),
(42, '5893079736', 'TI', 'Felicidad', 'Mendoza', 'felicidadmendoza@gmail.com', '+34 731 115 299', 4),
(43, '5119987080', 'CE', 'Borja', 'Vicens', 'borjavicens@yahoo.com', '+34872770821', 1),
(44, '8793366339', 'CE', 'Marco', 'Bartolomé', 'marcobartolomé@hotmail.com', '+34949 851 401', 7),
(45, '2536260138', 'TI', 'Sebastián', 'Vendrell', 'sebastiánvendrell@hotmail.com', '+34980 807 662', 7),
(46, '6354502193', 'TI', 'Eleuterio', 'Ropero', 'eleuterioropero@yahoo.com', '+34822 574 492', 3),
(47, '3356303296', 'CC', 'Severiano', 'Montes', 'severianomontes@yahoo.com', '+34 842797572', 4),
(48, '6863378185', 'TI', 'Salomé', 'Piñol', 'salomépiñol@gmail.com', '+34 975 68 71 39', 1),
(49, '8481625200', 'TI', 'Martirio', 'Peñalver', 'martiriopeñalver@hotmail.com', '+34 877 77 69 74', 10),
(50, '4194304670', 'TI', 'Marcela', 'Farré', 'marcelafarré@yahoo.com', '+34841842755', 10),
(51, '9653089240', 'CC', 'Marco', 'Aguilera', 'marcoaguilera@gmail.com', '+34806 785 255', 6),
(52, '3127075264', 'CC', 'Víctor', 'Viña', 'víctorviña@hotmail.com', '+34 971 042 401', 8),
(53, '6226692824', 'TI', 'Eduardo', 'Ayuso', 'eduardoayuso@yahoo.com', '+34 981620204', 6),
(54, '4998467211', 'CE', 'Gema', 'Planas', 'gemaplanas@hotmail.com', '+34848825786', 1),
(55, '9264710633', 'TI', 'Francisco Javier', 'Lerma', 'franciscojavierlerma@yahoo.com', '+34 986947764', 6),
(56, '451325047', 'CC', 'Jose Ignacio', 'Miranda', 'joseignaciomiranda@hotmail.com', '+34 844 71 21 17', 6),
(57, '5506929133', 'CE', 'Jessica', 'Martín', 'jessicamartín@hotmail.com', '+34847 53 98 11', 10),
(58, '4941321569', 'CC', 'Herminio', 'Mateos', 'herminiomateos@yahoo.com', '+34 946026632', 4),
(59, '3016118369', 'CC', 'Débora', 'Vallés', 'déboravallés@gmail.com', '+34 707 89 02 16', 9),
(60, '4881100598', 'CE', 'Narciso', 'Gabaldón', 'narcisogabaldón@yahoo.com', '+34 885454845', 5),
(61, '4886267087', 'CE', 'Arsenio', 'Escribano', 'arsenioescribano@yahoo.com', '+34 848 303 690', 7),
(62, '8213055972', 'TI', 'Itziar', 'Cepeda', 'itziarcepeda@yahoo.com', '+34880 50 88 28', 1),
(63, '3675502380', 'TI', 'Nélida', 'Ramírez', 'nélidaramírez@yahoo.com', '+34 966 872 941', 3),
(64, '2219757816', 'CC', 'Estrella', 'Palacios', 'estrellapalacios@gmail.com', '+34 942 49 88 82', 6),
(65, '3921253675', 'TI', 'Estela', 'Villalba', 'estelavillalba@yahoo.com', '+34886387732', 3),
(66, '8591818400', 'CE', 'Nicodemo', 'Colomer', 'nicodemocolomer@yahoo.com', '+34 920 91 67 23', 1),
(67, '4547052926', 'CC', 'Sabina', 'Manzanares', 'sabinamanzanares@yahoo.com', '+34 985748332', 10),
(68, '4425283194', 'TI', 'Marisela', 'Peinado', 'mariselapeinado@gmail.com', '+34 958 256 177', 5),
(69, '92067844', 'CE', 'Ainara', 'Gras', 'ainaragras@gmail.com', '+34878 74 82 87', 10),
(70, '8614084529', 'CE', 'Paco', 'Sanchez', 'pacosanchez@hotmail.com', '+34986 95 72 43', 8),
(71, '8773633176', 'CE', 'Vilma', 'Vilaplana', 'vilmavilaplana@yahoo.com', '+34 924 50 34 02', 9),
(72, '723655912', 'CE', 'Armida', 'Leal', 'armidaleal@gmail.com', '+34807 11 10 34', 1),
(73, '1401373812', 'CE', 'Celestina', 'Echeverría', 'celestinaecheverría@hotmail.com', '+34974902913', 10),
(74, '6744472115', 'TI', 'Maximino', 'Escribano', 'maximinoescribano@hotmail.com', '+34720 64 68 60', 5),
(75, '8571762788', 'CC', 'Alexandra', 'Doménech', 'alexandradoménech@gmail.com', '+34834680840', 8),
(76, '1905621567', 'TI', 'Jesús', 'Oliveras', 'jesúsoliveras@hotmail.com', '+34 821269142', 5),
(77, '693890363', 'CC', 'Pánfilo', 'Valencia', 'pánfilovalencia@hotmail.com', '+34983939238', 8),
(78, '3528954835', 'TI', 'Guillermo', 'Zabala', 'guillermozabala@yahoo.com', '+34876 76 51 19', 4),
(79, '9448244110', 'CE', 'Bernardino', 'Gil', 'bernardinogil@yahoo.com', '+34822779054', 6),
(80, '4452725765', 'CE', 'Julián', 'Reyes', 'juliánreyes@gmail.com', '+34927 80 31 64', 2),
(81, '7092449858', 'CE', 'Aroa', 'Arranz', 'aroaarranz@yahoo.com', '+34822 292 646', 7),
(82, '1951038707', 'CC', 'Lisandro', 'Cabello', 'lisandrocabello@gmail.com', '+34975268695', 6),
(83, '7564183829', 'TI', 'Carmelita', 'Ocaña', 'carmelitaocaña@hotmail.com', '+34 886 695 834', 8),
(84, '6253641213', 'CE', 'Agustina', 'Múgica', 'agustinamúgica@yahoo.com', '+34846352759', 7),
(85, '1032163551', 'CC', 'Roxana', 'Miranda', 'roxanamiranda@hotmail.com', '+34942494501', 4),
(86, '685241195', 'CE', 'Amaya', 'Macías', 'amayamacías@yahoo.com', '+34 821 003 610', 1),
(87, '7218010732', 'CE', 'Lázaro', 'Sanmartín', 'lázarosanmartín@hotmail.com', '+34980 32 44 38', 1),
(88, '2554519218', 'CC', 'Jimena', 'Criado', 'jimenacriado@yahoo.com', '+34807 31 73 22', 9),
(89, '1894650169', 'CC', 'Jordana', 'Terrón', 'jordanaterrón@hotmail.com', '+34 946 533 345', 9),
(90, '3217193427', 'CC', 'Cecilia', 'Pavón', 'ceciliapavón@hotmail.com', '+34843756003', 3),
(91, '3875071514', 'TI', 'Concha', 'Ferrero', 'conchaferrero@hotmail.com', '+34885 905 741', 9),
(92, '6777960430', 'TI', 'Mateo', 'Bru', 'mateobru@hotmail.com', '+34876 82 45 35', 7),
(93, '4206741523', 'CE', 'Ascensión', 'Arroyo', 'ascensiónarroyo@gmail.com', '+34874877332', 2),
(94, '8407810283', 'CC', 'Maite', 'Arrieta', 'maitearrieta@yahoo.com', '+34 886 63 61 87', 4),
(95, '6411800619', 'CE', 'Cruz', 'Coronado', 'cruzcoronado@yahoo.com', '+34 883 190 954', 7),
(96, '7545642686', 'CC', 'Gracia', 'Ros', 'graciaros@hotmail.com', '+34 884 639 515', 8),
(97, '8844371394', 'CC', 'Arturo', 'Tur', 'arturotur@hotmail.com', '+34 821 67 87 46', 6),
(98, '786958529', 'TI', 'Lourdes', 'Mariño', 'lourdesmariño@yahoo.com', '+34 861 42 31 58', 1),
(99, '6049787184', 'CC', 'Bibiana', 'Barba', 'bibianabarba@yahoo.com', '+34 977 842 780', 6),
(100, '6447597545', 'TI', 'Roberto', 'Macias', 'robertomacias@hotmail.com', '+34987 98 94 81', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `ID` int(11) NOT NULL,
  `estado` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`ID`, `estado`) VALUES
(1, 'Por empezar'),
(2, 'En proceso'),
(3, 'Finalizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `ID` int(11) NOT NULL,
  `Proyecto_ID` int(11) DEFAULT NULL,
  `Cliente_ID` int(11) DEFAULT NULL,
  `Monto_Total` decimal(10,2) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`ID`, `Proyecto_ID`, `Cliente_ID`, `Monto_Total`, `Fecha`, `Estado`) VALUES
(2, 3, 67, 97205.24, '2024-02-18', 'Pagada'),
(3, 5, 8, 76659.62, '2023-02-19', 'Pagada'),
(4, 2, 57, 96627.30, '2024-02-19', 'Pagada'),
(5, 2, 5, 54329.68, '2023-01-19', 'Anulada'),
(6, 5, 17, 42962.24, '2023-07-11', 'Anulada'),
(7, 5, 10, 41437.25, '2023-04-30', 'Pendiente'),
(8, 3, 78, 70091.59, '2022-12-21', 'Pendiente'),
(9, 2, 60, 19303.61, '2023-08-07', 'Pendiente'),
(10, 5, 91, 26542.40, '2023-07-28', 'Pagada'),
(11, 3, 48, 83689.58, '2024-04-01', 'Pagada'),
(12, 5, 40, 93243.47, '2023-09-29', 'Pagada'),
(13, 5, 94, 19890.37, '2022-07-18', 'Pagada'),
(14, 5, 99, 75124.25, '2023-11-26', 'Pendiente'),
(15, 5, 90, 39157.93, '2023-02-10', 'Pendiente'),
(16, 5, 15, 7907.54, '2023-08-28', 'Pendiente'),
(17, 3, 77, 88444.94, '2024-03-15', 'Anulada'),
(18, 4, 54, 89287.51, '2023-09-06', 'Pagada'),
(19, 4, 13, 92896.54, '2023-10-12', 'Anulada'),
(20, 3, 68, 98783.48, '2023-03-06', 'Pendiente'),
(21, 5, 100, 38308.26, '2022-08-19', 'Pendiente'),
(22, 4, 52, 59685.92, '2022-08-15', 'Pendiente'),
(23, 2, 10, 47264.59, '2023-08-17', 'Pagada'),
(24, 4, 35, 75074.80, '2023-08-18', 'Pagada'),
(25, 2, 80, 3017.11, '2023-10-05', 'Pagada'),
(26, 1, 57, 71836.15, '2022-08-25', 'Pagada'),
(27, 3, 13, 37263.18, '2022-07-07', 'Pagada'),
(28, 2, 49, 33811.32, '2023-06-28', 'Pendiente'),
(29, 3, 82, 34601.75, '2023-06-02', 'Anulada'),
(30, 5, 19, 90478.44, '2024-05-30', 'Pendiente'),
(31, 2, 43, 87346.99, '2023-11-28', 'Pagada'),
(32, 5, 53, 21255.08, '2024-01-11', 'Anulada'),
(33, 5, 78, 66921.32, '2022-12-25', 'Pendiente'),
(34, 3, 77, 38732.24, '2023-01-10', 'Pagada'),
(35, 3, 12, 7508.18, '2023-05-05', 'Pagada'),
(36, 4, 50, 4433.41, '2022-08-11', 'Pagada'),
(37, 3, 73, 49344.29, '2022-10-16', 'Pendiente'),
(38, 5, 14, 62802.17, '2023-08-05', 'Anulada'),
(39, 3, 15, 93250.39, '2023-10-21', 'Anulada'),
(40, 1, 93, 55141.44, '2022-07-24', 'Pendiente'),
(41, 1, 62, 24370.46, '2023-03-24', 'Pagada'),
(42, 2, 63, 59130.37, '2023-11-18', 'Pendiente'),
(43, 3, 96, 57334.92, '2023-04-19', 'Pagada'),
(44, 4, 38, 66799.29, '2023-08-17', 'Pendiente'),
(45, 1, 76, 73070.95, '2023-07-09', 'Pagada'),
(46, 4, 55, 29839.21, '2022-09-18', 'Pagada'),
(47, 3, 54, 57774.11, '2022-10-05', 'Anulada'),
(48, 1, 77, 46279.07, '2022-11-08', 'Anulada'),
(49, 2, 94, 15768.94, '2023-09-24', 'Pendiente'),
(50, 2, 88, 27949.05, '2023-07-28', 'Pagada'),
(51, 4, 36, 3188.16, '2022-07-10', 'Anulada'),
(52, 5, 83, 89446.41, '2023-03-26', 'Pagada'),
(53, 1, 77, 74248.17, '2023-10-04', 'Pendiente'),
(54, 5, 40, 92884.86, '2023-09-15', 'Pendiente'),
(55, 3, 62, 72241.09, '2022-08-15', 'Pendiente'),
(56, 5, 31, 55521.85, '2022-09-06', 'Pagada'),
(57, 3, 54, 1338.64, '2023-06-22', 'Anulada'),
(58, 5, 2, 52717.28, '2023-08-08', 'Pendiente'),
(59, 5, 47, 80875.06, '2023-01-16', 'Pagada'),
(60, 2, 88, 47284.90, '2023-04-27', 'Anulada'),
(61, 5, 18, 11008.59, '2023-12-23', 'Pendiente'),
(62, 4, 60, 71432.54, '2023-05-27', 'Anulada'),
(63, 2, 25, 91504.86, '2023-08-29', 'Pendiente'),
(64, 4, 5, 6875.69, '2023-10-04', 'Anulada'),
(65, 2, 46, 93506.47, '2024-01-23', 'Pendiente'),
(66, 2, 9, 74703.32, '2023-04-06', 'Pagada'),
(67, 5, 32, 9082.05, '2023-08-20', 'Pendiente'),
(68, 5, 44, 19253.45, '2024-05-01', 'Pagada'),
(69, 3, 77, 74178.03, '2022-10-12', 'Pendiente'),
(70, 1, 21, 40842.42, '2024-03-27', 'Pendiente'),
(71, 5, 72, 78449.03, '2022-06-21', 'Pagada'),
(72, 4, 61, 20929.18, '2024-05-03', 'Pagada'),
(73, 2, 92, 17653.59, '2024-05-07', 'Pendiente'),
(74, 2, 43, 41866.54, '2023-03-22', 'Anulada'),
(75, 1, 13, 41727.48, '2024-04-07', 'Pendiente'),
(76, 3, 37, 46315.27, '2022-11-24', 'Pagada'),
(77, 2, 34, 9169.75, '2024-03-18', 'Pendiente'),
(78, 2, 24, 50801.43, '2022-10-15', 'Anulada'),
(79, 1, 98, 66594.96, '2023-10-19', 'Pendiente'),
(80, 3, 41, 81597.52, '2024-04-22', 'Anulada'),
(81, 2, 21, 25965.60, '2024-02-25', 'Anulada'),
(82, 1, 61, 29859.06, '2023-06-23', 'Pendiente'),
(83, 1, 92, 98801.13, '2023-11-09', 'Pendiente'),
(84, 1, 43, 28475.90, '2024-05-10', 'Anulada'),
(85, 2, 52, 29954.16, '2022-06-27', 'Anulada'),
(86, 1, 56, 70519.93, '2023-07-18', 'Pendiente'),
(87, 5, 72, 14207.59, '2022-07-18', 'Pendiente'),
(88, 2, 79, 11894.19, '2022-08-01', 'Pendiente'),
(89, 2, 72, 88848.43, '2023-12-29', 'Pendiente'),
(90, 2, 63, 44962.59, '2022-10-27', 'Pendiente'),
(91, 3, 71, 69760.09, '2023-04-02', 'Pagada'),
(92, 1, 94, 46289.78, '2023-05-28', 'Anulada'),
(93, 3, 95, 94952.46, '2022-10-03', 'Anulada'),
(94, 1, 75, 62463.56, '2024-05-22', 'Pagada'),
(95, 3, 74, 28404.69, '2024-01-28', 'Pendiente'),
(96, 3, 49, 29554.09, '2023-04-26', 'Pagada'),
(97, 2, 77, 95675.09, '2024-03-09', 'Pendiente'),
(98, 3, 44, 34411.55, '2022-11-10', 'Anulada'),
(99, 3, 50, 72518.30, '2022-10-31', 'Anulada'),
(100, 4, 41, 60508.92, '2022-12-06', 'Pagada'),
(101, 1, 37, 76317.22, '2022-06-21', 'Pagada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Proveedor_ID` int(11) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`ID`, `Nombre`, `Descripcion`, `Proveedor_ID`, `Precio`) VALUES
(1, 'alias', 'Minus dolorem molestiae delectus magnam possimus consequatur. Quos eius magni aut reiciendis fugit magni.\nSequi alias voluptatibus modi. Odit impedit placeat cumque suscipit.', 30, 679.30),
(2, 'quis', 'Culpa adipisci maxime dicta. In corrupti eum quae rerum esse eos. Ipsa laudantium odio temporibus. Libero neque possimus molestiae.', 47, 144.22),
(3, 'sequi', 'Magnam eligendi rerum sint architecto perferendis. Temporibus dolorem cum laboriosam est atque praesentium. Dolorem qui deserunt maiores quia iure.', 32, 553.62),
(4, 'tempora', 'Corrupti molestiae voluptatem quis ratione. Laudantium eius iusto in. Illum inventore libero hic vero.\nNesciunt minus dolor rem error reiciendis. Dolore in voluptatum maiores.', 6, 283.55),
(5, 'ut', 'Voluptatum id voluptates. Neque inventore commodi modi. Vel mollitia unde nam modi repudiandae.\nDoloremque ad dolor pariatur exercitationem. Cupiditate minima dolor.', 4, 479.09),
(6, 'veniam', 'Eveniet quibusdam sapiente dolore. Consequatur a facere laborum aliquid aut voluptatibus. Id pariatur accusantium tempore mollitia qui inventore. Quia veniam culpa et consequatur.', 40, 199.13),
(7, 'at', 'Neque vitae officia est ducimus quidem quod in. Enim totam temporibus delectus. Facilis temporibus rerum.\nLaborum nemo laborum eius. Modi quos harum accusamus.', 2, 566.46),
(8, 'quo', 'Sit tenetur officia omnis cupiditate placeat eius unde. Minima ut quasi sequi.\nIste maxime aspernatur officia. Quae iste quo velit at inventore.', 44, 644.35),
(9, 'molestias', 'Debitis tempora minima error praesentium. Error soluta consectetur libero provident.\nIn fuga magni accusantium porro dolore sequi. Doloribus pariatur necessitatibus itaque perspiciatis.', 15, 573.28),
(10, 'labore', 'Magni aperiam asperiores animi eum harum. Iste asperiores itaque dolores officiis nemo molestias laudantium.\nAt provident sequi cum quaerat. Dicta minima quae aperiam neque.', 51, 519.10),
(11, 'delectus', 'Neque itaque rerum repellat sed iste. Quisquam quod corporis similique perferendis iure. In reiciendis veritatis odit minima aspernatur exercitationem.', 49, 265.70),
(12, 'recusandae', 'Recusandae magnam commodi consequatur dolores. Quo neque harum omnis pariatur modi nemo.', 44, 80.42),
(13, 'et', 'Velit distinctio molestiae reprehenderit inventore omnis quia. Sapiente voluptatem nemo dignissimos. At laudantium adipisci suscipit hic magnam.', 24, 233.50),
(14, 'qui', 'Ducimus ex placeat ut fuga eveniet quasi beatae. Aliquam amet voluptas consectetur. Laboriosam neque perferendis assumenda nam eius architecto libero.', 51, 236.09),
(15, 'earum', 'Odit corrupti molestias aliquam. Vero reiciendis explicabo sed officiis fugiat. Suscipit illum quisquam sed eveniet natus.\nVero sequi voluptates quae eius. Quod et nisi repudiandae doloribus.', 10, 851.69),
(16, 'non', 'Tempore consequuntur deserunt.\nMaxime similique at fuga vero quaerat praesentium. Illo fugit quidem porro necessitatibus voluptate quibusdam. Perspiciatis aut velit eos.', 4, 451.58),
(17, 'neque', 'Libero neque dolorum aut eum consequuntur accusantium. Ab nemo et sit reprehenderit qui.', 39, 502.83),
(18, 'eaque', 'Totam at error molestias non numquam laborum in.\nQuae minima inventore doloremque quia explicabo. Dolor sapiente nihil libero magnam molestiae.', 29, 720.16),
(19, 'voluptas', 'Tempore non molestiae dignissimos vel vero sequi. Animi voluptatem repudiandae fugit. Adipisci vero nesciunt tempore nulla doloremque cum.', 22, 321.85),
(20, 'vitae', 'Dolor a repellendus doloremque suscipit provident quisquam.\nExplicabo quasi cupiditate laborum velit est. Aliquid amet impedit quae asperiores porro.', 3, 495.23),
(21, 'dolore', 'Tenetur porro explicabo quae fugit. Eum suscipit est voluptatibus.\nAdipisci consequuntur sit a. Incidunt hic nobis quo.\nAutem odio vel. Molestiae voluptate sapiente.', 22, 435.24),
(22, 'ab', 'Praesentium dolor dicta ipsa sint nisi doloribus.\nLaudantium doloribus eum unde. Ullam ut velit culpa voluptate.', 11, 253.84),
(23, 'eos', 'Incidunt dolorum sit officiis tempora possimus dolorum. Dicta delectus temporibus vitae aperiam. Similique pariatur aut numquam.', 41, 938.88),
(24, 'quas', 'Odio molestiae corrupti. Eaque corrupti architecto.\nNatus deleniti nihil facere deserunt eum delectus. Non ut omnis saepe ea.', 48, 639.10),
(25, 'deserunt', 'Rerum animi eos explicabo molestiae ad ad. Tempora consectetur nam exercitationem culpa in sequi accusantium. Sed dolor error quisquam facere.', 28, 186.10),
(26, 'praesentium', 'Occaecati neque laboriosam repellat sunt nihil alias quod. Perferendis maxime quo asperiores dolores praesentium illo odit. Aliquid dolores reprehenderit. Ea eaque voluptas dolorem cum.', 24, 682.54),
(27, 'voluptate', 'Ipsam eaque excepturi accusamus accusamus. Debitis possimus vel quibusdam.\nLaboriosam ut distinctio asperiores libero nihil quos. Sit inventore quasi iure cumque. Esse dicta ducimus asperiores ut.', 41, 895.45),
(28, 'explicabo', 'Ipsam rem dicta nostrum. Quibusdam tenetur consequatur quasi.\nQuidem expedita aut incidunt et. Sed id at officia. Sequi ratione suscipit quo pariatur.', 40, 878.21),
(29, 'veniam', 'Reiciendis facilis nemo iusto accusamus odit corrupti. Perferendis aspernatur magnam. Laudantium quidem veritatis totam vel fugit. At dignissimos alias exercitationem in nam debitis.', 36, 521.51),
(30, 'ipsam', 'Cum sed aut magni voluptatibus. Cumque libero iure tenetur nesciunt.\nCupiditate accusamus tenetur laborum.\nQuidem placeat sunt reiciendis. Molestias iusto distinctio a distinctio.', 25, 196.04),
(31, 'magni', 'Aliquam tenetur occaecati tenetur eum. Ratione quae laudantium exercitationem minus veritatis fugit earum.', 44, 315.04),
(32, 'aut', 'Maiores accusamus assumenda occaecati assumenda itaque nulla. Ducimus ea officia eveniet deleniti dolor. Ipsam vitae quam dolorum dolore.', 49, 679.63),
(33, 'mollitia', 'Fuga esse voluptates illo eligendi quae aliquam. Voluptatem id ut.', 36, 976.36),
(34, 'ad', 'Eligendi perspiciatis sed nihil eum culpa. Sequi tenetur fuga quaerat.\nMaxime quo quos cupiditate non tempora illo.', 21, 408.14),
(35, 'distinctio', 'Culpa maxime ut reprehenderit ipsam. Aliquam expedita enim pariatur labore dolore necessitatibus. Alias odio repudiandae ut.\nVelit occaecati et voluptatem eos dignissimos et.', 34, 686.49),
(36, 'ipsum', 'Cumque vero quos facilis culpa similique illum. Quidem a ad iusto deleniti nemo nulla. Nulla dolorem quidem.\nAb veritatis maiores quo. Quibusdam molestiae distinctio architecto repellendus.', 33, 651.77),
(37, 'numquam', 'Similique molestias ut deleniti dolor nostrum illum. Optio maiores sunt nostrum harum itaque rem.\nMinus nulla soluta similique. Esse occaecati natus.', 7, 122.58),
(38, 'quo', 'Sed fugit iste sequi iusto eveniet mollitia. Possimus sequi et quibusdam laudantium.', 10, 547.66),
(39, 'quam', 'Ab officiis praesentium nesciunt dolor hic. At corporis enim voluptatem. Facilis architecto illo quis praesentium iste.', 45, 204.04),
(40, 'velit', 'Molestiae laudantium harum earum. Delectus sit cum magnam ratione hic corporis. Itaque dolore eaque nesciunt soluta laudantium.', 35, 183.54),
(41, 'consectetur', 'Magnam minus corporis impedit consectetur fugit veritatis. Iusto ipsa harum et.\nAlias natus eum eaque aspernatur nihil tenetur.\nRecusandae laudantium incidunt blanditiis.', 51, 583.12),
(42, 'optio', 'Rem reprehenderit expedita inventore sit. Tempora in corrupti accusamus quia.\nEt iure quisquam voluptas aspernatur esse. Ipsum nisi atque laudantium.', 24, 933.23),
(43, 'molestiae', 'Eius cupiditate iusto ab commodi hic. Rerum natus alias natus.', 44, 483.55),
(44, 'hic', 'Accusamus numquam enim dolor necessitatibus minus perspiciatis. Mollitia distinctio aperiam odit. Alias sequi repudiandae recusandae molestiae.', 30, 56.27),
(45, 'voluptatem', 'Deleniti placeat quod beatae voluptate illo nulla vitae. Velit aspernatur architecto ullam id. Quaerat exercitationem quod iste blanditiis.', 51, 564.06),
(46, 'earum', 'Neque non ratione vero officia sit iure ut. Sequi quo laborum blanditiis enim est ea culpa. Quod accusamus illo.', 4, 172.18),
(47, 'cupiditate', 'Iste non quod at laborum. In eos quas ullam omnis quasi quos.', 27, 595.01),
(48, 'animi', 'Quaerat esse eligendi quis suscipit ad. Debitis laudantium expedita modi.\nEligendi debitis doloremque explicabo.\nRatione illum corrupti mollitia inventore. Quidem dolor reprehenderit amet ad.', 23, 809.67),
(49, 'eveniet', 'Dolorem at repudiandae tempora veritatis ullam. Alias beatae at expedita exercitationem quos tenetur. Necessitatibus at quaerat explicabo voluptas natus id asperiores.', 19, 221.38),
(50, 'voluptates', 'Ea alias quas facilis quas expedita aspernatur. Sequi nihil consequuntur doloremque.\nMaiores aliquam fuga amet.\nDolore repellendus numquam explicabo velit.', 12, 138.58),
(51, 'culpa', 'Ea incidunt explicabo veritatis labore. Excepturi explicabo reprehenderit libero tempore. Necessitatibus saepe nesciunt architecto.', 11, 332.46),
(52, 'dolorum', 'Voluptatum fugit explicabo ipsa nesciunt. Beatae fugit vitae tenetur cum enim. Eum laborum repellendus quas neque.\nEst dignissimos fugiat. Hic ea eos nulla. Debitis at excepturi.', 48, 831.99),
(53, 'porro', 'Itaque quae est labore cum deleniti reiciendis impedit. Itaque nemo tempora quaerat excepturi. Voluptatibus cumque necessitatibus iusto.', 17, 971.53),
(54, 'nobis', 'Repellat eos corrupti vitae. Omnis doloremque aut autem maiores impedit magnam. Tenetur inventore neque minima.\nConsectetur exercitationem atque fugiat sed nam.', 18, 980.85),
(55, 'debitis', 'Voluptate quos voluptate atque. Eligendi voluptatem rerum repudiandae doloribus odio. Eveniet possimus in facilis ad.', 16, 834.36),
(56, 'accusamus', 'Reprehenderit amet expedita voluptatibus veniam illo dignissimos omnis. Est dignissimos earum ratione.', 40, 431.79),
(57, 'odio', 'Animi ullam veniam doloremque error reiciendis repellendus libero. Nesciunt sit quibusdam error dolor.\nMaxime ipsam modi cupiditate asperiores nihil. Quaerat occaecati earum nisi quam.', 47, 54.75),
(58, 'pariatur', 'Ratione magnam voluptatum veniam explicabo asperiores nostrum. Facere ipsam temporibus autem.\nSint dignissimos accusamus alias facilis in. Laborum modi expedita asperiores.', 19, 639.79),
(59, 'vel', 'Voluptate perferendis soluta nihil.\nRepellat tempora sed voluptas assumenda. Nam dolores ratione assumenda cum quasi. Ducimus explicabo molestiae pariatur nobis.', 5, 654.18),
(60, 'cumque', 'Neque dolores sint non optio at ratione eveniet. Quo libero culpa ut accusamus error neque. Sed quas officia tempora fugiat vero.', 48, 744.87),
(61, 'dignissimos', 'Nihil iste tempore voluptatum blanditiis impedit minima dolores.', 36, 111.88),
(62, 'officiis', 'Adipisci dolorum inventore ipsum quae atque. Nemo aut odit aspernatur modi quasi.\nIncidunt libero amet. Assumenda quidem expedita laborum asperiores aspernatur officia.', 32, 154.98),
(63, 'neque', 'Deserunt labore molestias fuga quis repellendus. Quasi in laudantium rerum natus iusto expedita repellat.', 40, 290.11),
(64, 'explicabo', 'Veniam quis quisquam sequi qui accusantium facilis. Laboriosam reprehenderit neque.\nQuaerat ea illo. Recusandae in nisi aperiam labore. Ipsum cupiditate blanditiis quae architecto.', 26, 902.73),
(65, 'commodi', 'Nihil fugiat sint. Architecto magnam inventore illo assumenda iure. Ratione voluptas quam eum at minima.\nIpsa saepe distinctio provident aspernatur. Fugit officia quas molestiae.', 43, 980.13),
(66, 'reprehenderit', 'Provident reprehenderit incidunt impedit expedita. Fuga ea ipsa veritatis ad. Incidunt iure iure debitis libero vero iure.', 44, 497.92),
(67, 'eaque', 'Aspernatur odio sed libero qui dolores eum. Eum iste vero velit veniam cum distinctio.\nMinus natus eligendi qui.\nAnimi deleniti dolorem molestias minus. Asperiores temporibus modi laboriosam amet.', 12, 318.53),
(68, 'placeat', 'Explicabo tenetur quasi blanditiis ipsam porro. Nisi sequi quis doloribus natus odio aperiam. Cupiditate recusandae nemo magnam.', 10, 979.12),
(69, 'adipisci', 'Perspiciatis atque impedit reprehenderit laudantium voluptatum nam. Ab mollitia molestias. Quis eaque accusantium omnis est distinctio molestiae.', 9, 753.84),
(70, 'alias', 'Repellendus et illo temporibus praesentium ipsa iusto. Fuga cum nulla accusantium aliquam. Blanditiis deserunt voluptate eaque quod iure excepturi.', 10, 340.14),
(71, 'ut', 'Ipsam quisquam non incidunt blanditiis. Perferendis dignissimos nihil adipisci impedit.\nId odit officia autem et et animi nemo. Qui facilis nulla quae.', 6, 522.76),
(72, 'ullam', 'Blanditiis iste architecto minus. Suscipit reprehenderit voluptatibus fuga pariatur.', 40, 750.30),
(73, 'minus', 'Laborum et dignissimos ratione beatae error. Fugiat ea aliquam maiores laborum culpa. Pariatur esse voluptate id. Sapiente hic saepe tempore quam eligendi.', 47, 579.25),
(74, 'consectetur', 'Occaecati possimus distinctio. Perspiciatis reiciendis quos. Blanditiis praesentium inventore tempora.\nNumquam hic nemo explicabo. Ipsam illo iste quae.', 2, 73.63),
(75, 'rem', 'Ratione dolorum iusto ea ut vero. Sed numquam tenetur ea at. Nulla aut est sit ullam quasi fugiat.', 34, 635.47),
(76, 'sint', 'Minima facere eos tempore esse sequi.\nDolor vel facere soluta nam ad illo at. Nulla deserunt amet amet. Libero doloribus error.', 24, 829.91),
(77, 'sint', 'Corporis ipsam accusantium quia unde dolor perferendis. Debitis voluptate est. Voluptatem eveniet amet quasi ipsum totam.\nEa mollitia ut. Nihil ipsa excepturi architecto distinctio inventore.', 10, 243.76),
(78, 'error', 'Eos sapiente doloremque atque debitis officia sunt. Rerum voluptatum maxime quidem quam.\nQuia libero perferendis atque.', 26, 78.65),
(79, 'consectetur', 'Incidunt numquam quam sed. Sit eos necessitatibus accusamus molestiae. Nostrum natus quasi laboriosam aspernatur.', 31, 280.41),
(80, 'dolorem', 'Numquam sapiente tempora facilis delectus. Quaerat sapiente officia sapiente sit voluptas dolorem. Consequatur debitis sit dolor cumque adipisci laudantium.', 41, 85.38),
(81, 'dolor', 'Aspernatur molestiae necessitatibus. Doloribus iure doloremque sapiente.\nPerspiciatis possimus aliquid quia aperiam dolorem mollitia. Ex velit sint.', 32, 25.19),
(82, 'officia', 'Fugiat possimus voluptatum delectus vero quas quod.\nOptio culpa a quis sit nisi. Eum iure occaecati iure officia. Minima dolorum nobis tempora fugit expedita enim eos.', 12, 449.58),
(83, 'fuga', 'Facilis soluta voluptatum saepe dolore eum est. Accusamus eveniet ipsam.\nExercitationem sed dolorem exercitationem quibusdam. Deserunt quo quas exercitationem quos enim sapiente.', 28, 303.35),
(84, 'distinctio', 'Aut officia doloremque repudiandae amet debitis sequi. Accusantium rerum aperiam eveniet vitae. Nam molestiae maxime doloremque repellat quis aliquam aspernatur.', 46, 373.17),
(85, 'nemo', 'Vero perspiciatis eveniet incidunt perspiciatis ipsa. Dolor nobis ipsum. Provident expedita animi minima. Aliquid eveniet sapiente accusamus.', 14, 55.87),
(86, 'aspernatur', 'Non reprehenderit architecto atque voluptatum hic adipisci. Occaecati deleniti saepe aut natus similique earum. Labore tenetur perferendis nostrum eaque itaque voluptates.', 27, 543.57),
(87, 'deleniti', 'Deleniti et tempore dignissimos quae nam et sequi. Totam iusto voluptates soluta dolorem repellendus nulla.', 34, 38.60),
(88, 'sint', 'Consequatur laudantium dolorem. Ad culpa quae vitae quis. Nisi consequuntur at animi deleniti neque.\nSapiente deleniti non iste nesciunt.', 50, 652.74),
(89, 'sit', 'Similique porro quidem beatae nesciunt voluptatibus. Architecto numquam facere quo consequatur.', 31, 874.38),
(90, 'vitae', 'Quas quibusdam ipsa nostrum amet. Corporis a expedita est. Modi facilis quae corporis doloremque voluptatum quaerat.', 41, 264.56),
(91, 'dignissimos', 'Similique totam aliquam beatae hic. Deserunt delectus nam eaque. Esse explicabo sit libero occaecati voluptas. Aliquid non non corrupti.', 14, 51.38),
(92, 'libero', 'Molestias eius distinctio sit molestias necessitatibus. Blanditiis voluptates dolorum voluptatum architecto natus sequi. Corrupti possimus in dolore. Omnis ducimus adipisci reprehenderit expedita.', 2, 706.60),
(93, 'aspernatur', 'Quaerat molestiae aspernatur. Explicabo aperiam placeat ad minus corrupti.\nQuasi voluptatum beatae ipsum blanditiis asperiores ut. Aut molestiae non. Reiciendis odio explicabo.', 48, 113.92),
(94, 'at', 'Amet repudiandae dignissimos suscipit architecto ipsam. Ratione libero doloribus nihil animi.', 8, 177.82),
(95, 'quibusdam', 'Nulla sit harum magni enim. Corrupti totam minus at repellat doloremque sequi.\nEt nihil quia necessitatibus delectus nesciunt ab. Dolores quidem unde laudantium. Odit officiis debitis nihil earum.', 7, 437.78),
(96, 'voluptatem', 'Nisi illo tempora sapiente nostrum. Molestiae impedit nisi facilis perferendis.', 23, 221.23),
(97, 'autem', 'Minima iste temporibus esse qui. Doloremque eveniet ex occaecati illo sunt vitae.', 39, 229.46),
(98, 'at', 'Recusandae autem aspernatur assumenda. Ipsam illo minus. Pariatur dolor fugiat reiciendis blanditiis quis aspernatur. Accusantium dolore repudiandae tempora id.', 33, 327.80),
(99, 'impedit', 'Expedita qui id ipsum laborum eos consequatur. Perspiciatis aliquam culpa corrupti natus. Sed maxime officiis a quas impedit.', 40, 663.63),
(100, 'iusto', 'Deleniti delectus temporibus sint omnis voluptates aut. Minus nihil numquam error consequatur magnam. Explicabo minima soluta nesciunt magnam vel animi ad.', 49, 876.34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_de_compra`
--

CREATE TABLE `ordenes_de_compra` (
  `ID` int(11) NOT NULL,
  `Proyecto_ID` int(11) DEFAULT NULL,
  `Material_ID` int(11) DEFAULT NULL,
  `Cantidad` decimal(10,2) DEFAULT NULL,
  `Precio_Total` decimal(10,2) DEFAULT NULL,
  `Fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ordenes_de_compra`
--

INSERT INTO `ordenes_de_compra` (`ID`, `Proyecto_ID`, `Material_ID`, `Cantidad`, `Precio_Total`, `Fecha`) VALUES
(1, 5, 91, 40.92, 13937.76, '2024-02-09'),
(2, 1, 23, 46.34, 23992.07, '2024-01-24'),
(3, 3, 56, 30.60, 5790.13, '2023-12-15'),
(4, 3, 83, 12.84, 6147.41, '2023-09-18'),
(5, 4, 64, 77.47, 18629.99, '2023-10-20'),
(6, 5, 31, 53.92, 52840.52, '2024-04-02'),
(7, 5, 21, 54.35, 15228.33, '2024-03-06'),
(8, 3, 29, 69.86, 41668.70, '2023-07-12'),
(9, 3, 83, 95.80, 55955.82, '2023-08-22'),
(10, 5, 63, 50.15, 48979.50, '2024-03-13'),
(11, 5, 71, 79.25, 58809.05, '2024-02-05'),
(12, 1, 47, 76.85, 72760.81, '2023-08-17'),
(13, 5, 26, 71.79, 10935.77, '2023-07-22'),
(14, 3, 58, 77.83, 30129.55, '2024-03-31'),
(15, 3, 32, 10.35, 5549.26, '2023-08-12'),
(16, 4, 6, 30.63, 6215.13, '2023-06-19'),
(17, 3, 12, 73.74, 62234.35, '2023-09-20'),
(18, 5, 6, 14.31, 2161.95, '2023-11-20'),
(19, 2, 11, 90.58, 61562.70, '2024-02-11'),
(20, 4, 66, 33.64, 22908.84, '2024-06-03'),
(21, 1, 87, 55.62, 27590.86, '2023-08-08'),
(22, 2, 99, 84.96, 39613.45, '2024-05-22'),
(23, 4, 53, 76.34, 74951.38, '2024-01-27'),
(24, 4, 17, 88.88, 74512.55, '2024-03-26'),
(25, 3, 19, 93.03, 49879.90, '2023-08-20'),
(26, 4, 36, 96.64, 23738.65, '2023-12-10'),
(27, 3, 38, 68.41, 21155.79, '2024-03-14'),
(28, 5, 39, 43.66, 42624.38, '2023-06-29'),
(29, 1, 62, 28.39, 20458.97, '2023-09-22'),
(30, 4, 63, 61.91, 15706.57, '2023-08-15'),
(31, 3, 16, 96.13, 23144.26, '2023-10-30'),
(32, 2, 72, 67.73, 13762.06, '2024-06-01'),
(33, 1, 58, 14.55, 3760.16, '2024-02-19'),
(34, 1, 50, 98.73, 23853.17, '2024-04-07'),
(35, 2, 85, 49.35, 47180.57, '2023-12-14'),
(36, 4, 8, 82.31, 31353.53, '2023-09-17'),
(37, 4, 63, 91.96, 91133.28, '2023-08-19'),
(38, 1, 96, 32.92, 27270.60, '2024-04-25'),
(39, 5, 87, 98.28, 87696.23, '2024-01-22'),
(40, 2, 85, 35.97, 10596.40, '2024-03-26'),
(41, 4, 83, 51.95, 22462.14, '2023-10-24'),
(42, 3, 51, 37.96, 6765.99, '2024-05-07'),
(43, 2, 41, 65.68, 41589.23, '2023-09-13'),
(44, 4, 82, 27.22, 12722.90, '2023-12-11'),
(45, 2, 94, 46.64, 46325.18, '2023-07-30'),
(46, 2, 71, 35.79, 8145.45, '2024-01-03'),
(47, 2, 68, 24.09, 16063.45, '2023-07-11'),
(48, 1, 70, 53.33, 46995.46, '2024-04-17'),
(49, 4, 33, 48.94, 45601.80, '2023-07-06'),
(50, 5, 34, 41.27, 5222.72, '2024-01-20'),
(51, 2, 29, 27.00, 4142.07, '2023-10-24'),
(52, 1, 91, 81.94, 68825.50, '2024-02-17'),
(53, 5, 76, 12.22, 2370.56, '2024-04-06'),
(54, 1, 19, 31.46, 30038.64, '2024-03-15'),
(55, 2, 47, 31.46, 25638.33, '2024-04-11'),
(56, 5, 90, 18.40, 8273.19, '2023-08-15'),
(57, 2, 38, 84.44, 62342.05, '2023-09-22'),
(58, 1, 31, 97.51, 58087.68, '2023-10-18'),
(59, 5, 95, 29.05, 23773.07, '2024-06-13'),
(60, 4, 93, 64.16, 7912.85, '2024-01-17'),
(61, 3, 58, 45.46, 26343.16, '2024-05-17'),
(62, 4, 27, 63.40, 34170.70, '2024-02-07'),
(63, 5, 54, 61.22, 18001.74, '2023-11-13'),
(64, 5, 50, 93.94, 20660.22, '2023-07-23'),
(65, 5, 83, 70.62, 54421.18, '2024-05-27'),
(66, 2, 81, 66.31, 21463.22, '2024-02-13'),
(67, 4, 59, 36.25, 11597.83, '2023-07-16'),
(68, 2, 23, 38.65, 9036.76, '2023-08-24'),
(69, 4, 23, 33.42, 31177.18, '2023-07-16'),
(70, 5, 28, 60.03, 39446.31, '2024-05-24'),
(71, 1, 19, 83.97, 39833.69, '2024-01-21'),
(72, 3, 91, 24.35, 6358.52, '2023-11-20'),
(73, 3, 76, 88.37, 70568.75, '2024-03-22'),
(74, 4, 49, 84.94, 54469.47, '2024-03-17'),
(75, 4, 22, 84.82, 58568.21, '2023-10-31'),
(76, 4, 11, 42.53, 26692.68, '2023-07-16'),
(77, 3, 49, 31.54, 16402.38, '2023-06-23'),
(78, 5, 15, 44.96, 39340.45, '2024-05-31'),
(79, 4, 71, 87.66, 43279.50, '2023-10-29'),
(80, 4, 44, 15.27, 13391.03, '2023-06-20'),
(81, 1, 72, 13.81, 3457.33, '2024-04-25'),
(82, 3, 75, 61.08, 27798.12, '2023-06-25'),
(83, 4, 49, 79.57, 48890.20, '2023-12-20'),
(84, 4, 12, 78.95, 16546.34, '2024-03-13'),
(85, 1, 67, 93.79, 70587.29, '2023-07-30'),
(86, 1, 39, 69.91, 28800.12, '2023-09-21'),
(87, 2, 7, 57.05, 16762.43, '2024-03-24'),
(88, 5, 62, 85.34, 25351.95, '2023-11-12'),
(89, 2, 87, 13.10, 6296.51, '2024-06-04'),
(90, 4, 37, 30.11, 16483.72, '2024-06-08'),
(91, 5, 27, 99.94, 87208.64, '2024-03-13'),
(92, 1, 37, 31.63, 20593.03, '2023-08-20'),
(93, 3, 3, 45.39, 37385.02, '2024-03-01'),
(94, 4, 32, 65.52, 65018.77, '2023-11-12'),
(95, 3, 87, 69.65, 67037.43, '2024-05-07'),
(96, 1, 11, 89.18, 35817.36, '2024-05-24'),
(97, 2, 97, 55.78, 19007.04, '2024-03-15'),
(98, 2, 7, 65.47, 17808.49, '2024-06-09'),
(99, 4, 72, 82.61, 21301.81, '2024-04-13'),
(100, 4, 21, 18.17, 9103.53, '2023-11-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `ID` int(11) NOT NULL,
  `Factura_ID` int(11) DEFAULT NULL,
  `Monto` decimal(10,2) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Metodo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`ID`, `Factura_ID`, `Monto`, `Fecha`, `Metodo`) VALUES
(1, 68, 4854.73, '2024-01-01', 'Transferencia'),
(2, 44, 7270.00, '2023-11-09', 'Transferencia'),
(3, 24, 7426.63, '2023-11-01', 'Transferencia'),
(4, 44, 1416.65, '2023-07-11', 'Efectivo'),
(5, 98, 1885.58, '2023-11-13', 'Tarjeta'),
(6, 59, 9834.13, '2024-01-01', 'Transferencia'),
(7, 84, 7772.93, '2024-03-09', 'Efectivo'),
(8, 87, 4949.41, '2024-04-27', 'Transferencia'),
(9, 46, 7108.33, '2023-08-11', 'Transferencia'),
(10, 17, 6631.69, '2023-11-24', 'Tarjeta'),
(11, 21, 6117.48, '2024-03-26', 'Transferencia'),
(12, 14, 3212.47, '2024-05-22', 'Transferencia'),
(13, 97, 4266.78, '2024-04-23', 'Tarjeta'),
(14, 20, 8103.72, '2024-01-11', 'Transferencia'),
(15, 34, 4611.09, '2023-10-15', 'Transferencia'),
(16, 29, 2838.60, '2023-10-19', 'Tarjeta'),
(17, 45, 8268.56, '2024-05-19', 'Efectivo'),
(18, 74, 2469.27, '2023-07-20', 'Efectivo'),
(19, 38, 1451.79, '2024-01-18', 'Tarjeta'),
(20, 25, 7640.37, '2023-11-12', 'Efectivo'),
(21, 19, 3526.03, '2023-11-23', 'Transferencia'),
(22, 66, 1134.35, '2023-08-17', 'Tarjeta'),
(23, 11, 4706.14, '2024-01-12', 'Tarjeta'),
(24, 44, 9291.46, '2023-12-04', 'Transferencia'),
(25, 63, 1565.25, '2024-05-31', 'Tarjeta'),
(26, 84, 7800.73, '2023-07-17', 'Efectivo'),
(27, 30, 3134.00, '2023-08-16', 'Tarjeta'),
(28, 60, 6157.23, '2023-08-24', 'Tarjeta'),
(29, 67, 4348.11, '2023-09-09', 'Tarjeta'),
(30, 42, 1912.33, '2023-09-15', 'Tarjeta'),
(31, 11, 5390.06, '2024-02-04', 'Tarjeta'),
(32, 73, 9191.42, '2023-09-22', 'Efectivo'),
(33, 95, 6373.48, '2023-08-09', 'Tarjeta'),
(34, 76, 5835.34, '2024-05-28', 'Efectivo'),
(35, 23, 8975.85, '2023-08-14', 'Tarjeta'),
(36, 9, 5881.21, '2023-08-19', 'Tarjeta'),
(37, 13, 6208.35, '2023-10-29', 'Tarjeta'),
(38, 93, 2797.92, '2023-08-15', 'Tarjeta'),
(39, 68, 1414.97, '2023-08-06', 'Tarjeta'),
(40, 55, 9311.35, '2023-07-16', 'Transferencia'),
(41, 37, 2583.79, '2023-10-30', 'Transferencia'),
(42, 80, 1584.79, '2024-02-24', 'Efectivo'),
(43, 77, 4175.40, '2023-10-04', 'Efectivo'),
(44, 81, 8738.82, '2024-05-19', 'Transferencia'),
(45, 44, 5794.09, '2023-09-26', 'Transferencia'),
(46, 79, 8490.21, '2023-09-28', 'Transferencia'),
(47, 59, 1457.26, '2024-02-25', 'Transferencia'),
(48, 94, 1561.34, '2023-10-17', 'Tarjeta'),
(49, 15, 9589.12, '2023-10-08', 'Transferencia'),
(50, 91, 2791.41, '2024-06-04', 'Efectivo'),
(51, 23, 4600.74, '2023-09-26', 'Transferencia'),
(52, 96, 8192.37, '2024-01-09', 'Tarjeta'),
(53, 79, 7011.02, '2024-01-07', 'Efectivo'),
(54, 12, 5750.49, '2024-02-24', 'Tarjeta'),
(55, 99, 2088.39, '2024-02-27', 'Efectivo'),
(56, 23, 6060.39, '2023-10-16', 'Efectivo'),
(57, 83, 9632.87, '2024-04-18', 'Transferencia'),
(58, 11, 6035.37, '2024-04-13', 'Tarjeta'),
(59, 26, 1208.43, '2024-02-14', 'Transferencia'),
(60, 75, 1338.31, '2024-04-20', 'Transferencia'),
(61, 47, 1868.07, '2023-07-22', 'Transferencia'),
(62, 69, 3538.82, '2023-10-24', 'Efectivo'),
(63, 33, 1830.38, '2023-11-05', 'Efectivo'),
(64, 46, 1525.52, '2023-11-18', 'Transferencia'),
(65, 61, 4229.33, '2024-03-09', 'Tarjeta'),
(66, 44, 8438.90, '2023-07-12', 'Efectivo'),
(67, 64, 9142.00, '2023-09-03', 'Tarjeta'),
(68, 94, 5857.46, '2024-04-29', 'Tarjeta'),
(69, 64, 6514.55, '2023-12-05', 'Efectivo'),
(70, 33, 5151.20, '2023-10-25', 'Efectivo'),
(71, 87, 5323.57, '2023-10-18', 'Tarjeta'),
(72, 71, 4902.86, '2024-02-05', 'Tarjeta'),
(73, 73, 6766.54, '2023-07-20', 'Tarjeta'),
(74, 40, 3950.90, '2023-12-14', 'Efectivo'),
(75, 50, 5545.20, '2023-10-01', 'Transferencia'),
(76, 60, 5378.26, '2023-09-28', 'Transferencia'),
(77, 4, 4717.23, '2023-06-23', 'Transferencia'),
(78, 94, 6283.12, '2024-01-22', 'Transferencia'),
(79, 50, 8992.63, '2023-09-15', 'Tarjeta'),
(80, 18, 2039.81, '2023-09-04', 'Efectivo'),
(81, 67, 1015.48, '2023-12-21', 'Tarjeta'),
(82, 57, 3538.26, '2023-07-14', 'Tarjeta'),
(83, 76, 2493.11, '2023-10-23', 'Transferencia'),
(84, 71, 1545.93, '2023-09-11', 'Tarjeta'),
(85, 45, 4474.22, '2023-10-29', 'Tarjeta'),
(86, 9, 4516.02, '2023-12-03', 'Transferencia'),
(87, 85, 4467.57, '2024-03-19', 'Tarjeta'),
(88, 9, 8197.96, '2024-02-09', 'Transferencia'),
(89, 24, 5632.48, '2023-07-14', 'Tarjeta'),
(90, 73, 7305.27, '2023-08-19', 'Tarjeta'),
(91, 36, 4749.85, '2023-10-12', 'Tarjeta'),
(92, 57, 3402.88, '2023-10-25', 'Tarjeta'),
(93, 27, 7960.25, '2023-12-17', 'Efectivo'),
(94, 99, 9524.24, '2023-11-14', 'Tarjeta'),
(95, 87, 3698.50, '2023-12-02', 'Transferencia'),
(96, 14, 1775.86, '2023-11-26', 'Efectivo'),
(97, 75, 7252.44, '2024-03-05', 'Tarjeta'),
(98, 49, 6278.97, '2024-05-22', 'Efectivo'),
(99, 54, 2985.88, '2024-02-17', 'Transferencia'),
(100, 90, 6397.07, '2024-06-03', 'Transferencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prioridad`
--

CREATE TABLE `prioridad` (
  `ID` int(11) NOT NULL,
  `prioridad` varchar(10) DEFAULT NULL,
  `Rango_de_Ejecucion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prioridad`
--

INSERT INTO `prioridad` (`ID`, `prioridad`, `Rango_de_Ejecucion`) VALUES
(1, 'ALTA', '0 a 30 dias'),
(2, 'MEDIANA', '31 a 90 dias'),
(3, 'BAJA', 'Mas de 90 dias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID` int(11) NOT NULL,
  `Nit` varchar(20) DEFAULT NULL,
  `Nombre_de_la_Empresa` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Correo_Electronico` varchar(255) DEFAULT NULL,
  `Actividad_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ID`, `Nit`, `Nombre_de_la_Empresa`, `Direccion`, `Correo_Electronico`, `Actividad_ID`) VALUES
(2, '62009774855342', 'Hnos Buendía S.C.P', 'Cañada Azahara Asensio 7\nCastellón, 18207', 'hnosbuendías.c.p@empresa.com', 5),
(3, '06326716963214', 'Pulido y Escobar S.A.T.', 'Camino Tomás Piñol 9 Apt. 29 \nTarragona, 02067', 'pulidoyescobars.a.t.@empresa.com', 5),
(4, '63605667291635', 'Alcolea y asociados S.L.L.', 'Camino Lara Cruz 8 Puerta 0 \nSegovia, 39932', 'alcoleayasociadoss.l.l.@empresa.com', 1),
(5, '51528603126031', 'Tecnologías BF S.Coop.', 'Glorieta de Maura Nogueira 3 Piso 3 \nCiudad, 13429', 'tecnologíasbfs.coop.@empresa.com', 5),
(6, '32339137954478', 'Luciano Saez Campoy S.L.N.E', 'Glorieta Teodoro Guerra 24 Puerta 6 \nPontevedra, 02136', 'lucianosaezcampoys.l.n.e@empresa.com', 5),
(7, '74519638392522', 'Cruz Carmona Arana S.A.', 'Cuesta Reyes Miró 853\nSegovia, 41634', 'cruzcarmonaaranas.a.@empresa.com', 3),
(8, '64826305406101', 'Marquez y Teruel S.L.N.E', 'Camino Silvia Vicens 6\nCeuta, 47395', 'marquezyteruels.l.n.e@empresa.com', 4),
(9, '06615157370838', 'Finanzas Giner & Asociados S.L.', 'Cañada Ágata Crespi 884\nCeuta, 11349', 'finanzasginer&asociadoss.l.@empresa.com', 1),
(10, '88581379182427', 'Comercializadora Integrales S.A.', 'Ronda de Jose Angel Mateo 69 Puerta 5 \nLeón, 09223', 'comercializadoraintegraless.a.@empresa.com', 5),
(11, '66229849363596', 'Tecnologías Española S.A.U', 'Vial Evelia Montesinos 9\nCuenca, 12145', 'tecnologíasespañolas.a.u@empresa.com', 3),
(12, '16069701973611', 'Ávila y Diego S.A.', 'Pasaje Isidoro Alcolea 12\nTeruel, 20142', 'ávilaydiegos.a.@empresa.com', 5),
(13, '71794635103678', 'Pujadas y Vigil S.L.', 'Cañada de Goyo Fernández 48\nCádiz, 51107', 'pujadasyvigils.l.@empresa.com', 5),
(14, '25022665794897', 'Tecnologías CHS S.C.P', 'Cañada de Demetrio Sandoval 498 Apt. 83 \nSanta Cruz de Tenerife, 15261', 'tecnologíaschss.c.p@empresa.com', 2),
(15, '41468804723420', 'Consultoría Globales S.Com.', 'Plaza Alma Amores 12 Puerta 0 \nAsturias, 19480', 'consultoríaglobaless.com.@empresa.com', 4),
(16, '10129256961395', 'Hotel OBLQ S.A.U', 'Glorieta Ruperto Luz 36\nAsturias, 10465', 'hoteloblqs.a.u@empresa.com', 3),
(17, '31595956138412', 'Alimentación Chamorro S.A.', 'C. Juan Antonio Alcázar 53 Piso 8 \nCórdoba, 36045', 'alimentaciónchamorros.a.@empresa.com', 5),
(18, '76478875987814', 'Grupo Miranda S.L.', 'Paseo Jacobo Galán 83 Apt. 04 \nMelilla, 50961', 'grupomirandas.l.@empresa.com', 3),
(19, '30071069339616', 'Ordóñez y Arévalo S.C.P', 'Callejón de Felicia Prado 152 Apt. 04 \nLas Palmas, 36337', 'ordóñezyarévalos.c.p@empresa.com', 5),
(20, '68152050354065', 'Servicios Vaquero & Asociados S.Com.', 'Pasadizo Lucila Águila 53\nTeruel, 15792', 'serviciosvaquero&asociadoss.com.@empresa.com', 2),
(21, '81459341523041', 'Minería STN S.A.', 'Urbanización Rosa Berenguer 13\nValencia, 37770', 'mineríastns.a.@empresa.com', 5),
(22, '84325762597740', 'Talleres XQT S.L.L.', 'Urbanización de Cristóbal Salom 66 Puerta 9 \nCáceres, 11592', 'talleresxqts.l.l.@empresa.com', 5),
(23, '73179176777839', 'Manufacturas del Mediterráneo S.Coop.', 'Cuesta de León Parejo 11 Puerta 7 \nGuadalajara, 33564', 'manufacturasdelmediterráneos.coop.@empresa.com', 1),
(24, '64311354671678', 'Suministros Barceló S.L.', 'Rambla Adelia Antón 42\nJaén, 36848', 'suministrosbarcelós.l.@empresa.com', 5),
(25, '82338550838155', 'Desarrollo Benítez y asociados S.L.N.E', 'Cuesta de Evangelina Donoso 929\nAlmería, 08274', 'desarrollobenítezyasociadoss.l.n.e@empresa.com', 5),
(26, '89053350821691', 'Alimentación Palmer S.L.', 'Urbanización de Manola Palomar 81 Puerta 3 \nCiudad, 31475', 'alimentaciónpalmers.l.@empresa.com', 1),
(27, '81667523723517', 'Logística Parejo & Asociados S.L.', 'Urbanización Martina Somoza 73 Piso 8 \nCantabria, 01465', 'logísticaparejo&asociadoss.l.@empresa.com', 2),
(28, '84577463397472', 'Gilabert y Benito S.Coop.', 'Pasaje de Diana Pareja 5\nHuesca, 45560', 'gilabertybenitos.coop.@empresa.com', 3),
(29, '93873697090286', 'Alimentación UE S.L.', 'Pasadizo Adalberto Coronado 5 Piso 1 \nValencia, 33874', 'alimentaciónues.l.@empresa.com', 5),
(30, '80657806537353', 'Máxima Sanjuan Téllez S.L.N.E', 'Ronda de Reyes Roura 991\nLas Palmas, 35680', 'máximasanjuantéllezs.l.n.e@empresa.com', 1),
(31, '81367136693839', 'Supermercados del Levante S.L.', 'Acceso de Martín Nogueira 33\nTarragona, 07641', 'supermercadosdellevantes.l.@empresa.com', 2),
(32, '81183343205470', 'Rebeca Llabrés Lamas S.A.', 'Via Ana Batalla 995 Puerta 8 \nZaragoza, 49309', 'rebecallabréslamass.a.@empresa.com', 2),
(33, '52682734576331', 'Alimentación Cárdenas & Asociados S.L.N.E', 'Cañada de Alberto Rodriguez 96\nSalamanca, 07852', 'alimentacióncárdenas&asociadoss.l.n.e@empresa.com', 5),
(34, '59133871205184', 'Mateu y asociados S.Com.', 'Avenida de Telmo Antón 49\nMelilla, 39580', 'mateuyasociadoss.com.@empresa.com', 4),
(35, '78075257388929', 'Cabezas y asociados S.A.', 'Pasadizo Victorino Galiano 346\nCastellón, 25618', 'cabezasyasociadoss.a.@empresa.com', 3),
(36, '49827278162039', 'Supermercados FCBG S.L.L.', 'Via Emma Marquez 16\nLeón, 27921', 'supermercadosfcbgs.l.l.@empresa.com', 2),
(37, '59354598983525', 'Manufacturas Teruel S.Com.', 'Vial Calixta Valero 1\nBurgos, 30398', 'manufacturasteruels.com.@empresa.com', 3),
(38, '15557513305334', 'Instalaciones Valero S.A.U', 'Ronda de Sabina Caballero 90 Piso 2 \nÁvila, 42881', 'instalacionesvaleros.a.u@empresa.com', 4),
(39, '24666416605493', 'Fábrica Polo S.Com.', 'Vial de Candelas Dalmau 537 Apt. 93 \nLleida, 05596', 'fábricapolos.com.@empresa.com', 1),
(40, '40565064816504', 'Liliana Dalmau Borrell S.A.', 'Pasaje Inmaculada Hernández 7\nÁvila, 45590', 'lilianadalmauborrells.a.@empresa.com', 1),
(41, '26506212244211', 'Múñiz y Almazán S.L.', 'Ronda de Ariadna Mosquera 881 Piso 4 \nJaén, 33890', 'múñizyalmazáns.l.@empresa.com', 4),
(42, '32037117635535', 'Comercializadora SL S.Coop.', 'Via de Xiomara Verdugo 912 Apt. 33 \nToledo, 14900', 'comercializadorasls.coop.@empresa.com', 2),
(43, '79723842854727', 'Consultoría DAYU S.L.', 'Camino de Daniel Anguita 1\nLa Coruña, 04532', 'consultoríadayus.l.@empresa.com', 2),
(44, '40820609686163', 'Fábrica Sabater S.L.L.', 'Pasaje de Onofre Heras 721 Puerta 9 \nCáceres, 07126', 'fábricasabaters.l.l.@empresa.com', 2),
(45, '13429142555924', 'Georgina Moraleda Simó S.L.N.E', 'Acceso Paca Benítez 7\nGranada, 15187', 'georginamoraledasimós.l.n.e@empresa.com', 4),
(46, '98935023239239', 'Grupo Sotelo S.Coop.', 'Camino Jesús Cerdán 51\nGranada, 30372', 'gruposotelos.coop.@empresa.com', 1),
(47, '73943058194691', 'Calderón & Asociados S.Com.', 'Pasaje de Anselmo Bolaños 64\nCuenca, 01417', 'calderón&asociadoss.com.@empresa.com', 4),
(48, '07854226942282', 'Familia Pi S.A.U', 'Vial de Abraham Salvador 92 Puerta 0 \nCuenca, 44956', 'familiapis.a.u@empresa.com', 4),
(49, '59046147739932', 'Inversiones Tamayo S.A.', 'Rambla Jose Antonio Quesada 258 Puerta 6 \nNavarra, 45879', 'inversionestamayos.a.@empresa.com', 3),
(50, '97121054178417', 'Grupo Alegria S.L.N.E', 'Camino de Graciela Nieto 4 Piso 9 \nCastellón, 33296', 'grupoalegrias.l.n.e@empresa.com', 5),
(51, '82392397820167', 'Nicanor Galiano Llorens S.A.', 'Calle de Irene Uribe 1\nSegovia, 26506', 'nicanorgalianollorenss.a.@empresa.com', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Cliente_ID` int(11) DEFAULT NULL,
  `Fecha_de_Inicio` date DEFAULT NULL,
  `Fecha_de_Finalizacion` date DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`ID`, `Nombre`, `Descripcion`, `Cliente_ID`, `Fecha_de_Inicio`, `Fecha_de_Finalizacion`, `Estado`) VALUES
(1, 'Phased incremental methodology', 'Suscipit rem aut necessitatibus odio porro dicta. Nam labore vel autem numquam minus et. Vel nostrum similique.\nDucimus sint eligendi repudiandae. Dicta suscipit voluptatibus nobis modi.', 3, '2022-08-10', '2022-11-16', 'Cancelado'),
(2, 'Operative homogeneous encryption', 'Eligendi reprehenderit facere architecto voluptatem dolorem. Vitae eveniet est dignissimos. Facilis perspiciatis sed quibusdam sit ipsam.', 14, '2022-08-24', '2023-05-06', 'Completado'),
(3, 'Robust multi-tasking moratorium', 'Molestiae eos corporis suscipit eligendi voluptas magni. Aperiam quae eligendi ad earum.\nEx quidem modi modi. Impedit porro commodi cum impedit aspernatur.', 11, '2024-02-04', '2024-07-19', 'En progreso'),
(4, 'Organized content-based encryption', 'Nulla ipsa eos error eos. Cumque accusamus repudiandae iste. Quod explicabo rem recusandae repellat voluptas.', 33, '2024-03-24', '2024-06-20', 'En espera'),
(5, 'Polarized multimedia algorithm', 'Optio molestiae iusto consequatur itaque laudantium quibusdam. Reiciendis velit blanditiis quod ad. Ipsam sapiente iste iste minus debitis.', 76, '2022-07-15', '2023-03-20', 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_contratistas`
--

CREATE TABLE `proyectos_contratistas` (
  `Proyecto_ID` int(11) NOT NULL,
  `Contratista_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `ID` int(11) NOT NULL,
  `Proyecto_ID` int(11) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Responsable_ID` int(11) DEFAULT NULL,
  `Empleado_ID` int(11) DEFAULT NULL,
  `Fecha_de_Inicio` date DEFAULT NULL,
  `Fecha_de_Finalizacion` date DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`ID`, `Proyecto_ID`, `Descripcion`, `Responsable_ID`, `Empleado_ID`, `Fecha_de_Inicio`, `Fecha_de_Finalizacion`, `Estado`) VALUES
(2, 5, 'Tempora error sunt numquam corrupti eum. Earum aut recusandae quo nesciunt.\nNon unde impedit reprehenderit iusto excepturi numquam. Fugit eaque fuga consequatur dolorem tenetur asperiores qui.', 50, 68, '2024-04-23', '2024-05-08', 'Pendiente'),
(3, 4, 'Nihil alias minima. Vitae voluptas incidunt. Eveniet qui assumenda dolores sequi odio praesentium.\nNisi facere aspernatur eius minus hic.', 17, 85, '2023-11-27', '2023-12-06', 'En Progreso'),
(4, 1, 'Natus reprehenderit possimus natus explicabo. Delectus quisquam sed ipsam non quisquam placeat.\nQuam suscipit molestias magni ullam totam. Inventore consectetur commodi maiores quo.', 97, 33, '2024-06-03', '2024-07-01', 'En Progreso'),
(5, 1, 'Deserunt praesentium quis nobis sed pariatur. Ab quaerat explicabo consequuntur iste.', 93, 100, '2024-05-25', '2024-06-06', 'En Progreso'),
(6, 1, 'Maiores eaque quisquam culpa iure corporis. Ex esse officia. Itaque alias veniam laborum.\nLaboriosam eveniet voluptates fugit numquam consequuntur.\nTotam magni similique. Iure nemo in.', 73, 94, '2023-08-11', '2023-09-04', 'En Progreso'),
(7, 4, 'Sunt provident suscipit fugit dicta iste. Alias dolorum explicabo rem distinctio recusandae labore. Omnis veritatis voluptates autem ab.', 93, 10, '2023-12-21', '2024-01-04', 'Pendiente'),
(8, 3, 'Facere eaque itaque fugiat ipsum harum est. Pariatur voluptate vero aliquam.', 81, 87, '2023-12-07', '2023-12-22', 'En Progreso'),
(9, 3, 'Placeat voluptatum illo ratione. Rerum totam error alias.\nQuam sequi recusandae incidunt error velit. Quae repudiandae eius rem natus veritatis quod consequuntur.', 34, 94, '2023-10-30', '2023-11-18', 'Pendiente'),
(10, 2, 'Doloribus fugiat modi maxime voluptatibus molestias. Excepturi libero rem debitis quos.', 7, 25, '2024-01-10', '2024-01-29', 'Pendiente'),
(11, 2, 'Blanditiis molestiae magnam repellendus ducimus. Asperiores quae ab perferendis.', 6, 48, '2023-09-01', '2023-09-06', 'Pendiente'),
(12, 5, 'Molestias asperiores excepturi suscipit. Aspernatur harum harum cum qui expedita iure.', 63, 60, '2024-03-23', '2024-04-05', 'En Progreso'),
(13, 2, 'Non expedita odit voluptas deserunt sequi libero deserunt. Autem debitis quo minima. Similique optio assumenda ab similique voluptate sapiente.', 4, 77, '2023-11-21', '2023-12-13', 'En Progreso'),
(14, 3, 'Dolor nihil quo quisquam vero culpa. Voluptates sequi beatae ea.\nOptio aliquid ipsam reprehenderit. Rerum soluta modi laboriosam odit.\nTempora suscipit vero facilis.', 53, 94, '2023-10-21', '2023-11-17', 'Pendiente'),
(15, 4, 'Et ab modi dignissimos nobis. Saepe dignissimos ad nobis sapiente voluptatibus.\nAliquam earum cupiditate corrupti fugit. Tempore accusantium voluptate quam eius ducimus inventore exercitationem.', 67, 38, '2023-09-26', '2023-10-15', 'En Progreso'),
(16, 4, 'Vitae molestias aliquam explicabo voluptatem sint adipisci sit. Mollitia ab natus adipisci.\nCumque nam ut debitis amet eaque. Consequatur vero amet esse.', 39, 89, '2023-07-12', '2023-07-31', 'Completada'),
(17, 1, 'Recusandae cumque accusantium dolores voluptate sit totam.\nTempora quasi dolore quibusdam ipsa. Quod quaerat iusto illo voluptatibus.\nEst quo vero aperiam nostrum dolore ex. Ipsam maiores esse.', 43, 30, '2023-09-19', '2023-10-10', 'En Progreso'),
(18, 5, 'Voluptate repudiandae pariatur neque. Rem aut quas.', 59, 15, '2023-12-02', '2023-12-16', 'Completada'),
(19, 5, 'Tenetur ab ab animi. Vel non cumque maxime distinctio ullam. Optio modi dolor doloribus.\nDelectus aspernatur consectetur asperiores explicabo quisquam labore. Laboriosam eius quae est minima.', 11, 47, '2023-08-13', '2023-08-25', 'En Progreso'),
(20, 5, 'Ullam expedita a iure consequatur. Provident ad aspernatur at est ducimus. Illum consectetur laborum cum libero occaecati.\nDebitis debitis itaque mollitia unde. Quia voluptatem tenetur autem.', 94, 66, '2024-03-04', '2024-03-07', 'Pendiente'),
(22, 1, 'Quod pariatur quas. Iste nam neque.\nSed iusto fugiat cumque. Tenetur hic provident eius. Explicabo quisquam temporibus mollitia.', 26, 21, '2024-03-09', '2024-03-13', 'En Progreso'),
(23, 3, 'Hic ad libero sapiente dolorem. Enim accusantium cum itaque.\nRem non ab quae. Magni sint inventore omnis inventore. Soluta sunt magni officiis ad voluptas.', 55, 98, '2024-03-02', '2024-03-28', 'Pendiente'),
(24, 1, 'Accusamus neque quibusdam ullam. Voluptates exercitationem nostrum magni reiciendis laborum. Odit cumque dolor excepturi vel.', 67, 12, '2024-06-04', '2024-06-27', 'Pendiente'),
(25, 3, 'Suscipit ab numquam odit laborum quam optio. Odit aspernatur minima itaque impedit cumque quibusdam consequuntur.', 43, 65, '2023-09-30', '2023-10-21', 'En Progreso'),
(26, 4, 'Ipsa recusandae dicta quo. Neque quae soluta fugiat quia.', 97, 49, '2023-08-18', '2023-08-20', 'Pendiente'),
(27, 3, 'Unde at dolores.\nQuasi aliquid doloribus deserunt illum ut praesentium reprehenderit. Voluptatibus amet ad.', 74, 64, '2024-05-04', '2024-05-21', 'En Progreso'),
(28, 4, 'Aliquid sequi excepturi fuga aspernatur repudiandae. Corrupti voluptatibus vitae modi eum laudantium. Beatae corrupti officia eum eligendi.\nRecusandae totam impedit.', 98, 25, '2023-09-09', '2023-10-07', 'Completada'),
(29, 5, 'Rerum similique debitis omnis. Tenetur error eveniet nihil ex aperiam. Nemo cupiditate nesciunt voluptatibus perferendis eaque eligendi.', 43, 80, '2024-05-18', '2024-06-17', 'Pendiente'),
(30, 5, 'Veniam esse asperiores fuga blanditiis ipsam sit. Illo praesentium distinctio aliquam fuga aliquam quaerat.', 4, 75, '2024-01-10', '2024-01-21', 'En Progreso'),
(31, 3, 'Facilis nobis pariatur sit animi id asperiores. Ea optio nemo soluta doloribus facilis. Assumenda placeat necessitatibus quos repellat.', 88, 29, '2023-12-22', '2024-01-13', 'Pendiente'),
(32, 4, 'Sint quae odio sit fuga optio fugiat unde. Aliquam doloremque voluptate culpa repudiandae ducimus praesentium.', 2, 68, '2023-11-09', '2023-12-04', 'Completada'),
(33, 2, 'Unde ratione impedit. Modi hic ad atque corrupti officia aliquam.\nCupiditate debitis non officiis porro suscipit. Sint impedit ab.', 5, 38, '2023-07-07', '2023-08-03', 'Pendiente'),
(34, 5, 'Nihil nam nemo exercitationem velit voluptatibus. Repudiandae consectetur a ut doloribus illum corrupti vitae.\nFuga quae porro dolores ab maiores. Aliquam consectetur quo nihil veniam quis sint.', 72, 51, '2024-04-23', '2024-04-30', 'En Progreso'),
(35, 5, 'Molestiae sapiente quae est fugit suscipit. Alias illum explicabo maxime soluta ea vero.\nVoluptatum quo blanditiis atque eum possimus excepturi.', 71, 90, '2023-10-19', '2023-10-23', 'Completada'),
(36, 3, 'Placeat quis porro facere architecto earum. Odit nemo nam maiores inventore a qui assumenda.\nDucimus tempore et natus quos vero animi. Excepturi similique expedita eveniet modi cumque facilis.', 53, 86, '2023-11-25', '2023-12-13', 'En Progreso'),
(37, 3, 'Odio quo tempore facere. Sint similique perferendis quis nam blanditiis. Debitis magnam accusamus doloremque laborum nostrum nesciunt. Dolorum ipsum ipsa consectetur at.', 66, 18, '2024-04-04', '2024-05-02', 'Completada'),
(38, 5, 'Omnis illum autem cumque aliquam iste laudantium. Perspiciatis labore veniam laborum nesciunt asperiores. Ab omnis a distinctio dignissimos.', 54, 99, '2024-04-20', '2024-05-09', 'Pendiente'),
(39, 4, 'Praesentium maxime voluptates quidem illum cupiditate. Autem iusto deleniti modi dolorum quisquam cupiditate fuga.\nDicta tempore cupiditate. Rem ducimus et facilis architecto neque accusantium.', 85, 19, '2023-09-18', '2023-10-17', 'Completada'),
(40, 2, 'Nostrum molestiae iure eligendi facilis vero provident. Inventore numquam facere ad eaque optio laudantium. Et vitae voluptatum soluta exercitationem.', 21, 10, '2023-06-28', '2023-07-18', 'Pendiente'),
(41, 4, 'Officia repellendus optio officia. Blanditiis in consectetur sit. Provident quas quae ex praesentium dicta.', 65, 33, '2024-06-15', '2024-06-26', 'Completada'),
(42, 5, 'Numquam consequatur dolore quod excepturi. Maxime distinctio iusto quo excepturi dolores. Nobis corrupti similique velit quia inventore. Quam temporibus fugiat provident impedit.', 37, 60, '2023-07-09', '2023-07-30', 'Pendiente'),
(43, 1, 'Soluta sit placeat assumenda in repellat. Dolorem optio adipisci eligendi earum aperiam. Ipsum saepe at ut blanditiis.', 15, 100, '2024-05-23', '2024-06-10', 'En Progreso'),
(44, 5, 'Rerum quos doloremque saepe voluptate dolor ipsam. Magni quibusdam eius dolorem voluptas. Natus reiciendis modi deleniti dolores dolorem.', 92, 12, '2023-09-18', '2023-09-19', 'Pendiente'),
(45, 4, 'Ab dolores expedita aperiam aut unde. Vel omnis modi eveniet quis ex. Consequuntur rerum consequatur tempora exercitationem.\nTempore harum facilis. Accusamus vel modi hic temporibus.', 70, 70, '2023-10-10', '2023-10-24', 'Completada'),
(46, 2, 'Vero facilis dolores aliquid. Doloribus aliquam aperiam ut.\nAt aut perferendis repellat deserunt unde. Error itaque explicabo commodi fugiat veniam odit.', 22, 81, '2024-05-12', '2024-05-15', 'En Progreso'),
(47, 5, 'Unde modi animi quia deleniti eius itaque. Laborum a atque officiis incidunt dolores voluptatibus.', 23, 86, '2024-04-17', '2024-04-29', 'Pendiente'),
(48, 3, 'Veniam officia doloribus voluptatum aperiam ipsam beatae nulla. Tempora eum facilis iure veritatis. Nemo vero ipsum illum laborum blanditiis adipisci.', 95, 85, '2023-08-30', '2023-09-23', 'En Progreso'),
(49, 4, 'Doloribus facere ratione autem.\nError voluptas fugiat excepturi. Voluptates assumenda amet quos perspiciatis. Ullam saepe corrupti amet beatae necessitatibus.', 93, 17, '2023-08-16', '2023-09-14', 'Pendiente'),
(50, 4, 'Labore nulla vero. Commodi tenetur iusto corporis eius ipsam quaerat. Consequatur repellat odio officiis nihil fuga eligendi eligendi. Vitae optio aliquid aliquid impedit cum suscipit ipsum.', 72, 42, '2024-02-07', '2024-02-18', 'Pendiente'),
(51, 2, 'Repellendus laborum nobis aliquam perferendis doloremque. Tempore distinctio in consequuntur facilis.', 77, 81, '2024-03-23', '2024-04-06', 'Pendiente'),
(52, 5, 'Ipsum beatae beatae illum sapiente. Quasi magnam molestias quod fuga tenetur. Cumque nemo officia eligendi architecto consectetur quidem.', 81, 54, '2023-11-19', '2023-12-01', 'Completada'),
(53, 1, 'Dolorem voluptatem aut aperiam. Atque officia nihil blanditiis odit.\nCumque quidem tempora sapiente officia fugit. Sit numquam qui natus temporibus. Et quo neque molestiae error adipisci.', 67, 61, '2023-07-24', '2023-08-03', 'Completada'),
(54, 4, 'Eaque quos modi minus omnis. Similique qui nostrum itaque. Ipsam nihil soluta nam voluptatum corporis aperiam. Aperiam nihil quaerat dolorem odio libero odit.\nExpedita beatae ea eveniet sapiente.', 90, 25, '2024-03-22', '2024-04-16', 'En Progreso'),
(55, 2, 'Deleniti animi magni nisi velit. Eum enim tempora inventore dicta. Eum mollitia soluta fugit amet.', 95, 59, '2024-05-11', '2024-05-20', 'Pendiente'),
(56, 1, 'Reiciendis aliquid tempora. Corrupti odio aliquam odit adipisci nesciunt accusamus. Possimus voluptates veniam saepe molestiae incidunt tenetur.\nAssumenda quasi maiores. Non quidem eum quod.', 58, 63, '2023-10-19', '2023-11-08', 'En Progreso'),
(57, 2, 'Delectus nobis quam provident explicabo sequi magni. Officia sed saepe sed.\nQuasi ad dolorem expedita unde voluptatibus a. Tenetur sed molestias officiis dolorem vitae distinctio.', 51, 44, '2023-07-15', '2023-08-12', 'Completada'),
(58, 5, 'Sequi nisi exercitationem cumque. Possimus id impedit esse amet dolores odit delectus. Voluptatum commodi ullam nam.\nEst itaque amet quo maiores esse.\nEum beatae quis odio unde.', 21, 39, '2023-12-08', '2023-12-25', 'Completada'),
(59, 2, 'Aperiam assumenda ab perferendis. Itaque nobis explicabo dolore laborum dignissimos.\nEsse inventore facilis consectetur. Pariatur impedit in.', 65, 50, '2023-11-30', '2023-12-18', 'Pendiente'),
(60, 2, 'Quam debitis laudantium perferendis voluptatum. Illum magni animi laborum.', 61, 41, '2024-01-15', '2024-02-09', 'En Progreso'),
(61, 1, 'Fugit voluptas odit molestiae sint iusto quia. Rerum sint repudiandae.\nAliquam praesentium harum earum. Nam eaque doloremque repudiandae fugit.', 13, 90, '2024-03-01', '2024-03-15', 'Completada'),
(62, 1, 'Quidem nam harum quos necessitatibus. Nam quasi totam ab. Omnis veritatis doloribus similique dolor deserunt.', 38, 44, '2023-10-16', '2023-10-17', 'Completada'),
(63, 3, 'Odio dolor reprehenderit ut. Deleniti dolorem eos dolore. Dicta itaque eligendi.\nRepellat labore soluta. Voluptas iste provident.', 32, 1, '2024-05-09', '2024-06-04', 'Completada'),
(64, 1, 'Nobis vero cum pariatur cum saepe et. Id dignissimos distinctio numquam laudantium saepe. Molestiae accusamus eos vero.', 49, 37, '2024-05-30', '2024-06-16', 'En Progreso'),
(65, 5, 'Deserunt dolorum fugit voluptas. Saepe dignissimos debitis optio quibusdam ea ducimus aperiam. Voluptatem maxime impedit autem.\nIste ullam vel occaecati eveniet a voluptate est. Iste id nulla.', 76, 26, '2023-06-18', '2023-06-21', 'En Progreso'),
(66, 2, 'Iure fuga sit natus. Aliquid odit sit quidem magnam cumque consequatur animi. Fugiat quibusdam harum.\nRecusandae mollitia vero tenetur. Unde dicta velit facere commodi.', 65, 19, '2023-06-25', '2023-07-08', 'En Progreso'),
(67, 2, 'Doloremque possimus est pariatur illo. Occaecati quis accusantium ratione quia.', 50, 93, '2023-08-08', '2023-08-12', 'En Progreso'),
(68, 3, 'Ipsam sunt dicta quisquam laboriosam cumque debitis aspernatur. Necessitatibus facere ducimus quasi rerum blanditiis. Magnam at magni asperiores.', 7, 90, '2024-06-11', '2024-06-23', 'Completada'),
(69, 2, 'Saepe quis in praesentium voluptatum. Possimus voluptatem et et voluptatum vero. A aliquid fugit excepturi.', 29, 27, '2024-02-20', '2024-02-24', 'Completada'),
(70, 5, 'Aperiam veniam quas libero dolorum harum saepe laborum. Minima corrupti autem magnam exercitationem.', 39, 22, '2023-10-02', '2023-10-03', 'Pendiente'),
(71, 3, 'Soluta quibusdam fuga doloribus assumenda expedita odio. Molestias alias labore sapiente facilis excepturi porro. Aspernatur non cumque optio incidunt. Quasi iure maiores.', 44, 16, '2024-02-28', '2024-03-17', 'Completada'),
(72, 5, 'Impedit tempora provident ut vero soluta. Qui accusantium animi at alias.', 57, 80, '2024-05-27', '2024-06-25', 'En Progreso'),
(73, 3, 'Aperiam ipsa officia maxime voluptatum reprehenderit. Nulla inventore quae quasi perspiciatis fugit rerum. Laboriosam ducimus nisi quos ad quam.', 24, 46, '2024-05-19', '2024-06-04', 'Completada'),
(74, 2, 'Corrupti nostrum accusantium consequatur. Mollitia modi commodi temporibus quidem. Dolorem non vel provident dolorum reiciendis sit.\nA sunt similique placeat minima libero. Libero vitae et nulla.', 66, 26, '2024-05-29', '2024-06-01', 'Pendiente'),
(75, 5, 'Fugit cum eos id atque suscipit. Autem vel iste deserunt repellendus esse. Delectus earum distinctio facilis soluta explicabo corrupti alias.', 22, 49, '2024-04-04', '2024-04-11', 'Pendiente'),
(76, 4, 'Sequi aspernatur nulla fugit. Optio impedit beatae minima cum.\nTenetur animi iusto consectetur quam voluptatibus. Odio occaecati praesentium harum odit aliquid.', 16, 30, '2024-04-18', '2024-04-28', 'En Progreso'),
(77, 5, 'Deserunt laborum nesciunt minus. Culpa expedita dolorem quos. Fugit necessitatibus mollitia nulla velit nisi quis. A atque suscipit beatae fugiat explicabo.', 99, 61, '2024-04-02', '2024-05-02', 'En Progreso'),
(78, 4, 'Vel quisquam dolor occaecati est modi. Totam iusto iusto assumenda. Repellendus dolorem facere nihil dolore vel.', 84, 57, '2024-03-01', '2024-03-07', 'Completada'),
(79, 3, 'Quam est vel consequuntur cumque. Enim expedita voluptas doloribus. Magni dolorum animi quae error.\nDucimus quis harum quo aliquam odit.', 16, 53, '2024-06-09', '2024-07-05', 'En Progreso'),
(80, 4, 'Recusandae vero architecto neque eaque harum. Maiores saepe adipisci ullam. Cum tempora necessitatibus eius odio.', 57, 25, '2023-07-26', '2023-08-02', 'En Progreso'),
(81, 1, 'Ullam molestiae odit fugiat voluptas quam voluptatibus deleniti. Praesentium eveniet libero dicta quam perspiciatis dolor. Error quos quo.\nNisi ducimus ipsa inventore.', 95, 85, '2024-03-05', '2024-03-14', 'Completada'),
(82, 5, 'Ipsa quasi similique esse. Odit est beatae sequi.\nAssumenda quod dicta molestiae. Libero nam animi aut dolore quia sed. Sequi ipsam tempore adipisci ex.', 79, 56, '2024-02-05', '2024-02-07', 'Pendiente'),
(83, 3, 'Soluta tempore dicta libero ipsum amet accusantium. Quibusdam voluptatum vitae nobis nostrum.\nLaboriosam vitae nam nulla nam dolores pariatur iste. Voluptate doloremque amet aliquid.', 13, 45, '2024-04-23', '2024-05-17', 'En Progreso'),
(84, 1, 'Officiis ut eos consequuntur optio animi perspiciatis. Eum excepturi fuga aliquam. Impedit sed expedita reiciendis eligendi molestias laudantium at.', 14, 63, '2023-08-26', '2023-09-03', 'Completada'),
(85, 3, 'Dolorum sint numquam tempora. Sit ab officia esse iste quibusdam.\nAd accusamus ratione nihil voluptatem sequi.\nConsequuntur molestias fugit quo blanditiis.', 8, 97, '2024-04-19', '2024-05-17', 'Pendiente'),
(86, 1, 'Maxime quidem eaque cumque. Omnis necessitatibus cumque laboriosam et provident alias. Quis sint deleniti repudiandae possimus neque.', 59, 94, '2024-06-08', '2024-07-02', 'Completada'),
(87, 5, 'Iusto necessitatibus modi nulla. Quae quia quia neque. Beatae debitis ad non at deleniti.', 72, 89, '2023-07-02', '2023-07-05', 'Pendiente'),
(88, 3, 'Nisi tenetur non dolores. Blanditiis ipsum doloribus quas quibusdam omnis. Assumenda cumque sunt aliquid sequi.', 38, 3, '2023-10-11', '2023-10-26', 'Pendiente'),
(89, 2, 'Asperiores voluptatem perspiciatis nisi. Iure a natus. Nisi rem ipsum quisquam sint ratione itaque veniam.', 23, 66, '2023-10-23', '2023-11-01', 'Completada'),
(90, 5, 'Repudiandae voluptatibus quos at occaecati. Omnis corporis quisquam.\nDeserunt omnis qui maxime fugit repellendus voluptate. Cumque in corrupti harum praesentium tempore.', 20, 45, '2023-10-29', '2023-11-06', 'Completada'),
(91, 1, 'Dicta quia error doloremque repellendus molestias voluptatum. Nobis omnis exercitationem aliquam aliquam. Veniam eius aspernatur distinctio repellat molestiae. Placeat quas cumque quas provident.', 39, 58, '2023-08-27', '2023-09-14', 'En Progreso'),
(92, 5, 'Ex repudiandae enim inventore assumenda aut. Ut culpa ab.\nMaxime totam vel facere. Dicta vel aspernatur odit optio. Commodi voluptas provident numquam ipsa veritatis sint.', 20, 8, '2024-03-29', '2024-04-01', 'En Progreso'),
(93, 1, 'Cumque minus labore temporibus facere quos natus culpa. Exercitationem asperiores ullam modi. Culpa suscipit blanditiis deleniti consequatur enim ex quibusdam.', 73, 37, '2024-05-22', '2024-05-30', 'Completada'),
(94, 2, 'Possimus nobis nisi sit exercitationem adipisci est. Numquam magnam quidem doloribus ea officiis vero optio.', 86, 87, '2023-07-10', '2023-07-15', 'Completada'),
(95, 2, 'Quis eveniet provident saepe.\nLaboriosam eligendi deleniti eos aspernatur.\nOccaecati nulla sit fugiat nesciunt. Ab error consectetur esse. Laudantium repellendus debitis.', 8, 99, '2023-10-28', '2023-11-16', 'En Progreso'),
(96, 2, 'Est sunt repudiandae velit quibusdam officiis. Ullam molestias expedita ipsum quod sequi. Aspernatur sed quidem amet eum voluptates tempora.', 92, 33, '2023-09-29', '2023-10-06', 'En Progreso'),
(97, 5, 'Molestiae culpa ex quasi placeat porro autem natus. Quasi incidunt in. Voluptatibus aliquam veritatis quo ea laboriosam. Atque incidunt architecto veniam libero veniam.', 63, 11, '2024-04-24', '2024-05-10', 'Completada'),
(98, 5, 'Rem adipisci incidunt architecto enim praesentium tempore. Deleniti assumenda amet autem. Vel amet neque iusto dolores nostrum nesciunt laborum.', 4, 6, '2023-08-19', '2023-09-05', 'En Progreso'),
(99, 1, 'Labore inventore molestiae ex esse beatae. Ab accusamus earum occaecati hic eius aperiam. Atque sunt iste ab itaque rem dignissimos vel.', 20, 94, '2023-07-10', '2023-07-15', 'Pendiente'),
(100, 2, 'Beatae molestias doloremque quam deleniti rerum quo. Velit laudantium maiores repellendus deleniti provident.', 74, 99, '2024-03-19', '2024-04-10', 'En Progreso'),
(101, 5, 'Fugiat culpa modi natus laudantium earum. Excepturi delectus officiis ex possimus ab occaecati est.', 15, 43, '2023-07-25', '2023-08-22', 'Pendiente'),
(102, 2, 'Recusandae sed harum accusantium illo tenetur excepturi. Deserunt repellat quae eveniet illum sint esse. Beatae officiis doloribus aperiam voluptate.', 83, 73, '2024-03-23', '2024-04-10', 'En Progreso'),
(103, 5, 'Rem temporibus debitis. Numquam eaque sed fuga occaecati nobis magni numquam. Eius id suscipit quidem deleniti occaecati.\nIusto atque nesciunt nostrum. Iste sint a deserunt asperiores at expedita.', 33, 81, '2023-08-06', '2023-08-18', 'Completada'),
(104, 1, 'Laborum dolor id tempore. Magnam ipsa totam.\nIllo veniam provident est architecto eaque quae accusamus. Consequuntur dignissimos id totam.', 84, 38, '2023-09-08', '2023-10-01', 'En Progreso'),
(105, 3, 'Saepe beatae quas cupiditate recusandae quaerat. Aliquam voluptatibus qui tempora voluptas veniam culpa. Excepturi libero animi optio neque nisi.', 64, 35, '2023-09-30', '2023-10-01', 'En Progreso'),
(106, 1, 'Accusamus eveniet doloremque quisquam aut. Culpa exercitationem consectetur omnis odio. Voluptate aliquid eveniet nisi.\nIncidunt officia numquam quaerat provident quae.', 59, 100, '2023-08-01', '2023-08-23', 'En Progreso'),
(107, 1, 'Occaecati rem temporibus hic assumenda. Eius ea occaecati quae suscipit officiis.', 45, 68, '2024-01-03', '2024-02-02', 'Completada'),
(108, 3, 'Quos recusandae adipisci laborum incidunt. Vero temporibus enim commodi explicabo error delectus. Quam veniam iure consequuntur illo.', 96, 16, '2024-01-16', '2024-01-30', 'Completada'),
(109, 1, 'Ratione odit officia quod ad amet. Deserunt neque sequi voluptatem consectetur repellat quo.\nMaxime in doloribus tempora odio.', 73, 61, '2023-09-19', '2023-09-21', 'En Progreso'),
(110, 1, 'Quasi blanditiis cupiditate nulla ipsum quia corporis. Repudiandae quasi atque eius libero. Eligendi possimus illo labore blanditiis commodi.\nAsperiores corporis aspernatur sit consequatur.', 35, 83, '2023-07-20', '2023-07-29', 'Completada'),
(111, 4, 'Eius hic magnam iure corrupti repudiandae. Fugiat vitae aliquam voluptates recusandae sequi voluptatum ducimus. Soluta non corporis doloremque voluptates natus.', 38, 7, '2024-06-01', '2024-06-06', 'Pendiente'),
(112, 4, 'Voluptatum harum debitis veniam. Dolore quasi rerum sed quidem. Harum occaecati accusantium inventore ad repellat. Ipsam tenetur vitae laboriosam architecto perspiciatis doloremque.', 14, 60, '2023-12-24', '2024-01-17', 'Pendiente'),
(113, 3, 'Enim perferendis nihil non. Atque quisquam eos illum atque odio. Sit a repellat minus.', 72, 57, '2023-11-28', '2023-12-08', 'En Progreso'),
(114, 3, 'Ea error rerum assumenda accusantium ducimus placeat.\nAt voluptate libero odit nam illo. Ipsa tempora nesciunt natus vel vel accusantium.\nUt dolores architecto eligendi quasi officia.', 63, 30, '2024-05-02', '2024-05-30', 'En Progreso'),
(115, 1, 'Perferendis animi voluptatum harum quod labore quasi.\nAt aliquid officiis aut officia. Incidunt ad doloribus doloremque ut laboriosam. Totam numquam optio repudiandae fuga nesciunt adipisci.', 39, 53, '2023-11-21', '2023-11-22', 'En Progreso'),
(116, 2, 'Reprehenderit explicabo hic cupiditate porro similique incidunt. Quaerat neque laborum facere quasi.\nRecusandae itaque aliquam minima adipisci. Inventore iusto repudiandae qui id.', 12, 25, '2023-11-01', '2023-11-25', 'En Progreso'),
(117, 3, 'Ipsam tempora ullam quia quisquam eos modi. Aliquam ab beatae et perspiciatis.', 50, 41, '2024-04-11', '2024-05-07', 'En Progreso'),
(118, 4, 'Neque doloremque vero porro mollitia beatae aspernatur nostrum. Quia occaecati quidem exercitationem omnis deserunt sed. Eius expedita possimus inventore tempore repudiandae.', 89, 69, '2023-09-15', '2023-10-06', 'Pendiente'),
(119, 1, 'Quod recusandae adipisci ea magni. Nisi ullam animi sequi distinctio expedita quia. Porro ex illum qui error. Ipsum veniam debitis delectus veritatis earum repellendus est.', 90, 58, '2023-06-25', '2023-07-17', 'En Progreso'),
(120, 5, 'In aliquid sequi. Voluptates dolore nemo vero assumenda facilis sunt sequi. Odit accusamus quam reprehenderit aspernatur architecto tenetur.', 41, 37, '2024-06-02', '2024-06-06', 'Completada'),
(122, 1, 'Maiores dignissimos velit.\nIllo eum fugiat at expedita. Quia ab necessitatibus perferendis hic pariatur sequi. Atque sint quasi aspernatur.', 67, 58, '2024-04-03', '2024-04-07', 'En Progreso'),
(123, 2, 'Iusto asperiores nostrum placeat. Hic hic consequuntur ex. Unde error dolor ea cum quod pariatur.\nVelit saepe quod alias. Enim consequatur suscipit laboriosam magnam quae enim voluptate.', 23, 36, '2023-09-09', '2023-09-29', 'En Progreso'),
(124, 1, 'At quibusdam odit ipsam. Aut laborum iure ea facilis officiis. Doloribus reprehenderit voluptates perferendis quidem fuga. Quaerat sapiente nobis expedita esse necessitatibus dolore.', 26, 14, '2024-02-02', '2024-03-03', 'Pendiente'),
(125, 1, 'Praesentium itaque nulla qui autem. Cum distinctio quos magni fugit enim ullam. Rem repudiandae unde ipsum.', 5, 96, '2023-09-20', '2023-10-06', 'Completada'),
(126, 2, 'Porro deleniti et animi. Dolor sed ipsa laudantium similique.', 92, 98, '2024-01-17', '2024-02-05', 'Pendiente'),
(127, 3, 'Perferendis voluptatem architecto error totam cumque. Vel consequuntur qui porro aliquid laboriosam quod.', 20, 58, '2023-08-01', '2023-08-14', 'En Progreso'),
(128, 4, 'Vero incidunt harum libero nesciunt praesentium optio. Minus dignissimos magni voluptatum adipisci magni.', 97, 92, '2024-02-27', '2024-03-24', 'Pendiente'),
(129, 3, 'Atque minima et culpa dolores iure recusandae esse. Quaerat facere enim debitis beatae alias deleniti beatae. Suscipit quidem consequatur laborum.', 78, 24, '2024-04-21', '2024-05-11', 'Pendiente'),
(130, 4, 'Error et ipsam debitis eius. Odit sapiente animi impedit sit.', 29, 83, '2023-08-09', '2023-09-01', 'En Progreso'),
(131, 3, 'Laudantium sed minus iusto illo tenetur.\nConsequatur reprehenderit dignissimos sed minus eveniet. Esse aut unde sint iure tenetur error eum.', 68, 40, '2023-07-07', '2023-08-06', 'En Progreso'),
(132, 3, 'Reprehenderit ea eos ea explicabo consequuntur. Reprehenderit possimus nihil.\nEum corporis voluptate similique. Dignissimos ab rem dolor nobis cumque.', 47, 2, '2024-03-26', '2024-04-07', 'Pendiente'),
(133, 1, 'Deserunt corrupti maxime minima.\nIpsa neque expedita placeat eveniet blanditiis amet. Ratione repudiandae aliquam sed amet laudantium deleniti. Vero accusantium ab esse autem facere doloribus nemo.', 16, 15, '2024-05-08', '2024-05-21', 'Pendiente'),
(134, 5, 'Quisquam libero optio minus maxime quaerat provident. Culpa accusamus ullam excepturi consectetur. Eos quia expedita culpa.', 85, 61, '2024-02-10', '2024-03-11', 'Pendiente'),
(135, 3, 'Dolores quis consequuntur et. Reiciendis quo omnis ex eius. Accusantium ipsum sit vitae magnam molestiae non.\nVitae saepe non illo molestias mollitia in. Vero temporibus ipsam recusandae.', 35, 83, '2024-01-21', '2024-02-11', 'Completada'),
(136, 4, 'Deleniti corporis accusamus iste corporis est earum. Fuga quo optio doloremque quaerat error.\nQuibusdam odio alias porro a.', 91, 42, '2023-09-04', '2023-09-09', 'Completada'),
(137, 5, 'Totam aliquid quod facilis quam. Delectus aut tempore cumque corrupti. Quos dolorum accusamus molestiae iusto nostrum consequatur.', 75, 12, '2024-04-15', '2024-05-12', 'En Progreso'),
(138, 1, 'Perspiciatis eaque iusto natus ipsum sequi possimus. Quasi mollitia nisi sed voluptatibus incidunt. Eveniet iure error incidunt hic. Neque voluptas veritatis veritatis exercitationem ab mollitia.', 22, 27, '2023-09-17', '2023-09-29', 'En Progreso'),
(139, 3, 'Aliquam unde adipisci labore ad. Dolore earum enim expedita.\nDolorum sed ipsum optio. Dolorem tenetur ullam delectus eligendi voluptates quis.', 74, 79, '2023-12-07', '2023-12-19', 'Pendiente'),
(140, 5, 'Iure doloremque non voluptatem. Accusamus quasi ipsum. Eos sint animi.\nEveniet dignissimos ea harum magnam nostrum. Laborum hic ut deserunt hic quod vitae.', 6, 64, '2023-08-07', '2023-08-30', 'Pendiente'),
(141, 4, 'Nisi odit ea aut voluptate eius. Dolor vitae adipisci cupiditate nesciunt.\nDelectus ad quisquam harum. Ea iusto distinctio minus nisi cumque nemo.', 61, 3, '2024-04-23', '2024-05-12', 'Pendiente'),
(142, 5, 'Tempore facilis aperiam aperiam facilis. Recusandae neque impedit sequi repudiandae fuga. Explicabo aperiam facilis ullam tempora.', 88, 69, '2023-09-12', '2023-09-26', 'Pendiente'),
(143, 3, 'Consequatur praesentium perferendis voluptatibus. Dignissimos quo dolores iste beatae expedita. Cupiditate error perferendis dolorum asperiores inventore assumenda. Nesciunt porro itaque dolorem.', 99, 14, '2023-07-13', '2023-07-19', 'En Progreso'),
(144, 5, 'Aut doloribus at quis. Velit necessitatibus magni quis natus.\nLabore tenetur eaque libero odio vel. Eum beatae repudiandae magnam. Voluptate dicta iste dicta animi.', 5, 5, '2023-08-10', '2023-09-07', 'En Progreso'),
(145, 2, 'Quisquam exercitationem blanditiis cupiditate consequatur quaerat natus. Quibusdam voluptas placeat modi nemo.', 74, 41, '2024-05-23', '2024-06-05', 'Pendiente'),
(146, 5, 'Minima ipsa odio totam. Sequi quae labore voluptatibus pariatur quas autem.\nNostrum explicabo fugiat nesciunt est iusto. Accusamus modi ipsam fugiat officia odio.', 93, 72, '2023-07-04', '2023-07-06', 'Completada'),
(147, 4, 'Quos similique at neque culpa quaerat mollitia. Veniam harum aut sapiente suscipit expedita quos. Optio eius quia quasi ea cumque.', 67, 67, '2023-12-19', '2023-12-27', 'Completada'),
(148, 3, 'Voluptatem voluptates quae molestiae minima officia at. Laudantium perspiciatis dolorem labore qui velit nesciunt neque.', 44, 57, '2023-08-19', '2023-09-12', 'Pendiente'),
(149, 2, 'Expedita laboriosam laboriosam pariatur reprehenderit.\nIpsam iusto officiis excepturi quaerat. Laboriosam doloremque tempora enim quae architecto. Sapiente esse possimus sapiente.', 92, 16, '2024-03-19', '2024-04-16', 'Pendiente'),
(150, 4, 'Accusamus nemo cupiditate accusamus harum esse praesentium. Exercitationem maiores aliquid qui.', 29, 20, '2023-06-28', '2023-07-12', 'Pendiente'),
(151, 2, 'Minus quisquam non illo ad non accusamus distinctio. Nobis dignissimos architecto magnam. Iure a adipisci aliquid.', 44, 52, '2024-03-20', '2024-03-28', 'En Progreso'),
(152, 1, 'Reprehenderit incidunt deleniti necessitatibus. A libero velit necessitatibus enim.\nVeritatis dolor mollitia nam odit aperiam aliquam. Ratione non cumque.', 80, 32, '2023-07-12', '2023-08-05', 'Completada'),
(153, 2, 'Aspernatur error officia nesciunt ratione repudiandae laborum. Animi atque aliquid dolor optio officia esse.\nCumque eaque molestias. Autem ea facere inventore officia.', 97, 3, '2024-01-25', '2024-02-10', 'Completada'),
(154, 2, 'Assumenda cumque a dolore dicta ratione alias. Impedit magnam quidem hic quidem ullam aspernatur.', 94, 38, '2023-12-16', '2023-12-20', 'En Progreso'),
(155, 3, 'Ea eos eos eos sed et minima. Hic sunt fugit. Placeat totam eum exercitationem.', 97, 60, '2023-08-08', '2023-09-04', 'En Progreso'),
(156, 4, 'Dicta asperiores cupiditate magnam molestiae placeat unde repellat. Illum laboriosam praesentium corporis dolore est qui.', 31, 73, '2024-01-17', '2024-02-02', 'Completada'),
(157, 3, 'Aspernatur aliquid unde nulla animi aliquam. Labore tempora quam nemo numquam libero. Nemo tempore deleniti reiciendis commodi cumque ab.', 54, 21, '2024-01-13', '2024-01-30', 'Pendiente'),
(158, 5, 'Neque atque temporibus. Molestias sapiente provident.\nRerum facere eveniet itaque inventore perferendis ex. Voluptas aperiam aperiam eos harum.', 8, 68, '2024-01-03', '2024-01-30', 'En Progreso'),
(159, 4, 'Temporibus iure eligendi necessitatibus dolor repellat modi. Molestiae commodi aliquam quasi voluptatum tenetur.', 71, 64, '2024-04-14', '2024-05-10', 'En Progreso'),
(160, 1, 'Ipsam iusto similique vero aspernatur. Veniam nemo nesciunt ad cupiditate ipsum dolores.', 98, 28, '2024-04-30', '2024-05-11', 'Pendiente'),
(161, 2, 'Unde autem suscipit eligendi perspiciatis. Ratione quae voluptas officia officiis magni a. Doloremque fugiat minima sunt modi.\nEst porro id. Nesciunt animi beatae rem omnis facilis beatae.', 61, 44, '2023-07-01', '2023-07-02', 'En Progreso'),
(162, 4, 'Commodi non molestias occaecati blanditiis voluptas. Nulla dicta deleniti temporibus ullam. Alias aut quis totam.', 64, 84, '2023-09-23', '2023-10-18', 'Completada'),
(163, 3, 'Debitis nulla magni cum ducimus magni aliquid. Distinctio nobis consequuntur. Ducimus commodi harum.\nHarum molestiae debitis error numquam explicabo. Voluptatibus quasi tempore ipsa totam.', 25, 76, '2024-02-08', '2024-02-24', 'Pendiente'),
(164, 5, 'A odio unde nulla a non quis. Earum esse culpa reprehenderit est ipsum adipisci.\nAdipisci unde fugiat sed at corrupti. Labore voluptatum repudiandae necessitatibus iure.', 74, 2, '2024-05-17', '2024-05-18', 'Pendiente'),
(165, 3, 'Alias tenetur consectetur qui odit consequatur laboriosam nesciunt. Aut similique dolores earum. Ipsa suscipit delectus blanditiis reiciendis nesciunt suscipit.', 55, 85, '2024-02-11', '2024-03-03', 'En Progreso'),
(166, 2, 'Dignissimos tenetur dolore repellat pariatur cum. Amet aliquid vero porro quos odio.\nAnimi repellendus sapiente in. Repudiandae exercitationem sint perferendis.', 17, 99, '2023-11-11', '2023-11-14', 'En Progreso'),
(167, 3, 'Quo officia ipsum. Blanditiis nam doloribus alias.\nDolor vitae officiis in. Quam natus neque vitae inventore quae molestiae. Quam minima sit natus et.', 51, 11, '2024-05-03', '2024-05-08', 'Pendiente'),
(168, 5, 'Qui eius accusamus explicabo quod corrupti. Eveniet harum nesciunt voluptate in dolorum cupiditate.\nHic omnis commodi perferendis.', 49, 16, '2023-06-23', '2023-07-20', 'Completada'),
(169, 1, 'Cum nihil aspernatur. Itaque nihil doloremque odio officia odio quasi. Numquam aperiam cupiditate dicta.\nRepellendus ut minus consectetur. Vitae laboriosam deserunt.', 77, 40, '2024-02-22', '2024-03-01', 'Completada'),
(170, 4, 'Autem expedita perferendis cupiditate. Ipsum unde temporibus. Harum distinctio pariatur consectetur hic.\nRepellendus praesentium quos dicta.\nNobis maxime molestiae aliquid.', 79, 4, '2024-03-21', '2024-03-28', 'En Progreso'),
(171, 4, 'Molestias a iusto expedita nisi. Praesentium nulla qui consectetur reiciendis repellat. Ad maxime animi dolorum.', 33, 89, '2024-02-01', '2024-02-27', 'Pendiente'),
(172, 4, 'Perferendis ad animi temporibus aliquam. Adipisci iste quos sequi explicabo doloremque. Eligendi ratione atque exercitationem amet.', 99, 90, '2023-09-06', '2023-09-12', 'Pendiente'),
(173, 2, 'Animi rem nisi nobis. Amet occaecati nulla in optio rerum neque. Ipsa quo eveniet est quasi.\nDistinctio consectetur iure corrupti eos. Numquam necessitatibus cum quasi nemo.', 67, 57, '2024-03-04', '2024-03-17', 'Pendiente'),
(174, 2, 'Voluptatem veritatis porro ullam.\nRerum aspernatur facilis officia. Ex excepturi quia dolorem dolorem accusamus vitae. Ratione ipsa harum dolores sunt.', 94, 82, '2024-03-25', '2024-04-14', 'Completada'),
(175, 2, 'Cumque eius possimus eum. Ut modi velit quas beatae.\nDolorem labore illo fugiat magni. Illum vel numquam occaecati aut molestias.', 66, 51, '2023-07-22', '2023-08-11', 'En Progreso'),
(176, 2, 'Sint harum vel. Rem dolorum adipisci tenetur dignissimos aliquam. Quaerat eius velit quia dolores pariatur deserunt doloremque. Pariatur exercitationem deleniti omnis.', 72, 84, '2023-09-22', '2023-09-30', 'Pendiente'),
(177, 5, 'Nihil perspiciatis neque ab libero. Sunt iure commodi hic maiores aspernatur molestiae.', 87, 74, '2024-01-20', '2024-02-08', 'En Progreso'),
(178, 5, 'Repudiandae quas officia nemo. Dolores optio voluptatibus quo facere.\nRecusandae dolor nam animi similique qui. Voluptatem nihil quos nisi animi quia repellendus soluta. Quis magni amet nobis.', 13, 88, '2024-05-21', '2024-06-16', 'En Progreso'),
(179, 4, 'Ipsa recusandae magnam enim provident recusandae iste minima. Nisi placeat provident quas molestias consectetur aliquam.', 32, 89, '2023-08-03', '2023-08-15', 'Completada'),
(180, 3, 'Enim facere a expedita. Veniam nostrum iusto est ad.\nConsequuntur nobis aut veniam esse sapiente. Animi ducimus consequatur aut. Maxime esse maxime accusamus.', 29, 46, '2023-07-12', '2023-07-24', 'Pendiente'),
(181, 1, 'Similique quis perspiciatis eaque ut. Nobis veniam facilis quibusdam molestias. Dignissimos ullam maiores reiciendis repellat. Eveniet illo necessitatibus maxime optio debitis placeat.', 96, 83, '2024-04-30', '2024-05-12', 'Completada'),
(182, 1, 'Recusandae doloremque labore eveniet. Illum eos voluptates voluptate beatae ipsa. Iusto est cum quo culpa. Assumenda accusamus excepturi ut.\nPlaceat sed ex totam.', 77, 78, '2024-03-11', '2024-03-30', 'En Progreso'),
(183, 3, 'Quis nemo totam voluptatum nesciunt fugiat. Voluptatem repudiandae repellat ipsam distinctio reprehenderit cum quas.', 31, 78, '2024-02-22', '2024-02-27', 'Pendiente'),
(184, 5, 'Corporis facilis voluptas voluptatum. Temporibus fuga magni velit magni maxime atque iure. Reprehenderit repellendus optio nulla corporis magnam. Ipsum iste quibusdam quibusdam eius ratione.', 18, 90, '2024-04-03', '2024-04-27', 'Pendiente'),
(185, 2, 'Quam quae ullam voluptatum quis vel. Occaecati fugiat placeat quis qui.\nRatione facilis modi vero magni eligendi. Nulla id numquam voluptas velit iure.', 2, 30, '2023-09-12', '2023-09-25', 'Completada'),
(186, 5, 'Nemo praesentium natus placeat. Error non natus mollitia natus.\nAliquid consequatur fugit sed enim laudantium. Hic tenetur dolorem iusto quaerat amet nostrum doloremque.', 42, 35, '2023-10-15', '2023-11-03', 'Pendiente'),
(187, 1, 'Voluptatum asperiores maxime quam optio quidem maiores eligendi. Vitae saepe quo repellendus vitae explicabo reiciendis. Officiis ullam eum blanditiis quam fugit.', 86, 60, '2023-11-03', '2023-11-18', 'Completada'),
(188, 4, 'Ad nihil qui iusto consequuntur cupiditate eius. Id quaerat provident nam saepe expedita voluptatibus modi. Libero voluptatem rem.', 85, 43, '2024-06-13', '2024-06-23', 'Pendiente'),
(189, 1, 'Amet architecto quisquam tempore non ipsam culpa. Possimus maiores sapiente recusandae facilis necessitatibus hic dolor.\nFuga est deleniti magnam.', 75, 68, '2023-08-05', '2023-08-18', 'Completada'),
(190, 3, 'Enim aliquam iste sint. Reiciendis rem laborum.\nNecessitatibus magni dignissimos minus. Eligendi illo perferendis sunt.\nQuam error laborum debitis. Veritatis numquam quae esse.', 93, 100, '2023-09-01', '2023-09-05', 'Pendiente'),
(191, 3, 'Ea in velit cum illum eligendi.\nFacilis quisquam voluptate optio iste. Perspiciatis laudantium reiciendis quis accusantium porro. Alias repellat ratione numquam officiis.', 32, 64, '2023-12-04', '2023-12-14', 'Completada'),
(192, 3, 'Amet ipsam consequatur officiis dolores vel praesentium quasi. Ipsa harum repellat exercitationem voluptatum.', 25, 86, '2024-03-20', '2024-03-28', 'En Progreso'),
(193, 1, 'Earum odit quas similique. Dolores nesciunt ut. Adipisci necessitatibus et facilis culpa dolor quas.', 76, 36, '2024-05-09', '2024-06-02', 'Pendiente'),
(194, 3, 'Animi perferendis eos corrupti nesciunt fugit dolores dolor. Quisquam temporibus ullam error quaerat explicabo. Odio maxime voluptates.', 98, 86, '2024-03-24', '2024-04-08', 'Completada'),
(195, 2, 'Magni id consectetur architecto eaque sapiente perferendis.\nNeque provident ea suscipit sunt. Eum sapiente adipisci ab deserunt veritatis reiciendis.', 53, 24, '2023-10-26', '2023-11-05', 'Pendiente'),
(196, 2, 'Explicabo fugit odio modi odio nostrum sint impedit. Ipsam alias natus odit officia. Laborum eius repudiandae eligendi illo ex.', 39, 80, '2024-01-20', '2024-02-14', 'En Progreso'),
(197, 4, 'Error ut voluptatibus natus ipsa delectus. Accusamus numquam culpa est tempore explicabo.', 43, 95, '2024-06-08', '2024-06-14', 'En Progreso');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Proyectos_ID` (`Proyectos_ID`),
  ADD KEY `fk_prioridad` (`Prioridad_ID`),
  ADD KEY `fk_estado` (`Estado_ID`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `contratistas`
--
ALTER TABLE `contratistas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Actividad_ID` (`Actividad_ID`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_cargos` (`Cargos_ID`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Proyecto_ID` (`Proyecto_ID`),
  ADD KEY `Cliente_ID` (`Cliente_ID`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Proveedor_ID` (`Proveedor_ID`);

--
-- Indices de la tabla `ordenes_de_compra`
--
ALTER TABLE `ordenes_de_compra`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Proyecto_ID` (`Proyecto_ID`),
  ADD KEY `Material_ID` (`Material_ID`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Factura_ID` (`Factura_ID`);

--
-- Indices de la tabla `prioridad`
--
ALTER TABLE `prioridad`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Actividad_ID` (`Actividad_ID`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Cliente_ID` (`Cliente_ID`);

--
-- Indices de la tabla `proyectos_contratistas`
--
ALTER TABLE `proyectos_contratistas`
  ADD PRIMARY KEY (`Proyecto_ID`,`Contratista_ID`),
  ADD KEY `Contratista_ID` (`Contratista_ID`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Proyecto_ID` (`Proyecto_ID`),
  ADD KEY `Responsable_ID` (`Responsable_ID`),
  ADD KEY `Empleado_ID` (`Empleado_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `contratistas`
--
ALTER TABLE `contratistas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `ordenes_de_compra`
--
ALTER TABLE `ordenes_de_compra`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `prioridad`
--
ALTER TABLE `prioridad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`Proyectos_ID`) REFERENCES `proyectos` (`ID`),
  ADD CONSTRAINT `fk_estado` FOREIGN KEY (`Estado_ID`) REFERENCES `estado` (`ID`),
  ADD CONSTRAINT `fk_prioridad` FOREIGN KEY (`Prioridad_ID`) REFERENCES `prioridad` (`ID`);

--
-- Filtros para la tabla `contratistas`
--
ALTER TABLE `contratistas`
  ADD CONSTRAINT `contratistas_ibfk_1` FOREIGN KEY (`Actividad_ID`) REFERENCES `actividad` (`ID`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `fk_cargos` FOREIGN KEY (`Cargos_ID`) REFERENCES `cargos` (`ID`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`Proyecto_ID`) REFERENCES `proyectos` (`ID`),
  ADD CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`Cliente_ID`) REFERENCES `clientes` (`ID`);

--
-- Filtros para la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`Proveedor_ID`) REFERENCES `proveedores` (`ID`);

--
-- Filtros para la tabla `ordenes_de_compra`
--
ALTER TABLE `ordenes_de_compra`
  ADD CONSTRAINT `ordenes_de_compra_ibfk_1` FOREIGN KEY (`Proyecto_ID`) REFERENCES `proyectos` (`ID`),
  ADD CONSTRAINT `ordenes_de_compra_ibfk_2` FOREIGN KEY (`Material_ID`) REFERENCES `materiales` (`ID`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`Factura_ID`) REFERENCES `facturas` (`ID`);

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`Actividad_ID`) REFERENCES `actividad` (`ID`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`Cliente_ID`) REFERENCES `clientes` (`ID`);

--
-- Filtros para la tabla `proyectos_contratistas`
--
ALTER TABLE `proyectos_contratistas`
  ADD CONSTRAINT `proyectos_contratistas_ibfk_1` FOREIGN KEY (`Proyecto_ID`) REFERENCES `proyectos` (`ID`),
  ADD CONSTRAINT `proyectos_contratistas_ibfk_2` FOREIGN KEY (`Contratista_ID`) REFERENCES `contratistas` (`ID`);

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_ibfk_1` FOREIGN KEY (`Proyecto_ID`) REFERENCES `proyectos` (`ID`),
  ADD CONSTRAINT `tareas_ibfk_2` FOREIGN KEY (`Responsable_ID`) REFERENCES `contratistas` (`ID`),
  ADD CONSTRAINT `tareas_ibfk_3` FOREIGN KEY (`Empleado_ID`) REFERENCES `empleados` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
