-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2020 at 04:48 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icoder`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact', 7, 'add_contact'),
(26, 'Can change contact', 7, 'change_contact'),
(27, 'Can delete contact', 7, 'delete_contact'),
(28, 'Can view contact', 7, 'view_contact'),
(29, 'Can add post', 8, 'add_post'),
(30, 'Can change post', 8, 'change_post'),
(31, 'Can delete post', 8, 'delete_post'),
(32, 'Can view post', 8, 'view_post'),
(33, 'Can add blog comment', 9, 'add_blogcomment'),
(34, 'Can change blog comment', 9, 'change_blogcomment'),
(35, 'Can delete blog comment', 9, 'delete_blogcomment'),
(36, 'Can view blog comment', 9, 'view_blogcomment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$1yMVTmgV9LGY$hUJcEsk8VXLR/6qhXT4KZWqfSNDESBFxe2Jk4rEr+NA=', '2020-09-04 16:25:24.446190', 1, 'mybrother', '', '', '', 1, 1, '2020-09-04 16:24:40.316486'),
(2, 'pbkdf2_sha256$180000$Bqj56sUqw5m7$MfpFOH68Op60ar7WLglvlrP6FkOfYuX12H/AoPb5rDE=', '2020-09-28 09:09:27.343220', 1, 'kamesh', '', '', '', 1, 1, '2020-09-27 05:50:08.196401'),
(3, 'pbkdf2_sha256$180000$RRlVe0isK58F$a20cuTcb07hfl6ELx/IRBNI6nKDFTtctAio/tXKHRog=', '2020-09-28 12:36:22.352414', 0, 'kajal', 'kajal', 'chavada', 'kajal@gmail.com', 0, 1, '2020-09-27 15:40:23.303854'),
(4, 'pbkdf2_sha256$180000$hKrlXMOWgOLQ$SumrEup33976v5qByErsHWGgo4yEZk8SOCS4UNkJUHI=', NULL, 0, 'Harry bhai', 'harry', 'panchal', 'harry@gmail.com', 0, 1, '2020-09-27 15:42:53.752823'),
(5, 'pbkdf2_sha256$180000$BcmAsYX12iQA$sNXc5XQ2MVwPC/nVPR6OoXEZ9J2QREVmvwg1i5iQt8M=', NULL, 0, 'yash', 'yash', 'yash', 'yash999@gmail.com', 0, 1, '2020-09-27 16:02:40.111215'),
(6, 'pbkdf2_sha256$180000$2on7gGpKUri1$dct2g8oDnt+FWdnqgUiA5hN5FGCAJr1Pv+HwbulSz64=', NULL, 0, 'python', 'kamesh', 'parmar', 'chintakd999@gmail.com', 0, 1, '2020-09-27 16:08:05.238838'),
(7, 'pbkdf2_sha256$180000$MfJNYXWAzKJi$gN5gi+F4BdsQSIvo9bXI6uww8w3TmK9ptZAvL6OeMKA=', NULL, 0, 'geeta123', 'kamesh', 'yash', 'geeta@123.com', 0, 1, '2020-09-27 16:14:54.355529'),
(8, 'pbkdf2_sha256$180000$yBJ9JDtRA5Dg$L/IOvglyEgH+HYrAtLcNigTS94DzTxLmpG1Fn68zOJE=', '2020-09-28 12:43:43.095730', 0, 'anuska', 'anuska', 'parmar', 'anuskagmail.com', 0, 1, '2020-09-27 17:57:23.189298'),
(9, 'pbkdf2_sha256$180000$VKvf5J8KzNg8$KV0sWhPurt/1nvt0JTR8QQuzHglZCRQ5WJT5OX8H+f8=', NULL, 0, 'mom', 'mom', 'mom', 'mom', 0, 1, '2020-09-27 18:19:17.071584'),
(10, 'pbkdf2_sha256$180000$ptMsrNwGd5uG$iiNQlFW6WIVaCPL42fXShGKKBcKHWplqk6un5LLFcYE=', NULL, 0, 'papa', 'papa', 'papa', 'papa', 0, 1, '2020-09-27 18:24:21.137332');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogcomment`
--

