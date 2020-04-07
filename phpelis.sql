-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-04-2020 a las 22:15:00
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phpelis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `textearea` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2020_04_02_161605_create_pelis_table', 1),
(33, '2020_04_07_021607_create_roles_table', 1),
(34, '2020_04_07_023250_create_role_user_table', 1),
(35, '2020_04_07_162500_create_mensaje_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelis`
--

CREATE TABLE `pelis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `desc` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `link` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `ph` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pelis`
--

INSERT INTO `pelis` (`id`, `nombre`, `desc`, `link`, `ph`, `created_at`, `updated_at`) VALUES
(1, 'Las reinas del crimen (2019)', 'Las mujeres de gángsters de Nueva York en Hell\'s Kitchen durante los años 70 mantienen la operación de las redes de extorsión de sus esposos luego de que ellos son arrestados y enviados a prisión.', 'https://www.youtube.com/embed/pdE5OFM2xJE', 'https://www.cinecalidad.to/wp-content/uploads/2020/04/las-reinas-del-crimen.jpg', '2020-04-07 23:01:06', '2020-04-07 23:01:06'),
(2, 'Superman: Hijo Rojo (2020)', '¿Qué hubiera sucedido si el cohete del pequeño Kal-El hubiera caído en la Unión Soviética en vez de Kansas? Esa es la premisa de este cuento de Elseworld de DC Comics.', 'https://www.youtube.com/embed/n0s0FJfyqGk', 'https://www.cinecalidad.to/wp-content/uploads/2020/04/superman-red-son-4k.jpg', '2020-04-07 23:06:25', '2020-04-07 23:06:25'),
(3, 'El informante (2019)', 'Moe Diamond trabaja lavando dinero en Nueva York hasta que un día despierta con amnesia y millones de dólares en efectivo y drogas robadas. Ahora debe recorrer las calles en busca de respuestas mientras intenta evadir un equipo de policías corruptos.', 'https://www.youtube.com/embed/JRq7LyWTCGU', 'https://www.cinecalidad.to/wp-content/uploads/2020/04/el-informante.jpg', '2020-04-07 23:08:14', '2020-04-07 23:08:14'),
(4, 'Bad Boys para siempre (2020)', 'Marcus y Mike deben confrontar cambios de carrera y crisis de edad media, cuando se unen a un equipo de élite recién creado del departamento de policía de Miami para capturar al implacable Armando Armas, líder de un cartel de drogas.', 'https://www.youtube.com/embed/jKCj3XuPG8M', 'https://www.cinecalidad.to/wp-content/uploads/2020/04/bad-boys-for-life.jpg', '2020-04-07 23:10:11', '2020-04-07 23:10:11'),
(5, 'Dolittle (2020)', 'El doctor John Dolittle, que puede hablar con los animales, decide esconderse del mundo. Pero pronto debe embarcarse en una aventura para encontrar una isla legendaria con un joven aprendiz y un equipo de extrañas mascotas.', 'https://www.youtube.com/embed/FEf412bSPLs', 'https://www.cinecalidad.to/wp-content/uploads/2020/03/dolittle-4k.jpg', '2020-04-07 23:12:44', '2020-04-07 23:12:44'),
(6, 'Aves de presa  (2020)', 'Cuando el nefasto villano de Gotham, Roman Sionis, y su mano derecha, Zsasz, piden una recompensa por una joven llamada Cass, toda la ciudad comienza a buscarla. Es cuando los caminos de Harley, Huntress, Black Canary y Renee Montoya se cruzan.', 'https://www.youtube.com/embed/xthGgPbyhD4', 'https://www.cinecalidad.to/wp-content/uploads/2020/03/aves-de-presa-y-la-fantabulosa-emancipacion-de-una-harley-quinn.jpg', '2020-04-07 23:20:18', '2020-04-07 23:20:18'),
(7, 'Star Wars: El ascenso de Skywalker (2019)', 'Los miembros sobrevivientes de la resistencia se enfrentan a la Primera Orden una vez más, y el legendario conflicto entre los Jedi y los Sith alcanza su punto máximo llevando la saga Skywalker a su fin.', 'https://www.youtube.com/embed/Izme__ZsURY', 'https://www.cinecalidad.to/wp-content/uploads/2020/03/star-wars-the-rise-of-skywalker-4k.jpg', '2020-04-07 23:25:13', '2020-04-07 23:25:13'),
(8, '1917 (2019)', '6 de abril de 1917. Mientras un regimiento se alista para adentrarse en territorio enemigo, dos soldados reciben la tarea de correr contra el tiempo para entregar un mensaje que evitará que 1600 hombres caminen directo hacia una trampa mortal.', 'https://www.youtube.com/embed/UcmZN0Mbl04', 'https://www.cinecalidad.to/wp-content/uploads/2020/03/1917-4k.jpg', '2020-04-07 23:26:13', '2020-04-07 23:26:13'),
(9, 'Jumanji: El siguiente nivel (2019)', 'El grupo ha vuelto pero el juego ha cambiado. Cuando regresan a Jumanji para rescatar a uno de los suyos, los jugadores deberán aventurarse por lugares desconocidos e inexplorados, desde los áridos desiertos hasta las montañas nevadas, para escapar del juego más peligroso del mundo.', 'https://www.youtube.com/embed/YOpySpo2Kig', 'https://www.cinecalidad.to/wp-content/uploads/2020/03/jumanji-next-level-4k.jpg', '2020-04-07 23:29:49', '2020-04-07 23:29:49'),
(10, 'Pokémon: Mewtwo Contraataca - La Evolución (2019)', 'Después de que un experimento científico llevara a la creación de un clon de Mewtwo, él decide destruir el mundo. Ahora Ash y sus amigos deben intentar detener los planes malignos de Mewtwo.', 'https://www.youtube.com/embed/y4qf-scnjpE', 'https://www.cinecalidad.to/wp-content/uploads/2020/03/pokemon-mewtwo-contra-ataca-evolucion.jpg', '2020-04-07 23:30:53', '2020-04-07 23:30:53'),
(11, 'Terminator: Destino oculto (2019)', 'Una humana mejorada y Sarah Connor deben detener a un Terminator líquido avanzado que está buscando asesinar a una joven, cuyo destino es crítico para la raza humana.', 'https://www.youtube.com/embed/oxy8udgWRmo', 'https://www.cinecalidad.to/wp-content/uploads/2020/01/terminator-destino-oculto-4k.jpg', '2020-04-07 23:36:42', '2020-04-07 23:36:42'),
(12, 'Black and Blue (2019)', 'Una policía novata graba el momento en que dos policías asesinan a un joven narcotraficante, entonces debe buscar ayuda mientras trata evitar a los criminales y a los policías corruptos.', 'https://www.youtube.com/embed/QCfSeVCr7ng', 'https://www.cinecalidad.to/wp-content/uploads/2020/01/black-and-blue.jpg', '2020-04-07 23:42:18', '2020-04-07 23:42:18'),
(13, 'Zombieland: Tiro de gracia (2019)', 'Columbus, Tallahassee, Wichita y Little Rock se mudan al corazón de los EUA mientras enfrentan zombies evolucionados, otros sobrevivientes, y los problemas cotidianos de su familia improvisada.', 'https://www.youtube.com/embed/RsF5NBhFWr8', 'https://www.cinecalidad.to/wp-content/uploads/2020/01/zombieland-tiro-de-gracia-4k.jpg', '2020-04-07 23:53:56', '2020-04-07 23:53:56'),
(14, 'Proyecto Géminis (2019)', 'Un asesino retirado, Henry Brogan, es perseguido por un misterioso asesino que puede predecir todos sus movimientos. Al descubrir que está siendo cazado por un clon más joven de él mismo, Henry necesita averiguar por qué es un blanco y quién es el creador.', 'https://www.youtube.com/embed/AbyJignbSj0', 'https://www.cinecalidad.to/wp-content/uploads/2020/01/proyecto-geminis-4k.jpg', '2020-04-07 23:56:21', '2020-04-07 23:56:21'),
(15, 'Guasón (2019)', 'En Ciudad Gótica, Arthur Fleck es un comediante con problemas mentales que es maltratado por la sociedad. Entonces cae en una espiral descendiente de revolución y crimen que lo lleva cara a cara con su alter ego: el Guasón.', 'https://www.youtube.com/embed/TobNCFMK_bs', 'https://www.cinecalidad.to/wp-content/uploads/2019/12/joker-4k.jpg', '2020-04-08 00:06:59', '2020-04-08 00:06:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-04-07 08:22:13', '2020-04-07 08:22:13'),
(2, 'user', '2020-04-07 08:22:13', '2020-04-07 08:22:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Miguel Delgado Sully', 'admin@phpelis.com', NULL, '$2y$10$mdpXRGRhHs9o1vuP4HSrXuSdklCzBJYwO/ZqXLWpGBBvIsvJrfw8G', NULL, '2020-04-07 09:51:31', '2020-04-07 09:51:31'),
(3, 'Dayanna Santana', 'dayanita08@gmail.com', NULL, '$2y$10$4Z3S2Mlvj1UEK9yGL6CfCuniJpORObvaZbaiOdIy0/yK.7WF8ui4y', NULL, '2020-04-07 10:35:46', '2020-04-07 10:35:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pelis`
--
ALTER TABLE `pelis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `pelis`
--
ALTER TABLE `pelis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
