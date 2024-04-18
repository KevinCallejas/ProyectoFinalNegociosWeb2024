-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2024 a las 09:38:09
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
-- Base de datos: `kevstore`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `bitacoracod` int(11) NOT NULL,
  `bitacorafch` datetime DEFAULT NULL,
  `bitprograma` varchar(255) DEFAULT NULL,
  `bitdescripcion` varchar(255) DEFAULT NULL,
  `bitobservacion` mediumtext DEFAULT NULL,
  `bitTipo` char(3) DEFAULT NULL,
  `bitusuario` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones`
--

CREATE TABLE `funciones` (
  `fncod` varchar(255) NOT NULL,
  `fndsc` varchar(45) DEFAULT NULL,
  `fnest` char(3) DEFAULT NULL,
  `fntyp` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `funciones`
--

INSERT INTO `funciones` (`fncod`, `fndsc`, `fnest`, `fntyp`) VALUES
('bitacora_DEL', 'Eliminar bitacora', 'ACT', 'FNC'),
('bitacora_DSP', 'Detalle de bitacora', 'ACT', 'FNC'),
('bitacora_INS', 'Agregar bitacora', 'ACT', 'FNC'),
('bitacora_UPD', 'Editar bitacora', 'ACT', 'FNC'),
('ControllersBitacoras\\Bitacora', 'Lista de Bitacora', 'ACT', 'CTR'),
('ControllersFuncioness\\Funciones', 'Lista de Funciones', 'ACT', 'CTR'),
('ControllersFunciones_roless\\Funciones_roles', 'Lista de Funciones_roles', 'ACT', 'CTR'),
('ControllersProductss\\Products', 'Lista de Products', 'ACT', 'CTR'),
('ControllersPurchasedetails\\Purchasedetail', 'Lista de Purchasedetail', 'ACT', 'CTR'),
('ControllersPurchases\\Purchase', 'Lista de Purchase', 'ACT', 'CTR'),
('ControllersRoless\\Roles', 'Lista de Roles', 'ACT', 'CTR'),
('ControllersRoles_usuarioss\\Roles_usuarios', 'Lista de Roles_usuarios', 'ACT', 'CTR'),
('ControllersUsuarios\\Usuario', 'Lista de Usuario', 'ACT', 'CTR'),
('Controllers\\Bitacoras\\Bitacora', 'Controllers\\Bitacoras\\Bitacora', 'ACT', 'CTR'),
('Controllers\\Bitacoras\\Bitacoras', 'Formulario de Bitacora', 'ACT', 'CTR'),
('Controllers\\Cart\\Agregar', 'Controllers\\Cart\\Agregar', 'ACT', 'CTR'),
('Controllers\\Funcioness\\Funciones', 'Controllers\\Funcioness\\Funciones', 'ACT', 'CTR'),
('Controllers\\Funcioness\\Funcioness', 'Formulario de Funciones', 'ACT', 'CTR'),
('Controllers\\Funciones_roless\\Funciones_roless', 'Formulario de Funciones_roles', 'ACT', 'CTR'),
('Controllers\\Inicio\\Inicio', 'Formulario de Inicio', 'ACT', 'CTR'),
('Controllers\\Productss\\Products', 'Controllers\\Productss\\Products', 'ACT', 'CTR'),
('Controllers\\Productss\\Productss', 'Formulario de Products', 'ACT', 'CTR'),
('Controllers\\Purchasedetails\\Purchasedetail', 'Controllers\\Purchasedetails\\Purchasedetail', 'ACT', 'CTR'),
('Controllers\\Purchasedetails\\Purchasedetails', 'Formulario de Purchasedetail', 'ACT', 'CTR'),
('Controllers\\Purchases\\Purchase', 'Controllers\\Purchases\\Purchase', 'ACT', 'CTR'),
('Controllers\\Purchases\\Purchases', 'Formulario de Purchase', 'ACT', 'CTR'),
('Controllers\\Roless\\Roles', 'Controllers\\Roless\\Roles', 'ACT', 'CTR'),
('Controllers\\Roless\\Roless', 'Formulario de Roles', 'ACT', 'CTR'),
('Controllers\\Rolesusuarioss\\Rolesusuarios', 'Controllers\\Rolesusuarioss\\Rolesusuarios', 'ACT', 'CTR'),
('Controllers\\Rolesusuarioss\\Rolesusuarioss', 'Formulario de Bitacora', 'ACT', 'CTR'),
('Controllers\\Roles_usuarioss\\Roles_usuarioss', 'Formulario de Roles_usuarios', 'ACT', 'CTR'),
('Controllers\\Usuarios\\Usuario', 'Controllers\\Usuarios\\Usuario', 'ACT', 'CTR'),
('Controllers\\Usuarios\\Usuarios', 'Formulario de Usuario', 'ACT', 'CTR'),
('Controllers\\\\Store\\\\Agregar', 'Agregar a Carrito', 'ACT', 'FNC'),
('funciones_DEL', 'Eliminar funciones', 'ACT', 'FNC'),
('funciones_DSP', 'Detalle de funciones', 'ACT', 'FNC'),
('funciones_INS', 'Agregar funciones', 'ACT', 'FNC'),
('funciones_roles_DEL', 'Eliminar funciones_roles', 'ACT', 'FNC'),
('funciones_roles_DSP', 'Detalle de funciones_roles', 'ACT', 'FNC'),
('funciones_roles_INS', 'Agregar funciones_roles', 'ACT', 'FNC'),
('funciones_roles_UPD', 'Editar funciones_roles', 'ACT', 'FNC'),
('funciones_UPD', 'Editar funciones', 'ACT', 'FNC'),
('Menu_Bitacora', 'Menu_Bitacora', 'ACT', 'MNU'),
('Menu_Funciones', 'Menu_Funciones', 'ACT', 'MNU'),
('Menu_Funciones_roles', 'Menu_Funciones_roles', 'ACT', 'MNU'),
('Menu_Inicio', 'Menu_Inicio', 'ACT', 'MNU'),
('Menu_PaymentCheckout', 'Menu_PaymentCheckout', 'ACT', 'MNU'),
('Menu_Products', 'Menu_Products', 'ACT', 'MNU'),
('Menu_Purchase', 'Menu_Purchase', 'ACT', 'MNU'),
('Menu_Purchasedetail', 'Menu_Purchasedetail', 'ACT', 'MNU'),
('Menu_Roles', 'Menu_Roles', 'ACT', 'MNU'),
('Menu_Roles_usuarios', 'Menu_Roles_usuarios', 'ACT', 'MNU'),
('Menu_Usuario', 'Menu_Usuario', 'ACT', 'MNU'),
('products_DEL', 'Eliminar products', 'ACT', 'FNC'),
('products_DSP', 'Detalle de products', 'ACT', 'FNC'),
('products_INS', 'Agregar products', 'ACT', 'FNC'),
('products_UPD', 'Editar products', 'ACT', 'FNC'),
('purchasedetail_DEL', 'Eliminar purchasedetail', 'ACT', 'FNC'),
('purchasedetail_DSP', 'Detalle de purchasedetail', 'ACT', 'FNC'),
('purchasedetail_INS', 'Agregar purchasedetail', 'ACT', 'FNC'),
('purchasedetail_UPD', 'Editar purchasedetail', 'ACT', 'FNC'),
('purchase_DEL', 'Eliminar purchase', 'ACT', 'FNC'),
('purchase_DSP', 'Detalle de purchase', 'ACT', 'FNC'),
('purchase_INS', 'Agregar purchase', 'ACT', 'FNC'),
('purchase_UPD', 'Editar purchase', 'ACT', 'FNC'),
('roles_DEL', 'Eliminar roles', 'ACT', 'FNC'),
('roles_DSP', 'Detalle de roles', 'ACT', 'FNC'),
('roles_INS', 'Agregar roles', 'ACT', 'FNC'),
('roles_UPD', 'Editar roles', 'ACT', 'FNC'),
('roles_usuarios_DEL', 'Eliminar roles_usuarios', 'ACT', 'FNC'),
('roles_usuarios_DSP', 'Detalle de roles_usuarios', 'ACT', 'FNC'),
('roles_usuarios_INS', 'Agregar roles_usuarios', 'ACT', 'FNC'),
('roles_usuarios_UPD', 'Editar roles_usuarios', 'ACT', 'FNC'),
('usuario_DEL', 'Eliminar usuario', 'ACT', 'FNC'),
('usuario_DSP', 'Detalle de usuario', 'ACT', 'FNC'),
('usuario_INS', 'Agregar usuario', 'ACT', 'FNC'),
('usuario_UPD', 'Editar usuario', 'ACT', 'FNC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones_roles`
--

