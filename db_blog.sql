-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 06:11 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `thumbnail`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'HTML', 'html', 'noimage.jpg', 'HTML adalah singkatan dari Hypertext Markup Language', NULL, '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(2, 'HTML Pemula', 'html-pemula-1', '/noimage.jpg', 'HTML Tingkat dasar atau untuk pemula', 1, '2023-05-16 03:11:11', '2023-05-24 12:48:27'),
(3, 'HTML Advance', 'html-advance-1', '/noimage.jpg', 'HTML tingkat orang sudah menguasai', 1, '2023-05-16 03:11:11', '2023-05-24 12:49:05'),
(4, 'CSS', 'css', 'noimage.jpg', 'CSS atau Cascading Style Sheets adalah salah satu topik yang harus diketahui dalam pengembangan website.', NULL, '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(5, 'Javascript', 'javascript', 'noimage.jpg', 'JavaScript adalah salah satu bahasa pemrograman yang sering digunakan oleh website programmer atau website developer.', NULL, '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(6, 'PHP', 'php', '/noimage.jpg', 'Hypertext Preprocessor adalah bahasa skrip yang dapat ditanamkan atau disisipkan ke dalam HTML. PHP banyak dipakai untuk memprogram situs web dinamis. PHP dapat digunakan untuk membangun sebuah CMS.', NULL, '2023-05-16 03:11:11', '2023-05-16 12:44:21'),
(7, 'Web', 'web', '/storage/photos/1/Posts/Web.jpg', 'Web', NULL, '2023-05-18 02:16:59', '2023-05-18 02:16:59'),
(8, 'Framework', 'framework', '/storage/photos/1/categories/bootstrap.jpg', 'Framework adalah kerangka kerja untuk mengembangkan aplikasi berbasis website maupun desktop.', NULL, '2023-05-24 12:50:44', '2023-05-24 12:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '2023-05-18 00:53:54', '2023-05-18 00:53:54'),
(2, 1, 2, '2023-05-18 00:56:32', '2023-05-18 00:56:32'),
(3, 2, 2, '2023-05-18 00:56:32', '2023-05-18 00:56:32'),
(4, 3, 2, '2023-05-18 00:56:32', '2023-05-18 00:56:32');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2023_05_10_082101_create_categories_table', 1),
(5, '2023_05_13_122309_create_tags_table', 1),
(6, '2023_05_14_142852_create_posts_table', 1),
(7, '2023_05_14_151556_create_category_post_table', 1),
(8, '2023_05_14_151723_create_post_tag_table', 1),
(9, '2023_05_15_200744_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('superadmin@gmail.com', '$2y$10$wVyFyNT80ISkKo7r43DXieq.fqHKShonWY9agu8aROrM586kAByVK', '2023-05-18 13:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'post_show', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(2, 'post_create', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(3, 'post_update', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(4, 'post_detail', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(5, 'post_delete', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(6, 'category_show', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(7, 'category_create', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(8, 'category_update', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(9, 'category_detail', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(10, 'category_delete', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(11, 'tag_show', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(12, 'tag_create', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(13, 'tag_update', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(14, 'tag_delete', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(15, 'role_show', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(16, 'role_create', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(17, 'role_update', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(18, 'role_detail', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(19, 'role_delete', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(20, 'user_show', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(21, 'user_create', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(22, 'user_update', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(23, 'user_detail', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(24, 'user_delete', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `thumbnail`, `description`, `content`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Pengertian dan fungsi dari Web Server', 'pengertian-dan-fungsi-dari-web-server', '/storage/photos/1/Posts/Web.jpg', 'Apa itu Web Server ? Berikut adalah pengertian dan fungsi dari Web Server', '<h1>Pengertian, Fungsi, Dan Cara kerja dari Web Server</h1>\r\n<p><img class=\"alignnone wp-image-62\" src=\"https://orderaplikasi.com/artikel/wp-content/uploads/2023/01/RILL-300x107.jpg\" alt=\"\" width=\"513\" height=\"183\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Web server berfungsi untuk menjalankan aplikasi. Server web istilah lainnya Web server adalah sebuah sistem yang berfungsi untuk menyimpan, mengelola, dan menyediakan akses ke file yang terdapat pada website. Untuk bisa diakses banyak pengguna biasa Server web harus terhubung dengan internet. Server web dapat menangani banyak permintaan sekaligus dan dapat digunakan untuk menyediakan akses ke berbagai jenis.</p>\r\n<p>Server web menangani permintaan yang masuk dari browser dan menyediakan file-file yang diminta oleh browser tersebut</p>\r\n<p>Peran dari Server web itu yang sangat penting dalam menyediakan akses ke website, sehingga perlu adanya pengelolaan yang baik agar Server web dapat bekerja dengan lebih optimal dan memberikan akses yang nyaman bagi pengguna.</p>\r\n<h2>Komponen utama dalam Web server</h2>\r\n<p>Server web&nbsp;itu sendiri biasanya terdiri dari beberapa komponen utama, yaitu :</p>\r\n<ul>\r\n<li>Hardware: Server web membutuhkan perangkat keras seperti komputer yang memiliki spesifikasi yang tepat sesuai dengan kebutuhan.</li>\r\n<li>Sistem operasi (Operating Sistem / OS ): Server web membutuhkan sistem operasi seperti Windows, Linux, atau MacOS untuk menjalankan aplikasi-aplikasi yang diperlukan.</li>\r\n<li>Aplikasi server: Server web membutuhkan aplikasi server seperti Apache, Nginx, atau IIS untuk menjalankan website yang dihosting.</li>\r\n<li>Database: Server web juga membutuhkan database seperti MySQL atau MariaDB untuk menyimpan data yang diperlukan oleh website.</li>\r\n<li>File-file website: Server web juga membutuhkan file-file yang terdapat pada website seperti halaman web, gambar, video, dan lain-lain.</li>\r\n<li>Koneksi internet: Server web juga membutuhkan koneksi internet untuk menyediakan akses ke website bagi pengguna yang terhubung ke internet.</li>\r\n</ul>\r\n<h2>Jenis - jenis Web server</h2>\r\n<p>Jenis - jenis Web server biasanya dikelompokkan menjadi 5 Kategori, yaitu <strong>Berdasarkan</strong> :</p>\r\n<h3>Sumber daya yang digunakan:</h3>\r\n<ul>\r\n<li>Server web&nbsp;statis: Hanya dapat menyajikan file-file yang sudah disimpan pada server.</li>\r\n<li>Server web&nbsp;dinamis: Dapat menjalankan aplikasi dan menangani permintaan yang lebih kompleks.</li>\r\n</ul>\r\n<h3>Cara penggunaan:</h3>\r\n<ul>\r\n<li>Server web&nbsp;dedikasi: Dikonfigurasi khusus untuk menjalankan sebuah website atau aplikasi tertentu.</li>\r\n<li>Server web&nbsp;virtual: Dapat menjalankan beberapa website atau aplikasi pada satu perangkat keras.</li>\r\n<li>Server web cloud: Dapat diakses melalui internet dan dapat menyediakan sumber daya yang dibutuhkan secara dinamis.</li>\r\n</ul>\r\n<h3>Cara penyebaran:</h3>\r\n<ul>\r\n<li>Server web&nbsp;embedded: Dapat diintegrasikan ke dalam perangkat lain seperti router, printer, atau perangkat IoT.</li>\r\n<li>Server web&nbsp;peer-to-peer: Tersebar di beberapa komputer dan dapat saling bertukar file secara langsung.</li>\r\n<li>Server web grid: Terdiri dari beberapa data yang terhubung secara bersamaan.</li>\r\n<li>Server web cluster: Terdiri dari beberapa data yang terhubung secara bersamaan.</li>\r\n</ul>\r\n<h3>Pendistribusian beban kerja:</h3>\r\n<ul>\r\n<li>Server web&nbsp;load balancer: Mengatur distribusi beban kerja pada beberapa web server yang terpisah.</li>\r\n<li>Server web&nbsp;reverse proxy: Meneruskan permintaan dari pengguna ke web server lainnya.</li>\r\n</ul>\r\n<h3>Konten yang disajikan:</h3>\r\n<ul>\r\n<li>Server web&nbsp;game: Menjalankan game online yang dapat diakses secara remote.</li>\r\n<li>Server web&nbsp;virtual reality (VR): Menyediakan akses ke konten virtual reality yang dapat diakses secara remote.</li>\r\n<li>Server web&nbsp;mobile: Menyediakan akses ke website atau aplikasi yang dapat diakses melalui perangkat mobile.</li>\r\n<li>Server web&nbsp;voice over IP (VoIP): Menyediakan layanan telepon melalui internet.</li>\r\n<li>Server web&nbsp;internet of things (IoT): Menyediakan akses ke perangkat IoT yang terhubung ke internet.</li>\r\n<li>Server web&nbsp;content delivery network (CDN): Tersebar di beberapa lokasi dan digunakan untuk menyediakan akses ke website atau aplikasi dengan latensi yang lebih rendah.</li>\r\n<li>Server web&nbsp;edge: Tersebar di beberapa lokasi dan digunakan untuk menyimpan file-file yang sering diakses oleh pengguna.</li>\r\n<li>Server web&nbsp;hybrid: Menggabungkan fitur-fitur dari beberapa jenis web server lainnya.</li>\r\n</ul>\r\n<p>Pemilihan jenis web server yang tepat sangat tergantung pada kebutuhan pengguna dan karakteristik sistem yang akan dibangun.</p>\r\n<h2>Fungsi utama dari Web server:</h2>\r\n<p>Web server merupakan perangkat yang bertugas menyediakan akses ke website atau aplikasi yang dapat diakses melalui internet. Web server memiliki beberapa fungsi utama, yaitu:</p>\r\n<ol>\r\n<li>Ber fungsi Menyimpan file-file yang dibutuhkan untuk menjalankan website atau aplikasi, seperti halaman HTML, gambar, dan file JavaScript.</li>\r\n<li>Menyajikan file-file yang disimpan ke pengguna yang meminta akses melalui protokol HTTP (Hypertext Transfer Protocol).</li>\r\n<li>Menangani permintaan yang masuk dari pengguna dan mengirimkan kembali respons yang sesuai.</li>\r\n<li>Menjalankan aplikasi yang diperlukan untuk menangani permintaan pengguna dan menyimpan data yang diperlukan oleh aplikasi tersebut.</li>\r\n<li>Menjalankan fitur-fitur tambahan seperti keamanan, pengaturan lalu lintas, dan lainnya.</li>\r\n</ol>\r\n<p>Dengan menjalankan fungsi-fungsi tersebut, Server web memungkinkan pengguna untuk mengakses website atau aplikasi yang terhubung ke internet dengan cara yang nyaman dan efisien.</p>\r\n<h2>Keuntungan menggunakan Web server:</h2>\r\n<ol>\r\n<li>Dapat diakses dari manapun: Server web memungkinkan pengguna untuk mengakses website atau aplikasi yang terhubung ke internet dari manapun, asalkan terdapat koneksi internet yang stabil.</li>\r\n<li>Mudah diakses oleh banyak pengguna: Server web dapat diakses oleh banyak pengguna secara bersamaan, sehingga dapat meningkatkan efisiensi dan produktivitas.</li>\r\n<li>Dapat diintegrasikan dengan aplikasi lain: Server web dapat diintegrasikan dengan aplikasi lain seperti database, CRM, atau aplikasi lainnya untuk meningkatkan kemampuan sistem.</li>\r\n<li>Dapat diakses dengan perangkat mobile: Server web dapat diakses melalui perangkat mobile seperti smartphone atau tablet, sehingga dapat memudahkan pengguna untuk mengakses sistem dari manapun.</li>\r\n<li>Dapat dikembangkan dengan mudah: Server web memungkinkan untuk menambah atau mengubah fitur-fitur sistem dengan mudah, sehingga dapat meningkatkan fleksibilitas sistem.</li>\r\n</ol>\r\n<p>Itulah beberapa keuntungan yang dapat diperoleh dengan menggunakan web server. Dengan menggunakan Server web, diharapkan dapat meningkatkan produktivitas dan efisiensi sistem yang dibangun.</p>\r\n<h2>Contoh Web server:</h2>\r\n<p>Berikut ini merupakan beberapa web server yang banyak digunakan</p>\r\n<ol>\r\n<li>Apache: Merupakan data web yang paling populer dan banyak digunakan di seluruh dunia. Apache memiliki fitur yang cukup lengkap dan mudah digunakan, sehingga menjadi pilihan yang tepat bagi kebanyakan pengguna.</li>\r\n<li>Nginx: Merupakan data web yang memiliki kecepatan yang tinggi dan dapat menangani beban kerja yang besar. Nginx populer digunakan untuk menjalankan website atau aplikasi dengan lalu lintas yang tinggi.</li>\r\n<li>Microsoft IIS: Merupakan data web yang dikembangkan oleh Microsoft dan tersedia untuk sistem operasi Windows. IIS memiliki fitur yang cukup lengkap dan mudah digunakan, namun kurang populer dibandingkan dengan Apache atau Nginx.</li>\r\n<li>Lighttpd: Merupakan data web yang memiliki kecepatan yang tinggi dan sangat sesuai untuk menjalankan website atau aplikasi dengan lalu lintas yang rendah. Namun, Lighttpd kurang populer dibandingkan dengan jenis web data lainnya.</li>\r\n<li>Tomcat: Merupakan data web yang dikembangkan oleh Apache Foundation dan khusus digunakan untuk menjalankan aplikasi Java. Tomcat kurang populer dibandingkan dengan jenis web server lainnya.</li>\r\n</ol>\r\n<p>Pemilihan jenis Server web yang tepat tergantung pada kebutuhan dan karakteristik sistem yang akan dibangun.</p>\r\n<p>Nah, itulah pembahasan kami tentang Web server yang wajib kalian coba! Semoga artikel ini dapat membantu!</p>\r\n<p>Kunjungi artikel kami lainnya untuk mengetahui seputar tentang dunia IT! Hanya di <a href=\"http://www.google.com\">www.www.www.www.com</a></p>\r\n<p>&nbsp;</p>', 'publish', '2023-05-18 00:53:54', '2023-05-18 01:04:37', 1),
(2, 'Cara Kerja dan Penggunaan HTML Pada Web Development !', 'cara-kerja-dan-penggunaan-html-pada-web-development', '/storage/photos/1/Posts/ui.jfif', 'Cara Kerja dan Penggunaan HTML Pada Web Development !', '<h1>Yuk Simak Cara Kerja dan Penggunaan HTML Pada Web Development !</h1>\r\n<p><img class=\"alignnone wp-image-132\" src=\"https://orderaplikasi.com/artikel/wp-content/uploads/2023/01/HTML-300x150.webp\" alt=\"\" width=\"398\" height=\"199\" /></p>\r\n<p>Untuk membuat halaman web, Anda harus memiliki dasar-dasar <a href=\"http://yuk-simak-cara-kerja-dan-penggunaan-html-pada-web-development\">HTML</a> dan CSS (Cascading Style Sheets). HTML digunakan untuk membuat struktur dan konten halaman web, sementara CSS digunakan untuk mengatur tampilan halaman web. Dengan HTML dan CSS, Anda dapat membuat halaman web yang dinamis dan responsif.</p>\r\n<p>Untuk belajar HTML, Anda dapat mengikuti tutorial online atau membeli buku panduan yang tersedia. Ada juga beberapa aplikasi pembuat halaman web yang membuat Anda tidak perlu mengetahui HTML atau CSS, tetapi untuk menjadi developer web yang handal, Anda harus belajar kedua bahasa ini.</p>\r\n<p>Sekarang kita akan membahas cara kerja dan penggunaan HTML pada WWeb Development!</p>\r\n<h2>Apa Itu HTML</h2>\r\n<p>HTML (Hypertext Markup Language) adalah bahasa markup yang digunakan untuk membuat halaman web. Ini adalah bahasa dasar yang digunakan untuk membuat struktur dan konten halaman web. Tag yang disediakan yang digunakan untuk menandai elemen seperti judul, paragraf, gambar, dan tautan.</p>\r\n<p>Ada berbagai versi HTML yang telah dirilis sejak dikembangkannya bahasa ini pada tahun 1989, dan versi terbaru adalah HTML5 yang memperkenalkan fitur-fitur baru seperti video dan audio tanpa perlu plugin, serta elemen baru seperti nav, article, dan section. HTML5 juga menyediakan dukungan untuk aplikasi web offline dan geolocation API.</p>\r\n<h2>Sejarah HTML</h2>\r\n<p>Sejarah HTML (Hypertext Markup Language) dimulai pada tahun 1989, saat Tim Berners-Lee, seorang ilmuwan komputer di CERN (Organisasi Eropa untuk Penelitian Nuklir), membuat bahasa markup pertama yang disebut \"HTML\" untuk mengatur dan menghubungkan dokumen-dokumen yang terkait dalam World Wide Web (WWW). Pada saat itu, tag yang dimiliki hanya enam : header, paragraf, tautan, daftar, gambar, dan tebal.</p>\r\n<p>Pada tahun 1991, Berners-Lee dan timnya merilis versi 0.9 yang menambahkan beberapa tag baru seperti &lt;ol&gt; (ordered list) dan &lt;ul&gt; (unordered list). Pada tahun 1993, versi 1.0 dirilis dengan menambahkan tag seperti &lt;table&gt;, &lt;form&gt;, dan &lt;input&gt;.</p>\r\n<div class=\"w-full border-b border-black/10 dark:border-gray-900/50 text-gray-800 dark:text-gray-100 group bg-gray-50 dark:bg-[#444654]\">\r\n<div class=\"text-base gap-4 md:gap-6 m-auto md:max-w-2xl lg:max-w-2xl xl:max-w-3xl p-4 md:py-6 flex lg:px-0\">\r\n<div class=\"relative flex w-[calc(100%-50px)] md:flex-col lg:w-[calc(100%-115px)]\">\r\n<div class=\"flex flex-grow flex-col gap-3\">\r\n<div class=\"min-h-[20px] flex flex-col items-start gap-4 whitespace-pre-wrap\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\r\n<p>Pada tahun 2014, HTML5 dirilis yang menambahkan fitur baru seperti video dan audio tanpa perlu plugin, serta elemen baru seperti &lt;nav&gt;, &lt;article&gt;, dan &lt;section&gt;. HTML5 juga menyediakan dukungan untuk aplikasi web offline dan geolocation API. Saat ini, HTML5 merupakan versi terbaru dari HTML yang digunakan dalam pembuatan halaman web.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"text-gray-400 flex self-end lg:self-center justify-center mt-2 gap-4 lg:gap-1 lg:absolute lg:top-0 lg:translate-x-full lg:right-0 lg:mt-0 lg:pl-2 visible\">\r\n<p>Pada saat ini, HTML masih terus dikembangkan dan diperbarui oleh W3C (World Wide Web Consortium) untuk menambahkan fitur-fitur baru yang dibutuhkan oleh perkembangan teknologi web.</p>\r\n<p>HTML saat ini sangat penting dalam pengembangan website dan dalam seiring berkembangnya teknologi web, HTML juga terus diperbarui dan dikembangkan.</p>\r\n<h2>Struktur</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"w-full border-b border-black/10 dark:border-gray-900/50 text-gray-800 dark:text-gray-100 group dark:bg-gray-800\">\r\n<div class=\"text-base gap-4 md:gap-6 m-auto md:max-w-2xl lg:max-w-2xl xl:max-w-3xl p-4 md:py-6 flex lg:px-0\">\r\n<div class=\"w-[30px] flex flex-col relative items-end\">\r\n<div class=\"relative flex\">\r\n<p>Struktur HTML adalah bagaimana tag-tag digunakan untuk membuat struktur dari sebuah halaman web biasanya terdiri dari:</p>\r\n<ol>\r\n<li>Elemen head: Bagian ini digunakan untuk menambahkan informasi seperti judul halaman, deskripsi, dan meta tag. Elemen head ditandai dengan tag &lt;head&gt; dan di dalamnya terdapat tag &lt;title&gt; yang digunakan untuk menentukan judul halaman web yang ditampilkan di tab browser.</li>\r\n<li>Elemen body: Bagian ini digunakan untuk menambahkan elemen seperti teks, gambar, dan tautan. Elemen body ditandai dengan tag &lt;body&gt; dan di dalamnya terdapat elemen-elemen lain seperti &lt;header&gt;, &lt;nav&gt;, &lt;main&gt;, &lt;article&gt;, &lt;section&gt;, &lt;aside&gt;, &lt;footer&gt;.</li>\r\n<li>Elemen Block: Elemen-elemen ini digunakan untuk membuat blok konten. Contoh dari elemen block adalah &lt;div&gt;, &lt;p&gt;, &lt;h1&gt;-&lt;h6&gt;, &lt;ol&gt;, &lt;ul&gt;, &lt;li&gt;, &lt;blockquote&gt;, &lt;hr&gt;</li>\r\n<li>Elemen Inline: Elemen-elemen ini digunakan untuk menambahkan teks atau elemen ke dalam konten yang ada. Contoh dari elemen inline adalah &lt;a&gt;, &lt;img&gt;, &lt;span&gt;, &lt;strong&gt;, &lt;em&gt;, &lt;br&gt;, &lt;code&gt;</li>\r\n</ol>\r\n<h2>Kerangka</h2>\r\n<p>Kerangka inti adalah struktur dasar dari sebuah halaman web yang ditandai dengan tag-tag HTML yang digunakan untuk menentukan bagaimana elemen-elemen dalam halaman web harus ditampilkan. Struktur kerangka inti dari sebuah halaman web meliputi:</p>\r\n<ul>\r\n<li>DOCTYPE: Tag ini digunakan untuk menentukan versi&nbsp; yang digunakan dalam halaman web. Contoh: &lt;!DOCTYPE html&gt;</li>\r\n<li>&lt;html&gt; : Tag ini digunakan untuk menandai mulai dari sebuah halaman web. Semua elemen lain dalam halaman harus ditandai dengan tag ini. Contoh: &lt;html&gt;</li>\r\n<li>&lt;head&gt; : Tag ini digunakan untuk menandai bagian header dari halaman web. Bagian ini biasanya digunakan untuk menambahkan informasi seperti judul halaman, deskripsi, dan meta tag. Contoh: &lt;head&gt;</li>\r\n<li>&lt;title&gt; : Tag ini digunakan untuk menentukan judul halaman web yang ditampilkan di tab browser. Contoh: &lt;title&gt;Judul Halaman Web&lt;/title&gt;</li>\r\n<li>&lt;body&gt; : Tag ini digunakan untuk menandai bagian utama dari halaman web yang akan ditampilkan pada browser. Tag ini digunakan untuk menambahkan elemen seperti teks, gambar, dan tautan. Contoh: &lt;body&gt;</li>\r\n<li>&lt;/html&gt; : Tag ini digunakan untuk menandai akhir dari sebuah halaman web. Contoh: &lt;/html&gt;</li>\r\n</ul>\r\n<h2>Jenis - Jenis Tag</h2>\r\n<p>Ada berbagai macam tag&nbsp; yang digunakan untuk membuat struktur dan konten halaman web. Beberapa jenis tag HTML yang umum digunakan meliputi:</p>\r\n<ul>\r\n<li>Struktural: Tag-tag ini digunakan untuk membuat struktur dasar halaman web. Contoh: &lt;html&gt;, &lt;head&gt;, &lt;body&gt;, &lt;header&gt;, &lt;nav&gt;, &lt;main&gt;, &lt;article&gt;, &lt;section&gt;, &lt;aside&gt;, &lt;footer&gt;</li>\r\n<li>Formatting: Tag-tag ini digunakan untuk mengatur tampilan teks. Contoh: &lt;p&gt;, &lt;h1&gt;-&lt;h6&gt;, &lt;ol&gt;, &lt;ul&gt;, &lt;li&gt;, &lt;blockquote&gt;, &lt;hr&gt;</li>\r\n<li>Hyperlink: Tag-tag ini digunakan untuk menambahkan tautan ke halaman web atau dokumen lain. Contoh: &lt;a&gt;</li>\r\n<li>Image: Tag-tag ini digunakan untuk menambahkan gambar ke halaman web. Contoh: &lt;img&gt;</li>\r\n<li>List: Tag-tag ini digunakan untuk membuat daftar. Contoh: &lt;ol&gt;, &lt;ul&gt;, &lt;li&gt;</li>\r\n<li>Form: Tag-tag ini digunakan untuk membuat formulir input. Contoh: &lt;form&gt;, &lt;input&gt;, &lt;label&gt;, &lt;select&gt;, &lt;textarea&gt;, &lt;button&gt;</li>\r\n<li>Table: Tag-tag ini digunakan untuk membuat tabel. Contoh: &lt;table&gt;, &lt;tr&gt;, &lt;th&gt;, &lt;td&gt;</li>\r\n<li>Multimedia: Tag-tag ini digunakan untuk menambahkan multimedia seperti video dan audio. Contoh: &lt;video&gt;, &lt;audio&gt;, &lt;source&gt;, &lt;embed&gt;</li>\r\n<li>Semantic: Tag-tag ini digunakan untuk menambahkan makna semantik ke halaman web. Contoh: &lt;header&gt;, &lt;nav&gt;, &lt;main&gt;, &lt;article&gt;, &lt;section&gt;, &lt;aside&gt;, &lt;footer&gt;</li>\r\n<li>Meta-data: Tag-tag ini digunakan untuk menambahkan informasi meta seperti deskripsi dan kata kunci. Contoh: &lt;meta&gt;, &lt;link&gt;</li>\r\n</ul>\r\n<h2>Kesimpulan</h2>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>Struktur HTML terdiri dari beberapa elemen dasar yang digunakan untuk menentukan bagaimana konten dalam halaman web harus ditampilkan. Struktur HTML yang dasar terdiri dari elemen head, body, block, inline. Ada berbagai macam tag yang digunakan untuk membuat struktur dan konten halaman web, seperti Struktural, Formatting, Hyperlink, Image, List, Form, Table, Multimedia, Semantic, Meta-data.</p>\r\n<p>Dalam kesimpulan, HTML sangat penting dalam pengembangan website dan dalam seiring berkembangnya teknologi web, HTML juga terus diperbarui dan dikembangkan. Penggunaan tag yang tepat dapat membuat halaman web lebih mudah dibaca oleh mesin pencari dan lebih mudah dikelola.</p>\r\n<p>Nah itu tadi adalah pembahasan kami Seputar Tentang HTML, Semoga Membantu !</p>', 'publish', '2023-05-18 00:56:32', '2023-05-18 01:02:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '2023-05-18 00:53:54', '2023-05-18 00:53:54'),
(2, 2, 2, '2023-05-18 00:56:32', '2023-05-18 00:56:32'),
(3, 2, 5, '2023-05-18 00:56:32', '2023-05-18 00:56:32'),
(4, 2, 1, '2023-05-18 00:56:32', '2023-05-18 00:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(2, 'Admin', 'web', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(3, 'Author', 'web', '2023-05-16 03:11:11', '2023-05-24 12:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(20, 2),
(21, 1),
(22, 1),
(23, 1),
(23, 2),
(24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'IT', 'it', '2023-05-16 03:11:11', '2023-05-24 12:45:13'),
(2, 'HTML', 'html', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(3, 'CSS', 'css', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(4, 'Javascript', 'javascript', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(5, 'Framework', 'framework', '2023-05-16 03:11:11', '2023-05-24 12:47:14'),
(6, 'Tutorial', 'tutorial', '2023-05-24 12:51:03', '2023-05-24 12:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'superadmin@gmail.com', '2023-05-16 03:11:11', '$2y$10$1aox1eF3Ib6m2chEyfSQie977gekUAp6r8MFJ2nuaRdXQ/AoPtIFW', 'xr2P3EPsZMTL9Zi1umjpAvIEytIshaHXhh8L8LN0N8i0pcPQFXwXrUtLXa1C', '2023-05-16 03:11:11', '2023-05-16 03:11:11'),
(4, 'Author 1', 'author1@gmail.com', NULL, '$2y$10$HRmaThhmi4dfPr9PhkpIsekTCL3p7tG2d3hP5YmNlZGxv7n9dgYym', NULL, '2023-05-24 12:41:57', '2023-05-24 12:41:57'),
(5, 'Author 2', 'author2@gmail.com', NULL, '$2y$10$ZNct4sn7Z3HBksf9sKJhI.6lBHNpF7asmmsr0PbAiHsFp4RqoYXkm', NULL, '2023-05-24 12:42:35', '2023-05-24 12:42:35'),
(6, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$oxpOqoNoNa.LTh.cO5QR8.EM5vIVQN0miiCe6xkULVAoKFwM59d2u', NULL, '2023-05-24 12:43:16', '2023-05-24 12:43:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
