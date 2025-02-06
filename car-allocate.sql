/*
 Navicat Premium Dump SQL

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : car-allocate

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 05/02/2025 11:43:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car-drivers
-- ----------------------------
DROP TABLE IF EXISTS `car-drivers`;
CREATE TABLE `car-drivers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `car_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `car_model` int NULL DEFAULT NULL,
  `license_plate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `car_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parking_lot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `car_priority` int NULL DEFAULT NULL,
  `seat_limit` int NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of car-drivers
-- ----------------------------
INSERT INTO `car-drivers` VALUES (1, 'Mr Giang', 'CAMRY', 2023, '36U8-1245', '5 Seat', 'Hà Nội', 2, 3, '0836542291', '2025-01-02 17:12:17', NULL);
INSERT INTO `car-drivers` VALUES (2, 'Mr Tuan', 'FORTUNER ', 2023, '36U8-4567', '7 Seat', 'Hà Nội', 3, 3, '098.565.7771', '2025-01-02 17:14:37', NULL);
INSERT INTO `car-drivers` VALUES (3, 'Mr Tam', 'CARNIVAL PREMIUM', 2024, '29C2-0987', '5 Seat', 'Hà Nội', 1, 5, '0753872209', '2025-01-03 14:52:29', NULL);
INSERT INTO `car-drivers` VALUES (4, 'Mr Duong HD', 'INNOVA CROSS', 2024, '29C2-8888', '7 Seat', 'Hải Dương', 4, 4, '0753872211', '2025-01-03 14:54:07', NULL);
INSERT INTO `car-drivers` VALUES (5, 'Mr Hung HD', 'TOYOTA VIOS ', 2024, '29C2-8877', '5 Seat', 'Hải Dương', 7, 3, '0753872222', '2025-01-03 14:55:36', NULL);
INSERT INTO `car-drivers` VALUES (6, 'Mr Son', 'FORTUNER', 2020, '29C2-1177', '7 Seat', 'Hà Nội', 4, 4, '0753872653', '2025-01-03 14:56:50', NULL);
INSERT INTO `car-drivers` VALUES (7, 'Mr Y', 'INNOVA CROSS', 2024, '29C2-1161', '7 Seat', 'Hà Nội', 4, 4, '0753876514', '2025-01-03 14:58:38', NULL);
INSERT INTO `car-drivers` VALUES (8, 'Mr Tuan VT', 'FORD TRANSIT', 2019, '36C2-0161', '16 Seat', 'Thanh Hóa', 5, 13, '0753876543', '2025-01-03 15:02:20', NULL);
INSERT INTO `car-drivers` VALUES (9, 'Mr Minh 2', 'HUYNDAI Sorati', 2023, '36U2-1298', '16 Seat', 'Thanh Hóa', 4, 13, '0753877641', '2025-01-03 15:05:18', NULL);
INSERT INTO `car-drivers` VALUES (10, 'Mr Hoàng', 'HUYNDAI Sorati', 2023, '36F2-1255', '16 Seat', 'Thanh Hóa', 6, 13, '0186541190', '2025-01-03 15:06:48', NULL);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `location_from_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `location_to_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start` datetime NULL DEFAULT NULL,
  `end` datetime NULL DEFAULT NULL,
  `province_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT 0,
  `driver_id` int NULL DEFAULT NULL,
  `driver_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `priority` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1686 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1662, 'Quận ủy hoàng mai, Khu đô thị Ao Sào, Hàm Nghi', 'Capital Place', '2024-12-16 07:00:00', '2024-12-16 08:39:33', 'Hà Nội', 'Hà Nội', '2025-02-05 04:27:50', '2025-02-05 04:27:58', 0, 1, 'Mr Giang', 6);
INSERT INTO `groups` VALUES (1663, 'Khách sạn Fraser Suites, Chung cư Starlake, Khách sạn Azumaya Kim Mã 3', 'Capital Place', '2024-12-16 07:00:00', '2024-12-16 07:29:37', 'Hà Nội', 'Hà Nội', '2025-02-05 04:27:51', '2025-02-05 04:27:58', 0, 3, 'Mr Tam', 1);
INSERT INTO `groups` VALUES (1664, 'Huyện Ủy Huyện Quảng Xương, Chung cư Eurowinodow Thanh Hóa, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá', 'Nhà máy Sakurai 1 Lễ môn', '2024-12-16 04:55:00', '2024-12-16 05:38:11', 'Thanh Hóa', 'Thanh Hóa', '2025-02-05 04:27:51', '2025-02-05 04:27:58', 0, 9, 'Mr Minh 2', 1);
INSERT INTO `groups` VALUES (1665, 'Đồng Thắng, Triệu Sơn, Thanh Hóa, Huyện Ủy Huyện Quảng Xương, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Siêu thị Go Thanh Hóa, Siêu thị Go Thanh Hóa, Siêu thị Go Thanh Hóa, Siêu thị Go Thanh Hóa, Cây xăng Hoằng Minh', 'Công Ty Sakurai Hoằng Hóa', '2024-12-16 07:00:00', '2024-12-16 08:14:12', 'Thanh Hóa', 'Thanh Hóa', '2025-02-05 04:27:52', '2025-02-05 04:27:58', 0, 8, 'Mr Tuan VT', 1);
INSERT INTO `groups` VALUES (1666, 'Khách sạn Purple Lotus', 'Nhà máy Sakurai 1 Lễ môn', '2024-12-16 07:00:00', '2024-12-16 10:02:22', 'Hải Dương', 'Thanh Hóa', '2025-02-05 04:27:52', '2025-02-05 04:27:58', 0, 4, 'Mr Duong HD', 5);
INSERT INTO `groups` VALUES (1667, 'Công Ty Sakurai Hoằng Hóa', 'Cây xăng Hoằng Minh', '2024-12-16 05:00:00', '2024-12-16 05:13:14', 'Thanh Hóa', 'Thanh Hóa', '2025-02-05 04:27:52', '2025-02-05 04:27:58', 0, 8, 'Mr Tuan VT', 6);
INSERT INTO `groups` VALUES (1668, 'Tran Nhan Tong, Q. Hung, Nhà máy Sakurai 1 Lễ môn, Nhà máy Sakurai 1 Lễ môn, Nhà máy Sakurai 1 Lễ môn, Cầu Quan, Nông Cống, TH, Cây xăng Hoằng Minh', 'Capital Place', '2024-12-16 04:45:00', '2024-12-16 08:48:14', 'Thanh Hóa', 'Hà Nội', '2025-02-05 04:27:53', '2025-02-05 04:27:58', 0, 10, 'Mr Hoàng', 4);
INSERT INTO `groups` VALUES (1669, 'xã Hoàng Sơn huyện Nông Cống', 'Khách sạn Vinpearl Thanh Hoá', '2024-12-16 06:45:00', '2024-12-16 07:11:24', 'Thanh Hóa', 'Thanh Hóa', '2025-02-05 04:27:53', '2025-02-05 04:27:53', 0, NULL, NULL, 6);
INSERT INTO `groups` VALUES (1670, 'Quận ủy hoàng mai', 'Nút Giao Vực Vòng', '2024-12-16 07:50:00', '2024-12-16 08:49:19', 'Hà Nội', 'Hà Nam', '2025-02-05 04:27:53', '2025-02-05 04:27:58', 0, 2, 'Mr Tuan', 6);
INSERT INTO `groups` VALUES (1671, 'Nút Giao Vực Vòng', 'Nhà máy Sakurai 1 Lễ môn', '2024-12-16 08:20:00', '2024-12-16 10:00:28', 'Hà Nam', 'Thanh Hóa', '2025-02-05 04:27:53', '2025-02-05 04:27:53', 0, NULL, NULL, 6);
INSERT INTO `groups` VALUES (1672, 'Kí túc xá Nam Định', 'Quận ủy hoàng mai', '2024-12-16 05:00:00', '2024-12-16 06:45:29', 'Nam Định', 'Hà Nội', '2025-02-05 04:27:53', '2025-02-05 04:27:53', 0, NULL, NULL, 6);
INSERT INTO `groups` VALUES (1673, 'Ga Phạm Xá', 'Nhà máy TOPT', '2024-12-16 04:00:00', '2024-12-16 07:43:01', 'Hải Dương', ' Nam Định', '2025-02-05 04:27:53', '2025-02-05 04:27:58', 0, 5, 'Mr Hung HD', 6);
INSERT INTO `groups` VALUES (1674, 'Big C NĐ, Kí túc xá Nam Định, Kí túc xá Nam Định, Kí túc xá Nam Định', 'Nhà máy TOPT', '2024-12-16 06:20:00', '2024-12-16 10:04:49', 'Nam Định', 'Nam Định', '2025-02-05 04:27:54', '2025-02-05 04:27:54', 0, NULL, NULL, 6);
INSERT INTO `groups` VALUES (1675, 'Capital Place', 'Huyện Ủy Huyện Quảng Xương, Tran Nhan Tong, Q. Hung, Khách sạn Mường Thanh Thanh Hóa, Khách sạn Mường Thanh Thanh Hóa, Nhà máy Sakurai 1 Lễ môn', '2024-12-16 16:00:00', '2024-12-16 18:29:32', 'Hà Nội', 'Thanh Hóa', '2025-02-05 04:27:55', '2025-02-05 04:27:58', 0, 3, 'Mr Tam', 5);
INSERT INTO `groups` VALUES (1676, 'Capital Place', 'Nhà máy Sakurai 1 Lễ môn, Cầu Quan, Nông Cống, TH, Khách sạn Vinpearl Thanh Hoá, Cây xăng Hoằng Minh', '2024-12-16 18:00:00', '2024-12-16 20:23:19', 'Hà Nội', 'Thanh Hóa', '2025-02-05 04:27:55', '2025-02-05 04:27:58', 0, 10, 'Mr Hoàng', 4);
INSERT INTO `groups` VALUES (1677, 'Capital Place', 'Hàm Nghi, Khách sạn Fraser Suites, Chung cư Starlake, Azumaya Hotel Kim Mã 3', '2024-12-16 19:00:00', '2024-12-16 19:05:05', 'Hà Nội', 'Hà Nội', '2025-02-05 04:27:56', '2025-02-05 04:27:58', 0, 3, 'Mr Tam', 1);
INSERT INTO `groups` VALUES (1678, 'Nhà máy Sakurai 1 Lễ môn', 'Công Ty Sakurai Hoằng Hóa, Khách sạn Mường Thanh Thanh Hóa, Chung cư Eurowinodow Thanh Hóa, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá', '2024-12-16 17:00:00', '2024-12-16 17:20:08', 'Thanh Hóa', 'Thanh Hóa', '2025-02-05 04:27:56', '2025-02-05 04:27:58', 0, 9, 'Mr Minh 2', 1);
INSERT INTO `groups` VALUES (1679, 'Công Ty Sakurai Hoằng Hóa', 'xã Hoàng Sơn huyện Nông Cống, Đồng Thắng, Triệu Sơn, Thanh Hóa, Đồng Thắng, Triệu Sơn, Thanh Hóa, Huyện Ủy Huyện Quảng Xương, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá', '2024-12-16 17:00:00', '2024-12-16 17:20:08', 'Thanh Hóa', 'Thanh Hóa', '2025-02-05 04:27:57', '2025-02-05 04:27:58', 0, 10, 'Mr Hoàng', 4);
INSERT INTO `groups` VALUES (1680, 'Công Ty Sakurai Hoằng Hóa', 'Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Khách sạn Vinpearl Thanh Hoá, Siêu thị Go Thanh Hóa, Siêu thị Go Thanh Hóa, Siêu thị Go Thanh Hóa, Siêu thị Go Thanh Hóa', '2024-12-16 17:00:00', '2024-12-16 17:17:58', 'Thanh Hóa', 'Thanh Hóa', '2025-02-05 04:27:57', '2025-02-05 04:27:58', 0, 8, 'Mr Tuan VT', 1);
INSERT INTO `groups` VALUES (1681, 'Công Ty Sakurai Hoằng Hóa', 'Khách sạn Azumaya Kim Mã 2', '2024-12-16 15:00:00', '2024-12-16 17:13:02', 'Thanh Hóa', 'Hà Nội', '2025-02-05 04:27:57', '2025-02-05 04:27:57', 0, NULL, NULL, 5);
INSERT INTO `groups` VALUES (1682, 'Đồng Thắng, Triệu Sơn, Thanh Hóa', 'Công Ty Sakurai Hoằng Hóa', '2024-12-16 19:00:00', '2024-12-16 19:31:38', 'Thanh Hóa', 'Thanh Hóa', '2025-02-05 04:27:57', '2025-02-05 04:27:58', 0, 9, 'Mr Minh 2', 4);
INSERT INTO `groups` VALUES (1683, 'Capital Place', 'Nút Giao Liêm Tuyền', '2024-12-16 16:00:00', '2024-12-16 16:59:24', 'Hà Nội', 'Hà Nam', '2025-02-05 04:27:57', '2025-02-05 04:27:58', 0, 6, 'Mr Son', 6);
INSERT INTO `groups` VALUES (1684, 'Nút Giao Liêm Tuyền', 'Kí túc xá Nam Định', '2024-12-16 17:30:00', '2024-12-16 19:05:25', 'Hà Nam', 'Nam Định', '2025-02-05 04:27:57', '2025-02-05 04:27:57', 0, NULL, NULL, 6);
INSERT INTO `groups` VALUES (1685, 'Nhà máy TOPT', 'Kí túc xá Nam Định, Kí túc xá Nam Định, Kí túc xá Nam Định, Kí túc xá Nam Định, Kí túc xá Nam Định', '2024-12-16 17:00:00', '2024-12-16 18:29:33', 'Nam Định', 'Nam Định', '2025-02-05 04:27:58', '2025-02-05 04:27:58', 0, NULL, NULL, 6);

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `coordinates` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES (88, 'Capital Place', 'Capital Place', 'Hà Nội', NULL, NULL, '21.0318631,105.8135447');
INSERT INTO `locations` VALUES (89, 'Khách sạn Azumaya Linh Lang', 'Khách sạn Azumaya Kim Mã 3', 'Hà Nội', NULL, NULL, '21.0362967,105.8079136');
INSERT INTO `locations` VALUES (90, 'Azumaya Hotel Kim Mã 3', 'Azumaya Hotel Kim Mã 3', 'Hà Nội', NULL, NULL, '21.0269668,105.8075174');
INSERT INTO `locations` VALUES (91, 'Khách sạn Fraser Suites', 'Khách sạn Fraser Suites', 'Hà Nội', NULL, NULL, '21.063951,105.8252313');
INSERT INTO `locations` VALUES (92, 'Khách sạn Adonis', 'Khách sạn Adonis', 'Hà Nội', NULL, NULL, '21.0180912,105.844935');
INSERT INTO `locations` VALUES (93, 'Chung Cư HD Mon, Nguyễn Cơ Thạch', 'Chung Cư HD Mon, Nguyễn Cơ Thạch', 'Hà Nội', NULL, NULL, '21.0352522,105.7641205');
INSERT INTO `locations` VALUES (94, 'Quận ủy hoàng mai', 'Quận ủy hoàng mai', 'Hà Nội', NULL, NULL, '21.0353976,105.6842925');
INSERT INTO `locations` VALUES (95, 'Nhà máy Best Pacific', 'Nhà máy Best Pacific', 'Hà Nội', NULL, NULL, '20.9310091,106.1691667');
INSERT INTO `locations` VALUES (96, 'Nhà máy PCTL', 'Nhà máy PCTL', 'Hà Nội', NULL, NULL, '21.0140162,105.7695605');
INSERT INTO `locations` VALUES (97, 'Nhà máy Crystal Martin', 'Nhà máy Crystal Martin', 'Hà Nội', NULL, NULL, '21.2147347,106.1092121');
INSERT INTO `locations` VALUES (98, 'Nút Giao Liêm Tuyền', 'Nút Giao Liêm Tuyền', 'Hà Nam', NULL, NULL, '20.5390773,105.9453869');
INSERT INTO `locations` VALUES (99, 'Nhà máy Sakurai 1 Lễ môn', 'Nhà máy Sakurai 1 Lễ môn', 'Thanh Hóa', NULL, NULL, '19.8423513,105.7278024');
INSERT INTO `locations` VALUES (100, 'Công Ty Sakurai Hoằng Hóa', 'Công Ty Sakurai Hoằng Hóa', 'Thanh Hóa', NULL, NULL, '19.9048933,105.8010323');
INSERT INTO `locations` VALUES (101, 'Khách sạn Vinpearl Thanh Hoá', 'Khách sạn Vinpearl Thanh Hoá', 'Thanh Hóa', NULL, NULL, '19.8099384,105.7749616');
INSERT INTO `locations` VALUES (102, 'Huyện Ủy Huyện Quảng Xương', 'Huyện Ủy Huyện Quảng Xương', 'Thanh Hóa', NULL, NULL, '19.736244,105.7785451');
INSERT INTO `locations` VALUES (103, 'Khách sạn Mường Thanh Thanh Hóa', 'Khách sạn Mường Thanh Thanh Hóa', 'Thanh Hóa', NULL, NULL, '19.7822469,105.7756045');
INSERT INTO `locations` VALUES (104, 'Khách sạn Nam Cường Nam Định', 'Khách sạn Nam Cường Nam Định', 'Nam Định', NULL, NULL, '20.4340853,106.1642533');
INSERT INTO `locations` VALUES (105, 'Khách sạn Sojo Nam Định', 'Khách sạn Sojo Nam Định', 'Nam Định', NULL, NULL, '20.4287233,106.1714766');
INSERT INTO `locations` VALUES (106, 'Sân bay Nội Bài sảnh T1', 'Sân bay Nội Bài sảnh T1', 'Hà Nội', NULL, NULL, '21.2159656,105.7931302');
INSERT INTO `locations` VALUES (107, 'Khách sạn Grand Mercure', 'Khách sạn Grand Mercure', 'Hà Nội', NULL, NULL, '21.0278829,105.8308944');
INSERT INTO `locations` VALUES (108, 'Chung cư Starlake', 'Chung cư Starlake', 'Hà Nội', NULL, NULL, '21.052839,105.7896328');
INSERT INTO `locations` VALUES (109, 'Chung cư Eurowinodow Thanh Hóa', 'Chung cư Eurowinodow Thanh Hóa', 'Thanh Hóa', NULL, NULL, '19.8069538,105.7984579');
INSERT INTO `locations` VALUES (110, 'Siêu thị Go Thanh Hóa', 'Siêu thị Go Thanh Hóa', 'Thanh Hóa', NULL, NULL, '19.805432,105.7995911');
INSERT INTO `locations` VALUES (111, 'Kí túc xá Nam Định', 'Kí túc xá Nam Định', 'Nam Định', NULL, NULL, '20.6885856,105.5352402');
INSERT INTO `locations` VALUES (112, 'Sân bay Nội Bài sảnh T2', 'Sân bay Nội Bài sảnh T2', 'Hà Nội', NULL, NULL, '21.217122,105.7916751');
INSERT INTO `locations` VALUES (113, 'Khách sạn Azumaya Kim Mã 2', 'Khách sạn Azumaya Kim Mã 2', 'Hà Nội', NULL, NULL, '21.0283257,105.8077039');
INSERT INTO `locations` VALUES (114, 'Khách sạn Du Parc', 'Khách sạn Du Parc', 'Hà Nội', NULL, NULL, '21.0177213,105.8393187');
INSERT INTO `locations` VALUES (115, 'Vinhome Gardenia', 'Vinhome Gardenia', 'Hà Nội', NULL, NULL, '21.0360385,105.7562531');
INSERT INTO `locations` VALUES (116, 'Khách sạn Purple Lotus', 'Khách sạn Purple Lotus', 'Hải Dương', NULL, NULL, '20.9365123,106.3112611');
INSERT INTO `locations` VALUES (118, 'Khách sạn Hải Dương Garden', 'Khách sạn Hải Dương Garden', 'Hải Dương', NULL, NULL, '20.9365123,106.3112611');
INSERT INTO `locations` VALUES (119, 'Nút Giao Vực Vòng', 'Nút Giao Vực Vòng', 'Hà Nam', NULL, NULL, '20.6459776,105.9359198');
INSERT INTO `locations` VALUES (120, 'Sân Bay Thọ Xuân, Thanh Hóa', 'Sân Bay Thọ Xuân, Thanh Hóa', 'Thanh Hóa', NULL, NULL, '19.9011867,105.4652684');
INSERT INTO `locations` VALUES (121, 'Nhà máy TOPT', 'Nhà máy TOPT', ' Nam Định', NULL, NULL, '20.536412,105.2613569');
INSERT INTO `locations` VALUES (122, 'Khách sạn Azumaya Bùi Thị Xuân', 'Khách sạn Azumaya Bùi Thị Xuân', 'Hà Nội', NULL, NULL, '20.9936538,105.749041');
INSERT INTO `locations` VALUES (124, 'xã Hoàng Sơn huyện Nông Cống', 'xã Hoàng Sơn huyện Nông Cống', 'Thanh Hóa', NULL, NULL, '19.7233864,105.6509242');
INSERT INTO `locations` VALUES (125, 'Hàm Nghi', 'Hàm Nghi', 'Hà Nội', NULL, NULL, '21.0349178,105.7618331');
INSERT INTO `locations` VALUES (126, 'Cây xăng Hoằng Minh', 'Cây xăng Hoằng Minh', 'Thanh Hóa', NULL, NULL, '19.8501577,105.827866');
INSERT INTO `locations` VALUES (127, 'Khu đô thị Ao Sào', 'Khu đô thị Ao Sào', 'Hà Nội', NULL, NULL, '20.9745604,105.8500254');
INSERT INTO `locations` VALUES (128, 'Tran Nhan Tong, Q. Hung', 'Tran Nhan Tong, Q. Hung', 'Thanh Hóa', NULL, NULL, '19.7841081,105.7998629');
INSERT INTO `locations` VALUES (129, 'xã Hoàng Sơn huyện Nông Cống', 'xã Hoàng Sơn huyện Nông Cống', 'Thanh Hóa', NULL, NULL, '19.7233864,105.6509242');
INSERT INTO `locations` VALUES (131, 'Cầu Quan, Nông Cống, TH', 'Cầu Quan, Nông Cống, TH', 'Thanh Hóa', NULL, NULL, '19.7039823,105.6830489');
INSERT INTO `locations` VALUES (132, 'Đồng Thắng, Triệu Sơn, Thanh Hóa', 'Đồng Thắng, Triệu Sơn, Thanh Hóa', 'Thanh Hóa', NULL, NULL, '19.7591767,105.6667618');
INSERT INTO `locations` VALUES (133, 'Ga Phạm Xá', 'Ga Phạm Xá', 'Hải Dương', NULL, NULL, '20.9688383,106.4492369');
INSERT INTO `locations` VALUES (134, 'Quảng Đông', 'Quảng Đông', 'Thanh Hóa', NULL, NULL, '19.7627241,105.7728493');
INSERT INTO `locations` VALUES (135, 'Big C NĐ', 'Big C NĐ', 'Nam Định', NULL, NULL, '20.4376453,106.1499118');

-- ----------------------------
-- Table structure for requests
-- ----------------------------
DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `passenger` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `passenger_id` int NULL DEFAULT NULL,
  `guest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `datetime` datetime NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `driver_id` int NULL DEFAULT NULL,
  `driver_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `location_from_id` int NULL DEFAULT NULL,
  `location_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `location_to_id` int NULL DEFAULT NULL,
  `location_to_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `has_lunch` tinyint NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_user` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `group_id` int NULL DEFAULT NULL,
  `province_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `priority_user` int NULL DEFAULT NULL,
  `time_et` int NULL DEFAULT NULL,
  `role_user` int NULL DEFAULT NULL,
  `start` time NULL DEFAULT NULL,
  `end` time NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 215 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of requests
-- ----------------------------
INSERT INTO `requests` VALUES (115, 'Suzuki Akihiro', 21, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 91, 'Khách sạn Fraser Suites', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-27 14:56:03', '2025-02-05 04:27:51', 1663, 'Hà Nội', 'Hà Nội', 3, 940, 2, '07:00:00', NULL);
INSERT INTO `requests` VALUES (116, 'Suzuma Takayuki', 90, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 14:59:58', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 4, 1214, 2, '05:17:57', NULL);
INSERT INTO `requests` VALUES (117, 'Kurosawa Takumi', 91, NULL, '2024-12-16 18:00:00', 0, NULL, NULL, 88, 'Capital Place', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 15:41:44', '2025-02-05 04:27:55', 1676, 'Hà Nội', 'Thanh Hóa', 6, 8786, 2, '18:00:00', NULL);
INSERT INTO `requests` VALUES (118, 'Suzuki Akihiro', 21, NULL, '2024-12-16 19:00:00', 0, NULL, NULL, 88, 'Capital Place', 91, 'Khách sạn Fraser Suites', NULL, NULL, 1, NULL, NULL, '2025-01-27 15:43:41', '2025-02-05 04:27:56', 1677, 'Hà Nội', 'Hà Nội', 3, 907, 2, '19:00:00', NULL);
INSERT INTO `requests` VALUES (119, 'Suzuma Takayuki', 90, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 15:44:48', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 4, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (120, 'Hayashi Kentaro', 54, NULL, '2024-12-16 07:00:00', 0, NULL, NULL, 108, 'Chung cư Starlake', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-27 15:48:19', '2025-02-05 04:27:51', 1663, 'Hà Nội', 'Hà Nội', 4, 534, 2, '07:16:56', NULL);
INSERT INTO `requests` VALUES (121, 'Hayashi Kentaro', 54, NULL, '2024-12-16 18:00:00', 0, NULL, NULL, 88, 'Capital Place', 108, 'Chung cư Starlake', NULL, NULL, 1, NULL, NULL, '2025-01-27 15:50:09', '2025-02-05 04:27:56', 1677, 'Hà Nội', 'Hà Nội', 4, 649, 2, '19:00:00', NULL);
INSERT INTO `requests` VALUES (122, 'Kotaro Kish', 107, NULL, '2024-12-16 08:15:00', 0, NULL, NULL, 89, 'Khách sạn Azumaya Kim Mã 3', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-27 15:51:33', '2025-02-05 04:27:51', 1663, 'Hà Nội', 'Hà Nội', 1, 219, 1, '07:25:58', NULL);
INSERT INTO `requests` VALUES (123, 'Kotaro Kish', 107, NULL, '2024-12-16 17:30:00', 0, NULL, NULL, 88, 'Capital Place', 90, 'Azumaya Hotel Kim Mã 3', NULL, NULL, 1, NULL, NULL, '2025-01-27 15:52:46', '2025-02-05 04:27:56', 1677, 'Hà Nội', 'Hà Nội', 1, 305, 1, '19:00:00', NULL);
INSERT INTO `requests` VALUES (124, ' Otsuka Azuki', 117, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 15:57:43', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 1, 1206, 1, '07:40:43', NULL);
INSERT INTO `requests` VALUES (125, ' Otsuka Azuki', 117, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 15:58:54', '2025-02-05 04:27:57', 1680, 'Thanh Hóa', 'Thanh Hóa', 1, 1208, 1, '17:00:00', NULL);
INSERT INTO `requests` VALUES (126, 'Takahashi Haruki', 109, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:01:26', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 1, 1214, 0, '05:17:57', NULL);
INSERT INTO `requests` VALUES (127, 'Takahashi Haruki', 109, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:02:50', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 1, 1208, 0, '17:00:00', NULL);
INSERT INTO `requests` VALUES (128, 'Tomoya Kagi', 112, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:04:04', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 5, 1214, 2, '05:17:57', NULL);
INSERT INTO `requests` VALUES (129, 'Tomoya Kagi', 112, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:05:03', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 5, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (130, 'Fujimatsu Taiki', 89, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:17:13', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 4, 1206, 2, '07:40:43', NULL);
INSERT INTO `requests` VALUES (132, 'Yamashita Manabu', 64, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:19:32', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 5, 1214, 2, '05:17:57', NULL);
INSERT INTO `requests` VALUES (133, 'Fujimatsu Taiki', 113, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:22:09', '2025-02-05 04:27:57', 1679, 'Thanh Hóa', 'Thanh Hóa', 4, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (134, 'Yamashita Manabu', 64, NULL, '2024-12-16 15:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 113, 'Khách sạn Azumaya Kim Mã 2', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:23:59', '2025-02-05 04:27:57', 1681, 'Thanh Hóa', 'Hà Nội', 5, 7982, 2, '15:00:00', NULL);
INSERT INTO `requests` VALUES (135, 'Murahashi Kazutomi', 53, NULL, '2024-12-16 07:00:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:25:15', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 6, 1214, 2, '05:17:57', NULL);
INSERT INTO `requests` VALUES (136, 'Murahashi Kazutomi', 53, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:26:06', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 6, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (137, 'Wu Shang Feng', 115, NULL, '2024-12-16 07:00:00', 0, NULL, NULL, 116, 'Khách sạn Purple Lotus', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:28:41', '2025-02-05 04:27:52', 1666, 'Hải Dương', 'Thanh Hóa', 5, 10942, 2, '07:00:00', NULL);
INSERT INTO `requests` VALUES (138, 'Wu Shang Feng', 115, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 103, 'Khách sạn Mường Thanh Thanh Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:30:21', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 5, 1498, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (139, 'Piao Long San', 116, NULL, '2024-12-16 07:35:00', 0, NULL, NULL, 109, 'Chung cư Eurowinodow Thanh Hóa', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:32:01', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 4, 1281, 2, '05:09:49', NULL);
INSERT INTO `requests` VALUES (140, 'Piao Long San', 116, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 109, 'Chung cư Eurowinodow Thanh Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:33:14', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 4, 1232, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (141, 'Nguyenthiphuong Hoa', 40, NULL, '2024-12-16 07:30:00', 0, NULL, NULL, 125, 'Hàm Nghi', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:38:06', '2025-02-05 04:27:50', 1662, 'Hà Nội', 'Hà Nội', 6, 943, 2, '08:23:50', NULL);
INSERT INTO `requests` VALUES (142, 'Nguyenthiphuong Hoa', 40, NULL, '2024-12-16 18:00:00', 0, NULL, NULL, 88, 'Capital Place', 125, 'Hàm Nghi', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:39:01', '2025-02-05 04:27:56', 1677, 'Hà Nội', 'Hà Nội', 6, 1051, 2, '19:00:00', NULL);
INSERT INTO `requests` VALUES (143, 'Nguyenthithu Hoa', 41, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:47:49', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 4, 1206, 2, '07:40:43', NULL);
INSERT INTO `requests` VALUES (144, 'Nguyenthithu Hoa', 41, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:49:20', '2025-02-05 04:27:57', 1679, 'Thanh Hóa', 'Thanh Hóa', 4, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (145, 'Nguyenthi Trang', 17, NULL, '2024-12-16 07:35:00', 0, NULL, NULL, 126, 'Cây xăng Hoằng Minh', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:52:33', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 6, 787, 2, '08:01:05', NULL);
INSERT INTO `requests` VALUES (146, 'Nguyenthi Trang', 17, NULL, '2024-12-16 05:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 126, 'Cây xăng Hoằng Minh', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:54:19', '2025-02-05 04:27:52', 1667, 'Thanh Hóa', 'Thanh Hóa', 6, 794, 2, '05:00:00', NULL);
INSERT INTO `requests` VALUES (147, 'Nguyenthithuy Duong', 29, NULL, '2024-12-16 16:00:00', 0, NULL, NULL, 88, 'Capital Place', 103, 'Khách sạn Mường Thanh Thanh Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:56:13', '2025-02-05 04:27:55', 1675, 'Hà Nội', 'Thanh Hóa', 6, 9057, 2, '16:00:00', NULL);
INSERT INTO `requests` VALUES (148, 'Nguyenanh Quynh', 83, NULL, '2024-12-16 07:00:00', 0, NULL, NULL, 127, 'Khu đô thị Ao Sào', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-27 16:59:25', '2025-02-05 04:27:50', 1662, 'Hà Nội', 'Hà Nội', 6, 1200, 2, '07:45:03', NULL);
INSERT INTO `requests` VALUES (149, 'Nguyenanh Quynh', 83, NULL, '2024-12-16 16:00:00', 0, NULL, NULL, 88, 'Capital Place', 103, 'Khách sạn Mường Thanh Thanh Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:01:14', '2025-02-05 04:27:55', 1675, 'Hà Nội', 'Thanh Hóa', 6, 9057, 2, '16:00:00', NULL);
INSERT INTO `requests` VALUES (150, 'Nguyenthihoang Yen', 11, NULL, '2024-12-16 05:15:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:02:57', '2025-02-05 04:27:53', 1668, 'Thanh Hóa', 'Hà Nội', 5, 8802, 2, '05:12:23', NULL);
INSERT INTO `requests` VALUES (151, 'Nguyenthihoang Yen', 11, NULL, '2024-12-16 16:00:00', 0, NULL, NULL, 88, 'Capital Place', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:04:21', '2025-02-05 04:27:55', 1675, 'Hà Nội', 'Thanh Hóa', 5, 8972, 2, '16:00:00', NULL);
INSERT INTO `requests` VALUES (152, 'Trinhthi Hien', 37, NULL, '2024-12-16 05:20:00', 0, NULL, NULL, 128, 'Tran Nhan Tong, Q. Hung', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:11:37', '2025-02-05 04:27:53', 1668, 'Thanh Hóa', 'Hà Nội', 6, 8998, 2, '04:45:00', NULL);
INSERT INTO `requests` VALUES (153, 'Trinhthi Hien', 37, NULL, '2024-12-16 16:00:00', 0, NULL, NULL, 88, 'Capital Place', 128, 'Tran Nhan Tong, Q. Hung', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:12:44', '2025-02-05 04:27:55', 1675, 'Hà Nội', 'Thanh Hóa', 6, 9093, 2, '16:00:00', NULL);
INSERT INTO `requests` VALUES (154, 'Hoangthi Luong', 62, NULL, '2024-12-16 05:30:00', 0, NULL, NULL, 126, 'Cây xăng Hoằng Minh', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:14:10', '2025-02-05 04:27:53', 1668, 'Thanh Hóa', 'Hà Nội', 4, 8323, 2, '06:29:31', NULL);
INSERT INTO `requests` VALUES (155, 'Hoangthi Luong', 62, NULL, '2024-12-16 16:00:00', 0, NULL, NULL, 88, 'Capital Place', 126, 'Cây xăng Hoằng Minh', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:15:27', '2025-02-05 04:27:55', 1676, 'Hà Nội', 'Thanh Hóa', 4, 8599, 2, '18:00:00', NULL);
INSERT INTO `requests` VALUES (156, 'Nguyenthi Hong', 42, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:16:43', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 6, 1206, 2, '07:40:43', NULL);
INSERT INTO `requests` VALUES (157, 'Nguyenthi Hong', 42, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:18:01', '2025-02-05 04:27:57', 1679, 'Thanh Hóa', 'Thanh Hóa', 6, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (158, 'Hoangthi Nhung', 76, NULL, '2024-12-16 06:45:00', 0, NULL, NULL, 129, 'xã Hoàng Sơn huyện Nông Cống', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:21:05', '2025-02-05 04:27:53', 1669, 'Thanh Hóa', 'Thanh Hóa', 6, 1584, 2, '06:45:00', NULL);
INSERT INTO `requests` VALUES (159, 'Hoangthi Nhung', 76, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:22:17', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 6, 1214, 2, '05:17:57', NULL);
INSERT INTO `requests` VALUES (160, 'Hoangthi Nhung', 76, NULL, '2024-12-16 13:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:23:19', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 6, 1805, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (161, 'Hoangthi Nhung', 76, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 129, 'xã Hoàng Sơn huyện Nông Cống', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:24:51', '2025-02-05 04:27:57', 1679, 'Thanh Hóa', 'Thanh Hóa', 6, 2552, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (162, 'Dothi Thu', 101, NULL, '2024-12-16 07:30:00', 0, NULL, NULL, 110, 'Siêu thị Go Thanh Hóa', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:26:34', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 6, 1126, 2, '07:50:35', NULL);
INSERT INTO `requests` VALUES (163, 'Dothi Thu', 101, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 110, 'Siêu thị Go Thanh Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:28:36', '2025-02-05 04:27:57', 1680, 'Thanh Hóa', 'Thanh Hóa', 6, 1078, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (164, 'Hoangthi Hien', 36, NULL, '2024-12-16 04:55:00', 0, NULL, NULL, 102, 'Huyện Ủy Huyện Quảng Xương', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:30:25', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 5, 1697, 2, '04:55:00', NULL);
INSERT INTO `requests` VALUES (165, 'Hoangthi Hien', 36, NULL, '2024-12-16 05:15:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:31:35', '2025-02-05 04:27:53', 1668, 'Thanh Hóa', 'Hà Nội', 5, 8802, 2, '05:12:23', NULL);
INSERT INTO `requests` VALUES (166, 'Hoangthi Hien', 36, NULL, '2024-12-16 16:00:00', 0, NULL, NULL, 88, 'Capital Place', 102, 'Huyện Ủy Huyện Quảng Xương', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:32:19', '2025-02-05 04:27:55', 1675, 'Hà Nội', 'Thanh Hóa', 5, 9095, 2, '16:00:00', NULL);
INSERT INTO `requests` VALUES (167, 'Nguyenxuan Tung', 14, NULL, '2024-12-16 07:50:00', 0, NULL, NULL, 94, 'Quận ủy hoàng mai', 119, 'Nút Giao Vực Vòng', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:39:48', '2025-02-05 04:27:53', 1670, 'Hà Nội', 'Hà Nam', 6, 3559, 2, '07:50:00', NULL);
INSERT INTO `requests` VALUES (168, 'Nguyenxuan Tung', 14, NULL, '2024-12-16 08:20:00', 0, NULL, NULL, 119, 'Nút Giao Vực Vòng', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:40:52', '2025-02-05 04:27:53', 1671, 'Hà Nam', 'Thanh Hóa', 6, 6028, 2, '08:20:00', NULL);
INSERT INTO `requests` VALUES (169, 'Buithi Huong', 47, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:41:57', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 6, 1214, 2, '05:17:57', NULL);
INSERT INTO `requests` VALUES (170, 'Buithi Huong', 47, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:43:08', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 6, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (171, 'Bachthi Phuong', 79, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:45:53', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 6, 1214, 2, '05:17:57', NULL);
INSERT INTO `requests` VALUES (172, 'Bachthi Phuong', 79, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:47:27', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 6, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (173, 'Lucthi Nhung', 77, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:48:54', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 6, 1214, 2, '05:17:57', NULL);
INSERT INTO `requests` VALUES (174, 'Lucthi Nhung', 77, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:50:59', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 6, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (175, 'Nguyenthi Bich', 26, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:52:18', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 6, 1214, 2, '05:17:57', NULL);
INSERT INTO `requests` VALUES (176, 'Nguyenthi Bich', 26, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:53:51', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 6, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (177, 'Trinhthi Thao', 96, NULL, '2024-12-16 07:00:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:55:01', '2025-02-05 04:27:51', 1664, 'Thanh Hóa', 'Thanh Hóa', 6, 1214, 2, '05:17:57', NULL);
INSERT INTO `requests` VALUES (178, 'Trinhthi Thao', 96, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-27 17:56:11', '2025-02-05 04:27:56', 1678, 'Thanh Hóa', 'Thanh Hóa', 6, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (179, 'Lethi Tam', 92, NULL, '2024-12-16 07:00:00', 0, NULL, NULL, 102, 'Huyện Ủy Huyện Quảng Xương', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 04:59:49', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 4, 1775, 2, '07:20:09', NULL);
INSERT INTO `requests` VALUES (180, 'Lethi Tam', 92, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 102, 'Huyện Ủy Huyện Quảng Xương', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:01:16', '2025-02-05 04:27:57', 1679, 'Thanh Hóa', 'Thanh Hóa', 4, 1798, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (182, 'Lethi Thuong', 102, NULL, '2024-12-16 04:45:00', 0, NULL, NULL, 131, 'Cầu Quan, Nông Cống, TH', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:08:46', '2025-02-05 04:27:53', 1668, 'Thanh Hóa', 'Hà Nội', 6, 8778, 2, '05:49:53', NULL);
INSERT INTO `requests` VALUES (183, 'Lethi Thuong', 102, NULL, '2024-12-16 16:00:00', 0, NULL, NULL, 88, 'Capital Place', 131, 'Cầu Quan, Nông Cống, TH', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:09:48', '2025-02-05 04:27:55', 1676, 'Hà Nội', 'Thanh Hóa', 6, 8933, 2, '18:00:00', NULL);
INSERT INTO `requests` VALUES (184, 'Dohong Hue', 45, NULL, '2024-12-16 07:00:00', 0, NULL, NULL, 132, 'Đồng Thắng, Triệu Sơn, Thanh Hóa', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:11:56', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 6, 1898, 2, '07:00:00', NULL);
INSERT INTO `requests` VALUES (185, 'Dohong Hue', 45, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 132, 'Đồng Thắng, Triệu Sơn, Thanh Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:13:22', '2025-02-05 04:27:57', 1679, 'Thanh Hóa', 'Thanh Hóa', 6, 1882, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (186, 'Nguyenthi Giang', 32, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:14:45', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 6, 1206, 2, '07:40:43', NULL);
INSERT INTO `requests` VALUES (187, 'Nguyenthi Giang', 32, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:16:25', '2025-02-05 04:27:57', 1680, 'Thanh Hóa', 'Thanh Hóa', 6, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (188, 'Huuduy Tong', 19, NULL, '2024-12-16 07:20:00', 0, NULL, NULL, 101, 'Khách sạn Vinpearl Thanh Hoá', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:19:26', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 6, 1206, 2, '07:40:43', NULL);
INSERT INTO `requests` VALUES (189, 'Huuduy Tong', 19, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 101, 'Khách sạn Vinpearl Thanh Hoá', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:20:34', '2025-02-05 04:27:57', 1680, 'Thanh Hóa', 'Thanh Hóa', 6, 1208, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (190, 'Nguyenthi Phuong', 81, NULL, '2024-12-16 07:30:00', 0, NULL, NULL, 110, 'Siêu thị Go Thanh Hóa', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:21:46', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 6, 1126, 2, '07:50:35', NULL);
INSERT INTO `requests` VALUES (191, 'Nguyenthi Phuong', 81, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 110, 'Siêu thị Go Thanh Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:23:04', '2025-02-05 04:27:57', 1680, 'Thanh Hóa', 'Thanh Hóa', 6, 1078, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (192, 'Lethingoc Anh', 22, NULL, '2024-12-16 07:30:00', 0, NULL, NULL, 110, 'Siêu thị Go Thanh Hóa', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:24:59', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 6, 1126, 2, '07:50:35', NULL);
INSERT INTO `requests` VALUES (193, 'Lethingoc Anh', 22, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 110, 'Siêu thị Go Thanh Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:26:15', '2025-02-05 04:27:57', 1680, 'Thanh Hóa', 'Thanh Hóa', 6, 1078, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (194, 'Thieuthicam Tu', 15, NULL, '2024-12-16 07:30:00', 0, NULL, NULL, 110, 'Siêu thị Go Thanh Hóa', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:28:19', '2025-02-05 04:27:52', 1665, 'Thanh Hóa', 'Thanh Hóa', 6, 1126, 2, '07:50:35', NULL);
INSERT INTO `requests` VALUES (195, 'Thieuthicam Tu', 15, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 110, 'Siêu thị Go Thanh Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:29:35', '2025-02-05 04:27:57', 1680, 'Thanh Hóa', 'Thanh Hóa', 6, 1078, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (196, 'Nguyenthi Hoa', 39, NULL, '2024-12-16 19:00:00', 0, NULL, NULL, 132, 'Đồng Thắng, Triệu Sơn, Thanh Hóa', 100, 'Công Ty Sakurai Hoằng Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:30:45', '2025-02-05 04:27:57', 1682, 'Thanh Hóa', 'Thanh Hóa', 4, 1898, 2, '19:00:00', NULL);
INSERT INTO `requests` VALUES (197, 'Nguyenthi Hoa', 39, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 100, 'Công Ty Sakurai Hoằng Hóa', 132, 'Đồng Thắng, Triệu Sơn, Thanh Hóa', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:31:53', '2025-02-05 04:27:57', 1679, 'Thanh Hóa', 'Thanh Hóa', 4, 1882, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (198, 'Lethibao Ngoc', 69, NULL, '2024-12-16 05:00:00', 0, NULL, NULL, 111, 'Kí túc xá Nam Định', 94, 'Quận ủy hoàng mai', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:33:50', '2025-02-05 04:27:53', 1672, 'Nam Định', 'Hà Nội', 6, 6329, 2, '05:00:00', NULL);
INSERT INTO `requests` VALUES (199, 'Lethibao Ngoc', 69, NULL, '2024-12-16 07:30:00', 0, NULL, NULL, 94, 'Quận ủy hoàng mai', 88, 'Capital Place', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:34:55', '2025-02-05 04:27:50', 1662, 'Hà Nội', 'Hà Nội', 6, 1660, 2, '07:00:00', NULL);
INSERT INTO `requests` VALUES (200, 'Lethibao Ngoc', 69, NULL, '2024-12-16 16:00:00', 0, NULL, NULL, 88, 'Capital Place', 98, 'Nút Giao Liêm Tuyền', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:35:46', '2025-02-05 04:27:57', 1683, 'Hà Nội', 'Hà Nam', 6, 3564, 2, '16:00:00', NULL);
INSERT INTO `requests` VALUES (201, 'Lethibao Ngoc', 69, NULL, '2024-12-16 17:30:00', 0, NULL, NULL, 98, 'Nút Giao Liêm Tuyền', 111, 'Kí túc xá Nam Định', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:37:00', '2025-02-05 04:27:57', 1684, 'Hà Nam', 'Nam Định', 6, 5725, 2, '17:30:00', NULL);
INSERT INTO `requests` VALUES (202, 'Phamthimai Duyen', 30, NULL, '2024-12-16 04:00:00', 0, NULL, NULL, 133, 'Ga Phạm Xá', 121, 'Nhà máy TOPT', NULL, NULL, 1, NULL, NULL, '2025-01-28 05:59:22', '2025-02-05 04:27:53', 1673, 'Hải Dương', ' Nam Định', 6, 13381, 2, '04:00:00', NULL);
INSERT INTO `requests` VALUES (203, 'Phamthimai Duyen', 30, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 121, 'Nhà máy TOPT', 111, 'Kí túc xá Nam Định', NULL, NULL, 1, NULL, NULL, '2025-01-28 06:00:23', '2025-02-05 04:27:58', 1685, 'Nam Định', 'Nam Định', 6, 5373, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (204, 'Tranthihong Nhung', 78, NULL, '2024-12-16 07:30:00', 0, NULL, NULL, 111, 'Kí túc xá Nam Định', 121, 'Nhà máy TOPT', NULL, NULL, 1, NULL, NULL, '2025-01-28 06:02:00', '2025-02-05 04:27:54', 1674, 'Nam Định', 'Nam Định', 6, 5407, 2, '08:34:43', NULL);
INSERT INTO `requests` VALUES (205, 'Tranthihong Nhung', 78, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 121, 'Nhà máy TOPT', 111, 'Kí túc xá Nam Định', NULL, NULL, 1, NULL, NULL, '2025-01-28 06:03:21', '2025-02-05 04:27:58', 1685, 'Nam Định', 'Nam Định', 6, 5381, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (207, 'Thithuvan Nguyen', 72, NULL, '2024-12-16 06:20:00', 0, NULL, NULL, 135, 'Big C NĐ', 121, 'Nhà máy TOPT', NULL, NULL, 1, NULL, NULL, '2025-01-28 06:27:22', '2025-02-05 04:27:54', 1674, 'Nam Định', 'Nam Định', 6, 10762, 2, '06:20:00', NULL);
INSERT INTO `requests` VALUES (208, 'Thithuvan Nguyen', 72, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 121, 'Nhà máy TOPT', 111, 'Kí túc xá Nam Định', NULL, NULL, 1, NULL, NULL, '2025-01-28 06:29:14', '2025-02-05 04:27:58', 1685, 'Nam Định', 'Nam Định', 6, 5381, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (209, 'Nguyenthingoc Loan', 59, NULL, '2024-12-16 07:30:00', 0, NULL, NULL, 111, 'Kí túc xá Nam Định', 121, 'Nhà máy TOPT', NULL, NULL, 1, NULL, NULL, '2025-01-28 06:30:40', '2025-02-05 04:27:54', 1674, 'Nam Định', 'Nam Định', 6, 5406, 2, '08:34:43', NULL);
INSERT INTO `requests` VALUES (210, 'Nguyenthingoc Loan', 59, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 121, 'Nhà máy TOPT', 111, 'Kí túc xá Nam Định', NULL, NULL, 1, NULL, NULL, '2025-01-28 06:31:40', '2025-02-05 04:27:58', 1685, 'Nam Định', 'Nam Định', 6, 5381, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (211, 'Buihong Nhung', 74, NULL, '2024-12-16 07:30:00', 0, NULL, NULL, 111, 'Kí túc xá Nam Định', 121, 'Nhà máy TOPT', NULL, NULL, 1, NULL, NULL, '2025-01-28 06:33:03', '2025-02-05 04:27:54', 1674, 'Nam Định', 'Nam Định', 6, 5406, 2, '08:34:43', NULL);
INSERT INTO `requests` VALUES (212, 'Buihong Nhung', 74, NULL, '2024-12-16 17:00:00', 0, NULL, NULL, 121, 'Nhà máy TOPT', 111, 'Kí túc xá Nam Định', NULL, NULL, 1, NULL, NULL, '2025-01-28 06:34:14', '2025-02-05 04:27:58', 1685, 'Nam Định', 'Nam Định', 6, 5381, 2, '17:00:00', NULL);
INSERT INTO `requests` VALUES (213, 'Tranthi Khanh', 55, NULL, '2024-12-16 05:15:00', 0, NULL, NULL, 99, 'Nhà máy Sakurai 1 Lễ môn', 88, 'Capital Place', '323232323', NULL, 1, NULL, NULL, '2025-02-01 02:44:40', '2025-02-05 04:27:53', 1668, 'Thanh Hóa', 'Hà Nội', 4, 8802, 2, '05:12:23', NULL);
INSERT INTO `requests` VALUES (214, 'Tranthi Khanh', 55, NULL, '2024-12-16 16:00:00', 0, NULL, NULL, 88, 'Capital Place', 99, 'Nhà máy Sakurai 1 Lễ môn', NULL, NULL, 1, NULL, NULL, '2025-02-01 02:46:17', '2025-02-05 04:27:55', 1676, 'Hà Nội', 'Thanh Hóa', 4, 8971, 2, '18:00:00', NULL);

-- ----------------------------
-- Table structure for time-et
-- ----------------------------
DROP TABLE IF EXISTS `time-et`;
CREATE TABLE `time-et`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `from_id` int NOT NULL,
  `to_id` int NOT NULL,
  `time_et` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 871 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of time-et
-- ----------------------------
INSERT INTO `time-et` VALUES (310, 88, 89, 189, '2025-01-26 15:21:22', '2025-01-26 15:21:22');
INSERT INTO `time-et` VALUES (311, 88, 90, 305, '2025-01-26 15:21:23', '2025-01-26 15:21:23');
INSERT INTO `time-et` VALUES (312, 88, 91, 952, '2025-01-26 15:21:24', '2025-01-26 15:21:24');
INSERT INTO `time-et` VALUES (313, 88, 92, 1005, '2025-01-26 15:21:25', '2025-01-26 15:21:25');
INSERT INTO `time-et` VALUES (314, 88, 93, 928, '2025-01-26 15:21:26', '2025-01-26 15:21:26');
INSERT INTO `time-et` VALUES (315, 88, 94, 1610, '2025-01-26 15:21:28', '2025-01-26 15:21:28');
INSERT INTO `time-et` VALUES (316, 88, 95, 3921, '2025-01-26 15:21:30', '2025-01-26 15:21:30');
INSERT INTO `time-et` VALUES (317, 88, 96, 864, '2025-01-26 15:21:31', '2025-01-26 15:21:31');
INSERT INTO `time-et` VALUES (318, 88, 97, 3544, '2025-01-26 15:21:32', '2025-01-26 15:21:32');
INSERT INTO `time-et` VALUES (319, 88, 98, 3534, '2025-01-26 15:21:33', '2025-01-26 15:21:33');
INSERT INTO `time-et` VALUES (320, 88, 99, 9707, '2025-01-26 15:21:35', '2025-01-26 15:21:35');
INSERT INTO `time-et` VALUES (321, 88, 100, 8880, '2025-01-26 15:21:36', '2025-01-26 15:21:36');
INSERT INTO `time-et` VALUES (322, 88, 101, 9521, '2025-01-26 15:21:38', '2025-01-26 15:21:38');
INSERT INTO `time-et` VALUES (323, 88, 102, 9851, '2025-01-26 15:21:39', '2025-01-26 15:21:39');
INSERT INTO `time-et` VALUES (324, 88, 103, 9792, '2025-01-26 15:21:41', '2025-01-26 15:21:41');
INSERT INTO `time-et` VALUES (325, 88, 104, 5001, '2025-01-26 15:21:43', '2025-01-26 15:21:43');
INSERT INTO `time-et` VALUES (326, 88, 105, 5209, '2025-01-26 15:21:44', '2025-01-26 15:21:44');
INSERT INTO `time-et` VALUES (327, 88, 106, 1691, '2025-01-26 15:21:45', '2025-01-26 15:21:45');
INSERT INTO `time-et` VALUES (328, 88, 107, 500, '2025-01-26 15:21:46', '2025-01-26 15:21:46');
INSERT INTO `time-et` VALUES (329, 88, 108, 649, '2025-01-26 15:21:48', '2025-01-26 15:21:48');
INSERT INTO `time-et` VALUES (330, 88, 109, 9635, '2025-01-26 15:21:49', '2025-01-26 15:21:49');
INSERT INTO `time-et` VALUES (331, 88, 110, 9564, '2025-01-26 15:21:51', '2025-01-26 15:21:51');
INSERT INTO `time-et` VALUES (332, 88, 111, 6882, '2025-01-26 15:21:53', '2025-01-26 15:21:53');
INSERT INTO `time-et` VALUES (333, 88, 112, 1984, '2025-01-26 15:21:54', '2025-01-26 15:21:54');
INSERT INTO `time-et` VALUES (334, 88, 113, 278, '2025-01-26 15:21:56', '2025-01-26 15:21:56');
INSERT INTO `time-et` VALUES (335, 88, 114, 866, '2025-01-26 15:21:57', '2025-01-26 15:21:57');
INSERT INTO `time-et` VALUES (336, 88, 115, 1217, '2025-01-26 15:21:58', '2025-01-26 15:21:58');
INSERT INTO `time-et` VALUES (337, 88, 116, 4304, '2025-01-26 15:22:00', '2025-01-26 15:22:00');
INSERT INTO `time-et` VALUES (338, 88, 118, 4304, '2025-01-26 15:22:01', '2025-01-26 15:22:01');
INSERT INTO `time-et` VALUES (339, 88, 119, 2960, '2025-01-26 15:22:02', '2025-01-26 15:22:02');
INSERT INTO `time-et` VALUES (340, 88, 120, 10689, '2025-01-26 15:22:04', '2025-01-26 15:22:04');
INSERT INTO `time-et` VALUES (341, 88, 121, 8368, '2025-01-26 15:22:06', '2025-01-26 15:22:06');
INSERT INTO `time-et` VALUES (342, 88, 122, 1188, '2025-01-26 15:22:07', '2025-01-26 15:22:07');
INSERT INTO `time-et` VALUES (343, 89, 90, 406, '2025-01-26 15:22:09', '2025-01-26 15:22:09');
INSERT INTO `time-et` VALUES (344, 89, 91, 872, '2025-01-26 15:22:10', '2025-01-26 15:22:10');
INSERT INTO `time-et` VALUES (345, 89, 92, 1128, '2025-01-26 15:22:11', '2025-01-26 15:22:11');
INSERT INTO `time-et` VALUES (346, 89, 93, 792, '2025-01-26 15:22:12', '2025-01-26 15:22:12');
INSERT INTO `time-et` VALUES (347, 89, 94, 1691, '2025-01-26 15:22:13', '2025-01-26 15:22:13');
INSERT INTO `time-et` VALUES (348, 89, 95, 4008, '2025-01-26 15:22:15', '2025-01-26 15:22:15');
INSERT INTO `time-et` VALUES (349, 89, 96, 909, '2025-01-26 15:22:16', '2025-01-26 15:22:16');
INSERT INTO `time-et` VALUES (350, 89, 97, 3355, '2025-01-26 15:22:18', '2025-01-26 15:22:18');
INSERT INTO `time-et` VALUES (351, 89, 98, 3670, '2025-01-26 15:22:19', '2025-01-26 15:22:19');
INSERT INTO `time-et` VALUES (352, 89, 99, 9525, '2025-01-26 15:22:20', '2025-01-26 15:22:20');
INSERT INTO `time-et` VALUES (353, 89, 100, 8610, '2025-01-26 15:22:22', '2025-01-26 15:22:22');
INSERT INTO `time-et` VALUES (354, 89, 101, 9339, '2025-01-26 15:22:23', '2025-01-26 15:22:23');
INSERT INTO `time-et` VALUES (355, 89, 102, 9648, '2025-01-26 15:22:25', '2025-01-26 15:22:25');
INSERT INTO `time-et` VALUES (356, 89, 103, 9610, '2025-01-26 15:22:26', '2025-01-26 15:22:26');
INSERT INTO `time-et` VALUES (357, 89, 104, 5136, '2025-01-26 15:22:27', '2025-01-26 15:22:27');
INSERT INTO `time-et` VALUES (358, 89, 105, 5323, '2025-01-26 15:22:29', '2025-01-26 15:22:29');
INSERT INTO `time-et` VALUES (359, 89, 106, 1465, '2025-01-26 15:22:30', '2025-01-26 15:22:30');
INSERT INTO `time-et` VALUES (360, 89, 107, 623, '2025-01-26 15:22:31', '2025-01-26 15:22:31');
INSERT INTO `time-et` VALUES (361, 89, 108, 462, '2025-01-26 15:22:32', '2025-01-26 15:22:32');
INSERT INTO `time-et` VALUES (362, 89, 109, 9420, '2025-01-26 15:22:34', '2025-01-26 15:22:34');
INSERT INTO `time-et` VALUES (363, 89, 110, 9360, '2025-01-26 15:22:35', '2025-01-26 15:22:35');
INSERT INTO `time-et` VALUES (364, 89, 111, 6967, '2025-01-26 15:22:37', '2025-01-26 15:22:37');
INSERT INTO `time-et` VALUES (365, 89, 112, 1758, '2025-01-26 15:22:39', '2025-01-26 15:22:39');
INSERT INTO `time-et` VALUES (366, 89, 113, 335, '2025-01-26 15:22:40', '2025-01-26 15:22:40');
INSERT INTO `time-et` VALUES (367, 89, 114, 989, '2025-01-26 15:22:41', '2025-01-26 15:22:41');
INSERT INTO `time-et` VALUES (368, 89, 115, 1081, '2025-01-26 15:22:42', '2025-01-26 15:22:42');
INSERT INTO `time-et` VALUES (369, 89, 116, 4414, '2025-01-26 15:22:43', '2025-01-26 15:22:43');
INSERT INTO `time-et` VALUES (370, 89, 118, 4414, '2025-01-26 15:22:44', '2025-01-26 15:22:44');
INSERT INTO `time-et` VALUES (371, 89, 119, 3044, '2025-01-26 15:22:46', '2025-01-26 15:22:46');
INSERT INTO `time-et` VALUES (372, 89, 120, 10365, '2025-01-26 15:22:47', '2025-01-26 15:22:47');
INSERT INTO `time-et` VALUES (373, 89, 121, 8469, '2025-01-26 15:22:50', '2025-01-26 15:22:50');
INSERT INTO `time-et` VALUES (374, 89, 122, 1289, '2025-01-26 15:22:51', '2025-01-26 15:22:51');
INSERT INTO `time-et` VALUES (375, 90, 91, 1084, '2025-01-26 15:22:52', '2025-01-26 15:22:52');
INSERT INTO `time-et` VALUES (376, 90, 92, 1112, '2025-01-26 15:22:53', '2025-01-26 15:22:53');
INSERT INTO `time-et` VALUES (377, 90, 93, 794, '2025-01-26 15:22:55', '2025-01-26 15:22:55');
INSERT INTO `time-et` VALUES (378, 90, 94, 1573, '2025-01-26 15:22:56', '2025-01-26 15:22:56');
INSERT INTO `time-et` VALUES (379, 90, 95, 3920, '2025-01-26 15:22:58', '2025-01-26 15:22:58');
INSERT INTO `time-et` VALUES (380, 90, 96, 829, '2025-01-26 15:22:59', '2025-01-26 15:22:59');
INSERT INTO `time-et` VALUES (381, 90, 97, 3558, '2025-01-26 15:23:00', '2025-01-26 15:23:00');
INSERT INTO `time-et` VALUES (382, 90, 98, 3551, '2025-01-26 15:23:01', '2025-01-26 15:23:01');
INSERT INTO `time-et` VALUES (383, 90, 99, 9433, '2025-01-26 15:23:03', '2025-01-26 15:23:03');
INSERT INTO `time-et` VALUES (384, 90, 100, 8525, '2025-01-26 15:23:05', '2025-01-26 15:23:05');
INSERT INTO `time-et` VALUES (385, 90, 101, 9247, '2025-01-26 15:23:06', '2025-01-26 15:23:06');
INSERT INTO `time-et` VALUES (386, 90, 102, 9557, '2025-01-26 15:23:07', '2025-01-26 15:23:07');
INSERT INTO `time-et` VALUES (387, 90, 103, 9519, '2025-01-26 15:23:09', '2025-01-26 15:23:09');
INSERT INTO `time-et` VALUES (388, 90, 104, 5031, '2025-01-26 15:23:10', '2025-01-26 15:23:10');
INSERT INTO `time-et` VALUES (389, 90, 105, 5217, '2025-01-26 15:23:11', '2025-01-26 15:23:11');
INSERT INTO `time-et` VALUES (390, 90, 106, 1722, '2025-01-26 15:23:12', '2025-01-26 15:23:12');
INSERT INTO `time-et` VALUES (391, 90, 107, 627, '2025-01-26 15:23:13', '2025-01-26 15:23:13');
INSERT INTO `time-et` VALUES (392, 90, 108, 646, '2025-01-26 15:23:15', '2025-01-26 15:23:15');
INSERT INTO `time-et` VALUES (393, 90, 109, 9342, '2025-01-26 15:23:16', '2025-01-26 15:23:16');
INSERT INTO `time-et` VALUES (394, 90, 110, 9280, '2025-01-26 15:23:18', '2025-01-26 15:23:18');
INSERT INTO `time-et` VALUES (395, 90, 111, 6838, '2025-01-26 15:23:20', '2025-01-26 15:23:20');
INSERT INTO `time-et` VALUES (396, 90, 112, 2015, '2025-01-26 15:23:21', '2025-01-26 15:23:21');
INSERT INTO `time-et` VALUES (397, 90, 113, 130, '2025-01-26 15:23:22', '2025-01-26 15:23:22');
INSERT INTO `time-et` VALUES (398, 90, 114, 903, '2025-01-26 15:23:23', '2025-01-26 15:23:23');
INSERT INTO `time-et` VALUES (399, 90, 115, 1083, '2025-01-26 15:23:25', '2025-01-26 15:23:25');
INSERT INTO `time-et` VALUES (400, 90, 116, 4322, '2025-01-26 15:23:26', '2025-01-26 15:23:26');
INSERT INTO `time-et` VALUES (401, 90, 118, 4321, '2025-01-26 15:23:27', '2025-01-26 15:23:27');
INSERT INTO `time-et` VALUES (402, 90, 119, 2950, '2025-01-26 15:23:28', '2025-01-26 15:23:28');
INSERT INTO `time-et` VALUES (403, 90, 120, 10244, '2025-01-26 15:23:30', '2025-01-26 15:23:30');
INSERT INTO `time-et` VALUES (404, 90, 121, 8331, '2025-01-26 15:23:33', '2025-01-26 15:23:33');
INSERT INTO `time-et` VALUES (405, 90, 122, 1151, '2025-01-26 15:23:34', '2025-01-26 15:23:34');
INSERT INTO `time-et` VALUES (406, 91, 92, 1178, '2025-01-26 15:23:35', '2025-01-26 15:23:35');
INSERT INTO `time-et` VALUES (407, 91, 93, 1469, '2025-01-26 15:23:37', '2025-01-26 15:23:37');
INSERT INTO `time-et` VALUES (408, 91, 94, 2425, '2025-01-26 15:23:38', '2025-01-26 15:23:38');
INSERT INTO `time-et` VALUES (409, 91, 95, 3761, '2025-01-26 15:23:40', '2025-01-26 15:23:40');
INSERT INTO `time-et` VALUES (410, 91, 96, 1586, '2025-01-26 15:23:42', '2025-01-26 15:23:42');
INSERT INTO `time-et` VALUES (411, 91, 97, 3305, '2025-01-26 15:23:43', '2025-01-26 15:23:43');
INSERT INTO `time-et` VALUES (412, 91, 98, 4037, '2025-01-26 15:23:45', '2025-01-26 15:23:45');
INSERT INTO `time-et` VALUES (413, 91, 99, 9924, '2025-01-26 15:23:46', '2025-01-26 15:23:46');
INSERT INTO `time-et` VALUES (414, 91, 100, 9016, '2025-01-26 15:23:48', '2025-01-26 15:23:48');
INSERT INTO `time-et` VALUES (415, 91, 101, 9738, '2025-01-26 15:23:49', '2025-01-26 15:23:49');
INSERT INTO `time-et` VALUES (416, 91, 102, 10048, '2025-01-26 15:23:50', '2025-01-26 15:23:50');
INSERT INTO `time-et` VALUES (417, 91, 103, 10010, '2025-01-26 15:23:52', '2025-01-26 15:23:52');
INSERT INTO `time-et` VALUES (418, 91, 104, 5504, '2025-01-26 15:23:54', '2025-01-26 15:23:54');
INSERT INTO `time-et` VALUES (419, 91, 105, 5691, '2025-01-26 15:23:55', '2025-01-26 15:23:55');
INSERT INTO `time-et` VALUES (420, 91, 106, 1436, '2025-01-26 15:23:56', '2025-01-26 15:23:56');
INSERT INTO `time-et` VALUES (421, 91, 107, 910, '2025-01-26 15:23:57', '2025-01-26 15:23:57');
INSERT INTO `time-et` VALUES (422, 91, 108, 964, '2025-01-26 15:23:58', '2025-01-26 15:23:58');
INSERT INTO `time-et` VALUES (423, 91, 109, 9820, '2025-01-26 15:24:00', '2025-01-26 15:24:00');
INSERT INTO `time-et` VALUES (424, 91, 110, 9760, '2025-01-26 15:24:01', '2025-01-26 15:24:01');
INSERT INTO `time-et` VALUES (425, 91, 111, 7646, '2025-01-26 15:24:04', '2025-01-26 15:24:04');
INSERT INTO `time-et` VALUES (426, 91, 112, 1726, '2025-01-26 15:24:05', '2025-01-26 15:24:05');
INSERT INTO `time-et` VALUES (427, 91, 113, 1103, '2025-01-26 15:24:06', '2025-01-26 15:24:06');
INSERT INTO `time-et` VALUES (428, 91, 114, 1047, '2025-01-26 15:24:08', '2025-01-26 15:24:08');
INSERT INTO `time-et` VALUES (429, 91, 115, 1758, '2025-01-26 15:24:09', '2025-01-26 15:24:09');
INSERT INTO `time-et` VALUES (430, 91, 116, 4145, '2025-01-26 15:24:10', '2025-01-26 15:24:10');
INSERT INTO `time-et` VALUES (431, 91, 118, 4145, '2025-01-26 15:24:12', '2025-01-26 15:24:12');
INSERT INTO `time-et` VALUES (432, 91, 119, 3412, '2025-01-26 15:24:13', '2025-01-26 15:24:13');
INSERT INTO `time-et` VALUES (433, 91, 120, 10728, '2025-01-26 15:24:15', '2025-01-26 15:24:15');
INSERT INTO `time-et` VALUES (434, 91, 121, 9175, '2025-01-26 15:24:17', '2025-01-26 15:24:17');
INSERT INTO `time-et` VALUES (435, 91, 122, 1998, '2025-01-26 15:24:18', '2025-01-26 15:24:18');
INSERT INTO `time-et` VALUES (436, 92, 93, 1500, '2025-01-26 15:24:20', '2025-01-26 15:24:20');
INSERT INTO `time-et` VALUES (437, 92, 94, 2188, '2025-01-26 15:24:21', '2025-01-26 15:24:21');
INSERT INTO `time-et` VALUES (438, 92, 95, 3641, '2025-01-26 15:24:23', '2025-01-26 15:24:23');
INSERT INTO `time-et` VALUES (439, 92, 96, 1444, '2025-01-26 15:24:24', '2025-01-26 15:24:24');
INSERT INTO `time-et` VALUES (440, 92, 97, 3259, '2025-01-26 15:24:26', '2025-01-26 15:24:26');
INSERT INTO `time-et` VALUES (441, 92, 98, 3333, '2025-01-26 15:24:27', '2025-01-26 15:24:27');
INSERT INTO `time-et` VALUES (442, 92, 99, 9188, '2025-01-26 15:24:28', '2025-01-26 15:24:28');
INSERT INTO `time-et` VALUES (443, 92, 100, 8280, '2025-01-26 15:24:30', '2025-01-26 15:24:30');
INSERT INTO `time-et` VALUES (444, 92, 101, 9002, '2025-01-26 15:24:32', '2025-01-26 15:24:32');
INSERT INTO `time-et` VALUES (445, 92, 102, 9312, '2025-01-26 15:24:33', '2025-01-26 15:24:33');
INSERT INTO `time-et` VALUES (446, 92, 103, 9274, '2025-01-26 15:24:34', '2025-01-26 15:24:34');
INSERT INTO `time-et` VALUES (447, 92, 104, 4801, '2025-01-26 15:24:36', '2025-01-26 15:24:36');
INSERT INTO `time-et` VALUES (448, 92, 105, 4987, '2025-01-26 15:24:37', '2025-01-26 15:24:37');
INSERT INTO `time-et` VALUES (449, 92, 106, 2386, '2025-01-26 15:24:38', '2025-01-26 15:24:38');
INSERT INTO `time-et` VALUES (450, 92, 107, 626, '2025-01-26 15:24:39', '2025-01-26 15:24:39');
INSERT INTO `time-et` VALUES (451, 92, 108, 1353, '2025-01-26 15:24:40', '2025-01-26 15:24:40');
INSERT INTO `time-et` VALUES (452, 92, 109, 9109, '2025-01-26 15:24:42', '2025-01-26 15:24:42');
INSERT INTO `time-et` VALUES (453, 92, 110, 9025, '2025-01-26 15:24:43', '2025-01-26 15:24:43');
INSERT INTO `time-et` VALUES (454, 92, 111, 7395, '2025-01-26 15:24:46', '2025-01-26 15:24:46');
INSERT INTO `time-et` VALUES (455, 92, 112, 2729, '2025-01-26 15:24:47', '2025-01-26 15:24:47');
INSERT INTO `time-et` VALUES (456, 92, 113, 836, '2025-01-26 15:24:48', '2025-01-26 15:24:48');
INSERT INTO `time-et` VALUES (457, 92, 114, 403, '2025-01-26 15:24:50', '2025-01-26 15:24:50');
INSERT INTO `time-et` VALUES (458, 92, 115, 1789, '2025-01-26 15:24:51', '2025-01-26 15:24:51');
INSERT INTO `time-et` VALUES (459, 92, 116, 4033, '2025-01-26 15:24:52', '2025-01-26 15:24:52');
INSERT INTO `time-et` VALUES (460, 92, 118, 4033, '2025-01-26 15:24:54', '2025-01-26 15:24:54');
INSERT INTO `time-et` VALUES (461, 92, 119, 2711, '2025-01-26 15:24:55', '2025-01-26 15:24:55');
INSERT INTO `time-et` VALUES (462, 92, 120, 10019, '2025-01-26 15:24:57', '2025-01-26 15:24:57');
INSERT INTO `time-et` VALUES (463, 92, 121, 8947, '2025-01-26 15:25:00', '2025-01-26 15:25:00');
INSERT INTO `time-et` VALUES (464, 92, 122, 1769, '2025-01-26 15:25:01', '2025-01-26 15:25:01');
INSERT INTO `time-et` VALUES (465, 93, 94, 1426, '2025-01-26 15:25:02', '2025-01-26 15:25:02');
INSERT INTO `time-et` VALUES (466, 93, 95, 4166, '2025-01-26 15:25:04', '2025-01-26 15:25:04');
INSERT INTO `time-et` VALUES (467, 93, 96, 371, '2025-01-26 15:25:05', '2025-01-26 15:25:05');
INSERT INTO `time-et` VALUES (468, 93, 97, 3742, '2025-01-26 15:25:07', '2025-01-26 15:25:07');
INSERT INTO `time-et` VALUES (469, 93, 98, 3524, '2025-01-26 15:25:08', '2025-01-26 15:25:08');
INSERT INTO `time-et` VALUES (470, 93, 99, 9410, '2025-01-26 15:25:09', '2025-01-26 15:25:09');
INSERT INTO `time-et` VALUES (471, 93, 100, 8467, '2025-01-26 15:25:11', '2025-01-26 15:25:11');
INSERT INTO `time-et` VALUES (472, 93, 101, 9197, '2025-01-26 15:25:12', '2025-01-26 15:25:12');
INSERT INTO `time-et` VALUES (473, 93, 102, 9506, '2025-01-26 15:25:14', '2025-01-26 15:25:14');
INSERT INTO `time-et` VALUES (474, 93, 103, 9468, '2025-01-26 15:25:15', '2025-01-26 15:25:15');
INSERT INTO `time-et` VALUES (475, 93, 104, 4988, '2025-01-26 15:25:16', '2025-01-26 15:25:16');
INSERT INTO `time-et` VALUES (476, 93, 105, 5174, '2025-01-26 15:25:18', '2025-01-26 15:25:18');
INSERT INTO `time-et` VALUES (477, 93, 106, 2060, '2025-01-26 15:25:19', '2025-01-26 15:25:19');
INSERT INTO `time-et` VALUES (478, 93, 107, 1207, '2025-01-26 15:25:20', '2025-01-26 15:25:20');
INSERT INTO `time-et` VALUES (479, 93, 108, 774, '2025-01-26 15:25:21', '2025-01-26 15:25:21');
INSERT INTO `time-et` VALUES (480, 93, 109, 9279, '2025-01-26 15:25:23', '2025-01-26 15:25:23');
INSERT INTO `time-et` VALUES (481, 93, 110, 9219, '2025-01-26 15:25:24', '2025-01-26 15:25:24');
INSERT INTO `time-et` VALUES (482, 93, 111, 6676, '2025-01-26 15:25:26', '2025-01-26 15:25:26');
INSERT INTO `time-et` VALUES (483, 93, 112, 2168, '2025-01-26 15:25:28', '2025-01-26 15:25:28');
INSERT INTO `time-et` VALUES (484, 93, 113, 765, '2025-01-26 15:25:29', '2025-01-26 15:25:29');
INSERT INTO `time-et` VALUES (485, 93, 114, 1458, '2025-01-26 15:25:30', '2025-01-26 15:25:30');
INSERT INTO `time-et` VALUES (486, 93, 115, 451, '2025-01-26 15:25:32', '2025-01-26 15:25:32');
INSERT INTO `time-et` VALUES (487, 93, 116, 4535, '2025-01-26 15:25:33', '2025-01-26 15:25:33');
INSERT INTO `time-et` VALUES (488, 93, 118, 4535, '2025-01-26 15:25:34', '2025-01-26 15:25:34');
INSERT INTO `time-et` VALUES (489, 93, 119, 2903, '2025-01-26 15:25:35', '2025-01-26 15:25:35');
INSERT INTO `time-et` VALUES (490, 93, 120, 10187, '2025-01-26 15:25:37', '2025-01-26 15:25:37');
INSERT INTO `time-et` VALUES (491, 93, 121, 8186, '2025-01-26 15:25:40', '2025-01-26 15:25:40');
INSERT INTO `time-et` VALUES (492, 93, 122, 1006, '2025-01-26 15:25:41', '2025-01-26 15:25:41');
INSERT INTO `time-et` VALUES (493, 94, 95, 4890, '2025-01-26 15:25:43', '2025-01-26 15:25:43');
INSERT INTO `time-et` VALUES (494, 94, 96, 1238, '2025-01-26 15:25:44', '2025-01-26 15:25:44');
INSERT INTO `time-et` VALUES (495, 94, 97, 4431, '2025-01-26 15:25:46', '2025-01-26 15:25:46');
INSERT INTO `time-et` VALUES (496, 94, 98, 4176, '2025-01-26 15:25:47', '2025-01-26 15:25:47');
INSERT INTO `time-et` VALUES (497, 94, 99, 10016, '2025-01-26 15:25:49', '2025-01-26 15:25:49');
INSERT INTO `time-et` VALUES (498, 94, 100, 9107, '2025-01-26 15:25:50', '2025-01-26 15:25:50');
INSERT INTO `time-et` VALUES (499, 94, 101, 9845, '2025-01-26 15:25:52', '2025-01-26 15:25:52');
INSERT INTO `time-et` VALUES (500, 94, 102, 10154, '2025-01-26 15:25:53', '2025-01-26 15:25:53');
INSERT INTO `time-et` VALUES (501, 94, 103, 10100, '2025-01-26 15:25:55', '2025-01-26 15:25:55');
INSERT INTO `time-et` VALUES (502, 94, 104, 5627, '2025-01-26 15:25:57', '2025-01-26 15:25:57');
INSERT INTO `time-et` VALUES (503, 94, 105, 5830, '2025-01-26 15:25:59', '2025-01-26 15:25:59');
INSERT INTO `time-et` VALUES (504, 94, 106, 3085, '2025-01-26 15:26:00', '2025-01-26 15:26:00');
INSERT INTO `time-et` VALUES (505, 94, 107, 1909, '2025-01-26 15:26:01', '2025-01-26 15:26:01');
INSERT INTO `time-et` VALUES (506, 94, 108, 1881, '2025-01-26 15:26:03', '2025-01-26 15:26:03');
INSERT INTO `time-et` VALUES (507, 94, 109, 9910, '2025-01-26 15:26:04', '2025-01-26 15:26:04');
INSERT INTO `time-et` VALUES (508, 94, 110, 9850, '2025-01-26 15:26:06', '2025-01-26 15:26:06');
INSERT INTO `time-et` VALUES (509, 94, 111, 6388, '2025-01-26 15:26:08', '2025-01-26 15:26:08');
INSERT INTO `time-et` VALUES (510, 94, 112, 3212, '2025-01-26 15:26:09', '2025-01-26 15:26:09');
INSERT INTO `time-et` VALUES (511, 94, 113, 1626, '2025-01-26 15:26:11', '2025-01-26 15:26:11');
INSERT INTO `time-et` VALUES (512, 94, 114, 2157, '2025-01-26 15:26:12', '2025-01-26 15:26:12');
INSERT INTO `time-et` VALUES (513, 94, 115, 1361, '2025-01-26 15:26:13', '2025-01-26 15:26:13');
INSERT INTO `time-et` VALUES (514, 94, 116, 5189, '2025-01-26 15:26:14', '2025-01-26 15:26:14');
INSERT INTO `time-et` VALUES (515, 94, 118, 5192, '2025-01-26 15:26:16', '2025-01-26 15:26:16');
INSERT INTO `time-et` VALUES (516, 94, 119, 3535, '2025-01-26 15:26:17', '2025-01-26 15:26:17');
INSERT INTO `time-et` VALUES (517, 94, 120, 10820, '2025-01-26 15:26:19', '2025-01-26 15:26:19');
INSERT INTO `time-et` VALUES (518, 94, 121, 7917, '2025-01-26 15:26:21', '2025-01-26 15:26:21');
INSERT INTO `time-et` VALUES (519, 94, 122, 1214, '2025-01-26 15:26:22', '2025-01-26 15:26:22');
INSERT INTO `time-et` VALUES (520, 95, 96, 4011, '2025-01-26 15:26:23', '2025-01-26 15:26:23');
INSERT INTO `time-et` VALUES (521, 95, 97, 3287, '2025-01-26 15:26:25', '2025-01-26 15:26:25');
INSERT INTO `time-et` VALUES (522, 95, 98, 4348, '2025-01-26 15:26:26', '2025-01-26 15:26:26');
INSERT INTO `time-et` VALUES (523, 95, 99, 10808, '2025-01-26 15:26:28', '2025-01-26 15:26:28');
INSERT INTO `time-et` VALUES (524, 95, 100, 9899, '2025-01-26 15:26:30', '2025-01-26 15:26:30');
INSERT INTO `time-et` VALUES (525, 95, 101, 10622, '2025-01-26 15:26:31', '2025-01-26 15:26:31');
INSERT INTO `time-et` VALUES (526, 95, 102, 10931, '2025-01-26 15:26:33', '2025-01-26 15:26:33');
INSERT INTO `time-et` VALUES (527, 95, 103, 10893, '2025-01-26 15:26:35', '2025-01-26 15:26:35');
INSERT INTO `time-et` VALUES (528, 95, 104, 5361, '2025-01-26 15:26:37', '2025-01-26 15:26:37');
INSERT INTO `time-et` VALUES (529, 95, 105, 5641, '2025-01-26 15:26:38', '2025-01-26 15:26:38');
INSERT INTO `time-et` VALUES (530, 95, 106, 4150, '2025-01-26 15:26:40', '2025-01-26 15:26:40');
INSERT INTO `time-et` VALUES (531, 95, 107, 3776, '2025-01-26 15:26:41', '2025-01-26 15:26:41');
INSERT INTO `time-et` VALUES (532, 95, 108, 4241, '2025-01-26 15:26:43', '2025-01-26 15:26:43');
INSERT INTO `time-et` VALUES (533, 95, 109, 10704, '2025-01-26 15:26:44', '2025-01-26 15:26:44');
INSERT INTO `time-et` VALUES (534, 95, 110, 10644, '2025-01-26 15:26:46', '2025-01-26 15:26:46');
INSERT INTO `time-et` VALUES (535, 95, 111, 8871, '2025-01-26 15:26:49', '2025-01-26 15:26:49');
INSERT INTO `time-et` VALUES (536, 95, 112, 4438, '2025-01-26 15:26:51', '2025-01-26 15:26:51');
INSERT INTO `time-et` VALUES (537, 95, 113, 3854, '2025-01-26 15:26:52', '2025-01-26 15:26:52');
INSERT INTO `time-et` VALUES (538, 95, 114, 3659, '2025-01-26 15:26:53', '2025-01-26 15:26:53');
INSERT INTO `time-et` VALUES (539, 95, 115, 4378, '2025-01-26 15:26:55', '2025-01-26 15:26:55');
INSERT INTO `time-et` VALUES (540, 95, 116, 1622, '2025-01-26 15:26:56', '2025-01-26 15:26:56');
INSERT INTO `time-et` VALUES (541, 95, 118, 1613, '2025-01-26 15:26:58', '2025-01-26 15:26:58');
INSERT INTO `time-et` VALUES (542, 95, 119, 3823, '2025-01-26 15:26:59', '2025-01-26 15:26:59');
INSERT INTO `time-et` VALUES (543, 95, 120, 11064, '2025-01-26 15:27:01', '2025-01-26 15:27:01');
INSERT INTO `time-et` VALUES (544, 95, 121, 11560, '2025-01-26 15:27:04', '2025-01-26 15:27:04');
INSERT INTO `time-et` VALUES (545, 95, 122, 4348, '2025-01-26 15:27:05', '2025-01-26 15:27:05');
INSERT INTO `time-et` VALUES (546, 96, 97, 3527, '2025-01-26 15:27:07', '2025-01-26 15:27:07');
INSERT INTO `time-et` VALUES (547, 96, 98, 3274, '2025-01-26 15:27:08', '2025-01-26 15:27:08');
INSERT INTO `time-et` VALUES (548, 96, 99, 9292, '2025-01-26 15:27:09', '2025-01-26 15:27:09');
INSERT INTO `time-et` VALUES (549, 96, 100, 8357, '2025-01-26 15:27:11', '2025-01-26 15:27:11');
INSERT INTO `time-et` VALUES (550, 96, 101, 9356, '2025-01-26 15:27:12', '2025-01-26 15:27:12');
INSERT INTO `time-et` VALUES (551, 96, 102, 9415, '2025-01-26 15:27:14', '2025-01-26 15:27:14');
INSERT INTO `time-et` VALUES (552, 96, 103, 9377, '2025-01-26 15:27:15', '2025-01-26 15:27:15');
INSERT INTO `time-et` VALUES (553, 96, 104, 4741, '2025-01-26 15:27:16', '2025-01-26 15:27:16');
INSERT INTO `time-et` VALUES (554, 96, 105, 4928, '2025-01-26 15:27:18', '2025-01-26 15:27:18');
INSERT INTO `time-et` VALUES (555, 96, 106, 2082, '2025-01-26 15:27:19', '2025-01-26 15:27:19');
INSERT INTO `time-et` VALUES (556, 96, 107, 1035, '2025-01-26 15:27:20', '2025-01-26 15:27:20');
INSERT INTO `time-et` VALUES (557, 96, 108, 838, '2025-01-26 15:27:21', '2025-01-26 15:27:21');
INSERT INTO `time-et` VALUES (558, 96, 109, 9480, '2025-01-26 15:27:23', '2025-01-26 15:27:23');
INSERT INTO `time-et` VALUES (559, 96, 110, 9427, '2025-01-26 15:27:24', '2025-01-26 15:27:24');
INSERT INTO `time-et` VALUES (560, 96, 111, 6306, '2025-01-26 15:27:26', '2025-01-26 15:27:26');
INSERT INTO `time-et` VALUES (561, 96, 112, 2194, '2025-01-26 15:27:28', '2025-01-26 15:27:28');
INSERT INTO `time-et` VALUES (562, 96, 113, 752, '2025-01-26 15:27:29', '2025-01-26 15:27:29');
INSERT INTO `time-et` VALUES (563, 96, 114, 1283, '2025-01-26 15:27:30', '2025-01-26 15:27:30');
INSERT INTO `time-et` VALUES (564, 96, 115, 546, '2025-01-26 15:27:31', '2025-01-26 15:27:31');
INSERT INTO `time-et` VALUES (565, 96, 116, 4318, '2025-01-26 15:27:32', '2025-01-26 15:27:32');
INSERT INTO `time-et` VALUES (566, 96, 118, 4317, '2025-01-26 15:27:34', '2025-01-26 15:27:34');
INSERT INTO `time-et` VALUES (567, 96, 119, 2650, '2025-01-26 15:27:35', '2025-01-26 15:27:35');
INSERT INTO `time-et` VALUES (568, 96, 120, 10016, '2025-01-26 15:27:37', '2025-01-26 15:27:37');
INSERT INTO `time-et` VALUES (569, 96, 121, 7817, '2025-01-26 15:27:39', '2025-01-26 15:27:39');
INSERT INTO `time-et` VALUES (570, 96, 122, 636, '2025-01-26 15:27:41', '2025-01-26 15:27:41');
INSERT INTO `time-et` VALUES (571, 97, 98, 4938, '2025-01-26 15:27:42', '2025-01-26 15:27:42');
INSERT INTO `time-et` VALUES (572, 97, 99, 10793, '2025-01-26 15:27:44', '2025-01-26 15:27:44');
INSERT INTO `time-et` VALUES (573, 97, 100, 9884, '2025-01-26 15:27:45', '2025-01-26 15:27:45');
INSERT INTO `time-et` VALUES (574, 97, 101, 10607, '2025-01-26 15:27:47', '2025-01-26 15:27:47');
INSERT INTO `time-et` VALUES (575, 97, 102, 10917, '2025-01-26 15:27:48', '2025-01-26 15:27:48');
INSERT INTO `time-et` VALUES (576, 97, 103, 10879, '2025-01-26 15:27:50', '2025-01-26 15:27:50');
INSERT INTO `time-et` VALUES (577, 97, 104, 6405, '2025-01-26 15:27:51', '2025-01-26 15:27:51');
INSERT INTO `time-et` VALUES (578, 97, 105, 6592, '2025-01-26 15:27:52', '2025-01-26 15:27:52');
INSERT INTO `time-et` VALUES (579, 97, 106, 2285, '2025-01-26 15:27:53', '2025-01-26 15:27:53');
INSERT INTO `time-et` VALUES (580, 97, 107, 3202, '2025-01-26 15:27:55', '2025-01-26 15:27:55');
INSERT INTO `time-et` VALUES (581, 97, 108, 3375, '2025-01-26 15:27:56', '2025-01-26 15:27:56');
INSERT INTO `time-et` VALUES (582, 97, 109, 10690, '2025-01-26 15:27:58', '2025-01-26 15:27:58');
INSERT INTO `time-et` VALUES (583, 97, 110, 10631, '2025-01-26 15:27:59', '2025-01-26 15:27:59');
INSERT INTO `time-et` VALUES (584, 97, 111, 9194, '2025-01-26 15:28:02', '2025-01-26 15:28:02');
INSERT INTO `time-et` VALUES (585, 97, 112, 2578, '2025-01-26 15:28:03', '2025-01-26 15:28:03');
INSERT INTO `time-et` VALUES (586, 97, 113, 3233, '2025-01-26 15:28:05', '2025-01-26 15:28:05');
INSERT INTO `time-et` VALUES (587, 97, 114, 3037, '2025-01-26 15:28:06', '2025-01-26 15:28:06');
INSERT INTO `time-et` VALUES (588, 97, 115, 3689, '2025-01-26 15:28:08', '2025-01-26 15:28:08');
INSERT INTO `time-et` VALUES (589, 97, 116, 3959, '2025-01-26 15:28:09', '2025-01-26 15:28:09');
INSERT INTO `time-et` VALUES (590, 97, 118, 3959, '2025-01-26 15:28:11', '2025-01-26 15:28:11');
INSERT INTO `time-et` VALUES (591, 97, 119, 4263, '2025-01-26 15:28:12', '2025-01-26 15:28:12');
INSERT INTO `time-et` VALUES (592, 97, 120, 11563, '2025-01-26 15:28:14', '2025-01-26 15:28:14');
INSERT INTO `time-et` VALUES (593, 97, 121, 10891, '2025-01-26 15:28:17', '2025-01-26 15:28:17');
INSERT INTO `time-et` VALUES (594, 97, 122, 3679, '2025-01-26 15:28:18', '2025-01-26 15:28:18');
INSERT INTO `time-et` VALUES (595, 98, 99, 6462, '2025-01-26 15:28:20', '2025-01-26 15:28:20');
INSERT INTO `time-et` VALUES (596, 98, 100, 5665, '2025-01-26 15:28:21', '2025-01-26 15:28:21');
INSERT INTO `time-et` VALUES (597, 98, 101, 6257, '2025-01-26 15:28:22', '2025-01-26 15:28:22');
INSERT INTO `time-et` VALUES (598, 98, 102, 6566, '2025-01-26 15:28:24', '2025-01-26 15:28:24');
INSERT INTO `time-et` VALUES (599, 98, 103, 6528, '2025-01-26 15:28:25', '2025-01-26 15:28:25');
INSERT INTO `time-et` VALUES (600, 98, 104, 1579, '2025-01-26 15:28:26', '2025-01-26 15:28:26');
INSERT INTO `time-et` VALUES (601, 98, 105, 1765, '2025-01-26 15:28:27', '2025-01-26 15:28:27');
INSERT INTO `time-et` VALUES (602, 98, 106, 4705, '2025-01-26 15:28:28', '2025-01-26 15:28:28');
INSERT INTO `time-et` VALUES (603, 98, 107, 3384, '2025-01-26 15:28:30', '2025-01-26 15:28:30');
INSERT INTO `time-et` VALUES (604, 98, 108, 3495, '2025-01-26 15:28:31', '2025-01-26 15:28:31');
INSERT INTO `time-et` VALUES (605, 98, 109, 6387, '2025-01-26 15:28:32', '2025-01-26 15:28:32');
INSERT INTO `time-et` VALUES (606, 98, 110, 6327, '2025-01-26 15:28:34', '2025-01-26 15:28:34');
INSERT INTO `time-et` VALUES (607, 98, 111, 5725, '2025-01-26 15:28:36', '2025-01-26 15:28:36');
INSERT INTO `time-et` VALUES (608, 98, 112, 4813, '2025-01-26 15:28:37', '2025-01-26 15:28:37');
INSERT INTO `time-et` VALUES (609, 98, 113, 3288, '2025-01-26 15:28:39', '2025-01-26 15:28:39');
INSERT INTO `time-et` VALUES (610, 98, 114, 3270, '2025-01-26 15:28:40', '2025-01-26 15:28:40');
INSERT INTO `time-et` VALUES (611, 98, 115, 3632, '2025-01-26 15:28:44', '2025-01-26 15:28:44');
INSERT INTO `time-et` VALUES (612, 98, 116, 4848, '2025-01-26 15:28:46', '2025-01-26 15:28:46');
INSERT INTO `time-et` VALUES (613, 98, 118, 4848, '2025-01-26 15:28:49', '2025-01-26 15:28:49');
INSERT INTO `time-et` VALUES (614, 98, 119, 900, '2025-01-26 15:28:52', '2025-01-26 15:28:52');
INSERT INTO `time-et` VALUES (615, 98, 120, 7426, '2025-01-26 15:28:54', '2025-01-26 15:28:54');
INSERT INTO `time-et` VALUES (616, 98, 121, 9271, '2025-01-26 15:28:57', '2025-01-26 15:28:57');
INSERT INTO `time-et` VALUES (617, 98, 122, 3602, '2025-01-26 15:29:00', '2025-01-26 15:29:00');
INSERT INTO `time-et` VALUES (618, 99, 100, 1818, '2025-01-26 15:29:01', '2025-01-26 15:29:01');
INSERT INTO `time-et` VALUES (619, 99, 101, 1208, '2025-01-26 15:29:03', '2025-01-26 15:29:03');
INSERT INTO `time-et` VALUES (620, 99, 102, 1620, '2025-01-26 15:29:04', '2025-01-26 15:29:04');
INSERT INTO `time-et` VALUES (621, 99, 103, 1498, '2025-01-26 15:29:06', '2025-01-26 15:29:06');
INSERT INTO `time-et` VALUES (622, 99, 104, 6165, '2025-01-26 15:29:07', '2025-01-26 15:29:07');
INSERT INTO `time-et` VALUES (623, 99, 105, 6175, '2025-01-26 15:29:09', '2025-01-26 15:29:09');
INSERT INTO `time-et` VALUES (624, 99, 106, 10193, '2025-01-26 15:29:10', '2025-01-26 15:29:10');
INSERT INTO `time-et` VALUES (625, 99, 107, 8871, '2025-01-26 15:29:12', '2025-01-26 15:29:12');
INSERT INTO `time-et` VALUES (626, 99, 108, 8983, '2025-01-26 15:29:13', '2025-01-26 15:29:13');
INSERT INTO `time-et` VALUES (627, 99, 109, 1244, '2025-01-26 15:29:14', '2025-01-26 15:29:14');
INSERT INTO `time-et` VALUES (628, 99, 110, 1184, '2025-01-26 15:29:16', '2025-01-26 15:29:16');
INSERT INTO `time-et` VALUES (629, 99, 111, 9950, '2025-01-26 15:29:18', '2025-01-26 15:29:18');
INSERT INTO `time-et` VALUES (630, 99, 112, 10301, '2025-01-26 15:29:19', '2025-01-26 15:29:19');
INSERT INTO `time-et` VALUES (631, 99, 113, 8776, '2025-01-26 15:29:21', '2025-01-26 15:29:21');
INSERT INTO `time-et` VALUES (632, 99, 114, 8758, '2025-01-26 15:29:22', '2025-01-26 15:29:22');
INSERT INTO `time-et` VALUES (633, 99, 115, 9120, '2025-01-26 15:29:24', '2025-01-26 15:29:24');
INSERT INTO `time-et` VALUES (634, 99, 116, 10413, '2025-01-26 15:29:25', '2025-01-26 15:29:25');
INSERT INTO `time-et` VALUES (635, 99, 118, 10414, '2025-01-26 15:29:27', '2025-01-26 15:29:27');
INSERT INTO `time-et` VALUES (636, 99, 119, 6331, '2025-01-26 15:29:28', '2025-01-26 15:29:28');
INSERT INTO `time-et` VALUES (637, 99, 120, 3043, '2025-01-26 15:29:30', '2025-01-26 15:29:30');
INSERT INTO `time-et` VALUES (638, 99, 121, 10823, '2025-01-26 15:29:31', '2025-01-26 15:29:31');
INSERT INTO `time-et` VALUES (639, 99, 122, 9095, '2025-01-26 15:29:33', '2025-01-26 15:29:33');
INSERT INTO `time-et` VALUES (640, 100, 101, 1208, '2025-01-26 15:29:34', '2025-01-26 15:29:34');
INSERT INTO `time-et` VALUES (641, 100, 102, 1798, '2025-01-26 15:29:35', '2025-01-26 15:29:35');
INSERT INTO `time-et` VALUES (642, 100, 103, 1507, '2025-01-26 15:29:36', '2025-01-26 15:29:36');
INSERT INTO `time-et` VALUES (643, 100, 104, 5367, '2025-01-26 15:29:38', '2025-01-26 15:29:38');
INSERT INTO `time-et` VALUES (644, 100, 105, 5368, '2025-01-26 15:29:39', '2025-01-26 15:29:39');
INSERT INTO `time-et` VALUES (645, 100, 106, 9387, '2025-01-26 15:29:41', '2025-01-26 15:29:41');
INSERT INTO `time-et` VALUES (646, 100, 107, 8065, '2025-01-26 15:29:42', '2025-01-26 15:29:42');
INSERT INTO `time-et` VALUES (647, 100, 108, 8184, '2025-01-26 15:29:43', '2025-01-26 15:29:43');
INSERT INTO `time-et` VALUES (648, 100, 109, 1138, '2025-01-26 15:29:45', '2025-01-26 15:29:45');
INSERT INTO `time-et` VALUES (649, 100, 110, 1078, '2025-01-26 15:29:46', '2025-01-26 15:29:46');
INSERT INTO `time-et` VALUES (650, 100, 111, 8837, '2025-01-26 15:29:48', '2025-01-26 15:29:48');
INSERT INTO `time-et` VALUES (651, 100, 112, 9502, '2025-01-26 15:29:50', '2025-01-26 15:29:50');
INSERT INTO `time-et` VALUES (652, 100, 113, 7977, '2025-01-26 15:29:51', '2025-01-26 15:29:51');
INSERT INTO `time-et` VALUES (653, 100, 114, 7959, '2025-01-26 15:29:52', '2025-01-26 15:29:52');
INSERT INTO `time-et` VALUES (654, 100, 115, 8322, '2025-01-26 15:29:54', '2025-01-26 15:29:54');
INSERT INTO `time-et` VALUES (655, 100, 116, 9615, '2025-01-26 15:29:55', '2025-01-26 15:29:55');
INSERT INTO `time-et` VALUES (656, 100, 118, 9615, '2025-01-26 15:29:57', '2025-01-26 15:29:57');
INSERT INTO `time-et` VALUES (657, 100, 119, 5532, '2025-01-26 15:30:00', '2025-01-26 15:30:00');
INSERT INTO `time-et` VALUES (658, 100, 120, 3726, '2025-01-26 15:30:03', '2025-01-26 15:30:03');
INSERT INTO `time-et` VALUES (659, 100, 121, 10291, '2025-01-26 15:30:07', '2025-01-26 15:30:07');
INSERT INTO `time-et` VALUES (660, 100, 122, 8288, '2025-01-26 15:30:10', '2025-01-26 15:30:10');
INSERT INTO `time-et` VALUES (661, 101, 102, 920, '2025-01-26 15:30:11', '2025-01-26 15:30:11');
INSERT INTO `time-et` VALUES (662, 101, 103, 474, '2025-01-26 15:30:13', '2025-01-26 15:30:13');
INSERT INTO `time-et` VALUES (663, 101, 104, 5980, '2025-01-26 15:30:15', '2025-01-26 15:30:15');
INSERT INTO `time-et` VALUES (664, 101, 105, 5989, '2025-01-26 15:30:16', '2025-01-26 15:30:16');
INSERT INTO `time-et` VALUES (665, 101, 106, 10008, '2025-01-26 15:30:18', '2025-01-26 15:30:18');
INSERT INTO `time-et` VALUES (666, 101, 107, 8686, '2025-01-26 15:30:19', '2025-01-26 15:30:19');
INSERT INTO `time-et` VALUES (667, 101, 108, 8796, '2025-01-26 15:30:21', '2025-01-26 15:30:21');
INSERT INTO `time-et` VALUES (668, 101, 109, 455, '2025-01-26 15:30:22', '2025-01-26 15:30:22');
INSERT INTO `time-et` VALUES (669, 101, 110, 411, '2025-01-26 15:30:24', '2025-01-26 15:30:24');
INSERT INTO `time-et` VALUES (670, 101, 111, 9630, '2025-01-26 15:30:25', '2025-01-26 15:30:25');
INSERT INTO `time-et` VALUES (671, 101, 112, 10116, '2025-01-26 15:30:27', '2025-01-26 15:30:27');
INSERT INTO `time-et` VALUES (672, 101, 113, 8590, '2025-01-26 15:30:29', '2025-01-26 15:30:29');
INSERT INTO `time-et` VALUES (673, 101, 114, 8572, '2025-01-26 15:30:31', '2025-01-26 15:30:31');
INSERT INTO `time-et` VALUES (674, 101, 115, 8935, '2025-01-26 15:30:33', '2025-01-26 15:30:33');
INSERT INTO `time-et` VALUES (675, 101, 116, 10228, '2025-01-26 15:30:35', '2025-01-26 15:30:35');
INSERT INTO `time-et` VALUES (676, 101, 118, 10228, '2025-01-26 15:30:37', '2025-01-26 15:30:37');
INSERT INTO `time-et` VALUES (677, 101, 119, 6145, '2025-01-26 15:30:39', '2025-01-26 15:30:39');
INSERT INTO `time-et` VALUES (678, 101, 120, 2866, '2025-01-26 15:30:40', '2025-01-26 15:30:40');
INSERT INTO `time-et` VALUES (679, 101, 121, 10862, '2025-01-26 15:30:43', '2025-01-26 15:30:43');
INSERT INTO `time-et` VALUES (680, 101, 122, 8908, '2025-01-26 15:30:45', '2025-01-26 15:30:45');
INSERT INTO `time-et` VALUES (681, 102, 103, 558, '2025-01-26 15:30:46', '2025-01-26 15:30:46');
INSERT INTO `time-et` VALUES (682, 102, 104, 6366, '2025-01-26 15:30:49', '2025-01-26 15:30:49');
INSERT INTO `time-et` VALUES (683, 102, 105, 6375, '2025-01-26 15:30:50', '2025-01-26 15:30:50');
INSERT INTO `time-et` VALUES (684, 102, 106, 10394, '2025-01-26 15:30:51', '2025-01-26 15:30:51');
INSERT INTO `time-et` VALUES (685, 102, 107, 9072, '2025-01-26 15:30:53', '2025-01-26 15:30:53');
INSERT INTO `time-et` VALUES (686, 102, 108, 9183, '2025-01-26 15:30:54', '2025-01-26 15:30:54');
INSERT INTO `time-et` VALUES (687, 102, 109, 797, '2025-01-26 15:30:55', '2025-01-26 15:30:55');
INSERT INTO `time-et` VALUES (688, 102, 110, 737, '2025-01-26 15:30:56', '2025-01-26 15:30:56');
INSERT INTO `time-et` VALUES (689, 102, 111, 10145, '2025-01-26 15:30:58', '2025-01-26 15:30:58');
INSERT INTO `time-et` VALUES (690, 102, 112, 10502, '2025-01-26 15:31:00', '2025-01-26 15:31:00');
INSERT INTO `time-et` VALUES (691, 102, 113, 8976, '2025-01-26 15:31:01', '2025-01-26 15:31:01');
INSERT INTO `time-et` VALUES (692, 102, 114, 8958, '2025-01-26 15:31:03', '2025-01-26 15:31:03');
INSERT INTO `time-et` VALUES (693, 102, 115, 9349, '2025-01-26 15:31:04', '2025-01-26 15:31:04');
INSERT INTO `time-et` VALUES (694, 102, 116, 10642, '2025-01-26 15:31:06', '2025-01-26 15:31:06');
INSERT INTO `time-et` VALUES (695, 102, 118, 10614, '2025-01-26 15:31:07', '2025-01-26 15:31:07');
INSERT INTO `time-et` VALUES (696, 102, 119, 6531, '2025-01-26 15:31:09', '2025-01-26 15:31:09');
INSERT INTO `time-et` VALUES (697, 102, 120, 3149, '2025-01-26 15:31:10', '2025-01-26 15:31:10');
INSERT INTO `time-et` VALUES (698, 102, 121, 11346, '2025-01-26 15:31:13', '2025-01-26 15:31:13');
INSERT INTO `time-et` VALUES (699, 102, 122, 9323, '2025-01-26 15:31:14', '2025-01-26 15:31:14');
INSERT INTO `time-et` VALUES (700, 103, 104, 6293, '2025-01-26 15:31:16', '2025-01-26 15:31:16');
INSERT INTO `time-et` VALUES (701, 103, 105, 6301, '2025-01-26 15:31:17', '2025-01-26 15:31:17');
INSERT INTO `time-et` VALUES (702, 103, 106, 10347, '2025-01-26 15:31:19', '2025-01-26 15:31:19');
INSERT INTO `time-et` VALUES (703, 103, 107, 8997, '2025-01-26 15:31:21', '2025-01-26 15:31:21');
INSERT INTO `time-et` VALUES (704, 103, 108, 9136, '2025-01-26 15:31:22', '2025-01-26 15:31:22');
INSERT INTO `time-et` VALUES (705, 103, 109, 585, '2025-01-26 15:31:23', '2025-01-26 15:31:23');
INSERT INTO `time-et` VALUES (706, 103, 110, 525, '2025-01-26 15:31:24', '2025-01-26 15:31:24');
INSERT INTO `time-et` VALUES (707, 103, 111, 9923, '2025-01-26 15:31:26', '2025-01-26 15:31:26');
INSERT INTO `time-et` VALUES (708, 103, 112, 10456, '2025-01-26 15:31:27', '2025-01-26 15:31:27');
INSERT INTO `time-et` VALUES (709, 103, 113, 8930, '2025-01-26 15:31:29', '2025-01-26 15:31:29');
INSERT INTO `time-et` VALUES (710, 103, 114, 8912, '2025-01-26 15:31:30', '2025-01-26 15:31:30');
INSERT INTO `time-et` VALUES (711, 103, 115, 9274, '2025-01-26 15:31:32', '2025-01-26 15:31:32');
INSERT INTO `time-et` VALUES (712, 103, 116, 10567, '2025-01-26 15:31:33', '2025-01-26 15:31:33');
INSERT INTO `time-et` VALUES (713, 103, 118, 10567, '2025-01-26 15:31:35', '2025-01-26 15:31:35');
INSERT INTO `time-et` VALUES (714, 103, 119, 6485, '2025-01-26 15:31:36', '2025-01-26 15:31:36');
INSERT INTO `time-et` VALUES (715, 103, 120, 3067, '2025-01-26 15:31:38', '2025-01-26 15:31:38');
INSERT INTO `time-et` VALUES (716, 103, 121, 11157, '2025-01-26 15:31:39', '2025-01-26 15:31:39');
INSERT INTO `time-et` VALUES (717, 103, 122, 9250, '2025-01-26 15:31:41', '2025-01-26 15:31:41');
INSERT INTO `time-et` VALUES (718, 104, 105, 213, '2025-01-26 15:31:42', '2025-01-26 15:31:42');
INSERT INTO `time-et` VALUES (719, 104, 106, 6277, '2025-01-26 15:31:44', '2025-01-26 15:31:44');
INSERT INTO `time-et` VALUES (720, 104, 107, 4956, '2025-01-26 15:31:45', '2025-01-26 15:31:45');
INSERT INTO `time-et` VALUES (721, 104, 108, 5067, '2025-01-26 15:31:47', '2025-01-26 15:31:47');
INSERT INTO `time-et` VALUES (722, 104, 109, 6975, '2025-01-26 15:31:48', '2025-01-26 15:31:48');
INSERT INTO `time-et` VALUES (723, 104, 110, 6914, '2025-01-26 15:31:50', '2025-01-26 15:31:50');
INSERT INTO `time-et` VALUES (724, 104, 111, 7236, '2025-01-26 15:31:51', '2025-01-26 15:31:51');
INSERT INTO `time-et` VALUES (725, 104, 112, 6385, '2025-01-26 15:31:53', '2025-01-26 15:31:53');
INSERT INTO `time-et` VALUES (726, 104, 113, 4860, '2025-01-26 15:31:54', '2025-01-26 15:31:54');
INSERT INTO `time-et` VALUES (727, 104, 114, 4842, '2025-01-26 15:31:56', '2025-01-26 15:31:56');
INSERT INTO `time-et` VALUES (728, 104, 115, 5204, '2025-01-26 15:31:57', '2025-01-26 15:31:57');
INSERT INTO `time-et` VALUES (729, 104, 116, 6000, '2025-01-26 15:31:58', '2025-01-26 15:31:58');
INSERT INTO `time-et` VALUES (730, 104, 118, 6000, '2025-01-26 15:32:00', '2025-01-26 15:32:00');
INSERT INTO `time-et` VALUES (731, 104, 119, 2424, '2025-01-26 15:32:01', '2025-01-26 15:32:01');
INSERT INTO `time-et` VALUES (732, 104, 120, 7963, '2025-01-26 15:32:03', '2025-01-26 15:32:03');
INSERT INTO `time-et` VALUES (733, 104, 121, 10712, '2025-01-26 15:32:05', '2025-01-26 15:32:05');
INSERT INTO `time-et` VALUES (734, 104, 122, 5179, '2025-01-26 15:32:06', '2025-01-26 15:32:06');
INSERT INTO `time-et` VALUES (735, 105, 106, 6473, '2025-01-26 15:32:08', '2025-01-26 15:32:08');
INSERT INTO `time-et` VALUES (736, 105, 107, 5151, '2025-01-26 15:32:10', '2025-01-26 15:32:10');
INSERT INTO `time-et` VALUES (737, 105, 108, 5262, '2025-01-26 15:32:12', '2025-01-26 15:32:12');
INSERT INTO `time-et` VALUES (738, 105, 109, 6966, '2025-01-26 15:32:14', '2025-01-26 15:32:14');
INSERT INTO `time-et` VALUES (739, 105, 110, 6831, '2025-01-26 15:32:15', '2025-01-26 15:32:15');
INSERT INTO `time-et` VALUES (740, 105, 111, 7435, '2025-01-26 15:32:17', '2025-01-26 15:32:17');
INSERT INTO `time-et` VALUES (741, 105, 112, 6582, '2025-01-26 15:32:19', '2025-01-26 15:32:19');
INSERT INTO `time-et` VALUES (742, 105, 113, 5057, '2025-01-26 15:32:20', '2025-01-26 15:32:20');
INSERT INTO `time-et` VALUES (743, 105, 114, 5037, '2025-01-26 15:32:21', '2025-01-26 15:32:21');
INSERT INTO `time-et` VALUES (744, 105, 115, 5401, '2025-01-26 15:32:23', '2025-01-26 15:32:23');
INSERT INTO `time-et` VALUES (745, 105, 116, 6201, '2025-01-26 15:32:26', '2025-01-26 15:32:26');
INSERT INTO `time-et` VALUES (746, 105, 118, 6201, '2025-01-26 15:32:28', '2025-01-26 15:32:28');
INSERT INTO `time-et` VALUES (747, 105, 119, 2625, '2025-01-26 15:32:30', '2025-01-26 15:32:30');
INSERT INTO `time-et` VALUES (748, 105, 120, 7880, '2025-01-26 15:32:31', '2025-01-26 15:32:31');
INSERT INTO `time-et` VALUES (749, 105, 121, 10814, '2025-01-26 15:32:34', '2025-01-26 15:32:34');
INSERT INTO `time-et` VALUES (750, 105, 122, 5377, '2025-01-26 15:32:35', '2025-01-26 15:32:35');
INSERT INTO `time-et` VALUES (751, 106, 107, 2265, '2025-01-26 15:32:37', '2025-01-26 15:32:37');
INSERT INTO `time-et` VALUES (752, 106, 108, 1484, '2025-01-26 15:32:38', '2025-01-26 15:32:38');
INSERT INTO `time-et` VALUES (753, 106, 109, 10236, '2025-01-26 15:32:39', '2025-01-26 15:32:39');
INSERT INTO `time-et` VALUES (754, 106, 110, 10176, '2025-01-26 15:32:41', '2025-01-26 15:32:41');
INSERT INTO `time-et` VALUES (755, 106, 111, 7988, '2025-01-26 15:32:43', '2025-01-26 15:32:43');
INSERT INTO `time-et` VALUES (756, 106, 112, 515, '2025-01-26 15:32:45', '2025-01-26 15:32:45');
INSERT INTO `time-et` VALUES (757, 106, 113, 1877, '2025-01-26 15:32:46', '2025-01-26 15:32:46');
INSERT INTO `time-et` VALUES (758, 106, 114, 2513, '2025-01-26 15:32:48', '2025-01-26 15:32:48');
INSERT INTO `time-et` VALUES (759, 106, 115, 1975, '2025-01-26 15:32:50', '2025-01-26 15:32:50');
INSERT INTO `time-et` VALUES (760, 106, 116, 4947, '2025-01-26 15:32:51', '2025-01-26 15:32:51');
INSERT INTO `time-et` VALUES (761, 106, 118, 4947, '2025-01-26 15:32:53', '2025-01-26 15:32:53');
INSERT INTO `time-et` VALUES (762, 106, 119, 3863, '2025-01-26 15:32:54', '2025-01-26 15:32:54');
INSERT INTO `time-et` VALUES (763, 106, 120, 11147, '2025-01-26 15:32:56', '2025-01-26 15:32:56');
INSERT INTO `time-et` VALUES (764, 106, 121, 9522, '2025-01-26 15:32:59', '2025-01-26 15:32:59');
INSERT INTO `time-et` VALUES (765, 106, 122, 2337, '2025-01-26 15:33:00', '2025-01-26 15:33:00');
INSERT INTO `time-et` VALUES (766, 107, 108, 930, '2025-01-26 15:33:02', '2025-01-26 15:33:02');
INSERT INTO `time-et` VALUES (767, 107, 109, 9413, '2025-01-26 15:33:04', '2025-01-26 15:33:04');
INSERT INTO `time-et` VALUES (768, 107, 110, 9353, '2025-01-26 15:33:06', '2025-01-26 15:33:06');
INSERT INTO `time-et` VALUES (769, 107, 111, 7151, '2025-01-26 15:33:08', '2025-01-26 15:33:08');
INSERT INTO `time-et` VALUES (770, 107, 112, 2316, '2025-01-26 15:33:10', '2025-01-26 15:33:10');
INSERT INTO `time-et` VALUES (771, 107, 113, 488, '2025-01-26 15:33:12', '2025-01-26 15:33:12');
INSERT INTO `time-et` VALUES (772, 107, 114, 529, '2025-01-26 15:33:13', '2025-01-26 15:33:13');
INSERT INTO `time-et` VALUES (773, 107, 115, 1441, '2025-01-26 15:33:15', '2025-01-26 15:33:15');
INSERT INTO `time-et` VALUES (774, 107, 116, 4175, '2025-01-26 15:33:18', '2025-01-26 15:33:18');
INSERT INTO `time-et` VALUES (775, 107, 118, 4175, '2025-01-26 15:33:19', '2025-01-26 15:33:19');
INSERT INTO `time-et` VALUES (776, 107, 119, 2856, '2025-01-26 15:33:20', '2025-01-26 15:33:20');
INSERT INTO `time-et` VALUES (777, 107, 120, 10140, '2025-01-26 15:33:23', '2025-01-26 15:33:23');
INSERT INTO `time-et` VALUES (778, 107, 121, 8593, '2025-01-26 15:33:25', '2025-01-26 15:33:25');
INSERT INTO `time-et` VALUES (779, 107, 122, 1422, '2025-01-26 15:33:27', '2025-01-26 15:33:27');
INSERT INTO `time-et` VALUES (780, 108, 109, 9329, '2025-01-26 15:33:30', '2025-01-26 15:33:30');
INSERT INTO `time-et` VALUES (781, 108, 110, 9269, '2025-01-26 15:33:31', '2025-01-26 15:33:31');
INSERT INTO `time-et` VALUES (782, 108, 111, 7078, '2025-01-26 15:33:34', '2025-01-26 15:33:34');
INSERT INTO `time-et` VALUES (783, 108, 112, 1976, '2025-01-26 15:33:35', '2025-01-26 15:33:35');
INSERT INTO `time-et` VALUES (784, 108, 113, 592, '2025-01-26 15:33:37', '2025-01-26 15:33:37');
INSERT INTO `time-et` VALUES (785, 108, 114, 1251, '2025-01-26 15:33:39', '2025-01-26 15:33:39');
INSERT INTO `time-et` VALUES (786, 108, 115, 1046, '2025-01-26 15:33:41', '2025-01-26 15:33:41');
INSERT INTO `time-et` VALUES (787, 108, 116, 4561, '2025-01-26 15:33:43', '2025-01-26 15:33:43');
INSERT INTO `time-et` VALUES (788, 108, 118, 4615, '2025-01-26 15:33:46', '2025-01-26 15:33:46');
INSERT INTO `time-et` VALUES (789, 108, 119, 2955, '2025-01-26 15:33:47', '2025-01-26 15:33:47');
INSERT INTO `time-et` VALUES (790, 108, 120, 10299, '2025-01-26 15:33:50', '2025-01-26 15:33:50');
INSERT INTO `time-et` VALUES (791, 108, 121, 8591, '2025-01-26 15:33:53', '2025-01-26 15:33:53');
INSERT INTO `time-et` VALUES (792, 108, 122, 1412, '2025-01-26 15:33:54', '2025-01-26 15:33:54');
INSERT INTO `time-et` VALUES (793, 109, 110, 128, '2025-01-26 15:33:56', '2025-01-26 15:33:56');
INSERT INTO `time-et` VALUES (794, 109, 111, 9625, '2025-01-26 15:33:59', '2025-01-26 15:33:59');
INSERT INTO `time-et` VALUES (795, 109, 112, 10235, '2025-01-26 15:34:01', '2025-01-26 15:34:01');
INSERT INTO `time-et` VALUES (796, 109, 113, 8710, '2025-01-26 15:34:04', '2025-01-26 15:34:04');
INSERT INTO `time-et` VALUES (797, 109, 114, 8692, '2025-01-26 15:34:06', '2025-01-26 15:34:06');
INSERT INTO `time-et` VALUES (798, 109, 115, 9054, '2025-01-26 15:34:08', '2025-01-26 15:34:08');
INSERT INTO `time-et` VALUES (799, 109, 116, 10347, '2025-01-26 15:34:09', '2025-01-26 15:34:09');
INSERT INTO `time-et` VALUES (800, 109, 118, 10347, '2025-01-26 15:34:11', '2025-01-26 15:34:11');
INSERT INTO `time-et` VALUES (801, 109, 119, 6265, '2025-01-26 15:34:13', '2025-01-26 15:34:13');
INSERT INTO `time-et` VALUES (802, 109, 120, 3113, '2025-01-26 15:34:14', '2025-01-26 15:34:14');
INSERT INTO `time-et` VALUES (803, 109, 121, 11108, '2025-01-26 15:34:16', '2025-01-26 15:34:16');
INSERT INTO `time-et` VALUES (804, 109, 122, 9029, '2025-01-26 15:34:18', '2025-01-26 15:34:18');
INSERT INTO `time-et` VALUES (805, 110, 111, 9551, '2025-01-26 15:34:20', '2025-01-26 15:34:20');
INSERT INTO `time-et` VALUES (806, 110, 112, 10161, '2025-01-26 15:34:22', '2025-01-26 15:34:22');
INSERT INTO `time-et` VALUES (807, 110, 113, 8636, '2025-01-26 15:34:23', '2025-01-26 15:34:23');
INSERT INTO `time-et` VALUES (808, 110, 114, 8618, '2025-01-26 15:34:25', '2025-01-26 15:34:25');
INSERT INTO `time-et` VALUES (809, 110, 115, 8980, '2025-01-26 15:34:26', '2025-01-26 15:34:26');
INSERT INTO `time-et` VALUES (810, 110, 116, 10273, '2025-01-26 15:34:28', '2025-01-26 15:34:28');
INSERT INTO `time-et` VALUES (811, 110, 118, 10273, '2025-01-26 15:34:29', '2025-01-26 15:34:29');
INSERT INTO `time-et` VALUES (812, 110, 119, 6191, '2025-01-26 15:34:31', '2025-01-26 15:34:31');
INSERT INTO `time-et` VALUES (813, 110, 120, 3067, '2025-01-26 15:34:32', '2025-01-26 15:34:32');
INSERT INTO `time-et` VALUES (814, 110, 121, 11006, '2025-01-26 15:34:34', '2025-01-26 15:34:34');
INSERT INTO `time-et` VALUES (815, 110, 122, 8955, '2025-01-26 15:34:36', '2025-01-26 15:34:36');
INSERT INTO `time-et` VALUES (816, 111, 112, 8294, '2025-01-26 15:34:37', '2025-01-26 15:34:37');
INSERT INTO `time-et` VALUES (817, 111, 113, 6691, '2025-01-26 15:34:39', '2025-01-26 15:34:39');
INSERT INTO `time-et` VALUES (818, 111, 114, 7142, '2025-01-26 15:34:40', '2025-01-26 15:34:40');
INSERT INTO `time-et` VALUES (819, 111, 115, 6679, '2025-01-26 15:34:42', '2025-01-26 15:34:42');
INSERT INTO `time-et` VALUES (820, 111, 116, 9474, '2025-01-26 15:34:44', '2025-01-26 15:34:44');
INSERT INTO `time-et` VALUES (821, 111, 118, 9474, '2025-01-26 15:34:45', '2025-01-26 15:34:45');
INSERT INTO `time-et` VALUES (822, 111, 119, 5070, '2025-01-26 15:34:46', '2025-01-26 15:34:46');
INSERT INTO `time-et` VALUES (823, 111, 120, 9221, '2025-01-26 15:34:48', '2025-01-26 15:34:48');
INSERT INTO `time-et` VALUES (824, 111, 121, 5385, '2025-01-26 15:34:49', '2025-01-26 15:34:49');
INSERT INTO `time-et` VALUES (825, 111, 122, 6392, '2025-01-26 15:34:51', '2025-01-26 15:34:51');
INSERT INTO `time-et` VALUES (826, 112, 113, 2055, '2025-01-26 15:34:52', '2025-01-26 15:34:52');
INSERT INTO `time-et` VALUES (827, 112, 114, 2777, '2025-01-26 15:34:53', '2025-01-26 15:34:53');
INSERT INTO `time-et` VALUES (828, 112, 115, 2264, '2025-01-26 15:34:55', '2025-01-26 15:34:55');
INSERT INTO `time-et` VALUES (829, 112, 116, 5153, '2025-01-26 15:34:56', '2025-01-26 15:34:56');
INSERT INTO `time-et` VALUES (830, 112, 118, 5145, '2025-01-26 15:34:57', '2025-01-26 15:34:57');
INSERT INTO `time-et` VALUES (831, 112, 119, 4187, '2025-01-26 15:34:59', '2025-01-26 15:34:59');
INSERT INTO `time-et` VALUES (832, 112, 120, 11463, '2025-01-26 15:35:01', '2025-01-26 15:35:01');
INSERT INTO `time-et` VALUES (833, 112, 121, 9812, '2025-01-26 15:35:03', '2025-01-26 15:35:03');
INSERT INTO `time-et` VALUES (834, 112, 122, 2616, '2025-01-26 15:35:04', '2025-01-26 15:35:04');
INSERT INTO `time-et` VALUES (835, 113, 114, 881, '2025-01-26 15:35:06', '2025-01-26 15:35:06');
INSERT INTO `time-et` VALUES (836, 113, 115, 1001, '2025-01-26 15:35:07', '2025-01-26 15:35:07');
INSERT INTO `time-et` VALUES (837, 113, 116, 4363, '2025-01-26 15:35:08', '2025-01-26 15:35:08');
INSERT INTO `time-et` VALUES (838, 113, 118, 4363, '2025-01-26 15:35:09', '2025-01-26 15:35:09');
INSERT INTO `time-et` VALUES (839, 113, 119, 2820, '2025-01-26 15:35:10', '2025-01-26 15:35:10');
INSERT INTO `time-et` VALUES (840, 113, 120, 10102, '2025-01-26 15:35:12', '2025-01-26 15:35:12');
INSERT INTO `time-et` VALUES (841, 113, 121, 8302, '2025-01-26 15:35:14', '2025-01-26 15:35:14');
INSERT INTO `time-et` VALUES (842, 113, 122, 1124, '2025-01-26 15:35:16', '2025-01-26 15:35:16');
INSERT INTO `time-et` VALUES (843, 114, 115, 1583, '2025-01-26 15:35:17', '2025-01-26 15:35:17');
INSERT INTO `time-et` VALUES (844, 114, 116, 4065, '2025-01-26 15:35:19', '2025-01-26 15:35:19');
INSERT INTO `time-et` VALUES (845, 114, 118, 4065, '2025-01-26 15:35:21', '2025-01-26 15:35:21');
INSERT INTO `time-et` VALUES (846, 114, 119, 2637, '2025-01-26 15:35:23', '2025-01-26 15:35:23');
INSERT INTO `time-et` VALUES (847, 114, 120, 9921, '2025-01-26 15:35:27', '2025-01-26 15:35:27');
INSERT INTO `time-et` VALUES (848, 114, 121, 8751, '2025-01-26 15:35:29', '2025-01-26 15:35:29');
INSERT INTO `time-et` VALUES (849, 114, 122, 1571, '2025-01-26 15:35:31', '2025-01-26 15:35:31');
INSERT INTO `time-et` VALUES (850, 115, 116, 4587, '2025-01-26 15:35:33', '2025-01-26 15:35:33');
INSERT INTO `time-et` VALUES (851, 115, 118, 4587, '2025-01-26 15:35:34', '2025-01-26 15:35:34');
INSERT INTO `time-et` VALUES (852, 115, 119, 2959, '2025-01-26 15:35:36', '2025-01-26 15:35:36');
INSERT INTO `time-et` VALUES (853, 115, 120, 10243, '2025-01-26 15:35:39', '2025-01-26 15:35:39');
INSERT INTO `time-et` VALUES (854, 115, 121, 8151, '2025-01-26 15:35:42', '2025-01-26 15:35:42');
INSERT INTO `time-et` VALUES (855, 115, 122, 890, '2025-01-26 15:35:44', '2025-01-26 15:35:44');
INSERT INTO `time-et` VALUES (856, 116, 118, 0, '2025-01-26 15:35:45', '2025-01-26 15:35:45');
INSERT INTO `time-et` VALUES (857, 116, 119, 4424, '2025-01-26 15:35:47', '2025-01-26 15:35:47');
INSERT INTO `time-et` VALUES (858, 116, 120, 12240, '2025-01-26 15:35:49', '2025-01-26 15:35:49');
INSERT INTO `time-et` VALUES (859, 116, 121, 12005, '2025-01-26 15:35:52', '2025-01-26 15:35:52');
INSERT INTO `time-et` VALUES (860, 116, 122, 4793, '2025-01-26 15:35:54', '2025-01-26 15:35:54');
INSERT INTO `time-et` VALUES (861, 118, 119, 4424, '2025-01-26 15:35:55', '2025-01-26 15:35:55');
INSERT INTO `time-et` VALUES (862, 118, 120, 12240, '2025-01-26 15:35:58', '2025-01-26 15:35:58');
INSERT INTO `time-et` VALUES (863, 118, 121, 12005, '2025-01-26 15:36:01', '2025-01-26 15:36:01');
INSERT INTO `time-et` VALUES (864, 118, 122, 4792, '2025-01-26 15:36:03', '2025-01-26 15:36:03');
INSERT INTO `time-et` VALUES (865, 119, 120, 7580, '2025-01-26 15:36:05', '2025-01-26 15:36:05');
INSERT INTO `time-et` VALUES (866, 119, 121, 9415, '2025-01-26 15:36:08', '2025-01-26 15:36:08');
INSERT INTO `time-et` VALUES (867, 119, 122, 3319, '2025-01-26 15:36:09', '2025-01-26 15:36:09');
INSERT INTO `time-et` VALUES (868, 120, 121, 9396, '2025-01-26 15:36:11', '2025-01-26 15:36:11');
INSERT INTO `time-et` VALUES (869, 120, 122, 10140, '2025-01-26 15:36:13', '2025-01-26 15:36:13');
INSERT INTO `time-et` VALUES (870, 121, 122, 7882, '2025-01-26 15:36:15', '2025-01-26 15:36:15');

-- ----------------------------
-- Table structure for user-priorities
-- ----------------------------
DROP TABLE IF EXISTS `user-priorities`;
CREATE TABLE `user-priorities`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `priority` int NOT NULL,
  `has_lunch` tinyint NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `role` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user-priorities
-- ----------------------------
INSERT INTO `user-priorities` VALUES (9, 'Sonoda Yuya', 'yuya.sonoda.j6@mail.toray', '012345678', 5, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (10, 'Phamthi Yen', 'yen.phamthi.g6@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (11, 'Nguyenthihoang Yen', 'yen.nguyenthihoang.j8@mail.toray', '012345678', 5, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (12, 'Nguyenthi Tuyen', 'tuyen.nguyenthi.s5@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (13, 'Lethi Tuyen', 'tuyen.lethi.v8@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (14, 'Nguyenxuan Tung', 'tung.nguyenxuan.p7@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (15, 'Thieuthicam Tu', 'tu.thieuthicam.y6@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (16, 'Nguyenthi Trang', 'trang.nguyenthi.c3@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (17, 'Nguyenthi Trang', 'trang.nguyenthi.c2@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (18, 'Congminh Tran', 'tran.congminh.q8@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (19, 'Huuduy Tong', 'tong.huuduy.t9@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (20, 'Kagi Tomoya', 'tomoya.kagi.t8@mail.toray', '012345678', 5, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (21, 'Suzuki Akihiro', 'akihiro.suzuki.q2@mail.toray', '012345678', 3, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (22, 'Lethingoc Anh', 'anh.lethingoc.g7@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (23, 'Nguyenhoanghong Anh', 'anh.nguyenhoanghong.g7@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (24, 'Nguyenthiphuong Anh', 'anh.nguyenthiphuong.p4@mail.toray', '012345678', 5, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (25, 'Truongvan Anh', 'anh.truongvan.k9@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (26, 'Nguyenthi Bich', 'bich.nguyenthi.z7@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (27, 'Dothi Chinh', 'chinh.dothi.m8@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (28, 'Quyngo Dang', 'dang.quyngo.c2@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (29, 'Nguyenthithuy Duong', 'duong.nguyenthithuy.y8@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (30, 'Phamthimai Duyen', 'duyen.phamthimai.d4@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (31, 'Technicalvn Garment', 'garment.technicalvn.d7@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (32, 'Nguyenthi Giang', 'giang.nguyenthi.h5@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (33, 'Nt Giang', 'giang.nt.r8@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (34, 'Laithi Ha', 'ha.laithi.r7@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (35, 'Doanthi Hien', 'hanoi-room.thkvn.mr@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (36, 'Hoangthi Hien', 'hien.doanthi.n7@mail.toray', '012345678', 5, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (37, 'Trinhthi Hien', 'hien.hoangthi.g2@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (38, 'Inoue Hirokuni', 'hien.trinhthi.r4@mail.toray', '012345678', 5, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (39, 'Nguyenthi Hoa', 'hirokuni.inoue.z9@mail.toray', '012345678', 4, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (40, 'Nguyenthiphuong Hoa', 'hoa.nguyenthi.u2@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (41, 'Nguyenthithu Hoa', 'hoa.nguyenthiphuong.b2@mail.toray', '012345678', 4, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (42, 'Nguyenthi Hong', 'hoa.nguyenthithu.j6@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (43, 'Vuthi Hop', 'hong.nguyenthi.w6@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (44, 'Buithi Hue', 'hop.vuthi.m7@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (45, 'Dohong Hue', 'hub-room.thkvn.mr@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (46, 'Trandang Hung', 'hue.buithi.y6@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (47, 'Buithi Huong', 'hue.dohong.p2@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (48, 'Chuthithu Huong', 'hung.trandang.v6@mail.toray', '012345678', 5, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (49, 'Daothiminh Huong', 'huong.buithi.g2@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (50, 'Phamthi Huong', 'huong.chuthithu.q5@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (51, 'Phamthilan Huong', 'huong.daothiminh.c9@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (52, 'Tranthithu Huyen', 'huong.phamthi.r3@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (53, 'Murahashi Kazutomi', 'huong.phamthilan.w8@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (54, 'Hayashi Kentaro', 'huyen.tranthithu.y9@mail.toray', '012345678', 4, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (55, 'Tranthi Khanh', 'kazutomi.murahashi.j2@mail.toray', '012345678', 4, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (56, 'Thingocanh Le', 'kentaro.hayashi.m4@mail.toray', '012345678', 4, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (57, 'Habich Lien', 'khanh.tranthi.w4@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (58, 'Nguyenthi Lien', 'le.thingocanh.b3@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (59, 'Nguyenthingoc Loan', 'lien.habich.c5@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (60, 'Piao Longsan', 'lien.nguyenthi.v3@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (61, 'Phamtuan Luc', 'loan.nguyenthingoc.j3@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (62, 'Hoangthi Luong', 'longsan.piao.m6@mail.toray', '012345678', 4, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (63, 'Nguyenthi Mai', 'luc.phamtuan.m2@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (64, 'Yamashita Manabu', 'luong.hoangthi.r3@mail.toray', '012345678', 5, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (65, 'Lethi Nga', 'mai.nguyenthi.r4@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (66, 'Nguyenthi Nga', 'manabu.yamashita.m8@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (67, 'Nguyenthi Nga', 'nga.lethi.h3@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (68, 'Lethi Ngan', 'nga.nguyenthi.j8@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (69, 'Lethibao Ngoc', 'nga.nguyenthi.u3@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (70, 'Nguyenhong Ngoc', 'ngan.lethi.v6@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (71, 'Thingocanh Nguyen', 'ngoc.lethibao.a4@mail.toray', '012345678', 5, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (72, 'Thithuvan Nguyen', 'ngoc.nguyenhong.v7@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (73, 'Vinhxuanthanh Nguyen', 'nguyen.thingocanh.m7@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (74, 'Buihong Nhung', 'nguyen.thithuvan.d9@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (75, 'Caothihong Nhung', 'nguyen.vinhxuanthanh.e8@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (76, 'Hoangthi Nhung', 'nhung.buihong.j5@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (77, 'Lucthi Nhung', 'nhung.caothihong.f9@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (78, 'Tranthihong Nhung', 'nhung.hoangthi.r9@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (79, 'Bachthi Phuong', 'nhung.lucthi.j8@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (80, 'Lethi Phuong', 'nhung.tranthihong.f8@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (81, 'Nguyenthi Phuong', 'phuong.bachthi.y9@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (82, 'Lethihong Quyen', 'phuong.lethi.r2@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (83, 'Nguyenanh Quynh', 'phuong.nguyenthi.b4@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (84, 'Thuathi Quynh', 'quyen.lethihong.p5@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (85, 'Wu Shangfeng', 'quynh.nguyenanh.s6@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (86, 'Ishibashi Shinji', 'quynh.thuathi.u7@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (87, 'Lexuan Son', 'saigon-room.thkvn.mr@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (88, 'Nguyenhoang Son', 'shangfeng.wu.t6@mail.toray', '012345678', 5, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (89, 'Fujimatsu Taiki', 'shinji.ishibashi.b5@mail.toray', '012345678', 4, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (90, 'Suzuma Takayuki', 'son.lexuan.v4@mail.toray', '012345678', 4, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (91, 'Kurosawa Takumi', 'son.nguyenhoang.q7@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (92, 'Lethi Tam', 'taiki.fujimatsu.a2@mail.toray', '012345678', 4, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (93, 'Leanh Thai', 'takayuki.suzuma.y9@mail.toray', '012345678', 4, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (94, 'Nguyenvan Thanh', 'takumi.kurosawa.j4@mail.toray', '012345678', 4, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (95, 'Ngothi Thao', 'tam.lethi.j3@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (96, 'Trinhthi Thao', 'thai.leanh.q7@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (97, 'Maithi Thiem', 'thanh.nguyenvan.a4@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (98, 'Lengoctuan Thinh', 'thao.ngothi.v7@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (99, 'Lethi Thoa', 'thao.trinhthi.s7@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (100, 'Nguyenthi Thoa', 'thiem.maithi.t5@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (101, 'Dothi Thu', 'thinh.lengoctuan.c3@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (102, 'Lethi Thuong', 'thoa.lethi.r7@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (103, 'Lethi Thuong', 'thoa.nguyenthi.g3@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (104, 'Doanthi Thuy', 'thu.dothi.y3@mail.toray', '012345678', 6, 0, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (105, 'Lethi Thuy', 'thuong.lethi.b9@mail.toray', '012345678', 6, 1, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (106, 'Cheuk Wah Yan', 'Cheuk Wah Yan', '3223', 1, 1, NULL, NULL, 1);
INSERT INTO `user-priorities` VALUES (107, 'Kotaro Kish', 'Kotaro Kish', '4343434', 1, NULL, NULL, NULL, 1);
INSERT INTO `user-priorities` VALUES (108, 'Komatsu Mikiko', 'Komatsu Mikiko', '3232323', 1, 1, NULL, NULL, 1);
INSERT INTO `user-priorities` VALUES (109, 'Takahashi Haruki', 'Takahashi Haruki', '323232', 1, NULL, NULL, NULL, 0);
INSERT INTO `user-priorities` VALUES (110, 'Taniguchi Takamitsu', 'Taniguchi Takamitsu', '3233232', 1, NULL, NULL, NULL, 0);
INSERT INTO `user-priorities` VALUES (111, 'Shi jianhao', 'Shi jianhao', '5454545', 1, NULL, NULL, NULL, 0);
INSERT INTO `user-priorities` VALUES (112, 'Tomoya Kagi', 'Tomoya Kagi', '43434', 5, NULL, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (113, 'Fujimatsu Taiki', 'Fujimatsu Taiki', '4343434', 4, NULL, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (114, 'Murahashi Kazutomi', 'Murahashi Kazutomi', '4343434', 4, NULL, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (115, 'Wu Shang Feng', 'Wu Shang Feng', '43433635', 5, NULL, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (116, 'Piao Long San', 'Piao Long San', '4343434', 4, NULL, NULL, NULL, 2);
INSERT INTO `user-priorities` VALUES (117, ' Otsuka Azuki', ' Otsuka Azuki', '3232323', 1, NULL, NULL, NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