CREATE TABLE `funciones_roles` (
  `rolescod` varchar(15) NOT NULL,
  `fncod` varchar(255) NOT NULL,
  `fnrolest` char(3) DEFAULT NULL,
  `fnexp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `funciones_roles`
--

INSERT INTO `funciones_roles` (`rolescod`, `fncod`, `fnrolest`, `fnexp`) VALUES
('ADM', 'Controllers\\Rolesusuarioss\\Rolesusuarioss', 'ACT', '2025-04-17 17:31:58'),
('ADM', 'Controllers\\Usuarios\\Usuario', 'ACT', '2025-04-17 17:32:55'),
('ADMIN', 'bitacora_DEL', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'bitacora_DSP', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'bitacora_INS', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'bitacora_UPD', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'Controllers\\Bitacoras\\Bitacora', 'ACT', '2025-04-17 17:26:36'),
('ADMIN', 'Controllers\\Bitacoras\\Bitacoras', 'ACT', '2025-04-17 14:22:48'),
('ADMIN', 'Controllers\\Funcioness\\Funciones', 'ACT', '2025-04-17 17:26:36'),
('ADMIN', 'Controllers\\Funcioness\\Funcioness', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Controllers\\Funciones_roless\\Funciones_roless', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Controllers\\Inicio\\Inicio', 'ACT', '2025-04-17 14:26:05'),
('ADMIN', 'Controllers\\Productss\\Products', 'ACT', '2025-04-17 17:26:36'),
('ADMIN', 'Controllers\\Productss\\Productss', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Controllers\\Purchasedetails\\Purchasedetail', 'ACT', '2025-04-17 17:26:36'),
('ADMIN', 'Controllers\\Purchasedetails\\Purchasedetails', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Controllers\\Purchases\\Purchase', 'ACT', '2025-04-17 17:26:36'),
('ADMIN', 'Controllers\\Purchases\\Purchases', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Controllers\\Roless\\Roles', 'ACT', '2025-04-17 17:26:36'),
('ADMIN', 'Controllers\\Roless\\Roless', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Controllers\\Rolesusuarioss\\Rolesusuarios', 'ACT', '2025-04-17 17:34:17'),
('ADMIN', 'Controllers\\Rolesusuarioss\\Rolesusuarioss', 'ACT', '2025-04-17 17:31:50'),
('ADMIN', 'Controllers\\Roles_usuarioss\\Roles_usuarioss', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Controllers\\Usuarios\\Usuario', 'ACT', '2025-04-17 17:33:04'),
('ADMIN', 'funciones_DEL', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'funciones_DSP', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'funciones_INS', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'funciones_roles_DEL', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'funciones_roles_DSP', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'funciones_roles_INS', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'funciones_roles_UPD', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'funciones_UPD', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'Menu_Bitacora', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Menu_Funciones', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Menu_Funciones_roles', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Menu_Inicio', 'ACT', '2025-04-17 14:26:05'),
('ADMIN', 'Menu_Products', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Menu_Purchase', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Menu_Purchasedetail', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Menu_Roles', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'Menu_Roles_usuarios', 'ACT', '2025-04-17 14:22:49'),
('ADMIN', 'products_DEL', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'products_DSP', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'products_INS', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'products_UPD', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'purchasedetail_DEL', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'purchasedetail_DSP', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'purchasedetail_INS', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'purchasedetail_UPD', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'purchase_DEL', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'purchase_DSP', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'purchase_INS', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'purchase_UPD', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'roles_DEL', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'roles_DSP', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'roles_INS', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'roles_UPD', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'roles_usuarios_DEL', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'roles_usuarios_DSP', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'roles_usuarios_INS', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'roles_usuarios_UPD', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'usuario_DEL', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'usuario_DSP', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'usuario_INS', 'ACT', '2025-04-17 14:31:52'),
('ADMIN', 'usuario_UPD', 'ACT', '2025-04-17 14:31:52'),
('CLN', 'bitacora_DSP', 'ACT', '2025-04-17 14:31:52'),
('CLN', 'Controllers\\Cart\\Agregar', 'ACT', '2030-04-18 22:07:29'),
('CLN', 'Controllers\\Inicio\\Inicio', 'ACT', '2025-04-17 14:26:05'),
('CLN', 'funciones_DSP', 'ACT', '2025-04-17 14:31:52'),
('CLN', 'funciones_roles_DSP', 'ACT', '2025-04-17 14:31:52'),
('CLN', 'Menu_Inicio', 'ACT', '2025-04-17 14:26:05'),
('CLN', 'products_DSP', 'ACT', '2025-04-17 14:31:52'),
('CLN', 'purchasedetail_DSP', 'ACT', '2025-04-17 14:31:52'),
('CLN', 'purchase_DSP', 'ACT', '2025-04-17 14:31:52'),
('CLN', 'roles_DSP', 'ACT', '2025-04-17 14:31:52'),
('CLN', 'roles_usuarios_DSP', 'ACT', '2025-04-17 14:31:52'),
('CLN', 'usuario_DSP', 'ACT', '2025-04-17 14:31:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `productId` bigint(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productDescription` text NOT NULL,
  `productPrice` decimal(10,2) NOT NULL,
  `productImgUrl` varchar(255) NOT NULL,
  `productStock` int(11) NOT NULL DEFAULT 0,
  `productStatus` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`productId`, `productName`, `productDescription`, `productPrice`, `productImgUrl`, `productStock`, `productStatus`) VALUES
