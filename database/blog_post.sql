-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 06:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes_okanemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Creativity', 'creativity', '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(2, 'Personal', 'personal', '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(3, 'Career Development', 'career-development', '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(4, 'Programming', 'programming', '2023-12-04 18:46:38', '2023-12-04 18:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_02_031814_create_posts_table', 1),
(6, '2023_12_02_040019_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Incidunt ratione cupiditate aut sunt.', 'ut-quia-deserunt-ipsa-velit', NULL, 'Dolores quia fugit omnis et ut iure occaecati labore. Voluptatem et possimus esse. Ea non et minima ullam rerum ratione aut. Laborum nam perspiciatis molestiae qui qui voluptas alias.', '<p>Qui enim est eum quasi deleniti non. Labore quis facere soluta dolores voluptatum quia autem inventore.<p></p>Fuga voluptatibus et nesciunt neque sit repellat itaque. Accusamus nihil totam minima et aut adipisci. Omnis odit repudiandae eligendi voluptatem adipisci optio necessitatibus. Delectus voluptatem laborum iure vitae.<p></p>Laboriosam fugiat deleniti animi est sunt sunt ad. Fugiat necessitatibus voluptatem quibusdam sint suscipit sapiente. Reprehenderit at autem eum perspiciatis.<p></p>Asperiores voluptas provident ad voluptatem aut. Accusantium aut sed rerum architecto deleniti. Ullam molestias et consequatur quo quia quas. Sit aut minima qui voluptatem nam.<p></p>Recusandae officiis quae illo eveniet aut et. Cumque ut neque non quia. Cum et veritatis qui ratione ipsum aut.<p></p>Quo iusto impedit et blanditiis autem. Est aliquam similique inventore explicabo.<p></p>Unde repellendus non rerum voluptate minima. Molestiae illo eum possimus tempora. Sunt dolor id modi ea corrupti.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(2, 2, 6, 'Deserunt iure dignissimos maiores sed.', 'architecto-doloremque-magni-rerum-rerum-sed-et-sit', NULL, 'Voluptate iusto qui qui sed ullam a. Deleniti non omnis fuga reiciendis. Necessitatibus suscipit ad et dolorem.', '<p>Ipsam in consequatur labore laudantium magni eligendi non. Inventore alias quaerat et nam tempora. Qui vel praesentium et sunt facere accusantium dolores quis. Magni minima praesentium expedita quaerat cum natus dolor.<p></p>Saepe amet minima sed. Placeat nobis animi voluptates omnis ipsam amet eius. Omnis aut consectetur minima.<p></p>Optio voluptatibus eius molestias. Eum veritatis temporibus quia. Odit eaque eos autem vero aut ratione.<p></p>Omnis commodi repudiandae et quam. Nemo deleniti rerum optio cum sed numquam nesciunt nemo. Consequuntur et fugiat odit eveniet non id. Assumenda quibusdam voluptas qui in et repudiandae accusamus. Aperiam laudantium eum minima esse.<p></p>Quisquam quaerat eveniet aperiam in sed repellendus ipsa. Autem deleniti temporibus dolore maxime vel commodi. Eveniet voluptas cum nisi voluptate vel in reiciendis.<p></p>Cupiditate sit similique nihil officia voluptas qui eos. Voluptatum illum consectetur tenetur quae quod. Cum totam sit autem aspernatur beatae. Et officiis et eos est. Est aut aut quia magnam.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(3, 4, 1, 'Placeat illum temporibus exercitationem necessitatibus delectus.', 'optio-commodi-voluptatem-perferendis-animi', NULL, 'Harum repellendus et ducimus velit quia suscipit repudiandae aspernatur. Id sed eaque est neque quidem repellat vero. Dolore necessitatibus sit quos blanditiis numquam autem voluptatem. Voluptatum aut quidem rerum est qui in eligendi.', '<p>Rerum ipsum sit possimus esse sed quidem. Ipsa officia a neque placeat est unde. Ea accusantium illum iure consequatur.<p></p>Accusamus itaque voluptatem alias. Quis quia quisquam aut in delectus doloribus perferendis. Repellat neque aut vero et unde et minima in. Dignissimos dolores officiis qui consequatur laborum. Iusto ad eius inventore magni et repellendus.<p></p>Dolorem voluptatem error non aut voluptatem. Eaque ut et vitae est unde odit. Molestiae sed dolorem odio molestiae possimus optio. Quia repudiandae aut facere minima adipisci consequatur eum laudantium.<p></p>Nisi reiciendis amet explicabo ad odit aspernatur sit. Maiores ad eos aut qui quia maiores. Ut qui rerum sapiente rerum.<p></p>Excepturi et earum aliquam eos repellendus molestiae. Eligendi et labore voluptatem quis culpa. Et consequuntur et et nihil ad et recusandae. Magnam mollitia reprehenderit quae nobis necessitatibus libero in.<p></p>Similique sed voluptatem quas impedit non aliquid et. Asperiores optio ipsa pariatur fuga accusantium qui. Vero debitis quasi earum et.<p></p>Nemo explicabo expedita beatae autem. Consequatur molestiae quidem ut omnis facilis maxime molestiae. Aut repudiandae nulla est doloremque incidunt quod. Fuga vel commodi eos quia cum.<p></p>Amet repellat quo suscipit totam eaque sed earum. Consequuntur et fugit quis illum nulla. Aut voluptate enim at ratione tenetur. Provident ducimus et officia inventore dolor sapiente.<p></p>Omnis blanditiis minima eum nihil voluptatem qui. Officiis molestiae soluta rem omnis ex dolore dolor. Nisi fugiat tempora quibusdam minima. Enim vel totam voluptate voluptas omnis labore similique. Cupiditate illum amet labore ut laborum ipsum et.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(4, 3, 1, 'Perspiciatis voluptatem nihil doloribus iste aliquid.', 'consequatur-provident-eaque-consequuntur-eum-quia-itaque', NULL, 'Provident non dolorum nobis quo. Asperiores aut dolorem et sed commodi. Sint et minima quia itaque amet quae.', '<p>Consequuntur rerum ea vel aliquam natus rerum omnis. Tempore deleniti quos nobis animi est praesentium veniam. Omnis ea at necessitatibus laborum minima quaerat facilis possimus.<p></p>Eos quam reprehenderit voluptate et iusto quaerat voluptatibus. Nemo consequuntur odio hic. Numquam non dolore illo. Ea consequatur magnam dolore. Exercitationem qui numquam odit non non sapiente et ut.<p></p>Asperiores perferendis est voluptatem consequatur debitis quis. Dolor porro voluptas incidunt et quia alias voluptatem. Est unde magni impedit occaecati sint.<p></p>Quia omnis dolorum architecto veritatis at sed et. Velit cum praesentium animi et molestias pariatur provident temporibus. Aspernatur facere error est consequatur modi alias. Consequatur asperiores ea dolores totam asperiores. Accusamus inventore molestiae et.<p></p>Praesentium dolores incidunt deserunt sit tenetur. Quibusdam harum necessitatibus et ut at. Eum assumenda facere voluptas.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(5, 1, 3, 'Et sed harum explicabo minus.', 'fuga-quos-laboriosam-sed-quo-eos', NULL, 'Est qui quia fuga quos. Illo aliquid aut aut quo aspernatur vel. Neque dolorem rerum vel impedit molestiae voluptatem natus et. Ipsam nemo tempore quidem dolor dignissimos animi.', '<p>Repellat similique iusto pariatur molestiae in. Error aut et at ut ratione ut laudantium. Qui cum voluptatem unde hic.<p></p>Inventore beatae eos quos molestiae id magni ipsum. Veniam ea labore iusto quia. Officia expedita asperiores aliquid laborum cupiditate.<p></p>Quidem fuga sequi voluptatum et ducimus. Hic aut qui rerum modi quod a error. Sint vel quo laudantium mollitia. Delectus consectetur non quidem quas ab porro nihil.<p></p>Hic velit eligendi molestiae sit. Rerum et aspernatur quae asperiores magnam corporis.<p></p>Incidunt ut adipisci iure in. Quia et quo placeat quod saepe quam. Alias alias nulla nihil deserunt nihil. Sint sit dolores sed.<p></p>Qui natus ea quis eum consequatur ratione. Nobis quia voluptatem adipisci consectetur error iste. Dicta quia animi dolorum iusto vel libero nisi. Alias nesciunt minus natus reprehenderit fuga ut.<p></p>Molestiae iusto ut totam omnis autem distinctio. Dignissimos minus est est alias perferendis. Dicta velit ut quos minus deserunt non velit.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(6, 2, 1, 'Quam quis optio reprehenderit perspiciatis rem error.', 'in-modi-hic-nam-explicabo', NULL, 'Tempore officia consequuntur est ipsam. Quia tempora ut repellat reprehenderit dolore non ullam. Est neque corrupti omnis.', '<p>Et sint dolorem nobis non perspiciatis sed. Quis accusantium aut ad possimus. Omnis sed tempore nisi eveniet nesciunt.<p></p>Ducimus aspernatur cumque eaque exercitationem voluptas. Excepturi animi ex minus sint. Est qui provident error repellendus omnis sint aut eveniet. Minus dicta distinctio magni non rerum.<p></p>Explicabo voluptas cum harum non qui itaque. Aliquid reprehenderit ut quas. Eveniet rerum enim dolor aliquid dolore.<p></p>Dicta quibusdam id iure possimus. Delectus sit eum animi quos sit ut rerum. Quisquam quo et voluptas eum et sunt voluptatum.<p></p>Et tempore voluptatem sint et cupiditate a. Impedit omnis consequatur ut. Aspernatur expedita perspiciatis ullam architecto. Ratione id tenetur enim impedit.<p></p>Sit ab sapiente id autem. Consectetur qui quo omnis esse molestiae modi officia officiis. Atque vero in veniam non perspiciatis. Veniam quos autem harum non et unde.<p></p>Ab sit facilis accusamus mollitia. Ex blanditiis quos perspiciatis officia quidem. Rerum iste repudiandae recusandae saepe et facilis qui. Ullam est corporis aspernatur est rerum illum.<p></p>Maiores ut dolores harum aperiam enim. Perferendis ducimus quo ex velit eum et nostrum. Repellat rerum labore eum officiis officia.<p></p>Eaque explicabo nesciunt autem unde impedit. Corrupti ut veniam esse nisi. Aut quas omnis aut nostrum.<p></p>Officiis ducimus rerum quod voluptates aspernatur. Quod odit tempore rem in. Et quo consectetur exercitationem porro omnis qui omnis.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(7, 2, 3, 'Et animi voluptatem et.', 'dignissimos-eos-asperiores-eum-velit', NULL, 'Nihil corporis quia error et ipsam accusantium. Quis sapiente nam earum ut voluptatum. Aut error et repudiandae est odio quidem.', '<p>Nam velit est ut sit recusandae. Delectus est autem inventore est dignissimos quas itaque. Voluptates enim dolor et id recusandae.<p></p>Reprehenderit sint ullam sit sequi deserunt velit dolores. Nihil sint eos fugit rerum harum excepturi placeat. Delectus aliquid culpa quia et nemo voluptatem eum. Et vel rerum in deleniti.<p></p>Enim repudiandae architecto accusamus. Mollitia fugiat minima fuga mollitia dolore assumenda. Odit voluptatibus fugit et officia nulla. Accusamus fuga velit qui reprehenderit velit.<p></p>Amet quidem dolores dolores cum. Assumenda excepturi qui nisi ipsam occaecati. Qui omnis et et qui. Sunt fuga qui fugit ut eum voluptatem dolorem.<p></p>Et in et et perferendis. Ea vel officia id ut. Doloribus facere rerum impedit impedit magnam qui odit iusto.<p></p>Unde harum amet molestias fuga aliquam praesentium vel et. Harum nulla nemo praesentium rerum. Fugiat omnis optio non nesciunt est. Quia nobis omnis alias magni itaque.<p></p>Repellat similique aspernatur soluta. Incidunt molestiae dignissimos quos similique cum tenetur sed non. Molestiae quibusdam vitae nulla sapiente enim ullam facilis.<p></p>Illo voluptatum alias deleniti omnis. Perferendis exercitationem voluptas eos tempore quo. Est adipisci voluptate autem veniam qui. Sed laborum minima consequatur eum tempora non.<p></p>In a adipisci eos aliquid aut est dolorem. Fuga aperiam id voluptates et eaque enim. Quia rerum vel et ut sed.<p></p>Mollitia et quod sint ut. Animi nostrum suscipit est dolor sunt assumenda magnam. Rerum incidunt dolorem in et soluta et ipsa nesciunt.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(8, 3, 6, 'Et impedit officiis.', 'sequi-molestiae-a-totam-totam', NULL, 'Et nihil earum dignissimos et. Neque voluptas doloribus sunt est. Ipsam totam error qui minima consequuntur. Necessitatibus consequuntur ipsam veritatis provident odit.', '<p>Sed cumque aut enim nobis deserunt. Eius quam deleniti illo deleniti asperiores. Et quis est voluptatibus.<p></p>Delectus quia fugiat et veniam necessitatibus. Sit similique molestias dolore et et placeat autem.<p></p>Harum id perferendis libero veniam. Quod eligendi autem architecto doloribus. Aut blanditiis magni minima.<p></p>Quod maiores omnis eligendi. Ea consequatur qui temporibus aut sed tenetur corrupti. Et provident aut excepturi quia.<p></p>Quia dolor quis aliquam natus. Error commodi dicta repudiandae in ipsum. Cum ad et eligendi et aut excepturi provident.<p></p>Optio sed dolor veniam. Officia et minus nihil. Sit vel dolor molestiae nesciunt fugit quia.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(9, 1, 4, 'Consequatur est.', 'ab-aut-suscipit-quis-alias-aut-odio-consequatur', NULL, 'Minus et rerum sit ipsum ut sit esse placeat. Et nihil ut nihil repellat nisi natus neque. Repellat id autem quos quis ut velit commodi. Sed quod impedit voluptas maiores vero.', '<p>Placeat facere eligendi dolor fugit quo. Qui saepe neque voluptas dolor non. Nostrum dignissimos alias autem. Provident enim omnis quo hic pariatur. Excepturi aliquid reiciendis adipisci blanditiis ut ut.<p></p>Enim culpa placeat qui et quia at accusamus. Asperiores corporis magni quae. Officiis pariatur expedita sed rerum. Veritatis voluptatem inventore blanditiis iusto qui ut.<p></p>Consequatur consequatur incidunt saepe voluptate. Sed et repellat ad aut omnis veniam. Cumque voluptatibus alias provident officiis sit. Eaque consequatur qui consequatur et.<p></p>Reprehenderit facilis sint consequatur est. Maxime reiciendis minima perferendis nobis adipisci. Nisi dolor natus est repudiandae. Quaerat officiis nam sit quisquam.<p></p>Sed quo maxime et dolor velit possimus. Deleniti voluptas quas saepe iste repudiandae harum minima. Ab ut qui dolore magnam et eum molestiae. Itaque est earum non.<p></p>Dignissimos expedita eius exercitationem repudiandae ea non. Laborum laboriosam nisi dolores voluptatem ullam. Adipisci occaecati dolorum dolor iure ea ut. Quaerat excepturi maiores inventore occaecati quisquam.<p></p>Nihil sint fugit incidunt quia et. Magni beatae nulla doloribus perferendis enim consequatur. Expedita unde tempore id quam vel. Saepe possimus corporis nobis asperiores.<p></p>Eos id ex dolore ipsa. Ad officia autem aliquam nam dolorem quis. Nesciunt quod blanditiis voluptatum quidem recusandae. Aliquid deleniti ipsum dolor qui.<p></p>Aut culpa adipisci distinctio atque maiores consequatur in. Quis ullam eligendi aut et neque iusto. Beatae porro occaecati et nisi id dolore nobis.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(10, 4, 3, 'Tempore alias voluptatem autem sequi voluptas eaque quaerat et.', 'voluptas-exercitationem-est-voluptatem-et-tempora-fugit-sunt', NULL, 'Impedit voluptas est et qui at. Illo eum ut qui qui. Velit dignissimos excepturi et et aspernatur dolore explicabo. Quas ipsum maxime aut iste nobis. Inventore aut sapiente magnam ut sequi exercitationem.', '<p>Aliquam alias vel sed necessitatibus repellendus cumque omnis. Qui error dignissimos et quia similique cum consequatur. Sit dolor at quidem error modi recusandae ducimus laudantium.<p></p>Nesciunt sit qui cupiditate nostrum et est vero. Cum sint et quo modi. Cupiditate omnis sunt hic consectetur et.<p></p>Consequatur amet tempore earum illum. Tempora aut autem velit sapiente non tempore. Maxime ratione aut sequi ut consequatur. Ducimus aspernatur consequatur molestiae recusandae.<p></p>Qui aspernatur in dolores culpa doloribus molestiae. Modi velit a tempora atque sit. Dolores ut sed vero facilis sed harum quia. Asperiores est ea eaque veritatis.<p></p>Quod velit eius minima tenetur nihil. Dolorem pariatur ducimus ea ipsam asperiores deserunt. Ut dignissimos qui et ipsam. Qui repudiandae nobis dolores facere.<p></p>Eos quasi ratione deserunt eaque debitis accusantium. Exercitationem hic accusantium ratione. Accusamus aliquam ipsum voluptates officia veritatis ullam perspiciatis.<p></p>Vel officia soluta aut mollitia facilis. Est laboriosam dolorem id. Provident molestias porro eligendi velit impedit. Quia officiis a est accusamus et dicta.<p></p>Fugit ipsum quisquam est quia nobis corporis. Accusantium modi ipsum natus et id. Quibusdam quod a fugit officiis est. Dolorum quibusdam tenetur non consequatur.<p></p>Laudantium temporibus quam vitae ut modi. Officiis suscipit natus laborum dolor pariatur. Autem numquam qui rerum harum est. Placeat consequatur omnis explicabo vero magnam.<p></p>Eum eum officia nobis voluptas accusantium natus. Aliquid saepe est maiores quod accusantium consequatur ut.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(11, 3, 4, 'Animi dolorem eveniet.', 'distinctio-similique-tempora-ducimus-dolorem', NULL, 'Impedit earum dolore harum sit nisi ex nisi. Quisquam sit rerum nam voluptatibus occaecati. Corporis ut amet sed eius delectus omnis omnis.', '<p>Deleniti totam error et quisquam error blanditiis est. Similique doloremque nihil molestiae aut. Illo totam harum ipsum delectus quos animi neque non.<p></p>Sit et eaque earum eius corrupti. Possimus ut sed aut qui qui. Ipsum et ea iusto harum ipsam natus facilis fuga.<p></p>Molestiae nisi et perspiciatis et quia rerum. Qui molestiae impedit neque doloribus voluptatum. Nostrum aspernatur optio alias vitae in. Sed accusamus nihil eligendi porro ut ex aliquid.<p></p>Dolore est ea aut nisi. Maxime consequatur libero eaque velit. Est quia quo veritatis dolores perferendis.<p></p>Quaerat esse eligendi perspiciatis aut quod iusto. Perferendis aut qui qui eligendi dolores ut tempore sed. Temporibus quo quae numquam exercitationem dolor consequatur dolorem consequatur. Tenetur ullam et deserunt asperiores fugit.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(12, 3, 3, 'Est occaecati.', 'praesentium-aut-rerum-incidunt-voluptatem-odit-ex', NULL, 'Ut rerum sapiente culpa ut. Quisquam in aut ipsam nam sunt iusto. Omnis nemo ad porro dignissimos doloribus culpa.', '<p>Voluptates deserunt cumque corporis. Ut similique qui illo delectus. Placeat reprehenderit deserunt doloribus eum corporis itaque. Veritatis nesciunt quis magnam expedita dignissimos ut.<p></p>Voluptas repellendus aut veritatis velit occaecati. Repudiandae sunt dicta hic ipsum. Quia occaecati nisi ratione et placeat.<p></p>Provident consectetur expedita a et consequuntur veritatis. Aut officia rerum aut libero minima. Velit beatae voluptate ipsum iusto. Sint voluptas doloribus ducimus exercitationem excepturi.<p></p>Incidunt enim fugiat facilis aut. Eligendi nulla et recusandae nobis. Amet aut quidem dignissimos optio sequi officia quia.<p></p>Voluptate eum qui voluptatem commodi iusto sequi. Eos est dolorem sapiente impedit quia non inventore exercitationem. Molestiae ut inventore enim non in.<p></p>Tempora sed qui provident iste deleniti rem repellendus similique. Est aut ullam sit pariatur. Similique et est exercitationem.<p></p>Totam ratione repellendus reprehenderit voluptates. Velit consequatur rem commodi deserunt debitis vel. Et tempora earum quis. Expedita facilis voluptas numquam qui ducimus quaerat.<p></p>Laudantium nostrum sunt consequuntur magni alias explicabo fugiat. Quod magnam adipisci voluptatem libero at vero. Culpa assumenda quia explicabo cum sapiente.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(13, 3, 6, 'Perferendis pariatur autem tempore.', 'quia-error-ipsam-eum-quos-aut', NULL, 'Alias hic quis reiciendis blanditiis sed ut. Laborum tempora rerum molestiae ut repellat ut ut. Omnis et quia incidunt qui quia. Hic numquam eaque dolores rerum accusamus qui dolor.', '<p>Ipsa ut sunt a ipsam rem molestiae. Atque minima quos hic et sit. Recusandae qui labore temporibus et molestias aut quia.<p></p>Voluptas inventore voluptatem nobis est amet. Omnis amet reprehenderit ullam et ipsam nulla. Explicabo dolorem nemo pariatur harum iure qui. Quo pariatur laboriosam dolorem molestiae.<p></p>Est sit cum exercitationem veritatis. Quos architecto labore soluta aperiam accusamus quidem. Omnis dignissimos dolor repudiandae quaerat ipsum animi facere. Asperiores cupiditate quas voluptatem.<p></p>Fugiat assumenda inventore nesciunt voluptates doloribus veniam quis. Odio voluptatibus itaque quos nihil sit incidunt dicta velit. Natus qui fugit incidunt quis sunt beatae cupiditate. Aliquam repellat qui quia quia ad dolores. Quis laboriosam qui possimus rerum sint commodi vero nulla.<p></p>Aut molestias fuga sint ea dignissimos dolorem mollitia. Placeat temporibus non ut. Odio quod quasi fugiat explicabo repellendus quis nostrum.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(14, 1, 5, 'Optio sint repudiandae at.', 'temporibus-eaque-voluptas-modi-dolor-repudiandae', NULL, 'Nihil soluta necessitatibus odio autem ut rem animi. Voluptates iure voluptates sunt porro omnis. Cupiditate ut ut enim sequi.', '<p>Tenetur quisquam ducimus voluptas facilis unde illum voluptas laborum. Asperiores temporibus nesciunt itaque. Odio consequatur nihil quo commodi enim. Et debitis qui odit non error voluptas.<p></p>Facere sed perferendis dolorum voluptatem non harum animi. Accusamus non ea itaque sapiente. Quia et quaerat molestias sit. Itaque vel consequatur inventore et voluptatum autem.<p></p>Repudiandae praesentium culpa eos ipsa exercitationem voluptatem dolorum. Eligendi provident et praesentium quas architecto iste minus. Ab sit quis eaque cum velit eligendi.<p></p>Quisquam esse placeat iusto et. Id quo molestias voluptatum inventore quibusdam velit non possimus.<p></p>Sed ut et dolorum iure consequatur. Neque qui pariatur debitis nobis. Sint quae ipsa pariatur aut eum. Atque et nihil dolorum autem quibusdam. Est corporis voluptatem est velit omnis qui.<p></p>Maiores et rerum odit laborum non labore dolorem. Placeat optio repellat at pariatur eaque iure. Aliquid blanditiis est illo.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(15, 3, 4, 'Eum expedita eos distinctio voluptatibus illo.', 'blanditiis-cumque-nihil-corporis-repudiandae-aut-consequatur', NULL, 'Perferendis non soluta minus tenetur quos accusantium. Sit ullam consequatur vel quia consequuntur. Dicta ipsam optio perferendis dolor facilis odio rerum.', '<p>Fugiat dicta quam praesentium ex eaque voluptate. Impedit quos doloremque veniam eum.<p></p>Est vel quibusdam ea itaque nisi autem saepe. Vel velit odio minima qui eos. Fugit rerum dolore nihil quae. Et qui corporis velit dignissimos dolorem et quidem tempore.<p></p>Voluptas explicabo provident consequatur ipsam. Aut dolor necessitatibus laboriosam quo quas omnis. Delectus et voluptas vel nisi iste asperiores. Culpa molestiae vel porro ut quisquam et.<p></p>Consequuntur nobis dolores voluptatem perspiciatis. Necessitatibus sed tempore sequi quis.<p></p>Quas nobis et et perferendis sed ut dolores quae. Itaque placeat et accusantium laborum placeat qui animi tempora. Cum at molestiae nemo tempore et illo voluptate alias.<p></p>Aut magnam illum quam expedita quis vitae aliquam molestias. In porro ut voluptates rerum. In rem exercitationem corporis possimus aut deserunt et.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(16, 1, 3, 'Dolore corporis magnam inventore.', 'quod-molestias-suscipit-debitis-facere-quos-et', NULL, 'In vel placeat et aut excepturi illo. Cupiditate corporis iure rem odio et qui. Quasi aspernatur quia vel voluptatum dicta quis est. Suscipit eaque beatae voluptatem nulla exercitationem sequi.', '<p>Beatae vitae dolor mollitia pariatur iure sequi. Quis nemo est iure debitis provident expedita. Et qui saepe aut atque.<p></p>Eum autem adipisci voluptas et. In distinctio iusto quo sunt. Quia ut dolore ut vero aperiam delectus. Veniam aut accusamus at voluptas voluptatem. Quasi totam dolorem minus voluptas nobis est et tenetur.<p></p>Molestias recusandae enim consectetur laborum aut perferendis. Ipsum quos repellendus est. Qui dolor perspiciatis adipisci sit itaque. Et pariatur quas quas. Dolorum id vel et praesentium voluptates.<p></p>Culpa assumenda voluptates quia exercitationem. Quam rerum repellat accusamus aut suscipit quisquam. Error laudantium voluptatem non reiciendis aliquam aspernatur architecto nostrum. Sed nostrum rerum eos voluptatem quae.<p></p>Doloremque ex aut et eaque voluptas aut. Eum illo minus amet tempore eos vel officia. Fuga quo facere officia commodi accusamus et sunt error. Officia id reiciendis fugiat aspernatur. Rerum quaerat qui eum ea beatae.<p></p>Molestiae ipsa quo beatae voluptatem ea. Sed quibusdam hic consectetur itaque cupiditate enim dicta. Vel at accusantium nobis qui autem ut. Reiciendis ipsa minima sequi ipsam laborum consectetur.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(17, 1, 2, 'Quia beatae velit iusto eveniet et assumenda facere.', 'est-magnam-laudantium-perspiciatis-qui-a-suscipit', NULL, 'Vel sed deleniti quidem sint dolores autem. Distinctio quis modi a et illo quos cum. Voluptatem eligendi quo temporibus eaque accusamus aliquam. Eius ducimus fugiat voluptas ipsam.', '<p>Distinctio rerum error debitis non. A totam quos voluptatibus similique fugit quisquam quia. Rem maxime autem amet. Officia corrupti ut sint ut ab ut.<p></p>Voluptates doloremque non aspernatur. Voluptatem est rerum et velit dolor. Voluptas repellendus harum laudantium laboriosam sit.<p></p>Qui deleniti qui totam. Explicabo dolor tempora cum veritatis deleniti. Soluta maiores eos sequi sunt perferendis. Quisquam eum deleniti aspernatur deleniti.<p></p>Nulla itaque et est nulla. Voluptas molestias molestiae ab unde pariatur ipsa earum. Veritatis quis natus ducimus dignissimos sint fugit totam.<p></p>Officiis et aut eum facilis. Aperiam repudiandae praesentium iste voluptas officiis dolorem. Enim dolores dolores delectus fugit pariatur. Aliquam et eaque sint sequi velit consequuntur.<p></p>Iste et est veniam placeat voluptas et. Similique inventore aut animi est perferendis nam commodi. Saepe rerum vitae cupiditate id.<p></p>Repellat velit et dolores hic veniam expedita cumque. Est consequatur atque voluptatum enim rerum quisquam maxime quia. Deserunt non ut sed eaque.<p></p>Et quisquam repellat perspiciatis at reiciendis. Ut dolore consequatur est atque similique. Est quia quasi iste qui. Amet sed aut aut necessitatibus quia laboriosam iusto mollitia. Maxime dolorum ex sint incidunt.<p></p>Ipsum qui facilis rem ex exercitationem occaecati. Quo error consequatur dolorem quo suscipit non exercitationem. Ullam aut illum in ducimus nihil sit cupiditate.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(18, 1, 5, 'Beatae iusto et esse.', 'nobis-et-minus-aut-enim', NULL, 'In quis maxime et laudantium aliquam commodi. Eos deserunt aliquam doloribus culpa id aut. Et sequi et consectetur molestias. Dolorem omnis id quia ipsum quo iure.', '<p>Assumenda vitae et eius consequatur incidunt. Libero maiores inventore quos aut ut aliquam. Adipisci aliquid reiciendis aut quibusdam ut voluptatem nisi.<p></p>Ipsum quia consequatur laboriosam voluptas dolor labore. Aut natus eveniet corporis cumque sed reiciendis molestias. Tenetur dolor nam placeat dolores labore sapiente.<p></p>Aut vel rerum debitis tempore voluptas voluptatibus. Voluptates et quaerat ut minus et. Fuga iure optio non sit.<p></p>Aut eveniet libero et. Molestiae consequatur error est culpa. Et autem doloremque excepturi recusandae. Consequuntur fugit quo commodi. Omnis blanditiis delectus doloremque ut atque corporis quo.<p></p>Dicta qui quis quia nulla. In odio soluta delectus a aperiam facere. Est eligendi quod harum assumenda placeat omnis. Consectetur vero eos nesciunt vel rerum sapiente.<p></p>Est ut id repellat esse ut. Beatae distinctio deserunt at velit. Eos aut dolore ducimus magni porro occaecati mollitia. Cupiditate sed veritatis est dolor.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(19, 3, 4, 'Modi quo unde molestiae voluptas voluptatem mollitia.', 'ipsam-expedita-asperiores-quis-qui-quasi-et', NULL, 'Nisi molestias et eligendi ducimus deleniti. Modi consequatur aut velit sequi. Corrupti eum a libero voluptatem veniam omnis consequuntur. Magnam doloribus quaerat quia nostrum suscipit.', '<p>Fugiat eos quia suscipit quisquam voluptatem sunt. Iure quis ipsa fugit vel.<p></p>Nulla at vel molestiae deleniti ipsam culpa. Sint minus neque ratione sed ut alias error. Doloremque fuga soluta aut placeat. Nihil sed autem consequatur ut laborum maiores.<p></p>Consequuntur consequatur ipsum ab eveniet quia doloribus quae. Tempore ipsum architecto at. Fugiat sapiente ab libero sit repudiandae. Laboriosam illum repellat aliquam.<p></p>Saepe quas praesentium voluptatibus eligendi molestias ratione architecto blanditiis. Voluptatem tempore voluptas quae quam saepe autem et. Reiciendis est assumenda doloribus similique magnam est accusamus.<p></p>Similique recusandae qui impedit aut. Et ipsam tenetur rerum porro aut ipsam beatae. Incidunt illum sed modi voluptatem est occaecati ut.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(20, 1, 1, 'Sint eum quae ex.', 'qui-qui-nostrum-eum-dolorem', NULL, 'Quod molestiae eaque aliquam esse. Cum fugiat eaque sunt enim. Repellat accusamus qui et id facilis.', '<p>Iste sed ut iusto rerum molestias qui repellendus. Vitae perspiciatis totam in vitae est. Voluptatem veritatis qui modi eum et quibusdam voluptas. Vitae magni velit voluptatem repudiandae et nostrum.<p></p>Dicta eligendi sed dolores perferendis ullam doloribus. Tempora iure impedit itaque pariatur et cumque. Repellendus dolores enim velit rerum consequatur earum. Perspiciatis omnis non facilis vitae quasi autem.<p></p>In qui et officia dolorum. Optio qui voluptatem at eos. Optio vero nobis vel harum. Voluptatibus autem laudantium molestias aut illum.<p></p>Facilis consectetur est quos accusantium veritatis. Dolorum sint in numquam et consequatur velit. Nesciunt nesciunt error fugit repellat.<p></p>Quo veniam aut voluptates voluptatem. Aliquam quas eum magni sint voluptatem. Est asperiores nobis aut atque autem hic. Nisi nemo corporis aperiam modi doloremque rerum sequi.<p></p>Impedit possimus omnis repellendus provident. Necessitatibus sed id in reprehenderit ipsa. Animi officiis adipisci expedita numquam velit a non. Facere error numquam vitae sit enim.<p></p>Dolore consequuntur maiores sunt. Dolor expedita laudantium voluptas est officia. Laudantium minus et tempore est reprehenderit adipisci mollitia est. Dolor laboriosam quia iure soluta. Ipsum in velit dolor aut itaque.<p></p>Aspernatur nam veritatis perspiciatis qui sequi architecto nemo. Iure blanditiis non eaque voluptas omnis dolores. Esse a ullam recusandae.</p>', NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muh Fadhil Latif', 'muhammadfadhillatif', 'muhammadfadhillatif17@gmail.com', NULL, '$2y$12$07EFRCBr7aJaX3d9gZXRiu4JLs/iE/OzW6BamxttOFOQX75PRLLLG', 0, NULL, '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(2, 'Margarita Macejkovic', 'kuhn.stuart', 'florida26@example.org', '2023-12-04 18:46:38', '$2y$12$arP.YGdf7Hrx46mO9XdTJexWUEhP8mSPUqQFjo9XPDMy9m6plSslO', 0, 'Rj1TJBmhXw', '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(3, 'Darryl Donnelly', 'pink.blick', 'katrine42@example.org', '2023-12-04 18:46:38', '$2y$12$arP.YGdf7Hrx46mO9XdTJexWUEhP8mSPUqQFjo9XPDMy9m6plSslO', 0, '6xfsOrb3XH', '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(4, 'Cordell Hamill', 'imoen', 'clement.bayer@example.com', '2023-12-04 18:46:38', '$2y$12$arP.YGdf7Hrx46mO9XdTJexWUEhP8mSPUqQFjo9XPDMy9m6plSslO', 0, 'IXPHkRPucL', '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(5, 'Jett Gibson', 'kstanton', 'gail56@example.net', '2023-12-04 18:46:38', '$2y$12$arP.YGdf7Hrx46mO9XdTJexWUEhP8mSPUqQFjo9XPDMy9m6plSslO', 0, 'YZqunjHjh2', '2023-12-04 18:46:38', '2023-12-04 18:46:38'),
(6, 'Ben Klocko', 'trantow.malvina', 'carlee28@example.com', '2023-12-04 18:46:38', '$2y$12$arP.YGdf7Hrx46mO9XdTJexWUEhP8mSPUqQFjo9XPDMy9m6plSslO', 0, 'pPrD0dystb', '2023-12-04 18:46:38', '2023-12-04 18:46:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
