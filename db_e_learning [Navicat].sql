/*
 Navicat Premium Data Transfer

 Source Server         : Localhost Xampp
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : db_e_learning

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 29/01/2024 03:26:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for guru
-- ----------------------------
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_pengajar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_pengajar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of guru
-- ----------------------------
INSERT INTO `guru` VALUES (1, '35011002', 'YASHINTA ASMADHINI', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (2, '35011003', 'ASTUTI ANDAYANI, S.Pd', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (3, '35011004', 'DIAH ARWULAN, S.Pd', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (4, '35011005', 'DWI APRIYANTI, M.M', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (5, '35011008', 'Siti Suleha, S.Pd', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (6, '35011010', 'M.SYAIFULLOH, S.Pd.I', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (7, '35011011', 'MARYANIH', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (8, '35011012', 'MISNAN S.Kom, MM', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (9, '35011013', 'NASIR ROY', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (10, '35011016', 'PITRI WULANDARI, S.Pd', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (11, '35011017', 'ROTUA SINAGA, S.Pd', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (12, '35011019', 'SOMAJI, S.Pd', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (13, '35011020', 'SRI SISWANTI, S.Pt', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (14, '35011022', 'SUSANTI PUJI K, S.T', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (15, '35011023', 'TETI KURNAETI, S.Pd', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (16, '35011024', 'UDIN SAEFULLOH, S.Kom', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (17, '35011025', 'ZAENAL ABIDIN, S.Pd', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (18, '35011009', 'LILY KAMALIYAH, S.Pd.I', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (19, '35011026', 'DIPIN SATRIAWAN, M', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (20, '35011027', 'YENI MUJIANTI, S.PD', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (21, '35011028', 'KARMILA, M.PD', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (22, '35011029', 'GOJALI, S.PD', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (23, '00211155448877799', 'Ditto Saepoel Rachman', 'Guru Magang', NULL, '0');
INSERT INTO `guru` VALUES (24, '35011030', 'Bernadette', 'Guru Pelajaran', NULL, '1');
INSERT INTO `guru` VALUES (25, '35011031', 'Suci Salsabila', 'Guru Pelajaran', NULL, '1');

-- ----------------------------
-- Table structure for hubungi_kami
-- ----------------------------
DROP TABLE IF EXISTS `hubungi_kami`;
CREATE TABLE `hubungi_kami`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subjek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pesan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hubungi_kami
-- ----------------------------
INSERT INTO `hubungi_kami` VALUES (1, 'Yudistira', 'yudistira@gmail.com', 'Isi Subjek', 'Isi Pesan');

-- ----------------------------
-- Table structure for kbm
-- ----------------------------
DROP TABLE IF EXISTS `kbm`;
CREATE TABLE `kbm`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `gambar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `materi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `id_kelas` int NULL DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pdf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `id_guru` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `id_mapel` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kbm
-- ----------------------------
INSERT INTO `kbm` VALUES (1, '/7uRQnk189quFa2ii07Gu3kb3in8pKU8T4hFUJYXR.png', 'Seni & Budaya Kelas VII', 'Materi Pertemuan Pertama - Seni & Budaya Kelas VII', 'Materi Singkat Untuk Pertemuan Pertama Seni & Budaya Kelas VII', 9, 'OUoyG9NJOuE', '/jfEpemGrIDAmBfJRcIscKSKmmoRUwwvfNX1duRxj.pdf', 1, 1, 81);

-- ----------------------------
-- Table structure for kbm_info
-- ----------------------------
DROP TABLE IF EXISTS `kbm_info`;
CREATE TABLE `kbm_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `mengerti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nilai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_kbm` int NULL DEFAULT NULL,
  `id_siswa` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kbm_info
-- ----------------------------
INSERT INTO `kbm_info` VALUES (1, '1', '100', 1, 22040);
INSERT INTO `kbm_info` VALUES (2, '1', '80', 1, 22041);
INSERT INTO `kbm_info` VALUES (3, '2', '50', 1, 22042);
INSERT INTO `kbm_info` VALUES (4, '1', '75', 1, 22043);
INSERT INTO `kbm_info` VALUES (5, '0', '33', 1, 22044);
INSERT INTO `kbm_info` VALUES (6, '2', '50', 1, 22045);
INSERT INTO `kbm_info` VALUES (7, '1', '75', 1, 22046);
INSERT INTO `kbm_info` VALUES (8, '0', '-', 1, 22047);
INSERT INTO `kbm_info` VALUES (9, '0', '-', 1, 22048);
INSERT INTO `kbm_info` VALUES (10, '0', '-', 1, 22049);
INSERT INTO `kbm_info` VALUES (11, '0', '-', 1, 22050);
INSERT INTO `kbm_info` VALUES (12, '0', '-', 1, 22051);
INSERT INTO `kbm_info` VALUES (13, '0', '-', 1, 22052);
INSERT INTO `kbm_info` VALUES (14, '0', '-', 1, 22053);
INSERT INTO `kbm_info` VALUES (15, '0', '-', 1, 22054);
INSERT INTO `kbm_info` VALUES (16, '0', '-', 1, 22055);
INSERT INTO `kbm_info` VALUES (17, '0', '-', 1, 22056);
INSERT INTO `kbm_info` VALUES (18, '0', '-', 1, 22057);
INSERT INTO `kbm_info` VALUES (19, '0', '-', 1, 22058);
INSERT INTO `kbm_info` VALUES (20, '0', '-', 1, 22059);
INSERT INTO `kbm_info` VALUES (21, '0', '-', 1, 22060);
INSERT INTO `kbm_info` VALUES (22, '0', '-', 1, 22061);
INSERT INTO `kbm_info` VALUES (23, '0', '-', 1, 22062);
INSERT INTO `kbm_info` VALUES (24, '0', '-', 1, 22063);
INSERT INTO `kbm_info` VALUES (25, '0', '-', 1, 22064);
INSERT INTO `kbm_info` VALUES (26, '0', '-', 1, 22065);
INSERT INTO `kbm_info` VALUES (27, '0', '-', 1, 22066);
INSERT INTO `kbm_info` VALUES (28, '0', '-', 1, 22067);
INSERT INTO `kbm_info` VALUES (29, '0', '-', 1, 22068);
INSERT INTO `kbm_info` VALUES (30, '0', '-', 1, 22069);
INSERT INTO `kbm_info` VALUES (31, '0', '-', 1, 22070);
INSERT INTO `kbm_info` VALUES (32, '0', '-', 1, 22071);
INSERT INTO `kbm_info` VALUES (33, '0', '-', 1, 22072);
INSERT INTO `kbm_info` VALUES (34, '0', '-', 1, 22073);
INSERT INTO `kbm_info` VALUES (35, '0', '-', 1, 22074);
INSERT INTO `kbm_info` VALUES (36, '0', '-', 1, 22075);

-- ----------------------------
-- Table structure for kelas
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_wali_kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total_siswa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kelas
-- ----------------------------
INSERT INTO `kelas` VALUES (9, 'VII-A', 'Wali Kelas VII-A', '30', '-', '1');
INSERT INTO `kelas` VALUES (10, 'VII-B', 'Wali Kelas VII-B', '35', '-', '1');
INSERT INTO `kelas` VALUES (11, 'VII-C', 'Wali Kelas VII-C', '35', '-', '1');
INSERT INTO `kelas` VALUES (12, 'VII-D', 'Wali Kelas VII-D', '30', '-', '1');
INSERT INTO `kelas` VALUES (36, 'VIII-A', 'Wali Kelas VIII-A', '30', '-', '1');
INSERT INTO `kelas` VALUES (37, 'VIII-B', 'Wali Kelas VIII-B', '35', '-', '1');
INSERT INTO `kelas` VALUES (38, 'VIII-C', 'Wali Kelas VIII-C', '35', '-', '1');
INSERT INTO `kelas` VALUES (39, 'VIII-D', 'Wali Kelas VIII-D', '30', '-', '1');
INSERT INTO `kelas` VALUES (40, 'IX-A', 'Wali Kelas IX-A', '30', '-', '1');
INSERT INTO `kelas` VALUES (41, 'IX-B', 'Wali Kelas IX-B', '35', '-', '1');
INSERT INTO `kelas` VALUES (42, 'IX-C', 'Wali Kelas IX-C', '35', '-', '1');
INSERT INTO `kelas` VALUES (43, 'IX-D', 'Wali Kelas IX-D', '30', '-', '1');

-- ----------------------------
-- Table structure for mata_pelajaran
-- ----------------------------
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran`  (
  `id` int NOT NULL,
  `nama_mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kode_mapel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mata_pelajaran
-- ----------------------------
INSERT INTO `mata_pelajaran` VALUES (37, 'Pendidikan Agama Islam', 'Normatif', 'PAIS01', 'PAIS01', '1');
INSERT INTO `mata_pelajaran` VALUES (38, 'Pendidikan Pancasila dan Kewarganegaraan', 'Normatif', 'PDKN01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (39, 'Bahasa Indonesia', 'Normatif', 'BIND01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (40, 'Matematika', 'Normatif', 'MTKA01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (41, 'Ilmu Pengetahuan Alam', 'Normatif', 'ILPA01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (42, 'Bahasa Inggris', 'Normatif', 'BING01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (81, 'Seni Budaya', 'Kelompok A', 'SBDK01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (82, 'Pendidikan Jasmani dan Kesehatan', 'Normatif', 'PJOK01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (83, 'Informatika dan Prakarya', 'Kelompok A', 'PRKY01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (85, 'Informatika', 'Normatif', 'INFK01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (87, 'Ilmu Pengetahuan Sosial', 'Normatif', 'ILPS01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (202, 'Bahasa Sunda', 'Normatif', 'BSUN01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (373, 'Pendidikan Agama Kristen', 'Kelompok A', 'PAK01', NULL, '1');
INSERT INTO `mata_pelajaran` VALUES (764, 'BTQ', 'Mulok', 'SMPGBTQ001', NULL, '1');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_02_28_050111_create_categories_table', 1);
INSERT INTO `migrations` VALUES (7, '2023_02_28_065501_create_travel_packages_table', 1);
INSERT INTO `migrations` VALUES (8, '2023_02_28_065908_create_blogs_table', 1);
INSERT INTO `migrations` VALUES (9, '2023_02_28_070324_create_bookings_table', 1);
INSERT INTO `migrations` VALUES (10, '2023_03_01_020708_create_galleries_table', 1);
INSERT INTO `migrations` VALUES (11, '2023_03_01_151237_add_reads_to_blogs_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for rekap
-- ----------------------------
DROP TABLE IF EXISTS `rekap`;
CREATE TABLE `rekap`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_lengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_handphone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plat_nomor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bukti_foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `bukti_video` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `nik_pelanggar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_lengkap_pelanggar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email_pelanggar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_handphone_pelanggar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending',
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rekap
-- ----------------------------
INSERT INTO `rekap` VALUES (1, '3278030309000009', 'Yudistira', 'yudistira@gmail.com', '02179812233', 'B ZXC 123', '/5jUlNzs3btdBiZXDoWVLg55Ffz7a2UQDIT2jp7zN.png', '/wFY7tMsi9xiboU6KuZYdfMmvkFzQlBOkTm8m8vEp.mp4', '3278030309000019', 'Omaz', '-', '-', 'Pending', '-');
INSERT INTO `rekap` VALUES (2, '3278030309000010', 'Erik', 'erik22@gmail.com', '123456789', 'B ZXA 123', '/U47N0h04n7UYowqiAQarVGOrCc2qzD7SIdKH88Jb.jpg', '', '3278030309000011', 'Loma', 'loma@gmail.com', '02179122222', 'Tilang', '-');

-- ----------------------------
-- Table structure for semester
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `semester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of semester
-- ----------------------------
INSERT INTO `semester` VALUES (9, 'Semester 1', '-', '1');
INSERT INTO `semester` VALUES (10, 'Semester 2', '-', '1');
INSERT INTO `semester` VALUES (33, 'Semester 3', '-', '0');

-- ----------------------------
-- Table structure for siswa
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `handphone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jns_kelamin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_lahir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `asal_sekolah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nisn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tahun_masuk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kelas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23060 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES (19390, '21227119@gtech.com', 'abc123', '21227119', 'Khanza Qonita Ramadhina', NULL, 'Jakarta', '2000-01-01', 'Islam', '-', '-', '21227119', '0091026189', '-', '2021', 'IX-D', '1');
INSERT INTO `siswa` VALUES (19535, '2223139205@gmail.com', 'abc123', '2223139205', 'Ibrahim Arya Zhoulviq Hendriyanto', 'P', 'Jakarta', '2000-01-01', 'Islam', '-', '-', '2223139205', '2223139205', '-', '2021', 'IX-C', '1');
INSERT INTO `siswa` VALUES (19537, '2223139206@gmail.com', 'abc123', '2223139206', 'Bella Nur Fitriawan', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223139206', '2223139206', '-', '2022', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21799, '2122017001@gtech.com', 'abc123', '2122017001', 'ANDIKA ANDRIANSYAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017001', '83952396', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21800, '2122017002@gtech.com', 'abc123', '2122017002', 'ASFINAWATI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017002', '85815419', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21801, '2122017003@gtech.com', 'abc123', '2122017003', 'AYSEL MUHAMAD AMIR', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017003', '84164003', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21802, '2122017004@gtech.com', 'abc123', '2122017004', 'AZKAL GOZALIH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017004', '95286885', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21803, '2122017005@gtech.com', 'abc123', '2122017005', 'CALLISTA CINTANA ALDIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017005', '99813505', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21804, '2122017006@gtech.com', 'abc123', '2122017006', 'CHRISTELLA ANASTASYA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017006', '91871183', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21805, '2122017007@gtech.com', 'abc123', '2122017007', 'DAFA AULIA DINATA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017007', '98809399', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21806, '2122017008@gtech.com', 'abc123', '2122017008', 'FALEN AHMAD GOZALI EKA SURYA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017008', '96478613', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21807, '2122017009@gtech.com', 'abc123', '2122017009', 'HELENA PUTRI JUNITA INTAN ANANTA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017009', '96294427', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21808, '2122017010@gtech.com', 'abc123', '2122017010', 'IKSAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017010', '83445297', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21809, '2122017011@gtech.com', 'abc123', '2122017011', 'KHALISHAH QULBIAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017011', '3085505632', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21810, '2122017012@gtech.com', 'abc123', '2122017012', 'LIAU SUPHEN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017012', '98029255', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21811, '2122017013@gtech.com', 'abc123', '2122017013', 'MOCHAMMAD KENZO VARDANU', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017013', '93727642', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21812, '2122017014@gtech.com', 'abc123', '2122017014', 'MUHAMAD RAFI KURNIAWAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017014', '84741022', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21813, '2122017015@gtech.com', 'abc123', '2122017015', 'NADIN ADYA RIZKI RAMADHANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017015', '88467370', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21814, '2122017016@gtech.com', 'abc123', '2122017016', 'NAILA PUTRI AKHRAINI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017016', '91295352', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21815, '2122017017@gtech.com', 'abc123', '2122017017', 'PANCA TRI WARSANA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017017', '92777610', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21816, '2122017018@gtech.com', 'abc123', '2122017018', 'PANJI ARYO BIMO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017018', '97376740', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21817, '2122017019@gtech.com', 'abc123', '2122017019', 'PUTRI DEWI QIRANA R', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017019', '92876667', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21818, '2122017020@gtech.com', 'abc123', '2122017020', 'PUTRI INDAH LESTARI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017020', '81143246', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21819, '2122017021@gtech.com', 'abc123', '2122017021', 'RAHMA DWI ZAHRA SUCIPTO', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017021', '85010156', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21820, '2122017022@gtech.com', 'abc123', '2122017022', 'RAMSA RAMADHAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017022', '3081459246', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21821, '2122017023@gtech.com', 'abc123', '2122017023', 'REFVAN RAMADHAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017023', '85684308', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21822, '2122017024@gtech.com', 'abc123', '2122017024', 'SABRI APRIANTO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017024', '66183688', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21823, '2122017025@gtech.com', 'abc123', '2122017025', 'SAFINA TUNNAJJAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017025', '86590444', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21824, '2122017026@gtech.com', 'abc123', '2122017026', 'SASKHIRA NAYSHILA SUHANDI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017026', '3098890288', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21825, '2122017027@gtech.com', 'abc123', '2122017027', 'SATRIA FATARAN YEZA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017027', '94581287', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21826, '2122017028@gtech.com', 'abc123', '2122017028', 'SYAHKIRA SALSA BELLA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017028', '87680737', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21827, '2122017029@gtech.com', 'abc123', '2122017029', 'TANTRA ERLANGGA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017029', '95149103', '-', '2020', 'IX-A', '1');
INSERT INTO `siswa` VALUES (21828, '2122017030@gtech.com', 'abc123', '02122017030', 'ADIVA EKA CAHYANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017030', '78695542', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21829, '2122017031@gtech.com', 'abc123', '2122017031', 'ALISYAH WENTRY', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017031', '81989518', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21830, '2122017032@gtech.com', 'abc123', '2122017032', 'ANASTASYA LETO ASA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017032', '88463994', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21831, '2122017033@gtech.com', 'abc123', '2122017033', 'BINTANG SABIL PRATAMA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017033', '99830977', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21832, '2122017034@gtech.com', 'abc123', '2122017034', 'CHELIA NADA ARPEGYA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017034', '89095559', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21833, '2122017035@gtech.com', 'abc123', '2122017035', 'FADHIL MU AMMAR RIDWAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017035', '81830494', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21834, '2122017036@gtech.com', 'abc123', '085280721771', 'FARREL INDRA WIJAYA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017036', '86949369', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21835, 'fatihfarell1979@gmail.com', 'abc123', '2122017037', 'FATIH FARRELL ALTHAFA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017037', '93647074', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21836, '2122017038@gtech.com', 'abc123', '2122017038', 'FATTAN ABI WAHYUDI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017038', '3089516619', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21837, '2122017039@gtech.com', 'abc123', '2122017039', 'GALUH REZKY ARDIANA PRAYOGA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017039', '3080801194', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21838, '2122017040@gtech.com', 'abc123', '2122017040', 'HAGI ILYAS RIADI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017040', '93750101', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21839, '2122017041@gtech.com', 'abc123', '2122017041', 'HANNEKE PUTRI PRAKASIWI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017041', '83124806', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21840, '2122017042@gtech.com', 'abc123', '2122017042', 'IBNU SINA AL FATAA ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017042', '83272868', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21841, '2122017043@gtech.com', 'abc123', '02122017043', 'ICHIKA AURELLYA ZAHIRA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017043', '91043014', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21842, '2122017044@gtech.com', 'abc123', '2122017044', 'JASON ALLANO FAZIA KEMUR', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017044', '97102587', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21843, '2122017045@gtech.com', 'abc123', '2122017045', 'JUWITA APRILIA SIHALOHO', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017045', '99368028', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21844, '2122017046@gtech.com', 'abc123', '2122017046', 'MUHAMMAD AZAM', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017046', '97370774', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21845, '2122017047@gtech.com', 'abc123', '02122017047', 'MUHAMMAD BARIQ MUSTAFA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017047', '93409923', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21846, '2122017048@gtech.com', 'abc123', '2122017048', 'MUHAMMAD PURWADI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017048', '89739054', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21847, '2122017049@gtech.com', 'abc123', '02122017049', 'MUHAMMAD SYAUKHANI YUSUF', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017049', '82461237', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21848, '2122017050@gtech.com', 'abc123', '2122017050', 'NAYLA AINUN ANNISA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017050', '81191747', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21849, '2122017051@gteech.com', 'abc123', '2122017051', 'NUR RAHMANDANI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017051', '156935634', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21850, '2122017052@gtech.com', 'abc123', '2122017052', 'RAMONA REWANDHANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017052', '85986545', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21851, '2122017053@gtech.com', 'abc123', '2122017053', 'REVANSYAH MANGGALA PUTRA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017053', '98019867', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21852, '2122017054@gtech.com', 'abc123', '2122017054', 'SHEIKA LUTFIA GASSANIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017054', '85844233', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21853, '2122017055@gtech.com', 'abc123', '2122017055', 'SHERRINA PRATIWI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017055', '98719999', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21854, '2122017056@gtech.com', 'abc123', '2122017056', 'SHILA AMELIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017056', '85276421', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21855, '2122017057@gtech.com', 'abc123', '2122017057', 'WAFRI ADIS AKMAL', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017057', '82624919', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21856, '2122017058@gtech.com', 'abc123', '2122017058', 'ZASKIA MAHARANI PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017058', '96881816', '-', '2020', 'VIII-C', '1');
INSERT INTO `siswa` VALUES (21857, '2122017060@gtech.com', 'abc123', '2122017060', 'ANGEL AULIA SAIDINA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017060', '82598993', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21858, '2122017061@gtech.com', 'abc123', '2122017061', 'ANISAH YUSRYYAH PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017061', '3095675400', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21859, '2122017062@gtech.com', 'abc123', '2122017062', 'ARIF WICAKSONO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017062', '95078706', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21860, '2122017117@gtech.com', 'abc123', '2122017117', 'AURELLIA NADINE DELOVA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017117', '82074932', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21861, '2122017063@gtech.com', 'abc123', '2122017063', 'AVRYANSYAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017063', '86653349', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21862, '2122017065@gtech.com', 'abc123', '2122017065', 'DWI MARSHEL', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017065', '82087304', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21863, '2122017066@gtech.com', 'abc123', '2122017066', 'FADLAN GIYAZ HUNAFA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017066', '885096282', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21864, '2122017067@gtech.com', 'abc123', '2122017067', 'FAHRI AL FAZRI SETIAWAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017067', '84801772', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21865, '2122017069@gtech.com', 'abc123', '2122017069', 'GILANG ARKA PUTRA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017069', '82322127', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21866, '2122017070@gtech.com', 'abc123', '2122017070', 'HARSASKIA RAMADHANI PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017070', '89553470', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21867, '2122017071@gtech.com', 'abc123', '2122017071', 'IKHLAS ARACHMAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017071', '85123720', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21868, '2122017072@gtech.com', 'abc123', '2122017072', 'IRZAM RAZATTA ATSDY', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017072', '82087304', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21869, '2122017073@gtech.com', 'abc123', '2122017073', 'KEVIN KIN KIYOSHI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017073', '84968154', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21870, '2122017074@gtech.com', 'abc123', '2122017074', 'KEYLA HELMALIA PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017074', '97431726', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21871, '2122017075@gtech.com', 'abc123', '2122017075', 'LAURA MELLA AULYA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017075', '88938897', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21872, '2122017076@gtech.com', 'abc123', '2122017076', 'MONICA APRILLIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017076', '96654522', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21873, '2122017077@gtech.com', 'abc123', '2122017077', 'RANDI MAULIDAN NUGRAHA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017077', '85218668', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21874, '2122017078@gtech.com', 'abc123', '2122017078', 'RENATTA ARNESYA PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017078', '96157180', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21875, '2122017079@gtech.com', 'abc123', '2122017079', 'RIFQI FAUZAN PRANOTO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017079', '88801898', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21876, '2122017080@gtech.com', 'abc123', '2122017080', 'RINDHANG TRI WIBAWA RIZKY PANGESTU', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017080', '94956892', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21877, '2122017081@gtech.com', 'abc123', '2122017081', 'SASQIA AZLI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017081', '88623614', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21878, '2122017082@gtech.com', 'abc123', '2122017082', 'SITI JASMINE JAYANTI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017082', '87099365', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21879, '2122017083@gtech.com', 'abc123', '2122017083', 'SITI YANI ', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017083', '82207627', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21880, '2122017084@gtech.com', 'abc123', '2122017084', 'TEGAR ALEXANDER', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017084', '89307931', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21881, '2122017085@gtech.com', 'abc123', '2122017085', 'TIARA ZAHROTUL AMAR', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017085', '81664327', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21882, '2122017086@gtech.com', 'abc123', '02122017086', 'YOSI CRISTIAN SITUMORANG', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017086', '84663648', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21883, '2122017087@gtech.com', 'abc123', '2122017087', 'ZULFIQAR GIBRAN HAMDI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017087', '81108982', '-', '2020', 'IX-C', '1');
INSERT INTO `siswa` VALUES (21884, '2122017089@gtech.com', 'abc123', '2122017089', 'ACHMAD FADILLAH HARDYA P S A', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017089', '94789362', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21885, '2122017090@gtech.com', 'abc123', '2122017090', 'ALFINDRA F NUGRAHA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017090', '92514886', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21886, '2122017091@gtech.com', 'abc123', '2122017091', 'ANANDA WIJI ADREANO SAPUTRA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017091', '87162195', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21887, '2122017092@gtech.com', 'abc123', '2122017092', 'ANDHINI PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017092', '81167353', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21888, '2122017093@gtech.com', 'abc123', '2122017093', 'ARDIANSYAH PUTRA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017093', '87015936', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21889, '2122017094@gtech.com', 'abc123', '2122017094', 'ARINI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017094', '78857466', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21890, '2122017095@gtech.com', 'abc123', '2122017095', 'AULIA MIRANDA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017095', '87933104', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21891, '2122017118@gtech.com', 'abc123', '2122017118', 'AZIZAH KURNIAWAN', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017118', '86065197', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21892, '2122017096@gtech.com', 'abc123', '2122017096', 'DAVIN ALFIANO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017096', '75831293', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21893, '2122017099@gtech.com', 'abc123', '2122017099', 'DWI PRAMUDITA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017099', '151995576', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21894, '2122017100@gtech.com', 'abc123', '2122017100', 'DWINA HAPPY OKTAVIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017100', '95977129', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21895, '2122017101@gtech.com', 'abc123', '2122017101', 'FARIZ NUR RAHMAD DHANI ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017101', '91335992', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21896, '2122017102@gtech.com', 'abc123', '2122017102', 'HERA AGUSTIN', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017102', '84094499', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21897, '2122017103@gtech.com', 'abc123', '2122017103', 'ISNAN ADI SYAHBANDI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017103', '81273528', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21898, '2122017104@gtech.com', 'abc123', '2122017104', 'KEYZA ANGGITA RAMADHANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017104', '83454722', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21899, '2122017105@gtech.com', 'abc123', '2122017105', 'LAURA ADHARI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017105', '89961800', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21900, '2122017106@gtech.com', 'abc123', '2122017106', 'MUHAMAD FAIQ FADHLUL AZIZ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017106', '82688911', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21901, '2122017107@gtech.com', 'abc123', '2122017107', 'MUHAMAD IHKSAN TRIOPAMBUDI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017107', '81739869', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21902, '2122017108@gtech.com', 'abc123', '2122017108', 'MUHAMMAD ARIEF', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017108', '91760087', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21903, '2122017109@gtech.com', 'abc123', '2122017109', 'MUHAMMAD FIRLY NOVERIADI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017109', '83120574', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21904, '2122017110@gtech.com', 'abc123', '2122017110', 'MUHAMMAD GALANG SAPUTRA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017110', '83014006', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21905, '2122017111@gtech.com', 'abc123', '2122017111', 'MUHAMMAD IRSYAD', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017111', '83219031', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21906, '2122017112@gtech.com', 'abc123', '2122017112', 'NABIL RAISSA SANDI ASTI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017112', '99176617', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21907, '2122017114@gtech.com', 'abc123', '2122017114', 'REVINA DAMAYANTI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017114', '96927815', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21908, '2122017115@gtech.com', 'abc123', '2122017115', 'WINE EKA NUGRAHA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017115', '77432545', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21909, '2122017116@gtech.com', 'abc123', '2122017116', 'ZAZQIA  AL MADDINA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2122017116', '99522641', '-', '2020', 'IX-D', '1');
INSERT INTO `siswa` VALUES (21910, '2223017001@gtech.com', 'abc123', '2223017001', 'ABYAN FARIZKI NURSASMITO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017001', '2223017001', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21911, '2223017002@gtech.com', 'abc123', '2223017002', 'AFGAN NATA WIGUNA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017002', '2223017002', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21912, '2223017003@gtech.com', 'abc123', '2223017003', 'AHMAD TAQIYUDDIN AL FAHRULI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017003', '2223017003', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21913, '2223017004@gtech.com', 'abc123', '2223017004', 'ALFIRA RUFAIDAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017004', '2223017004', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21914, '2223017005@gtech.com', 'abc123', '2223017005', 'AZZAHRA RAIHANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017005', '2223017005', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21915, '2223017006@gtech.com', 'abc123', '2223017006', 'DEVINA APRILIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017006', '2223017006', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21916, '2223017007@gtech.com', 'abc123', '2223017007', 'ELSANA NURROHMAH FAJARANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017007', '2223017007', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21917, '2223017008@gtech.com', 'abc123', '2223017008', 'FAHRI AL HABSI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017008', '2223017008', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21918, '2223017009@gtech.com', 'abc123', '2223017009', 'GILANG ANDIKA KUSUMA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017009', '2223017009', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21919, '2223017010@gtech.com', 'abc123', '2223017010', 'HAFIDATU HUMAIRA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017010', '2223017010', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21920, '2223017011@gtech.com', 'abc123', '2223017011', 'HAFIDZ SYAHDI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017011', '2223017011', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21921, '2223017012@gtech.com', 'abc123', '2223017012', 'HIZKIA AKSAMAIA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017012', '2223017012', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21922, '2223017013@gtech.com', 'abc123', '2223017013', 'IZZATUL HURRIYAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017013', '2223017013', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21923, '2223017014@gtech.com', 'abc123', '2223017014', 'LULU ELVIRADELIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017014', '2223017014', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21924, '2223017015@gtech.com', 'abc123', '2223017015', 'M RIZKY FEBRIYANSYAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017015', '2223017015', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21925, 'halahlebayheh@gmail.com', 'abc123', '0089662098218', 'MAHESA AKMAL RADIKA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017016', '2223017016', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21926, '2223017017@gtech.com', 'abc123', '2223017017', 'MAYDA ALVITA RAHMATIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017017', '2223017017', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21927, '2223017018@gtech.com', 'abc123', '0882931123', 'MUHAMAD RIDHO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017018', '2223017018', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21928, '2223017019@gtech.com', 'abc123', '2223017019', 'MUHAMMAD FAREL HAKIM', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017019', '2223017019', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21929, '2223017020@gtech.com', 'abc123', '2223017020', 'MUHAMMAD FAZRI ALDIANSYAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017020', '2223017020', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21930, '2223017021@gtech.com', 'abc123', '2223017021', 'MUHAMMAD FIRDAUS', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017021', '2223017021', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21931, '2223017022@gtech.com', 'abc123', '2223017022', 'NADIA NURI JANATUN', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017022', '2223017022', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21932, '2223017023@gtech.com', 'abc123', '2223017023', 'NADILA  AZHARA PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017023', '2223017023', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21933, '2223017024@gtech.com', 'abc123', '2223017024', 'NASHIRA KARIN SYABILA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017024', '2223017024', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21934, '2223017025@gtech.com', 'abc123', '2223017025', 'RAMADHAN VINO AL AKBAR', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017025', '2223017025', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21935, '2223017026@gtech.com', 'abc123', '2223017026', 'RASYDAH HIRZI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017026', '2223017026', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21936, '2223017027@gtech.com', 'abc123', '2223017027', 'RAYHAN DIKA SAPUTRA ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017027', '2223017027', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21937, '2223017028@gtech.com', 'abc123', NULL, 'RIZKY MUHAMMAD  PARIZ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017028', '2223017028', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21938, '2223017029@gtech.com', 'abc123', '2223017029', 'SAKTI SHAUQI AL MUFTHADI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017029', '2223017029', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21939, '2223017030@gtech.com', 'abc123', '2223017030', 'YUMNA TASYA FADILAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017030', '2223017030', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21940, '2223017031@gtech.com', 'abc123', '2223017031', 'ZULAIKHA NADYA SYAFWAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017031', '2223017031', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21941, '2223017032@gtech.com', 'abc123', '2223017032', 'ZULFA RAHAYU SALAMAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017032', '2223017032', '-', '2020', 'VIII-B', '1');
INSERT INTO `siswa` VALUES (21942, '2223017033@gtech.com', 'abc123', '2223017033', 'ADAM HAIDAR IZAS', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017033', '2223017033', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21943, '2223017034@gtech.com', 'abc123', '2223017034', 'ADZANI SAFIRA KAHARANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017034', '2223017034', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21944, '2223017035@gtech.com', 'abc123', '2223017035', 'ALIA RAHMAWATI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017035', '2223017035', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21945, '2223017036@gtech.com', 'abc123', '2223017036', 'ALSYA RAMADANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017036', '2223017036', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21946, '2223017037@gtech.com', 'abc123', '2223017037', 'ANDI BAHTIAR PRADANA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017037', '2223017037', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21947, '2223017038@gtech.com', 'abc123', '2223017038', 'ANNISA KHAIRA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017038', '2223017038', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21948, '2223017039@gtech.com', 'abc123', '2223017039', 'CINTA DAVINA PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017039', '2223017039', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21949, '2223017040@gtech.com', 'abc123', '2223017040', 'FAHRI SETIAWAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017040', '2223017040', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21950, '2223017041@gtech.com', 'abc123', '2223017041', 'FARREL WAWAN ANRIANA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017041', '2223017041', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21951, '2223017042@gtech.com', 'abc123', '2223017042', 'FEBRIAN DHIYAULHAD DARMAWI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017042', '2223017042', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21952, '2223017043@gtech.com', 'abc123', '2223017043', 'FRISYA ABELIA SANDRA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017043', '2223017043', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21953, '2223017044@gtech.com', 'abc123', '2223017044', 'ICHWAN NUGRAHA MUHAMMAD NAZRULLOH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017044', '2223017044', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21954, '2223017045@gtech.com', 'abc123', '2223017045', 'IRSYAN HENDRAWAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017045', '2223017045', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21955, '2223017046@gtech.com', 'abc123', '2223017046', 'JASSER ARKAN FADIL', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017046', '2223017046', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21956, '2223017047@gtech.com', 'abc123', '2223017047', 'MICHAEL CARISTIANO CHANDRA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017047', '2223017047', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21957, '2223017048@gtech.com', 'abc123', '2223017048', 'MUHAMMAD SATRIO UTOMO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017048', '2223017048', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21958, '2223017049@gtech.com', 'abc123', '2223017049', 'MUHAMMAD UBAYDILLAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017049', '2223017049', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21959, '2223017050@gtech.com', 'abc123', '2223017050', 'MUHAMMAD ZACKY RAMADHAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017050', '2223017050', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21960, '2223017051@gtech.com', 'abc123', '2223017051', 'MURDIANSYAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017051', '2223017051', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21961, '2223017052@gtech.com', 'abc123', '2223017052', 'RACHEL KEY ASTON', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017052', '2223017052', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21962, '2223017053@gtech.com', 'abc123', '2223017053', 'REHAN LAWALATA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017053', '2223017053', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21963, '2223017054@gtech.com', 'abc123', '2223017054', 'RIDHO RAMADHAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017054', '2223017054', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21964, '2223017055@gtech.com', 'abc123', '2223017055', 'SHELLA AURELIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017055', '2223017055', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21965, '2223017056@gtech.com', 'abc123', '2223017056', 'SYAKILA AZAHRA HARAPAN', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017056', '2223017056', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21966, '2223017057@gtech.com', 'abc123', '2223017057', 'SYELY ANGGUN LESTARI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017057', '2223017057', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21967, '2223017058@gtech.com', 'abc123', '2223017058', 'VELINA PUTRI PURBASARI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017058', '2223017058', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21968, '2223017059@gtech.com', 'abc123', '2223017059', 'VIDI KUSUMA PUTRA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017059', '2223017059', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21969, '2223017060@gtech.com', 'abc123', '2223017060', 'VINKA OKTAVIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017060', '2223017060', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21970, '2223017061@gtech.com', 'abc123', '2223017061', 'ZAHRA ASTUTI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017061', '2223017061', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21971, '2223017062@gtech.com', 'abc123', '2223017062', 'ZIFANA MISHELLIA DINITA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017062', '2223017062', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21972, '2223017063@gtech.com', 'abc123', '2223017063', 'ZULFIANA MAEY SAFITRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017063', '2223017063', '-', '2020', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (21973, '2223017064@gtech.com', 'abc123', '2223017064', 'ARFAN DICKO LYENDRA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017064', '2223017064', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21974, '2223017065@gtech.com', 'abc123', '2223017065', 'AULIA ANDINI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017065', '2223017065', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21975, '2223017066@gtech.com', 'abc123', '2223017066', 'AWANG TRI PRASTYO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017066', '2223017066', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21976, '2223017067@gtech.com', 'abc123', '2223017067', 'AZKHA NURHIDAYAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017067', '2223017067', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21977, '2223017068@gtech.com', 'abc123', '2223017068', 'CINTA NOVITA PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017068', '2223017068', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21978, '2223017069@gtech.com', 'abc123', '2223017069', 'FERREL NUZHMI FILLAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017069', '2223017069', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21979, '2223017070@gtech.com', 'abc123', '2223017070', 'FERRY SALAM PRATAMA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017070', '2223017070', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21980, '2223017071@gtech.com', 'abc123', '2223017071', 'HAIDAR MUFLI YASIR', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017071', '2223017071', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21981, '2223017072@gtech.com', 'abc123', '2223017072', 'HANNA HARISTY', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017072', '2223017072', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21982, '2223017073@gtech.com', 'abc123', '2223017073', 'JEHANDREA USMAN ', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017073', '2223017073', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21983, '2223017074@gtech.com', 'abc123', '2223017074', 'KAHAYA LINTANG KA BAETULLAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017074', '2223017074', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21984, '2223017075@gtech.com', 'abc123', '2223017075', 'KARMILA NUR DEWI LESTARI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017075', '2223017075', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21985, '2223017076@gtech.com', 'abc123', '2223017076', 'KIRRANI MARSALLEN', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017076', '2223017076', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21986, '2223017077@gtech.com', 'abc123', '2223017077', 'MAULANA ROUF BAIHAQI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017077', '2223017077', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21987, '2223017078@gtech.com', 'abc123', '2223017078', 'MELANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017078', '2223017078', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21988, '2223017079@gtech.com', 'abc123', '2223017079', 'MIKHAEL IMANUEL FIRMANSYAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017079', '2223017079', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21989, '2223017080@gtech.com', 'abc123', '2223017080', 'MOCHAMAD FAJAR NURRAHMAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017080', '2223017080', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21990, '2223017081@gtech.com', 'abc123', '2223017081', 'MORENO NUGRAHA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017081', '2223017081', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21991, '2223017082@gtech.com', 'abc123', '2223017082', 'MUH. NAZRIL IZHAR', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017082', '2223017082', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21992, '2223017083@gtech.com', 'abc123', '2223017083', 'MUHAMMAD HAYYCAL', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017083', '2223017083', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21993, '2223017084@gtech.com', 'abc123', '2223017084', 'MUHAMMAD MAHATHIR', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017084', '2223017084', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21994, '2223017085@gtech.com', 'abc123', '2223017085', 'MUHAMMAD PASHA PONTAS', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017085', '2223017085', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21995, '2223017086@gtech.com', 'abc123', '2223017086', 'MUHAMMAD QAIS HAZTNI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017086', '2223017086', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21996, '2223017087@gtech.com', 'abc123', '2223017087', 'NAYLA APRIYANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017087', '2223017087', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21997, '2223017088@gtech.com', 'abc123', '2223017088', 'NAZIRA ZULFA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017088', '2223017088', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21998, '2223017089@gtech.com', 'abc123', '2223017089', 'NOVALDI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017089', '2223017089', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (21999, '2223017090@gtech.com', 'abc123', '2223017090', 'NOVITA AYU LESTARI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017090', '2223017090', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (22000, '2223017091@gtech.com', 'abc123', '2223017091', 'RIRIN NURMAFIDAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017091', '2223017091', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (22001, '2223017092@gtech.com', 'abc123', '2223017092', 'RIZQI KURNIAWAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017092', '2223017092', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (22002, '2223017093@gtech.com', 'abc123', '2223017093', 'TINO JULIO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017093', '2223017093', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (22003, '2223017094@gtech.com', 'abc123', '2223017094', 'VIRGIAWAN SAKTI RAMADHAN', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017094', '2223017094', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (22004, '2223017095@gtech.com', 'abc123', '2223017095', 'ZIVA SHAKILLA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017095', '2223017095', '-', '2020', 'IX-B', '1');
INSERT INTO `siswa` VALUES (22005, '2324017001@gtech.com', 'abc123', '2324017001', 'AIRA SHABILA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017001', '2324017001', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22006, '2324017002@gtech.com', 'abc123', '2324017002', 'AKBAR MAULANA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017002', '2324017002', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22007, '2324017003@gtech.com', 'abc123', '2324017003', 'ALFA ULI NUHA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017003', '2324017003', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22008, '2324017004@gtech.com', 'abc123', '2324017004', 'ALFIANSYAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017004', '2324017004', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22009, '2324017005@gtech.com', 'abc123', '2324017005', 'ARKAN AHMAD ATAYA ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017005', '2324017005', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22010, '2324017006@gtech.com', 'abc123', '2324017006', 'AZHAR ARSALAN ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017006', '2324017006', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22011, '2324017007@gtech.com', 'abc123', '2324017007', 'DEYAFA AULIA SALYA PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017007', '2324017007', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22012, '2324017008@gtech.com', 'abc123', '2324017008', 'DHAFA AZKA ARIFKI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017008', '2324017008', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22013, '2324017009@gtech.com', 'abc123', '2324017009', 'ENZI EROL', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017009', '2324017009', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22014, '2324017010@gtech.com', 'abc123', '2324017010', 'FARHAN NUR HUDA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017010', '2324017010', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22015, '2324017011@gtech.com', 'abc123', '2324017011', 'GILANG SATRIA PRATAMA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017011', '2324017011', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22016, '2324017012@gtech.com', 'abc123', '2324017012', 'HAFIZ WAHYU RAMADHAN ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017012', '2324017012', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22017, '2324017013@gtech.com', 'abc123', '2324017013', 'HAURA TALITA ZALFA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017013', '2324017013', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22018, '2324017014@gtech.com', 'abc123', '2324017014', 'JAVID FALYA RABBANI ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017014', '2324017014', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22019, '2324017015@gtech.com', 'abc123', '02324017015', 'JESEN ANDRA PRATAMA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017015', '2324017015', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22020, '2324017016@gtech.com', 'abc123', '2324017016', 'KAFF KA NABILLA PUTRA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017016', '2324017016', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22021, '2324017017@gtech.com', 'abc123', '02324017017', 'LUTFIA SAHFITRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017017', '2324017017', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22022, '2324017018@gtech.com', 'abc123', '02324017018 ', 'MUHAMMAD GIBRAN PRASETYA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017018', '2324017018', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22023, '2324017019@gtech.com', 'abc123', '2324017019', 'MUHAMMAD NUR FAHMI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017019', '2324017019', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22024, '2324017020@gtech.com', 'abc123', '2324017020', 'MUHAMMAD RIZKY', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017020', '2324017020', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22025, '2324017021@gtech.com', 'abc123', '2324017021', 'MUHAMMAD SARJITO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017021', '2324017021', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22026, '2324017022@gtech.com', 'abc123', '2324017022', 'MUTIARA  ULYA RAMADHAN ', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017022', '2324017022', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22027, '2324017023@gtech.com', 'abc123', '2324017023', 'NABILLA NUR AL ZAHRA ', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017023', '2324017023', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22028, '2324017024@gtech.com', 'abc123', '2324017024', 'NADILA FAITUNISA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017024', '2324017024', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22029, '2324017025@gtech.com', 'abc123', '2324017025', 'NAILA MUMTAZ ', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017025', '2324017025', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22030, '2324017026@gtech.com', 'abc123', '2324017026', 'NAURITYA FATMAWARDHANI ', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017026', '2324017026', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22031, '2324017027@gtech.com', 'abc123', '2324017027', 'NINA PUSPITA SARI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017027', '2324017027', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22032, '2324017028@gtech.com', 'abc123', '2324017028', 'NUGROHO PUTRA DIANSYAH ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017028', '2324017028', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22033, '2324017029@gtech.com', 'abc123', '2324017029', 'REGINA DWI ANNISA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017029', '2324017029', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22034, '2324017030@gtech.com', 'abc123', '2324017030', 'SABRINA ADELIA PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017030', '2324017030', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22035, '2324017031@gtech.com', 'abc123', '2324017031', 'SABRINA KEYLA PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017031', '2324017031', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22036, '2324017032@gtech.com', 'abc123', '2324017032', 'SASKIA PUTRI QORI ', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017032', '2324017032', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22037, '2324017033@gtech.com', 'abc123', '2324017033', 'SATRIO EZZAR SAPUTRA ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017033', '2324017033', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22038, '2324017034@gtech.com', 'abc123', '2324017034', 'VENY DWI AMELIA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017034', '2324017034', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22039, '2324017035@gtech.com', 'abc123', '2324017035', 'ZAKIA ANISA PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017035', '2324017035', '-', '2020', 'VII-B', '1');
INSERT INTO `siswa` VALUES (22040, '2324017036@gtech.com', 'abc123', '2324017036', 'ACHMAD IRFANSYAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017036', '2324017036', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22041, '2324017037@gtech.com', 'abc123', '2324017037', 'AHDI ISNAN YANUAR', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017037', '2324017037', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22042, '2324017038@gtech.com', 'abc123', '2324017038', 'AHMAD SYAUQI HUDA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017038', '2324017038', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22043, '2324017039@gtech.com', 'abc123', '2324017039', 'AIRA AZAHRA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017039', '2324017039', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22044, '2324017040@gtech.com', 'abc123', '2324017040', 'AISYAH RUMMAAN HISAAN', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017040', '2324017040', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22045, '2324017041@gtech.com', 'abc123', '2324017041', 'AJENG JUNIATI ALPIAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017041', '2324017041', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22046, '2324017042@gtech.com', 'abc123', '02324017042', 'ANELFA  RANANDA RIZKY', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017042', '2324017042', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22047, '2324017043@gtech.com', 'abc123', '2324017043', 'ASYIFA  NURAYSA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017043', '2324017043', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22048, '2324017044@gtech.com', 'abc123', '2324017044', 'ATH THORIQ IBNU AMTA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017044', '2324017044', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22049, '2324017045@gtech.com', 'abc123', '2324017045', 'DESWITA RIANININGSIH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017045', '2324017045', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22050, '2324017046@gtech.com', 'abc123', '2324017046', 'DEWI KINANTI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017046', '2324017046', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22051, '2324017047@gtech.com', 'abc123', '2324017047', 'FEIVE TIRZA LOMBOAN', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017047', '2324017047', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22052, '2324017048@gtech.com', 'abc123', '2324017048', 'HABIBI MALIK HISYAM', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017048', '2324017048', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22053, '2324017049@gtech.com', 'abc123', '2324017049', 'HAFITZ TRI PURNAMA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017049', '2324017049', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22054, '2324017050@gtech.com', 'abc123', '2324017050', 'HUSNA SALSABILA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017050', '2324017050', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22055, '2324017051@gtech.com', 'abc123', '2324017051', 'IMAN NASUTION ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017051', '2324017051', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22056, '2324017052@gtech.com', 'abc123', '2324017052', 'KARISA AIRA FATIHAH', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017052', '2324017052', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22057, '2324017053@gtech.com', 'abc123', '2324017053', 'KEVIN LA AMI ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017053', '2324017053', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22058, '2324017054@gtech.com', 'abc123', '2324017054', 'KEYLA KINTANI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017054', '2324017054', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22059, '2324017055@gtech.com', 'abc123', '2324017055', 'LISTY AMANDA ELSHADA NEE ', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017055', '2324017055', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22060, '2324017056@gtech.com', 'abc123', '2324017056', 'LUTFI RHOHIM WIYANTO', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017056', '2324017056', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22061, '2324017057@gtech.com', 'abc123', '2324017057', 'MUHAMMAD AKHIRUL AMIN ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017057', '2324017057', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22062, '2324017058@gtech.com', 'abc123', '2324017058', 'MUHAMAD ARIF PADILAH', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017058', '2324017058', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22063, '2324017059@gtech.com', 'abc123', '2324017059', 'MUHAMMAD DAFFA FAEYZA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017059', '2324017059', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22064, '2324017060@gtech.com', 'abc123', '2324017060', 'MUHAMAD DHAMAS ALKHAFI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017060', '2324017060', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22065, '2324017061@gtech.com', 'abc123', '2324017061', 'MUHAMMAD EDWIN JUNIOR', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017061', '2324017061', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22066, '2324017062@gtech.com', 'abc123', '2324017062', 'NABILA ZILTA ASSHAVA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017062', '2324017062', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22067, '2324017063@gtech.com', 'abc123', '2324017063', 'NADHELINE LAUREN SKY', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017063', '2324017063', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22068, '2324017064@gtech.com', 'abc123', '02324017064', 'NYAYU ASSYFAH HUMAIRA A', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017064', '2324017064', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22069, '2324017065@gtech.com', 'abc123', '2324017065', 'PUTRA ABDUL HAMID', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017065', '2324017065', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22070, '2324017066@gtech.com', 'abc123', '2324017066', 'RAMA APRIATNA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017066', '2324017066', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22071, '2324017067@gtech.com', 'abc123', '2324017067', 'RASYA AMALIA PUTRI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017067', '2324017067', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22072, '2324017068@gtech.com', 'abc123', '2324017068', 'RIFKY MUHAMMAD DAFFA', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017068', '2324017068', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22073, '2324017069@gtech.com', 'abc123', '2324017069', 'RIZKY ADITHIYA ', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017069', '2324017069', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22074, '2324017070@gtech.com', 'abc123', '2324017070', 'RUDI DAFFA NURIFQI', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017070', '2324017070', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (22075, '2324017071@gtech.com', 'abc123', '2324017071', 'YOSHITAKA KODRAT ISMAIL SITUMEANG', 'P', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017071', '2324017071', '-', '2020', 'VII-A', '1');
INSERT INTO `siswa` VALUES (23049, '2223017098@gtech.com', 'abc123', '2223017098', 'AATHIFAH NURAINI', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2223017098', '2223017098', '-', '2022', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (23050, '2223017097@gtech.com', 'abc123', '2223017097', 'APTA FIRJATULLAH DJOELI', 'P', 'Jakarta', '2000-01-01', 'Islam', '-', '-', '2223017097', '2223017097', '-', '2022', 'VIII-A', '1');
INSERT INTO `siswa` VALUES (23051, '2223017096@gtech.com', 'abc123', '2223017096', 'BELLA NUR FITRIAWAN', 'W', 'Jakarta', '2000-01-01', 'Islam', '-', '-', '2223017096', '2223017096', '-', '2022', 'IX-B', '1');
INSERT INTO `siswa` VALUES (23058, '2324017073@gtech.com', 'abc123', '2324017073', 'AIRYA SURYAPUTRA', 'W', 'Jakarta', '2000-01-01', NULL, '-', '-', '2324017073', '2324017073', '-', '2023', 'VII-B', '1');

-- ----------------------------
-- Table structure for tahun_ajaran
-- ----------------------------
DROP TABLE IF EXISTS `tahun_ajaran`;
CREATE TABLE `tahun_ajaran`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tahun_ajaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2026 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tahun_ajaran
-- ----------------------------
INSERT INTO `tahun_ajaran` VALUES (1, '2024', '1');
INSERT INTO `tahun_ajaran` VALUES (2, '2023', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `preferensi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `id_siswa` int NULL DEFAULT NULL,
  `id_guru` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin@admin.com', NULL, '$2y$10$axO9Vey.mG/w8/ssuS4cx.RjiRaZBtAtHinMjc8ZlD9CGMZMvEgKq', NULL, 1, '/BRDl1EUqP3Bh7lAfNl22waKILw7PMEo5N6kxhmME.jpg', NULL, 'admin', NULL, NULL, '2023-10-12 01:08:51', '2024-01-28 19:33:24');
INSERT INTO `users` VALUES (3, 'ACHMAD IRFANSYAH', 'siswa@gmail.com', NULL, '$2y$10$GSW4KeAbH.yYn/g6bA46nujxnqes4QetMh1LdaIoPqeROgfCNRioW', NULL, 1, '', '', 'siswa', 22040, NULL, NULL, '2024-01-28 20:10:37');
INSERT INTO `users` VALUES (6, 'YASHINTA ASMADHINI', 'guru@gmail.com', NULL, '$2y$10$jvkmchJhZhyVGVB6ykP35eoluMwE8ZfbdsXEhuWewMvwLQVifnfqe', NULL, 1, NULL, NULL, 'guru', NULL, 1, '2024-01-28 20:03:06', '2024-01-28 20:12:05');

SET FOREIGN_KEY_CHECKS = 1;