(1, 'Un Verano Sin Ti', 'Parte del álbum estrella del cantante Bad Bunny', 4.99, 'https://www.lahiguera.net/musicalia/artistas/bad_bunny/disco/12153/bad_bunny_un_verano_sin_ti-portada.jpg', 0, 'ACT'),
(2, 'Nena Sad', 'Una de las canciones revelación de Pablo Chill-e', 3.99, 'https://e.snmc.io/i/1200/s/22637c784a4a566b9723447ee59e139a/11578256', 0, 'ACT'),
(3, 'Moscow Mule', 'Parte del álbum estrella del cantante Bad Bunny', 3.99, 'https://www.lahiguera.net/musicalia/artistas/bad_bunny/disco/12153/bad_bunny_un_verano_sin_ti-portada.jpg', 0, 'ACT'),
(4, '<3', 'Una canción dedicada a sus seres queridos del cantante Bad Bunny', 5.99, 'https://i1.sndcdn.com/artworks-iCR5zdChUkPX-0-t500x500.jpg', 0, 'ACT'),
(5, 'Cúrame', 'Canción icónica del cantante Rauw Alejandro', 2.99, 'https://i1.sndcdn.com/artworks-Xp1lw93aO0mR-0-t500x500.jpg', 0, 'ACT'),
(6, 'Memoria Rota', 'Una de las favoritas de Myke Towers', 1.99, 'https://geo-media.beatsource.com/image_size/1400x1400/6/c/5/6c50001d-5d4d-42d4-8d1b-dba200a8ea66.jpg', 0, 'ACT'),
(7, 'I KNOW?', 'Mejor canción del álbum Utopía del rapero Travis Scott', 5.99, 'https://cdns-images.dzcdn.net/images/cover/6c91e64b7157f1332a4f6b0de9e4c714/500x500.jpg', 0, 'ACT'),
(8, 'COSAS QUE NO TE DIJE', 'Saiko plasmando sentimientos en los versos de esta hermosa canción', 3.99, 'https://i.scdn.co/image/ab67616d0000b273fb045f7dda9773e266437bc6', 0, 'ACT'),
(9, 'CAEN LAS ESTRELLAS', 'Una de las favoritas por los fans de la cantante Nicki Nicole', 1.99, 'https://m.media-amazon.com/images/I/41fCgNdMOJL._UXNaN_FMjpg_QL85_.jpg', 0, 'ACT'),
(10, 'LA INOCENTE', 'La canción insignia del gran cantante Mora', 6.99, 'https://i.scdn.co/image/ab67616d0000b273851222dc5c5681bd4c3119d3', 0, 'ACT'),
(11, 'MODELITO', 'El éxito de Mora en su álbum \"Paraíso\"', 5.99, 'https://i1.sndcdn.com/artworks-2CJqBgi2WXrZ-0-t500x500.jpg', 0, 'ACT'),
(12, 'DONDE SE APRENDE A QUERER?', 'Para muchos la canción que más duele del álbum \"Estrella\"', 6.99, 'https://cdns-images.dzcdn.net/images/cover/2194275a797bd8d5ed038b61b053813a/500x500.jpg', 0, 'ACT'),
(13, 'Tuyo', 'Sabemos que al igual que Mora quieres que esta canción sea tuya', 4.99, 'https://i1.sndcdn.com/artworks-iiqgDfTha4uT-0-t500x500.jpg', 0, 'ACT'),
(14, 'M.A.I', 'Milo J x KevsTrx te traemos esta canción para que se la dediques a esa persona', 5.99, 'https://i.scdn.co/image/ab67616d0000b27398ee8fad7a30ff328b97d874', 0, 'ACT'),
(15, 'No Soy Eterno', 'En dormir sin Madrid o En dormir sin Milo J', 3.99, 'https://i.scdn.co/image/ab67616d0000b27344fa31a89a1e549f74908a81', 0, 'ACT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase`
--

CREATE TABLE `purchase` (
  `id_purchase` varchar(450) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `total` decimal(12,2) DEFAULT NULL,
  `details` varchar(450) DEFAULT NULL,
  `usercod` varchar(250) DEFAULT NULL,
  `payments` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `purchase`
--

INSERT INTO `purchase` (`id_purchase`, `purchase_date`, `total`, `details`, `usercod`, `payments`) VALUES
('0854febf5f7cc87a6f66b5dbcd210cb57eeda21462e01935b1705d4c1ed28520f456d67b5dd36eb8cbbc21ba1fb88bc94c63b26541136815acacb629d6496e6f0118purchase', '2024-04-18', 6.99, 'Comprado en Kevstrx', '8860d6369a574e8c09a70ec2ea9a6a85202cbfe863c1548a24b1a98e8b91be69', '{\n    \"statusCode\": 201,\n    \"result\": {\n        \"id\": \"2XP51797AH026010H\",\n        \"status\": \"COMPLETED\",\n        \"payment_source\": {\n            \"paypal\": {\n                \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n                \"account_id\": \"RTVSADXQNY8N6\",\n                \"account_status\": \"VERIFIED\",\n                \"name\": {\n                    \"given_name\": \"John\",\n                    \"surname\": \"Doe\"\n                },\n                \"address\": {\n                    \"country_code\": \"HN\"\n                }\n            }\n        },\n        \"purchase_units\": [\n            {\n                \"reference_id\": \"test1703424716\",\n                \"shipping\": {\n                    \"name\": {\n                        \"full_name\": \"John Doe\"\n                    },\n                    \"address\": {\n                        \"address_line_1\": \"Free Trade Zone\",\n                        \"admin_area_2\": \"Tegucigalpa\",\n                        \"admin_area_1\": \"Tegucigalpa\",\n                        \"postal_code\": \"12345\",\n                        \"country_code\": \"HN\"\n                    }\n                },\n                \"payments\": {\n                    \"captures\": [\n                        {\n                            \"id\": \"42B9882619671214Y\",\n                            \"status\": \"COMPLETED\",\n                            \"amount\": {\n                                \"currency_code\": \"USD\",\n                                \"value\": \"8.04\"\n                            },\n                            \"final_capture\": true,\n                            \"seller_protection\": {\n                                \"status\": \"ELIGIBLE\",\n                                \"dispute_categories\": [\n                                    \"ITEM_NOT_RECEIVED\",\n                                    \"UNAUTHORIZED_TRANSACTION\"\n                                ]\n                            },\n                            \"seller_receivable_breakdown\": {\n                                \"gross_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"8.04\"\n                                },\n                                \"paypal_fee\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"0.57\"\n                                },\n                                \"net_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"7.47\"\n                                }\n                            },\n                            \"links\": [\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/42B9882619671214Y\",\n                                    \"rel\": \"self\",\n                                    \"method\": \"GET\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/42B9882619671214Y\\/refund\",\n                                    \"rel\": \"refund\",\n                                    \"method\": \"POST\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/2XP51797AH026010H\",\n                                    \"rel\": \"up\",\n                                    \"method\": \"GET\"\n                                }\n                            ],\n                            \"create_time\": \"2024-04-18T07:18:41Z\",\n                            \"update_time\": \"2024-04-18T07:18:41Z\"\n                        }\n                    ]\n                }\n            }\n        ],\n        \"payer\": {\n            \"name\": {\n                \"given_name\": \"John\",\n                \"surname\": \"Doe\"\n            },\n            \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n            \"payer_id\": \"RTVSADXQNY8N6\",\n            \"address\": {\n                \"country_code\": \"HN\"\n            }\n        },\n        \"links\": [\n            {\n                \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/2XP51797AH026010H\",\n                \"rel\": \"self\",\n                \"method\": \"GET\"\n            }\n        ]\n    },\n    \"headers\": {\n        \"\": \"\",\n        \"content-type\": \"application\\/json\",\n        \"content-length\": \"1661\",\n        \"date\": \"Thu, 18 Apr 2024 07\",\n        \"access-control-expose-headers\": \"Server-Timing\",\n        \"application_id\": \"APP-80W284485P519543T\",\n        \"cache-control\": \"max-age=0, no-cache, no-store, must-revalidate\",\n        \"caller_acct_num\": \"T8QFSWQ29LCYJ\",\n        \"paypal-debug-id\": \"a9c0bd43e3a67\",\n        \"server-timing\": \"traceparent;desc=\\\"00-0000000000000000000a9c0bd43e3a67-4533c9f76e4058c1-01\\\"\",\n        \"vary\": \"Accept-Encoding\",\n        \"strict-transport-security\": \"max-age=31536000; includeSubDomains\"\n    }\n}'),
('0e77e94239fff9ba8b5d82a369d53abf5731669f3267433be9f0a697b3303029e9505c302ce4dd011c788057ed62a1f3266b89966d47d982edec6ac280382fc60000purchase', '0000-00-00', 13.98, 'Comprado en Kevstrx', 'e0ecedd80d15d6b12882389b53d0e173dba408553147978572ae207363cb16ce', '{\n    \"statusCode\": 201,\n    \"result\": {\n        \"id\": \"01543068DN705292P\",\n        \"status\": \"COMPLETED\",\n        \"payment_source\": {\n            \"paypal\": {\n                \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n                \"account_id\": \"RTVSADXQNY8N6\",\n                \"account_status\": \"VERIFIED\",\n                \"name\": {\n                    \"given_name\": \"John\",\n                    \"surname\": \"Doe\"\n                },\n                \"address\": {\n                    \"country_code\": \"HN\"\n                }\n            }\n        },\n        \"purchase_units\": [\n            {\n                \"reference_id\": \"test1703420007\",\n                \"shipping\": {\n                    \"name\": {\n                        \"full_name\": \"John Doe\"\n                    },\n                    \"address\": {\n                        \"address_line_1\": \"Free Trade Zone\",\n                        \"admin_area_2\": \"Tegucigalpa\",\n                        \"admin_area_1\": \"Tegucigalpa\",\n                        \"postal_code\": \"12345\",\n                        \"country_code\": \"HN\"\n                    }\n                },\n                \"payments\": {\n                    \"captures\": [\n                        {\n                            \"id\": \"0N187933MN3567036\",\n                            \"status\": \"COMPLETED\",\n                            \"amount\": {\n                                \"currency_code\": \"USD\",\n                                \"value\": \"16.08\"\n                            },\n                            \"final_capture\": true,\n                            \"seller_protection\": {\n                                \"status\": \"ELIGIBLE\",\n                                \"dispute_categories\": [\n                                    \"ITEM_NOT_RECEIVED\",\n                                    \"UNAUTHORIZED_TRANSACTION\"\n                                ]\n                            },\n                            \"seller_receivable_breakdown\": {\n                                \"gross_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"16.08\"\n                                },\n                                \"paypal_fee\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"1.09\"\n                                },\n                                \"net_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"14.99\"\n                                }\n                            },\n                            \"links\": [\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/0N187933MN3567036\",\n                                    \"rel\": \"self\",\n                                    \"method\": \"GET\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/0N187933MN3567036\\/refund\",\n                                    \"rel\": \"refund\",\n                                    \"method\": \"POST\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/01543068DN705292P\",\n                                    \"rel\": \"up\",\n                                    \"method\": \"GET\"\n                                }\n                            ],\n                            \"create_time\": \"2024-04-18T06:00:14Z\",\n                            \"update_time\": \"2024-04-18T06:00:14Z\"\n                        }\n                    ]\n                }\n            }\n        ],\n        \"payer\": {\n            \"name\": {\n                \"given_name\": \"John\",\n                \"surname\": \"Doe\"\n            },\n            \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n            \"payer_id\": \"RTVSADXQNY8N6\",\n            \"address\": {\n                \"country_code\": \"HN\"\n            }\n        },\n        \"links\": [\n            {\n                \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/01543068DN705292P\",\n                \"rel\": \"self\",\n                \"method\": \"GET\"\n            }\n        ]\n    },\n    \"headers\": {\n        \"\": \"\",\n        \"content-type\": \"application\\/json\",\n        \"content-length\": \"1664\",\n        \"date\": \"Thu, 18 Apr 2024 06\",\n        \"access-control-expose-headers\": \"Server-Timing\",\n        \"application_id\": \"APP-80W284485P519543T\",\n        \"cache-control\": \"max-age=0, no-cache, no-store, must-revalidate\",\n        \"caller_acct_num\": \"T8QFSWQ29LCYJ\",\n        \"paypal-debug-id\": \"a07ea6944b778\",\n        \"server-timing\": \"traceparent;desc=\\\"00-0000000000000000000a07ea6944b778-83e74c0c31172f19-01\\\"\",\n        \"vary\": \"Accept-Encoding\",\n        \"strict-transport-security\": \"max-age=31536000; includeSubDomains\"\n    }\n}'),
('36a32e0e7b3d98b527b77bdace5fe7e8fae4cbfb8785fc19a21838010a215cd6ccd8d90aca9bcce1c853c51ca2137e3a11b1d3d579933362b50af4aeeb165edf2356purchase', '0000-00-00', 20.97, 'Comprado en Kevstrx', 'e0ecedd80d15d6b12882389b53d0e173dba408553147978572ae207363cb16ce', '{\n    \"statusCode\": 201,\n    \"result\": {\n        \"id\": \"1A8259447Y537274F\",\n        \"status\": \"COMPLETED\",\n        \"payment_source\": {\n            \"paypal\": {\n                \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n                \"account_id\": \"RTVSADXQNY8N6\",\n                \"account_status\": \"VERIFIED\",\n                \"name\": {\n                    \"given_name\": \"John\",\n                    \"surname\": \"Doe\"\n                },\n                \"address\": {\n                    \"country_code\": \"HN\"\n                }\n            }\n        },\n        \"purchase_units\": [\n            {\n                \"reference_id\": \"test1703419796\",\n                \"shipping\": {\n                    \"name\": {\n                        \"full_name\": \"John Doe\"\n                    },\n                    \"address\": {\n                        \"address_line_1\": \"Free Trade Zone\",\n                        \"admin_area_2\": \"Tegucigalpa\",\n                        \"admin_area_1\": \"Tegucigalpa\",\n                        \"postal_code\": \"12345\",\n                        \"country_code\": \"HN\"\n                    }\n                },\n                \"payments\": {\n                    \"captures\": [\n                        {\n                            \"id\": \"1K087490D4370193W\",\n                            \"status\": \"COMPLETED\",\n                            \"amount\": {\n                                \"currency_code\": \"USD\",\n                                \"value\": \"24.12\"\n                            },\n                            \"final_capture\": true,\n                            \"seller_protection\": {\n                                \"status\": \"ELIGIBLE\",\n                                \"dispute_categories\": [\n                                    \"ITEM_NOT_RECEIVED\",\n                                    \"UNAUTHORIZED_TRANSACTION\"\n                                ]\n                            },\n                            \"seller_receivable_breakdown\": {\n                                \"gross_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"24.12\"\n                                },\n                                \"paypal_fee\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"1.48\"\n                                },\n                                \"net_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"22.64\"\n                                }\n                            },\n                            \"links\": [\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/1K087490D4370193W\",\n                                    \"rel\": \"self\",\n                                    \"method\": \"GET\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/1K087490D4370193W\\/refund\",\n                                    \"rel\": \"refund\",\n                                    \"method\": \"POST\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/1A8259447Y537274F\",\n                                    \"rel\": \"up\",\n                                    \"method\": \"GET\"\n                                }\n                            ],\n                            \"create_time\": \"2024-04-18T05:56:40Z\",\n                            \"update_time\": \"2024-04-18T05:56:40Z\"\n                        }\n                    ]\n                }\n            }\n        ],\n        \"payer\": {\n            \"name\": {\n                \"given_name\": \"John\",\n                \"surname\": \"Doe\"\n            },\n            \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n            \"payer_id\": \"RTVSADXQNY8N6\",\n            \"address\": {\n                \"country_code\": \"HN\"\n            }\n        },\n        \"links\": [\n            {\n                \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/1A8259447Y537274F\",\n                \"rel\": \"self\",\n                \"method\": \"GET\"\n            }\n        ]\n    },\n    \"headers\": {\n        \"\": \"\",\n        \"content-type\": \"application\\/json\",\n        \"content-length\": \"1664\",\n        \"date\": \"Thu, 18 Apr 2024 05\",\n        \"access-control-expose-headers\": \"Server-Timing\",\n        \"application_id\": \"APP-80W284485P519543T\",\n        \"cache-control\": \"max-age=0, no-cache, no-store, must-revalidate\",\n        \"caller_acct_num\": \"T8QFSWQ29LCYJ\",\n        \"paypal-debug-id\": \"ab0d8a297fdc0\",\n        \"server-timing\": \"traceparent;desc=\\\"00-0000000000000000000ab0d8a297fdc0-f15b808f18fb2efe-01\\\"\",\n        \"vary\": \"Accept-Encoding\",\n        \"strict-transport-security\": \"max-age=31536000; includeSubDomains\"\n    }\n}'),
('48c80e9a4f00559f0d561d780eae6816fa3e147d5d271327cdd23960e66fe7ea2107e6cd55f82c619e08b013169f94162cf0847a3a7b5fdeeba6853940ed5b5c0115purchase', '2024-04-18', 6.99, 'Comprado en Kevstrx', '7f853822b591ad3f0e7e53d4ca0767daa01a78b31ae652c85bb3dbbbcacadc27', '{\n    \"statusCode\": 201,\n    \"result\": {\n        \"id\": \"5VL35893FC864534X\",\n        \"status\": \"COMPLETED\",\n        \"payment_source\": {\n            \"paypal\": {\n                \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n                \"account_id\": \"RTVSADXQNY8N6\",\n                \"account_status\": \"VERIFIED\",\n                \"name\": {\n                    \"given_name\": \"John\",\n                    \"surname\": \"Doe\"\n                },\n                \"address\": {\n                    \"country_code\": \"HN\"\n                }\n            }\n        },\n        \"purchase_units\": [\n            {\n                \"reference_id\": \"test1703424485\",\n                \"shipping\": {\n                    \"name\": {\n                        \"full_name\": \"John Doe\"\n                    },\n                    \"address\": {\n                        \"address_line_1\": \"Free Trade Zone\",\n                        \"admin_area_2\": \"Tegucigalpa\",\n                        \"admin_area_1\": \"Tegucigalpa\",\n                        \"postal_code\": \"12345\",\n                        \"country_code\": \"HN\"\n                    }\n                },\n                \"payments\": {\n                    \"captures\": [\n                        {\n                            \"id\": \"24E01172KT6644704\",\n                            \"status\": \"COMPLETED\",\n                            \"amount\": {\n                                \"currency_code\": \"USD\",\n                                \"value\": \"8.04\"\n                            },\n                            \"final_capture\": true,\n                            \"seller_protection\": {\n                                \"status\": \"ELIGIBLE\",\n                                \"dispute_categories\": [\n                                    \"ITEM_NOT_RECEIVED\",\n                                    \"UNAUTHORIZED_TRANSACTION\"\n                                ]\n                            },\n                            \"seller_receivable_breakdown\": {\n                                \"gross_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"8.04\"\n                                },\n                                \"paypal_fee\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"0.57\"\n                                },\n                                \"net_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"7.47\"\n                                }\n                            },\n                            \"links\": [\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/24E01172KT6644704\",\n                                    \"rel\": \"self\",\n                                    \"method\": \"GET\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/24E01172KT6644704\\/refund\",\n                                    \"rel\": \"refund\",\n                                    \"method\": \"POST\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/5VL35893FC864534X\",\n                                    \"rel\": \"up\",\n                                    \"method\": \"GET\"\n                                }\n                            ],\n                            \"create_time\": \"2024-04-18T07:14:58Z\",\n                            \"update_time\": \"2024-04-18T07:14:58Z\"\n                        }\n                    ]\n                }\n            }\n        ],\n        \"payer\": {\n            \"name\": {\n                \"given_name\": \"John\",\n                \"surname\": \"Doe\"\n            },\n            \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n            \"payer_id\": \"RTVSADXQNY8N6\",\n            \"address\": {\n                \"country_code\": \"HN\"\n            }\n        },\n        \"links\": [\n            {\n                \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/5VL35893FC864534X\",\n                \"rel\": \"self\",\n                \"method\": \"GET\"\n            }\n        ]\n    },\n    \"headers\": {\n        \"\": \"\",\n        \"content-type\": \"application\\/json\",\n        \"content-length\": \"1661\",\n        \"date\": \"Thu, 18 Apr 2024 07\",\n        \"access-control-expose-headers\": \"Server-Timing\",\n        \"application_id\": \"APP-80W284485P519543T\",\n        \"cache-control\": \"max-age=0, no-cache, no-store, must-revalidate\",\n        \"caller_acct_num\": \"T8QFSWQ29LCYJ\",\n        \"paypal-debug-id\": \"3cec88254a03a\",\n        \"server-timing\": \"traceparent;desc=\\\"00-00000000000000000003cec88254a03a-83765f10d004ca5a-01\\\"\",\n        \"vary\": \"Accept-Encoding\",\n        \"strict-transport-security\": \"max-age=31536000; includeSubDomains\"\n    }\n}'),
('4ef46d61509a4719a9ebf30a7663ed7a3107de16a10ba5935b511cea9d04f4656de1c5ac0e666e13a0b1b148fa061bc94eae65dd5b7fb23d0f8817b1edcd9f960002purchase', '0000-00-00', 27.96, 'Comprado en Kevstrx', 'e0ecedd80d15d6b12882389b53d0e173dba408553147978572ae207363cb16ce', '{\n    \"statusCode\": 201,\n    \"result\": {\n        \"id\": \"3JW34028Y1267610N\",\n        \"status\": \"COMPLETED\",\n        \"payment_source\": {\n            \"paypal\": {\n                \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n                \"account_id\": \"RTVSADXQNY8N6\",\n                \"account_status\": \"VERIFIED\",\n                \"name\": {\n                    \"given_name\": \"John\",\n                    \"surname\": \"Doe\"\n                },\n                \"address\": {\n                    \"country_code\": \"HN\"\n                }\n            }\n        },\n        \"purchase_units\": [\n            {\n                \"reference_id\": \"test1703420098\",\n                \"shipping\": {\n                    \"name\": {\n                        \"full_name\": \"John Doe\"\n                    },\n                    \"address\": {\n                        \"address_line_1\": \"Free Trade Zone\",\n                        \"admin_area_2\": \"Tegucigalpa\",\n                        \"admin_area_1\": \"Tegucigalpa\",\n                        \"postal_code\": \"12345\",\n                        \"country_code\": \"HN\"\n                    }\n                },\n                \"payments\": {\n                    \"captures\": [\n                        {\n                            \"id\": \"0ND07117DU586715J\",\n                            \"status\": \"COMPLETED\",\n                            \"amount\": {\n                                \"currency_code\": \"USD\",\n                                \"value\": \"32.16\"\n                            },\n                            \"final_capture\": true,\n                            \"seller_protection\": {\n                                \"status\": \"ELIGIBLE\",\n                                \"dispute_categories\": [\n                                    \"ITEM_NOT_RECEIVED\",\n                                    \"UNAUTHORIZED_TRANSACTION\"\n                                ]\n                            },\n                            \"seller_receivable_breakdown\": {\n                                \"gross_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"32.16\"\n                                },\n                                \"paypal_fee\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"1.88\"\n                                },\n                                \"net_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"30.28\"\n                                }\n                            },\n                            \"links\": [\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/0ND07117DU586715J\",\n                                    \"rel\": \"self\",\n                                    \"method\": \"GET\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/0ND07117DU586715J\\/refund\",\n                                    \"rel\": \"refund\",\n                                    \"method\": \"POST\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/3JW34028Y1267610N\",\n                                    \"rel\": \"up\",\n                                    \"method\": \"GET\"\n                                }\n                            ],\n                            \"create_time\": \"2024-04-18T06:02:06Z\",\n                            \"update_time\": \"2024-04-18T06:02:06Z\"\n                        }\n                    ]\n                }\n            }\n        ],\n        \"payer\": {\n            \"name\": {\n                \"given_name\": \"John\",\n                \"surname\": \"Doe\"\n            },\n            \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n            \"payer_id\": \"RTVSADXQNY8N6\",\n            \"address\": {\n                \"country_code\": \"HN\"\n            }\n        },\n        \"links\": [\n            {\n                \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/3JW34028Y1267610N\",\n                \"rel\": \"self\",\n                \"method\": \"GET\"\n            }\n        ]\n    },\n    \"headers\": {\n        \"\": \"\",\n        \"content-type\": \"application\\/json\",\n        \"content-length\": \"1664\",\n        \"date\": \"Thu, 18 Apr 2024 06\",\n        \"access-control-expose-headers\": \"Server-Timing\",\n        \"application_id\": \"APP-80W284485P519543T\",\n        \"cache-control\": \"max-age=0, no-cache, no-store, must-revalidate\",\n        \"caller_acct_num\": \"T8QFSWQ29LCYJ\",\n        \"paypal-debug-id\": \"03bb22692c0de\",\n        \"server-timing\": \"traceparent;desc=\\\"00-000000000000000000003bb22692c0de-4902e3f5e90684e8-01\\\"\",\n        \"vary\": \"Accept-Encoding\",\n        \"strict-transport-security\": \"max-age=31536000; includeSubDomains\"\n    }\n}'),
('aa5b5771249804bad29cb0a79764681b35ad9a46efe989f9b84b6f6eba22a4ce1e2fd8a170b27cc66e97d3cff16d6d431ec4395927f8e7dab57de5811fc73a390012purchase', '0000-00-00', 13.98, 'Comprado en Kevstrx', 'e0ecedd80d15d6b12882389b53d0e173dba408553147978572ae207363cb16ce', '{\n    \"statusCode\": 201,\n    \"result\": {\n        \"id\": \"9AN96742AR154612S\",\n        \"status\": \"COMPLETED\",\n        \"payment_source\": {\n            \"paypal\": {\n                \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n                \"account_id\": \"RTVSADXQNY8N6\",\n                \"account_status\": \"VERIFIED\",\n                \"name\": {\n                    \"given_name\": \"John\",\n                    \"surname\": \"Doe\"\n                },\n                \"address\": {\n                    \"country_code\": \"HN\"\n                }\n            }\n        },\n        \"purchase_units\": [\n            {\n                \"reference_id\": \"test1703420726\",\n                \"shipping\": {\n                    \"name\": {\n                        \"full_name\": \"John Doe\"\n                    },\n                    \"address\": {\n                        \"address_line_1\": \"Free Trade Zone\",\n                        \"admin_area_2\": \"Tegucigalpa\",\n                        \"admin_area_1\": \"Tegucigalpa\",\n                        \"postal_code\": \"12345\",\n                        \"country_code\": \"HN\"\n                    }\n                },\n                \"payments\": {\n                    \"captures\": [\n                        {\n                            \"id\": \"7KF60078W7964972P\",\n                            \"status\": \"COMPLETED\",\n                            \"amount\": {\n                                \"currency_code\": \"USD\",\n                                \"value\": \"16.08\"\n                            },\n                            \"final_capture\": true,\n                            \"seller_protection\": {\n                                \"status\": \"ELIGIBLE\",\n                                \"dispute_categories\": [\n                                    \"ITEM_NOT_RECEIVED\",\n                                    \"UNAUTHORIZED_TRANSACTION\"\n                                ]\n                            },\n                            \"seller_receivable_breakdown\": {\n                                \"gross_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"16.08\"\n                                },\n                                \"paypal_fee\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"1.09\"\n                                },\n                                \"net_amount\": {\n                                    \"currency_code\": \"USD\",\n                                    \"value\": \"14.99\"\n                                }\n                            },\n                            \"links\": [\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/7KF60078W7964972P\",\n                                    \"rel\": \"self\",\n                                    \"method\": \"GET\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/payments\\/captures\\/7KF60078W7964972P\\/refund\",\n                                    \"rel\": \"refund\",\n                                    \"method\": \"POST\"\n                                },\n                                {\n                                    \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/9AN96742AR154612S\",\n                                    \"rel\": \"up\",\n                                    \"method\": \"GET\"\n                                }\n                            ],\n                            \"create_time\": \"2024-04-18T06:12:18Z\",\n                            \"update_time\": \"2024-04-18T06:12:18Z\"\n                        }\n                    ]\n                }\n            }\n        ],\n        \"payer\": {\n            \"name\": {\n                \"given_name\": \"John\",\n                \"surname\": \"Doe\"\n            },\n            \"email_address\": \"sb-zjmxv22294736@personal.example.com\",\n            \"payer_id\": \"RTVSADXQNY8N6\",\n            \"address\": {\n                \"country_code\": \"HN\"\n            }\n        },\n        \"links\": [\n            {\n                \"href\": \"https:\\/\\/api.sandbox.paypal.com\\/v2\\/checkout\\/orders\\/9AN96742AR154612S\",\n                \"rel\": \"self\",\n                \"method\": \"GET\"\n            }\n        ]\n    },\n    \"headers\": {\n        \"\": \"\",\n        \"content-type\": \"application\\/json\",\n        \"content-length\": \"1664\",\n        \"date\": \"Thu, 18 Apr 2024 06\",\n        \"access-control-expose-headers\": \"Server-Timing\",\n        \"application_id\": \"APP-80W284485P519543T\",\n        \"cache-control\": \"max-age=0, no-cache, no-store, must-revalidate\",\n        \"caller_acct_num\": \"T8QFSWQ29LCYJ\",\n        \"paypal-debug-id\": \"f9873a9365a14\",\n        \"server-timing\": \"traceparent;desc=\\\"00-0000000000000000000f9873a9365a14-e2a20b50ff51500c-01\\\"\",\n        \"vary\": \"Accept-Encoding\",\n        \"strict-transport-security\": \"max-age=31536000; includeSubDomains\"\n    }\n}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchasedetail`
--

CREATE TABLE `purchasedetail` (
  `id_purchase` varchar(250) NOT NULL,
  `id_item_reference` varchar(250) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitary_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `purchasedetail`
--

INSERT INTO `purchasedetail` (`id_purchase`, `id_item_reference`, `quantity`, `unitary_price`) VALUES
('0854febf5f7cc87a6f66b5dbcd210cb57eeda21462e01935b1705d4c1ed28520f456d67b5dd36eb8cbbc21ba1fb88bc94c63b26541136815acacb629d6496e6f0118purchase', '10', 1, 6.99),
('0e77e94239fff9ba8b5d82a369d53abf5731669f3267433be9f0a697b3303029e9505c302ce4dd011c788057ed62a1f3266b89966d47d982edec6ac280382fc60000purchase', '10', 2, 6.99),
('36a32e0e7b3d98b527b77bdace5fe7e8fae4cbfb8785fc19a21838010a215cd6ccd8d90aca9bcce1c853c51ca2137e3a11b1d3d579933362b50af4aeeb165edf2356purchase', '10', 3, 6.99),
('48c80e9a4f00559f0d561d780eae6816fa3e147d5d271327cdd23960e66fe7ea2107e6cd55f82c619e08b013169f94162cf0847a3a7b5fdeeba6853940ed5b5c0115purchase', '10', 1, 6.99),
('4ef46d61509a4719a9ebf30a7663ed7a3107de16a10ba5935b511cea9d04f4656de1c5ac0e666e13a0b1b148fa061bc94eae65dd5b7fb23d0f8817b1edcd9f960002purchase', '10', 2, 6.99),
('4ef46d61509a4719a9ebf30a7663ed7a3107de16a10ba5935b511cea9d04f4656de1c5ac0e666e13a0b1b148fa061bc94eae65dd5b7fb23d0f8817b1edcd9f960002purchase', '12', 2, 6.99),
('aa5b5771249804bad29cb0a79764681b35ad9a46efe989f9b84b6f6eba22a4ce1e2fd8a170b27cc66e97d3cff16d6d431ec4395927f8e7dab57de5811fc73a390012purchase', '10', 2, 6.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rolescod` varchar(128) NOT NULL,
  `rolesdsc` varchar(45) DEFAULT NULL,
  `rolesest` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rolescod`, `rolesdsc`, `rolesest`) VALUES
('ADM', 'Administrador', 'ACT'),
('ADMIN', 'Administrador', 'ACT'),
('CLN', 'Cliente', 'ACT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_usuarios`
--

CREATE TABLE `roles_usuarios` (
  `usercod` varchar(450) NOT NULL,
  `rolescod` varchar(128) NOT NULL,
  `roleuserest` char(3) DEFAULT NULL,
  `roleuserfch` datetime DEFAULT NULL,
  `roleuserexp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `roles_usuarios`
--

INSERT INTO `roles_usuarios` (`usercod`, `rolescod`, `roleuserest`, `roleuserfch`, `roleuserexp`) VALUES
('7f853822b591ad3f0e7e53d4ca0767daa01a78b31ae652c85bb3dbbbcacadc27', 'CLN', 'ACT', '2024-04-18 00:56:08', '2025-04-18 00:56:08'),
('8860d6369a574e8c09a70ec2ea9a6a85202cbfe863c1548a24b1a98e8b91be69', 'CLN', 'ACT', '2024-04-18 01:17:31', '2025-04-18 01:17:31'),
('dfbb94133879ac9ec74fd4e42ad7aa633882d75aa8c2c4f88b0b7639927204b3', 'ADMIN', 'ACT', '2024-04-17 16:37:17', '2025-04-17 16:37:17'),
('e0ecedd80d15d6b12882389b53d0e173dba408553147978572ae207363cb16ce', 'CLN', 'ACT', '2024-04-17 14:35:22', '2025-04-17 14:35:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usercod` varchar(450) NOT NULL,
  `useremail` varchar(80) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `userpswd` varchar(128) DEFAULT NULL,
  `userfching` datetime DEFAULT NULL,
  `userpswdest` char(3) DEFAULT NULL,
  `userpswdexp` datetime DEFAULT NULL,
  `userest` char(3) DEFAULT NULL,
  `useractcod` varchar(128) DEFAULT NULL,
  `userpswdchg` varchar(128) DEFAULT NULL,
  `usertipo` char(3) DEFAULT NULL COMMENT 'Tipo de Usuario, Normal, Consultor o Cliente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usercod`, `useremail`, `username`, `userpswd`, `userfching`, `userpswdest`, `userpswdexp`, `userest`, `useractcod`, `userpswdchg`, `usertipo`) VALUES
('7f853822b591ad3f0e7e53d4ca0767daa01a78b31ae652c85bb3dbbbcacadc27', 'kevincito@gmail.com', 'DogOp6635', '$2y$10$AKm3ecDvXqfghiNx9byf8eR8FpY1M.pJFFsLDApaq3I3VlPBmFOLq', '2024-04-18 00:56:08', 'ACT', '2024-07-17 00:00:00', 'ACT', 'b438e5ef373295806cc7d6d79ad922bb78f852efb258fc8629bc6a0583855f67', '2024-04-18 00:56:08', 'CLN'),
('8860d6369a574e8c09a70ec2ea9a6a85202cbfe863c1548a24b1a98e8b91be69', 'miguelitosuperstar@gmail.com', 'HawkM6', '$2y$10$zRmZQI0.SzM5Tyam9FAkwe9XFe6gtA3h9db5ot2rkmkFVvJlaK0gG', '2024-04-18 01:17:31', 'ACT', '2024-07-17 00:00:00', 'ACT', '5577c112cc4b88c74fff9335a5b257f35b7034ad5e1a016888a5bb3aa20fb84a', '2024-04-18 01:17:31', 'CLN'),
('9bc09d15487ee57479d31126952b46a6eeb3ab7d00c8470f5192b356d2c390ef', 'micorreo@gmail.com', 'OrangeZealousHawk132812Zf2', '$2y$10$rXgfxZ5IhJ.q4lm1GBMUbeIK6x019jITxnsZyi8sA4vbjc7VmpM/S', '2024-04-17 13:28:12', 'ACT', '2024-07-16 00:00:00', 'ACT', '00b9338e77a5ad5b38f9c6d3930af2af2ea5644a0540592fb37adc9474441720', '2024-04-17 13:28:12', 'CLN'),
('dfbb94133879ac9ec74fd4e42ad7aa633882d75aa8c2c4f88b0b7639927204b3', 'admin@gmail.com', 'SharkZ1', '$2y$10$UZvFdrCQ/8Un4aAjfertqOK1CGdpVlvFuQKqYlRfAi24G9pEykW7i', '2024-04-17 16:37:17', 'ACT', '2024-07-16 00:00:00', 'ACT', '8952fc4afbd6ac4161cc76da44e3d3d2c1bf8f731a60a67f6b33702229923449', '2024-04-17 16:37:17', 'ADM'),
('e0ecedd80d15d6b12882389b53d0e173dba408553147978572ae207363cb16ce', 'juanito@gmail.com', 'BlueBraveOwl143522M458c3', '$2y$10$r.x8GhcHnMUOuGf2q6dDsOQy3bel0ObUno3JjzuLCxGjlUX8AIv.C', '2024-04-17 14:35:22', 'ACT', '2024-07-16 00:00:00', 'ACT', '4b9a7f08f57d1f32f993455a42d83e53e305b2e802622959f9e50f336814d1cc', '2024-04-17 14:35:22', 'CLN');

--
-- Disparadores `usuario`
--
DELIMITER $$
CREATE TRIGGER `AutoRol` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO roles_usuarios (usercod, rolescod, roleuserest,	roleuserfch, roleuserexp)
    VALUES (NEW.usercod, 'CLN', 'ACT', NOW(), DATE_ADD(NOW(), INTERVAL 1 YEAR));
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`bitacoracod`);

--
-- Indices de la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD PRIMARY KEY (`fncod`);

--
-- Indices de la tabla `funciones_roles`
--
ALTER TABLE `funciones_roles`
  ADD PRIMARY KEY (`rolescod`,`fncod`),
  ADD KEY `rol_funcion_key_idx` (`fncod`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`);

--
-- Indices de la tabla `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id_purchase`);

--
-- Indices de la tabla `purchasedetail`
--
ALTER TABLE `purchasedetail`
  ADD PRIMARY KEY (`id_purchase`,`id_item_reference`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rolescod`);

--
-- Indices de la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
  ADD PRIMARY KEY (`usercod`,`rolescod`),
  ADD KEY `rol_usuario_key_idx` (`rolescod`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usercod`),
  ADD UNIQUE KEY `useremail_UNIQUE` (`useremail`),
  ADD KEY `usertipo` (`usertipo`,`useremail`,`usercod`,`userest`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `bitacoracod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `productId` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `funciones_roles`
--
ALTER TABLE `funciones_roles`
  ADD CONSTRAINT `funcion_rol_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rol_funcion_key` FOREIGN KEY (`fncod`) REFERENCES `funciones` (`fncod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `purchasedetail`
--
ALTER TABLE `purchasedetail`
  ADD CONSTRAINT `purchasedetail_ibfk_1` FOREIGN KEY (`id_purchase`) REFERENCES `purchase` (`id_purchase`);

--
-- Filtros para la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
  ADD CONSTRAINT `rol_usuario_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_rol_key` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
