-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2023 pada 09.00
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edutify`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `authy_profile`
--

CREATE TABLE `authy_profile` (
  `id` bigint(20) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `url` varchar(80) DEFAULT NULL,
  `profile_info` longtext DEFAULT NULL,
  `created` date NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `banner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `authy_profile`
--

INSERT INTO `authy_profile` (`id`, `location`, `url`, `profile_info`, `created`, `picture`, `user_id`, `banner`) VALUES
(1, NULL, NULL, NULL, '2023-11-11', '', 2, ''),
(2, NULL, NULL, NULL, '2023-12-09', '', 3, ''),
(3, NULL, NULL, NULL, '2023-12-09', '', 4, ''),
(4, NULL, NULL, NULL, '2023-12-09', '', 5, ''),
(5, NULL, NULL, NULL, '2023-12-09', '', 6, ''),
(6, NULL, NULL, NULL, '2023-12-10', '', 7, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_permission`
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
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add teacher', 8, 'add_teacher'),
(30, 'Can change teacher', 8, 'change_teacher'),
(31, 'Can delete teacher', 8, 'delete_teacher'),
(32, 'Can view teacher', 8, 'view_teacher'),
(33, 'Can add course', 9, 'add_course'),
(34, 'Can change course', 9, 'change_course'),
(35, 'Can delete course', 9, 'delete_course'),
(36, 'Can view course', 9, 'view_course'),
(37, 'Can add major', 10, 'add_major'),
(38, 'Can change major', 10, 'change_major'),
(39, 'Can delete major', 10, 'delete_major'),
(40, 'Can view major', 10, 'view_major'),
(41, 'Can add major_ course', 11, 'add_major_course'),
(42, 'Can change major_ course', 11, 'change_major_course'),
(43, 'Can delete major_ course', 11, 'delete_major_course'),
(44, 'Can view major_ course', 11, 'view_major_course'),
(45, 'Can add profile', 12, 'add_profile'),
(46, 'Can change profile', 12, 'change_profile'),
(47, 'Can delete profile', 12, 'delete_profile'),
(48, 'Can view profile', 12, 'view_profile'),
(49, 'Can add scu', 13, 'add_scu'),
(50, 'Can change scu', 13, 'change_scu'),
(51, 'Can delete scu', 13, 'delete_scu'),
(52, 'Can view scu', 13, 'view_scu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$HiJdfh67tLzZlqkf754Kun$nUOzhhTAF3WWg2hK54e2NEk26iHl3Bo0zG1KwbEwJqw=', '2023-12-10 11:20:15.439396', 1, 'admin', '', '', 'samsungneilson67@gmail.com', 1, 1, '2023-10-31 08:06:10.364759'),
(2, 'pbkdf2_sha256$600000$DyDlqxXRERqA9v887fGH7e$SdjkN+h0qbaKTor70e8y6pIJDJuGpPO5lZfYGcx5TEE=', '2023-12-09 11:52:20.153950', 0, 'DNeilson', '', '', 'davin.neilson@binus.ac.id', 0, 1, '2023-11-11 08:00:30.056930'),
(3, 'pbkdf2_sha256$600000$qudtKfUjUZfFmivo8YOpeP$jB9Cfzx4XkqvA0ETC53zgn6r9+fL1g2dKrLbgOVakfg=', '2023-12-09 09:52:56.498995', 0, 'usertest', '', '', 'usertest@gmail.com', 0, 1, '2023-12-09 09:51:30.944458'),
(4, 'pbkdf2_sha256$600000$WTtOOBEtbbJXzp1WLEh8l7$k3oavOvO6T4rt4x+c9SD1u/x2rh+arWQztW88lXi6R0=', NULL, 0, 'aaaaa', '', '', 'aaaaa@gmail.com', 0, 1, '2023-12-09 10:51:03.786990'),
(5, 'pbkdf2_sha256$600000$c15ntNkKwodTozgRVq7K26$KckExgOSPE2UXcVKodMgqV12CsTjkIsWBo/9XbQLh5c=', NULL, 0, 'testuser1', '', '', 'testuser1@gmail.com', 0, 1, '2023-12-09 10:56:58.872748'),
(6, 'pbkdf2_sha256$600000$L0DQ6TSlUWND1nGztLcLzV$qNoug4lLHHb+Taig19RjxkAkgDcToaf+dCBCu2mcdu4=', '2023-12-18 10:52:17.983893', 1, 'admin2', '', '', 'admin2@gmail.com', 1, 1, '2023-12-09 11:30:07.790541'),
(7, 'pbkdf2_sha256$600000$ZWqvPFgfnOS3G1TrskuVgV$0C7nT+1+MCFfHbYPKIDcESjff+NBvED+CuiSDNTTlvI=', NULL, 0, 'abcde', '', '', 'abcde@gmail.com', 0, 1, '2023-12-10 12:59:37.310045');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-31 08:09:15.350783', '1', '\nStudent Details : \n\nID : 1\nName : Davin Neilson\nEmail : davin.neilson@gmail.com\nMajor  : Computer Science\nGPA : 3.85\n', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-10-31 08:10:55.656735', '2', '\nStudent Details : \n\nID : 2\nName : Raja Farel\nEmail : raja.farel@gmail.com\nMajor  : Computer Science\nGPA : 3.5\n', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-10-31 08:11:42.621092', '3', '\nStudent Details : \n\nID : 3\nName : Jason Alexander Kurniawan\nEmail : jason.kurniawan@gmail.com\nMajor  : Computer Science\nGPA : 2.03\n', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-10-31 08:13:02.775268', '4', '\nStudent Details : \n\nID : 4\nName : Ivan\nEmail : ivan@gmail.com\nMajor  : Computer Science\nGPA : 3.6\n', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-10-31 08:13:32.306012', '5', '\nStudent Details : \n\nID : 5\nName : Amelia\nEmail : amelia@gmail.com\nMajor  : GDNM\nGPA : 3.0\n', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-10-31 08:13:53.732116', '6', '\nStudent Details : \n\nID : 6\nName : Gita\nEmail : gita@gmail.com\nMajor  : Computer Science\nGPA : 0.5\n', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-10-31 08:14:28.391860', '7', '\nStudent Details : \n\nID : 7\nName : Brian Seijuro\nEmail : brian.seijuro@gmail.com\nMajor  : Food Technology\nGPA : 3.88\n', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-10-31 08:14:53.701523', '8', '\nStudent Details : \n\nID : 8\nName : Faza Affandi\nEmail : faza.affandi@gmail.com\nMajor  : Computer Science\nGPA : 3.91\n', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-10-31 08:15:40.839674', '9', '\nStudent Details : \n\nID : 9\nName : Yohannes Vitto Simatupang\nEmail : yohannes.simatupang@gmail.com\nMajor  : Engineering\nGPA : 4.0\n', 1, '[{\"added\": {}}]', 7, 1),
(10, '2023-10-31 08:16:04.563018', '10', '\nStudent Details : \n\nID : 10\nName : Maulana Hanggoro\nEmail : maulana.hanggoro@gmail.com\nMajor  : GDNM\nGPA : 1.0\n', 1, '[{\"added\": {}}]', 7, 1),
(11, '2023-10-31 08:16:36.245233', '11', '\nStudent Details : \n\nID : 11\nName : Aleeka\nEmail : aleeka@gmail.com\nMajor  : GDNM\nGPA : 3.5\n', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-10-31 08:18:42.696886', '12', '\nStudent Details : \n\nID : 12\nName : Dennis Setiawan\nEmail : dennis.setiawan@gmail.com\nMajor  : Computer Science\nGPA : 3.33\n', 1, '[{\"added\": {}}]', 7, 1),
(13, '2023-10-31 08:19:33.215013', '13', '\nStudent Details : \n\nID : 13\nName : Q\nEmail : q@gmail.com\nMajor  : International Business\nGPA : 3.1\n', 1, '[{\"added\": {}}]', 7, 1),
(14, '2023-10-31 08:20:25.759241', '14', '\nStudent Details : \n\nID : 14\nName : Kenneth Lay\nEmail : kenneth.lay@gmail.com\nMajor  : Computer Science\nGPA : 1.69\n', 1, '[{\"added\": {}}]', 7, 1),
(15, '2023-10-31 08:21:43.855651', '15', '\nStudent Details : \n\nID : 15\nName : Joanne\nEmail : joanne@gmail.com\nMajor  : Computer Science\nGPA : 3.7\n', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-10-31 08:22:05.382817', '15', '\nStudent Details : \n\nID : 16\nName : Alya\nEmail : alya@gmail.com\nMajor  : Computer Science\nGPA : 3.9\n', 2, '[{\"changed\": {\"fields\": [\"Student id\", \"Full name\", \"Email\", \"Gpa\"]}}]', 7, 1),
(17, '2023-10-31 08:22:32.494695', '16', '\nStudent Details : \n\nID : 17\nName : Joanne\nEmail : joanne@gmail.com\nMajor  : Computer Science\nGPA : 3.63\n', 1, '[{\"added\": {}}]', 7, 1),
(18, '2023-10-31 08:23:11.539587', '17', '\nStudent Details : \n\nID : 18\nName : Elijah\nEmail : elijah@gmail.com\nMajor  : Computer Science\nGPA : 3.33\n', 1, '[{\"added\": {}}]', 7, 1),
(19, '2023-10-31 08:23:51.935821', '18', '\nStudent Details : \n\nID : 19\nName : Michail\nEmail : michail@gmail.com\nMajor  : Computer Science\nGPA : 4.0\n', 1, '[{\"added\": {}}]', 7, 1),
(20, '2023-10-31 08:24:30.043100', '19', '\nStudent Details : \n\nID : 20\nName : Steven\nEmail : steven@gmail.com\nMajor  : GDNM\nGPA : 3.2\n', 1, '[{\"added\": {}}]', 7, 1),
(21, '2023-11-03 13:46:32.860563', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Major id\"]}}]', 10, 1),
(22, '2023-11-03 13:46:41.741068', 'COMP', 'COMP', 3, '', 10, 1),
(23, '2023-11-03 13:46:44.651658', '1', '1', 2, '[]', 10, 1),
(24, '2023-11-03 13:47:52.014072', 'COMP', 'COMP', 2, '[{\"changed\": {\"fields\": [\"Major id\"]}}]', 10, 1),
(25, '2023-11-03 13:47:56.812746', '1', '1', 2, '[]', 10, 1),
(26, '2023-11-03 13:48:00.777302', '1', '1', 3, '', 10, 1),
(27, '2023-11-05 07:03:07.333956', '4', '4', 1, '[{\"added\": {}}]', 8, 1),
(28, '2023-11-05 14:35:27.437612', '3', '3', 2, '[{\"changed\": {\"fields\": [\"Courses\"]}}]', 8, 1),
(29, '2023-11-05 14:35:32.250139', '3', '3', 2, '[]', 8, 1),
(30, '2023-11-05 14:47:01.565214', '4', '4', 1, '[{\"added\": {}}]', 8, 1),
(31, '2023-11-05 14:47:06.638332', '4', '4', 2, '[]', 8, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(12, 'authy', 'profile'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'students', 'course'),
(10, 'students', 'major'),
(11, 'students', 'major_course'),
(13, 'students', 'scu'),
(7, 'students', 'student'),
(8, 'students', 'teacher');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-31 04:49:20.386402'),
(2, 'auth', '0001_initial', '2023-10-31 04:49:20.634142'),
(3, 'admin', '0001_initial', '2023-10-31 04:49:20.723667'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-31 04:49:20.730668'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-31 04:49:20.736666'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-31 04:49:20.771190'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-31 04:49:20.802189'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-31 04:49:20.817191'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-31 04:49:20.824188'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-31 04:49:20.855198'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-31 04:49:20.856197'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-31 04:49:20.863198'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-31 04:49:20.876226'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-31 04:49:20.889226'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-31 04:49:20.902226'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-31 04:49:20.908228'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-31 04:49:20.921226'),
(18, 'sessions', '0001_initial', '2023-10-31 04:49:20.942226'),
(19, 'students', '0001_initial', '2023-10-31 07:07:48.539364'),
(20, 'students', '0002_remove_student_id_alter_student_student_id', '2023-11-01 09:32:32.094642'),
(21, 'students', '0003_alter_student_student_id', '2023-11-01 09:32:32.412998'),
(22, 'students', '0004_alter_student_student_id', '2023-11-01 09:32:32.415333'),
(23, 'students', '0004_teacher', '2023-11-01 14:44:43.432434'),
(24, 'students', '0005_course_major', '2023-11-03 12:35:06.400823'),
(25, 'students', '0006_alter_course_course_id_alter_course_scu_and_more', '2023-11-03 12:35:06.438359'),
(26, 'students', '0007_alter_major_major_id', '2023-11-03 13:17:05.150710'),
(27, 'students', '0008_alter_major_major_id', '2023-11-03 13:45:59.344494'),
(28, 'students', '0009_alter_student_major', '2023-11-04 03:35:41.931906'),
(29, 'students', '0010_course_sem_alter_student_major', '2023-11-04 06:06:00.665531'),
(30, 'students', '0011_alter_course_scu_major_course', '2023-11-04 13:56:00.282993'),
(31, 'students', '0012_alter_major_course_course_id_and_more', '2023-11-05 06:53:35.508525'),
(32, 'students', '0013_alter_teacher_courses', '2023-11-05 06:53:35.770982'),
(33, 'students', '0014_alter_teacher_courses', '2023-11-05 06:53:35.967784'),
(34, 'students', '0015_delete_major_course', '2023-11-05 11:59:46.129619'),
(35, 'students', '0016_major_course', '2023-11-05 12:32:21.390597'),
(36, 'students', '0014_remove_teacher_courses_teacher_courses', '2023-11-05 13:53:23.591817'),
(37, 'students', '0015_remove_teacher_courses_teacher_courses', '2023-11-05 13:53:23.759103'),
(38, 'students', '0016_remove_teacher_courses_teacher_courses', '2023-11-05 13:58:24.316987'),
(39, 'students', '0017_remove_teacher_courses_teacher_courses', '2023-11-05 13:58:24.405508'),
(40, 'students', '0013_remove_teacher_courses_teacher_courses', '2023-11-05 14:14:07.941458'),
(41, 'students', '0017_teacher_major', '2023-11-05 14:49:40.834240'),
(42, 'students', '0018_rename_courses_teacher_course_remove_teacher_major', '2023-11-05 14:58:26.481212'),
(43, 'students', '0019_rename_course_teacher_courses', '2023-11-05 15:01:45.546065'),
(44, 'students', '0020_remove_teacher_courses_teacher_courses', '2023-11-05 15:04:00.954919'),
(45, 'students', '0021_rename_courses_teacher_course', '2023-11-05 15:04:00.964429'),
(46, 'students', '0022_rename_course_teacher_courses', '2023-11-05 15:04:00.973929'),
(47, 'students', '0023_remove_teacher_courses_teacher_courses', '2023-11-05 15:04:38.707049'),
(48, 'students', '0024_student_courses', '2023-11-08 13:56:14.752864'),
(49, 'authy', '0001_initial', '2023-11-11 06:25:02.273095'),
(50, 'authy', '0002_alter_profile_id', '2023-11-11 06:25:02.306610'),
(51, 'authy', '0003_remove_profile_banner', '2023-11-11 07:43:38.469209'),
(52, 'students', '0002_student_courses', '2023-11-11 07:43:58.731733'),
(53, 'authy', '0004_profile_banner', '2023-11-11 07:44:21.996494'),
(54, 'students', '0003_student_password', '2023-12-10 14:00:48.559547'),
(55, 'students', '0004_delete_major_course', '2023-12-13 02:05:07.715272'),
(56, 'students', '0005_scu', '2023-12-19 07:58:44.482061');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('027och3r00uvab82ank82fphs77udgf2', 'e30:1rBvVb:qzJSkI0U2WAjSdw9xpKkTsgV0xo1tPLc0uM9Saq6ZEc', '2023-12-23 11:28:35.370437'),
('0sr058a4rdurthfe25tb5d9ds6oyiqzb', 'e30:1rBvVs:iv3m9mCV-9gvKsebFfLahfDchyJ60nbazE4wt9LQYzo', '2023-12-23 11:28:52.567957'),
('a32pax4wvgm4vwx96hghrhu9i8b0biu2', 'e30:1rCHr5:wWSa1dgj4-f-dWnfAdHYo7zaPaTQkczWPCbQyngP7SU', '2023-12-24 11:20:15.438397'),
('k7opm13uocsbp0ki3kga5v1h35frreki', '.eJxVjMEOwiAQRP-FsyGwBQsevfsNZBdYqRpISnsy_rtt0oMmc5r3Zt4i4LqUsPY8hymJiziL029HGJ-57iA9sN6bjK0u80RyV-RBu7y1lF_Xw_07KNjLtkYErS1uYeu0sQYYrGI3jNkRDWZg7Q06RuUxjeBVVgSGHAIppsji8wXRYjfp:1rFBEP:QMcyX6bOA-dWji8Da3ojoH3MU6B7ZmgAIdj8z_dsk28', '2024-01-01 10:52:17.986913'),
('t7j0uxf1xq64dqwixsdo69108rqo42so', 'e30:1rBvZa:TuI4vrV5IiBKqUPi1dMVxKOdkGbaHIyNScjV9DJ99lc', '2023-12-23 11:32:42.687576'),
('xtp4knskf3qnuj84s9bebu6opbpom8qy', '.eJxVjMsOwiAURP-FtSFcoHJx6d5vIDwuUjWQlHZl_Hdp0oWuJplzZt7M-W0tbuu0uDmxC5Ps9NsFH59Ud5Aevt4bj62uyxz4rvCDdn5riV7Xw_07KL6XscYMUisBAiLEcLZIwltLmWSYJCrKI4AATdZZijQ8g2ayygJg0kawzxfHxzax:1r1ivD:RJ4f6Ba-KY9JXbVLPBDUp-SpHSBOqweZi9_2JeyMC7I', '2023-11-25 08:00:51.442294');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students_course`
--

CREATE TABLE `students_course` (
  `course_id` bigint(20) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `scu` smallint(5) UNSIGNED NOT NULL,
  `sem` smallint(5) UNSIGNED NOT NULL CHECK (`sem` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `students_course`
--

INSERT INTO `students_course` (`course_id`, `course_name`, `scu`, `sem`) VALUES
(2, 'Data Structures', 6, 2),
(3, 'Algorithm and Programming', 6, 1),
(4, 'Design Studies I', 8, 3),
(5, 'Academic English 1', 3, 1),
(6, 'Linear Algebra', 2, 2),
(7, 'Database Technology', 3, 3),
(8, 'Fundamental of Data Science', 2, 3),
(9, 'Academic English 2', 3, 3),
(10, 'Discrete Mathematics', 4, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `students_major`
--

CREATE TABLE `students_major` (
  `major_id` varchar(4) NOT NULL,
  `major_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `students_major`
--

INSERT INTO `students_major` (`major_id`, `major_name`) VALUES
('BIS', 'Business Information Systems'),
('BMM', 'Business Management & Marketing'),
('COMP', 'Computer Science'),
('COMS', 'Communications'),
('DIGB', 'Digital Business'),
('ENGI', 'Engineering'),
('FASD', 'Fashion Design'),
('FASM', 'Fashion Management'),
('FINC', 'Finance'),
('FOOD', 'Food Technology'),
('GDNM', 'Graphic Design and New Media'),
('IBUS', 'International Business');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students_scu`
--

CREATE TABLE `students_scu` (
  `scu` smallint(5) UNSIGNED NOT NULL CHECK (`scu` >= 0),
  `MaxAbs` smallint(5) UNSIGNED NOT NULL CHECK (`MaxAbs` >= 0),
  `TotalSec` smallint(5) UNSIGNED NOT NULL CHECK (`TotalSec` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `students_student`
--

CREATE TABLE `students_student` (
  `student_id` bigint(20) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `major_id` varchar(4) DEFAULT NULL,
  `gpa` double NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `students_student`
--

INSERT INTO `students_student` (`student_id`, `full_name`, `email`, `major_id`, `gpa`, `password`) VALUES
(1, 'Davin Neilson', 'davin.neilson@binus.ac.id', 'COMP', 3.85, 'edutify'),
(2, 'Raja Farel', 'raja.farel@gmail.com', 'COMP', 1, 'edutify'),
(3, 'Jason Alexander Kurniawan', 'jason.kurniawan@gmail.com', 'COMP', -1, 'edutify'),
(4, 'Ivan', 'ivan@gmail.com', 'COMP', 3.6, 'edutify'),
(5, 'Amel', 'amel@gmail.com', 'GDNM', 2, 'edutify'),
(6, 'Gita', 'gita@gmail.com', 'COMP', 0.5, 'edutify'),
(7, 'Brian Seijuro', 'brian.seijuro@gmail.com', 'FOOD', 3.88, 'edutify'),
(8, 'Faza Affandi', 'faza.affandi@gmail.com', 'COMP', 3.91, 'edutify'),
(9, 'Yohannes Vitto Simatupang', 'yohannes.simatupang@gmail.com', 'ENGI', 4, 'edutify'),
(10, 'Maulana Hanggoro', 'maulana.hanggoro@gmail.com', 'GDNM', 1, 'edutify'),
(11, 'Aleeka', 'aleeka@gmail.com', 'GDNM', 3.5, 'edutify'),
(12, 'Dennis Setiawan', 'dennis.setiawan@gmail.com', 'COMP', 3.33, 'edutify'),
(13, 'Q', 'q@gmail.com', 'IBUS', 3.1, 'edutify'),
(14, 'Kenneth Lay', 'kenneth.lay@gmail.com', 'COMP', 2, 'edutify'),
(16, 'Alya', 'alya@gmail.com', 'COMP', 3.9, 'edutify'),
(17, 'Joanne', 'joanne@gmail.com', 'COMP', 3.63, 'edutify'),
(18, 'Elijah', 'elijah@gmail.com', 'COMP', 3.33, 'edutify'),
(19, 'Michail', 'michail@gmail.com', 'COMP', 4, 'edutify'),
(20, 'Steven', 'steven@gmail.com', 'GDNM', 3.2, 'edutify'),
(21, 'Addo Kenley', 'addo.kenley@gmail.com', 'ENGI', 4, 'edutify'),
(22, 'Test', 'test@gmail.com', 'COMP', 3.9, 'edutify'),
(24, 'Azka', 'azka@ymail.com', 'COMP', 1, 'edutify'),
(25, 'Raymond Bahana', 'r.bahana@gmail.com', 'COMP', 3.1, 'edutify');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students_student_courses`
--

CREATE TABLE `students_student_courses` (
  `id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `students_student_courses`
--

INSERT INTO `students_student_courses` (`id`, `student_id`, `course_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(10, 1, 5),
(13, 1, 6),
(14, 1, 7),
(15, 1, 8),
(9, 1, 9),
(12, 1, 10),
(4, 2, 2),
(5, 2, 3),
(6, 2, 7),
(3, 2, 8),
(7, 5, 8),
(16, 14, 2),
(17, 14, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `students_teacher`
--

CREATE TABLE `students_teacher` (
  `teacher_id` bigint(20) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `students_teacher`
--

INSERT INTO `students_teacher` (`teacher_id`, `full_name`, `email`) VALUES
(6, 'Raymond Bahana', 'r.bahana@gmail.com'),
(7, 'Nunung Nurul Qomariyah, S.Kom., M.T.I., Ph.D.', 'nurul@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students_teacher_courses`
--

CREATE TABLE `students_teacher_courses` (
  `id` bigint(20) NOT NULL,
  `teacher_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `students_teacher_courses`
--

INSERT INTO `students_teacher_courses` (`id`, `teacher_id`, `course_id`) VALUES
(3, 6, 6),
(4, 6, 7),
(7, 7, 2),
(8, 7, 8);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `authy_profile`
--
ALTER TABLE `authy_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeks untuk tabel `students_course`
--
ALTER TABLE `students_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indeks untuk tabel `students_major`
--
ALTER TABLE `students_major`
  ADD PRIMARY KEY (`major_id`);

--
-- Indeks untuk tabel `students_scu`
--
ALTER TABLE `students_scu`
  ADD PRIMARY KEY (`scu`);

--
-- Indeks untuk tabel `students_student`
--
ALTER TABLE `students_student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `students_student_major_id_1e02fe7d` (`major_id`);

--
-- Indeks untuk tabel `students_student_courses`
--
ALTER TABLE `students_student_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_student_courses_student_id_course_id_78883ea8_uniq` (`student_id`,`course_id`),
  ADD KEY `students_student_cou_course_id_0fe22e8d_fk_students_` (`course_id`);

--
-- Indeks untuk tabel `students_teacher`
--
ALTER TABLE `students_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indeks untuk tabel `students_teacher_courses`
--
ALTER TABLE `students_teacher_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_teacher_courses_teacher_id_course_id_fe869533_uniq` (`teacher_id`,`course_id`),
  ADD KEY `students_teacher_cou_course_id_4ea288a4_fk_students_` (`course_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `authy_profile`
--
ALTER TABLE `authy_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `students_course`
--
ALTER TABLE `students_course`
  MODIFY `course_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `students_student`
--
ALTER TABLE `students_student`
  MODIFY `student_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `students_student_courses`
--
ALTER TABLE `students_student_courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `students_teacher`
--
ALTER TABLE `students_teacher`
  MODIFY `teacher_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `students_teacher_courses`
--
ALTER TABLE `students_teacher_courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `authy_profile`
--
ALTER TABLE `authy_profile`
  ADD CONSTRAINT `authy_profile_user_id_200e8c9b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `students_student`
--
ALTER TABLE `students_student`
  ADD CONSTRAINT `students_student_major_id_1e02fe7d_fk_students_major_major_id` FOREIGN KEY (`major_id`) REFERENCES `students_major` (`major_id`);

--
-- Ketidakleluasaan untuk tabel `students_student_courses`
--
ALTER TABLE `students_student_courses`
  ADD CONSTRAINT `students_student_cou_course_id_0fe22e8d_fk_students_` FOREIGN KEY (`course_id`) REFERENCES `students_course` (`course_id`),
  ADD CONSTRAINT `students_student_cou_student_id_a28ced40_fk_students_` FOREIGN KEY (`student_id`) REFERENCES `students_student` (`student_id`);

--
-- Ketidakleluasaan untuk tabel `students_teacher_courses`
--
ALTER TABLE `students_teacher_courses`
  ADD CONSTRAINT `students_teacher_cou_course_id_4ea288a4_fk_students_` FOREIGN KEY (`course_id`) REFERENCES `students_course` (`course_id`),
  ADD CONSTRAINT `students_teacher_cou_teacher_id_911c9d97_fk_students_` FOREIGN KEY (`teacher_id`) REFERENCES `students_teacher` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