CREATE TABLE `blog_blogcomment` (
  `sno` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_blogcomment`
--

INSERT INTO `blog_blogcomment` (`sno`, `comment`, `timestamp`, `parent_id`, `post_id`, `user_id`) VALUES
(1, 'hello i\'m yash', '2020-09-28 09:08:01.680851', NULL, 2, 3),
(2, 'helll im guru', '2020-09-28 09:11:49.458287', NULL, 2, 2),
(3, 'this is dummy', '2020-09-28 09:30:47.663936', NULL, 2, 3),
(4, '', '2020-09-28 09:46:29.176250', NULL, 2, 3),
(5, 'this is dummy', '2020-09-28 09:53:47.246102', NULL, 2, 3),
(6, 'this is anuska rab ne band di jodi', '2020-09-28 10:31:37.969139', NULL, 6, 8),
(7, 'this is besttty', '2020-09-28 12:09:10.686864', NULL, 6, 8),
(8, '', '2020-09-28 12:10:48.519089', NULL, 6, 8),
(9, '', '2020-09-28 12:15:12.935694', NULL, 6, 8),
(10, '', '2020-09-28 12:16:01.348333', NULL, 6, 8),
(11, '', '2020-09-28 12:17:00.895405', NULL, 6, 8),
(12, '', '2020-09-28 12:18:45.547719', NULL, 6, 8),
(13, '', '2020-09-28 12:24:18.030084', NULL, 6, 8),
(14, '', '2020-09-28 12:38:43.682463', NULL, 5, 8),
(15, 'Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.', '2020-09-28 12:51:43.207158', NULL, 6, 8),
(16, 'Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.', '2020-09-28 12:51:53.892815', NULL, 6, 8),
(17, 'this is officil checking', '2020-09-28 12:58:36.466396', NULL, 6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `sno` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(15) NOT NULL,
  `timeStamp` datetime(6) NOT NULL,
  `slug` varchar(130) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`sno`, `title`, `content`, `author`, `timeStamp`, `slug`) VALUES
(1, 'this is title', 'Python is an interpreted, high-level and general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.[28]\r\n\r\nPython is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly, procedural), object-oriented, and functional programming. Python is often described as a \"batteries included\" language due to its comprehensive standard library.[29]\r\n\r\nPython was created in the late 1980s as a successor to the ABC language. Python 2.0, released in 2000, introduced features like list comprehensions and a garbage collection system with reference counting.\r\n\r\nPython 3.0, released in 2008, was a major revision of the language that is not completely backward-compatible, and much Python 2 code does not run unmodified on Python 3.\r\n\r\nThe Python 2 language was officially discontinued in 2020 (first planned for 2015), and \"Python 2.7.18 is the last Python 2.7 release and therefore the last Python 2 release.\"[30] No more security patches or other improvements will be released for it.[31][32] With Python 2\'s end-of-life, only Python 3.6.x[33] and later are supported.\r\n\r\nPython interpreters are available for many operating systems. A global community of programmers develops and maintains CPython, a free and open-source[34] reference implementation. A non-profit organization, the Python Software Foundation, manages and directs resources for Python and CPython development.', 'yash', '2020-09-27 05:55:56.000000', 'yash-first'),
(2, 'this is second post', 'this is testing for second post for avialalbe', 'kamesh', '2020-09-27 06:08:01.000000', 'kamesh-second'),
(3, 'Milan post third', 'third post checknig for availability', 'milan', '2020-09-27 06:08:44.000000', 'milan-third'),
(4, 'this is fourth post....', 'diapng four post for checking purpose availablity', 'dipang', '2020-09-27 11:52:00.000000', 'dipang-four'),
(5, 'Laboratory flasks are vessels or containers that fall into the category of laboratory equipment known as glassware. In laboratory and other scientific settings, they are usually referred to simply as flasks.', 'At the opening(s) at top of the neck of some glass flasks such as round-bottom flasks, retorts, or sometimes volumetric flasks, there are outer (or female) tapered (conical) ground glass joints. Some flasks, especially volumetric flasks, come with a laboratory rubber stopper, bung, or cap for capping the opening at the top of the neck. Such stoppers can be made of glass or plastic. Glass stoppers typically have a matching tapered inner (or male) ground glass joint surface, but often only of stopper quality. Flasks which do not come with such stoppers or caps included may be capped with a rubber bung or cork stopper.\r\n\r\nFlasks can be used for making solutions or for holding, containing, collecting, or sometimes volumetrically measuring chemicals, samples, solutions, etc. for chemical reactions or other processes such as mixing, heating, cooling, dissolving, precipitation, boiling (as in distillation), or analysis.', 'Rajni kant', '2020-09-27 13:00:01.000000', 'rajnikant-flask'),
(6, 'this is demo title 5', 'kamesh is my brohter and now he is going to complete his bcom.....\r\nkamesh is my brohter and now he is going to complete his bcom.....\r\nkamesh is my brohter and now he is going to complete his bcom.....', 'kajal', '2020-09-27 07:35:00.000000', 'kajal');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-09-04 16:52:36.949615', '1', 'Contact object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-09-27 05:55:58.245564', '1', 'this is titlebyyash', 1, '[{\"added\": {}}]', 8, 2),
(3, '2020-09-27 06:08:04.374672', '2', 'this is second postbykamesh', 1, '[{\"added\": {}}]', 8, 2),
(4, '2020-09-27 06:08:46.926857', '3', 'Milan post thirdbymilan', 1, '[{\"added\": {}}]', 8, 2),
(5, '2020-09-27 06:11:56.848986', '1', 'this is titlebyyash', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 8, 2),
(6, '2020-09-27 06:22:48.917514', '4', 'this is fourth post....bydipang', 1, '[{\"added\": {}}]', 8, 2),
(7, '2020-09-27 06:27:40.769283', '1', 'this is titlebyyash', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 2),
(8, '2020-09-27 13:00:05.134854', '5', 'Laboratory flasks are vessels or containers that fall into the category of laboratory equipment known as glassware. In laboratory and other scientific settings, they are usually referred to simply as ', 1, '[{\"added\": {}}]', 8, 2),
(9, '2020-09-27 14:04:30.655317', '5', 'Laboratory flasks are vessels or containers that fall into the category of laboratory equipment known as glassware. In laboratory and other scientific settings, they are usually referred to simply as ', 2, '[]', 8, 2),
(10, '2020-09-27 14:06:21.455980', '6', 'this is demo title 5  by   kajal', 1, '[{\"added\": {}}]', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'blog', 'blogcomment'),
(8, 'blog', 'post'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'contact'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-09-04 16:23:44.903393'),
(2, 'auth', '0001_initial', '2020-09-04 16:23:46.397514'),
(3, 'admin', '0001_initial', '2020-09-04 16:23:54.625737'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-09-04 16:23:56.696093'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-04 16:23:56.759272'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-09-04 16:23:57.656363'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-09-04 16:23:58.544150'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-09-04 16:23:58.718676'),
(9, 'auth', '0004_alter_user_username_opts', '2020-09-04 16:23:58.797603'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-09-04 16:23:59.684248'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-09-04 16:23:59.810777'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-09-04 16:23:59.876284'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-09-04 16:24:00.041021'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-09-04 16:24:00.191603'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-09-04 16:24:00.379694'),
(16, 'auth', '0011_update_proxy_permissions', '2020-09-04 16:24:00.457862'),
(17, 'sessions', '0001_initial', '2020-09-04 16:24:00.844006'),
(18, 'home', '0001_initial', '2020-09-04 16:48:14.449128'),
(19, 'home', '0002_contact_timestamp', '2020-09-04 16:56:33.055385'),
(20, 'blog', '0001_initial', '2020-09-27 05:47:38.473248'),
(21, 'blog', '0002_post_slug', '2020-09-27 06:05:59.975870'),
(22, 'blog', '0003_blogcomment', '2020-09-28 05:40:19.597748');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('abwttovq1qt9cjo00stk0zuq5ljdgu2i', 'MWRjZmJjMDFjZWZjNTE2M2RmOGUxNTMzMGM1NDIyNjg2ZmNjNDMzMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMWQ1ZTdhZTY2YmY2MzlmNzk2MGEzN2JlMGM4NWQyZGUwNjJmMmNmIn0=', '2020-09-18 16:25:24.480212'),
('iqpina1p0cyjk4pj0q5kao6u51y1fsx0', 'NTQ0OTFlMmY0YzQyMTE5MjkyNTQyNTg3MDM4ZTA1MjlhNjdhMWIyZTp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY3ZDc1NTJjNWYxOWY3ZTBjNWJhMDM2NjYxMTM1NmE4M2ZjMTUyIn0=', '2020-10-12 12:43:43.152700');

-- --------------------------------------------------------

--
-- Table structure for table `home_contact`
--

CREATE TABLE `home_contact` (
  `sno` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `timeStamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_contact`
--

INSERT INTO `home_contact` (`sno`, `name`, `phone`, `email`, `content`, `timeStamp`) VALUES
(1, 'yash', '9879178490', 'yashparamar988@gmail.com', 'we good to go', '2020-09-04 16:56:32.854925'),
(3, 'Milan', '9879178490', 'milan@gmail.com', 'Milan testing form', '2020-09-26 12:45:46.265948'),
(4, 'Geeta', '567890', 'geeta@123.com', 'This is testing form ..', '2020-09-26 12:48:35.527441'),
(5, 'yash', '9879178490', 'yashparamar988@gmail.com', 'for contacting important', '2020-09-26 13:25:55.433702'),
(6, 'Dhruv', '12345677777', 'Dharuv11@gmail.com', 'for selecting testing', '2020-09-26 13:56:29.598319'),
(7, 'Geeta', '9879178490', 'chintakd999@gmail.com', 'jjjjjjjj', '2020-09-26 14:27:39.509144'),
(8, 'roshni', '98791783456', 'roshni123@gmail.com', 'this is checking form contact', '2020-09-27 08:03:00.019015'),
(9, 'katrina', '98791783456', 'katrina@124gmail.com', 'this is katrina kaif hahahahh....', '2020-09-27 13:51:42.154715'),
(10, 'katrina', '98791783456', 'katrina@124gmail.com', 'this is katrina kaif hahahahh....', '2020-09-27 13:51:51.784954'),
(11, 'salman', '9879179000', 'salman13@gmail.com', 'hi im salman that\'s why i want to meet you', '2020-09-27 14:07:58.105881');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blog_blogcomment`
--
ALTER TABLE `blog_blogcomment`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `blog_blogcomment_parent_id_df1e1d2a_fk_blog_blogcomment_sno` (`parent_id`),
  ADD KEY `blog_blogcomment_post_id_f2a3e760_fk_blog_post_sno` (`post_id`),
  ADD KEY `blog_blogcomment_user_id_dc3b3111_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_contact`
--
ALTER TABLE `home_contact`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_blogcomment`
--
ALTER TABLE `blog_blogcomment`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `home_contact`
--
ALTER TABLE `home_contact`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_blogcomment`
--
ALTER TABLE `blog_blogcomment`
  ADD CONSTRAINT `blog_blogcomment_parent_id_df1e1d2a_fk_blog_blogcomment_sno` FOREIGN KEY (`parent_id`) REFERENCES `blog_blogcomment` (`sno`),
  ADD CONSTRAINT `blog_blogcomment_post_id_f2a3e760_fk_blog_post_sno` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`sno`),
  ADD CONSTRAINT `blog_blogcomment_user_id_dc3b3111_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
