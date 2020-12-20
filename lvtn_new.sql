-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2020 lúc 07:25 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lvtn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_lienhe`
--

CREATE TABLE `admin_lienhe` (
  `Mã` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `lh_id` int(11) NOT NULL,
  `is_checked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin_lienhe`
--

INSERT INTO `admin_lienhe` (`Mã`, `admin_id`, `lh_id`, `is_checked`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bus_model`
--

CREATE TABLE `bus_model` (
  `Mã` int(11) NOT NULL,
  `Tên_Loại` varchar(255) NOT NULL,
  `Loại_ghế` int(11) NOT NULL,
  `Số_ghế` int(11) NOT NULL,
  `Số_hàng` int(11) NOT NULL,
  `Số_cột` int(11) NOT NULL,
  `Sơ_đồ` varchar(255) NOT NULL,
  `Mã_nhân_viên_tạo` int(11) NOT NULL,
  `Mã_nhân_viên_chỉnh_sửa` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bus_model`
--

INSERT INTO `bus_model` (`Mã`, `Tên_Loại`, `Loại_ghế`, `Số_ghế`, `Số_hàng`, `Số_cột`, `Sơ_đồ`, `Mã_nhân_viên_tạo`, `Mã_nhân_viên_chỉnh_sửa`, `created_at`, `updated_at`) VALUES
(6, 'Ghe Ngoi', 0, 47, 12, 6, '100000110011110011110011110011110011110011110011110011110011110011111111', 1, 1, '2018-10-24 08:15:10', '2018-10-24 08:15:10'),
(7, 'Giuong Nam', 1, 41, 7, 3, '10000101011010110101101011010111111101011010110101101011010111111', 1, 1, '2018-10-24 08:20:42', '2020-12-19 08:14:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyen_xe`
--

CREATE TABLE `chuyen_xe` (
  `Mã` int(11) NOT NULL,
  `Mã_nhân_viên_tạo` int(11) NOT NULL,
  `Mã_lộ_trình` int(11) NOT NULL,
  `Mã_tài_xế` int(11) NOT NULL,
  `Mã_xe` int(11) NOT NULL,
  `Ngày_xuất_phát` date NOT NULL,
  `Giờ_xuất_phát` time NOT NULL,
  `Trạng_thái` int(11) NOT NULL DEFAULT 0,
  `Tiền_vé` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_del` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chuyen_xe`
--

INSERT INTO `chuyen_xe` (`Mã`, `Mã_nhân_viên_tạo`, `Mã_lộ_trình`, `Mã_tài_xế`, `Mã_xe`, `Ngày_xuất_phát`, `Giờ_xuất_phát`, `Trạng_thái`, `Tiền_vé`, `created_at`, `updated_at`, `is_del`) VALUES
(51, 1, 6, 6, 6, '2020-12-21', '07:20:00', 0, 200000, '2020-12-20 12:37:21', '2020-12-20 12:37:21', 0),
(52, 1, 5, 3, 6, '2020-12-22', '13:40:00', 0, 200000, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `Mã` int(11) NOT NULL,
  `Tên` varchar(255) DEFAULT NULL,
  `Tên_không_dấu` varchar(255) NOT NULL,
  `Ngày_sinh` date DEFAULT NULL,
  `Giới tính` set('0','1','2') DEFAULT NULL,
  `Địa chỉ` tinytext DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Sđt` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`Mã`, `Tên`, `Tên_không_dấu`, `Ngày_sinh`, `Giới tính`, `Địa chỉ`, `Password`, `Email`, `Sđt`, `created_at`, `updated_at`) VALUES
(7, 'Nguyễn Đặng Sỹ Luân', 'Nguyen Dang Sy Luan', '1995-12-09', '1', NULL, 'd41d8cd98f00b204e9800998ecf8427e', 'syluanit@gmail.com', '0963219951', '2018-10-24 08:40:26', '2018-12-05 01:35:14'),
(8, 'Dương Kim', 'Duong Kim', '1994-08-12', '1', NULL, '52c69e3a57331081823331c4e69d3f2e', 'duongkim@gmail.com', '0322336512', '2018-10-24 08:42:46', '2018-10-24 08:42:46'),
(9, 'Dương Lan', 'Duong Lan', '1992-05-12', '2', NULL, '52c69e3a57331081823331c4e69d3f2e', 'duonglan@gmail.com', '0969315468', '2018-10-24 08:44:33', '2018-10-24 08:44:33'),
(10, 'Dương Anh', 'Duong Anh', '1995-01-22', '1', NULL, '52c69e3a57331081823331c4e69d3f2e', 'duonganh@gmail.com', '0523459876', '2018-10-24 08:45:33', '2018-10-24 08:45:33'),
(11, 'Dương Chi', 'Duong Chi', '1996-12-25', '2', NULL, '52c69e3a57331081823331c4e69d3f2e', 'duongchi@gmail.com', '0882283553', '2018-10-24 08:46:21', '2018-10-24 08:46:21'),
(12, 'Dương Cao', 'Duong Cao', '1993-09-15', '1', NULL, '52c69e3a57331081823331c4e69d3f2e', 'duongcao@gmail.com', '0835535793', '2018-10-24 08:47:13', '2018-10-24 08:47:13'),
(13, 'Dương Khang', 'Duong Khang', '1997-07-13', '1', NULL, '83d634317da9e6facbb206b52937abc3', 'duongkhang@gmail.com', '0743345786', '2018-10-24 08:47:57', '2018-10-24 08:47:57'),
(14, 'Dương Tuyết', 'Duong Tuyet', '1995-05-14', '2', NULL, '83d634317da9e6facbb206b52937abc3', 'duongtuyet@gmail.com', '0983383747', '2018-10-24 08:49:11', '2018-10-24 08:49:11'),
(15, 'Dương Mai', 'Duong Mai', '1993-02-19', '2', NULL, '83d634317da9e6facbb206b52937abc3', 'duongmai@gmail.com', '0312435678', '2018-10-24 08:50:08', '2018-10-24 08:50:08'),
(16, 'Dương Nam', 'Duong Nam', '1996-12-17', '1', NULL, '83d634317da9e6facbb206b52937abc3', 'duongnam@gmail.com', '0786456732', '2018-10-24 08:51:06', '2018-10-24 08:51:06'),
(17, 'Dương Dương', 'Duong Duong', '1994-11-16', '1', NULL, '83d634317da9e6facbb206b52937abc3', 'duongduong@gmail.com', '0969235481', '2018-10-24 08:51:47', '2018-10-24 08:51:47'),
(18, 'Dương Nhất', 'Duong Nhat', '1989-09-09', '1', NULL, '83d634317da9e6facbb206b52937abc3', 'duongnhat@gmail.com', '0343546576', '2018-10-24 08:53:15', '2018-10-24 08:53:15'),
(19, 'Dương Thanh', 'Duong Thanh', '1995-08-25', '2', NULL, '83d634317da9e6facbb206b52937abc3', 'duongthanh@gmail.com', '0321345678', '2018-10-24 08:53:59', '2018-10-24 08:53:59'),
(20, 'Dương Nguyệt', 'Duong Nguyet', '1997-04-14', '2', NULL, '83d634317da9e6facbb206b52937abc3', 'duongnguyet@gmail.com', '0945454556', '2018-10-24 08:54:42', '2018-10-24 08:54:42'),
(21, 'Dương Ngọc', 'Duong Ngoc', '1993-03-15', '2', NULL, '83d634317da9e6facbb206b52937abc3', 'duongngoc@gmail.com', '0312123456', '2018-10-24 08:55:26', '2018-10-24 08:55:26'),
(22, 'Dương Như', 'Duong Nhu', '1997-02-11', '2', NULL, '83d634317da9e6facbb206b52937abc3', 'duongnhu@gmail.com', '0964328764', '2018-10-24 08:56:46', '2018-10-24 08:56:46'),
(23, 'Hoàng Anh', 'Hoang Anh', '1994-04-15', '2', NULL, '83d634317da9e6facbb206b52937abc3', 'hoanganh@gmail.com', '0945345645', '2018-10-24 08:58:08', '2018-10-24 08:58:08'),
(24, 'Hoàng Lan', 'Hoang Lan', '1991-11-11', '2', NULL, '83d634317da9e6facbb206b52937abc3', 'hoanglan@gmail.com', '0393777037', '2018-10-24 08:58:53', '2018-10-24 08:58:53'),
(25, 'Hoàng Văn Hoàng', 'Hoang Van Hoang', '1991-08-14', '1', NULL, '83d634317da9e6facbb206b52937abc3', 'vanhoang@gmail.com', '0838384858', '2018-10-24 08:59:43', '2018-10-24 08:59:43'),
(26, 'Hoàng Minh', 'Hoang Minh', '1992-02-12', '1', NULL, '83d634317da9e6facbb206b52937abc3', 'hoangminh@gmail.com', '0932323445', '2018-10-24 09:00:35', '2018-10-24 09:00:35'),
(27, 'Hoàng Kim', 'Hoang Kim', '1995-02-12', '1', NULL, '83d634317da9e6facbb206b52937abc3', 'hoangkim@gmail.com', '0556765434', '2018-10-24 09:01:34', '2018-10-24 09:01:34'),
(28, 'Phan Anh Minh', 'Phan Anh Minh', '1994-04-10', '1', NULL, '96e79218965eb72c92a549dd5a330112', 'phananhminh@gmail.com', '0986645434', '2018-10-25 16:36:29', '2018-11-13 02:17:55'),
(29, 'Phan Anh Sơn', 'Phan Anh Son', '2000-02-20', '1', NULL, '96e79218965eb72c92a549dd5a330112', NULL, '0981123235', '2018-11-15 09:26:47', '2018-11-15 09:26:47'),
(30, 'Nguyễn Dũng', 'Nguyen Dung', '1989-03-11', '1', NULL, 'cd60ed4aeff406acc74d57b6ac7d0a9f', NULL, '0988877744', '2018-11-15 09:55:37', '2018-11-15 09:55:37'),
(31, 'Nguyễn Hùng', 'Nguyen Hung', '1985-03-10', '1', NULL, 'e01e6a729e6fa7b970727061f92fe53c', NULL, '0977788844', '2018-11-15 09:57:37', '2018-11-15 09:57:37'),
(32, 'Nguyễn Thị Hạnh', 'Nguyen Thi Hanh', '1995-10-21', '2', NULL, 'dcd3103f1503bbc5c7db0991ff9c08bb', NULL, '0978788787', '2018-11-15 11:58:42', '2018-11-15 11:58:42'),
(33, 'Phan Anh Hoàng', 'Phan Anh Hoang', '2001-02-13', '1', '506/19/15 3/2 street', '96e79218965eb72c92a549dd5a330112', 'hoang@gmail.com', '0909099090', '2018-11-29 09:07:31', '2018-12-14 10:44:56'),
(34, 'Nguyễn Văn Sơn', 'Nguyen Van Son', '1992-10-20', '1', NULL, '96e79218965eb72c92a549dd5a330112', 'vanson@gmail.com', '0989989898', '2018-12-15 11:19:15', '2018-12-15 11:19:15'),
(35, 'Trần Khánh', 'Tran Khanh', '1995-03-10', '1', NULL, '2c7c9dd50b736aff446264573cf97d8e', NULL, '0976767676', '2018-12-15 11:23:56', '2018-12-15 11:23:56'),
(36, 'Nguyễn Trọng Thảo', 'Nguyen Trong Thao', '1970-03-20', '1', NULL, '382b2f13fb62a904464607a06b6fa490', NULL, '0913692147', '2020-12-19 20:13:31', '2020-12-19 20:13:31'),
(37, 'Hà Tử Hào', 'HaTuHao', '2000-10-31', '1', 'lò siêu', 'tuhao3110', 'tuhao3110@gmail.com', '0932794211', '2020-12-20 12:59:25', '2020-12-20 12:59:25'),
(38, 'Ha Tu Hao', 'Ha Tu Hao', '2000-10-31', '1', NULL, '660076ca28d083c2969e5ad1923aec82', NULL, '0983034557', '2020-12-20 13:15:56', '2020-12-20 13:15:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondatve`
--

CREATE TABLE `dondatve` (
  `Mã` varchar(255) NOT NULL,
  `Mã_nhân_viên_đặt` int(11) DEFAULT NULL,
  `Mã_khách_hàng` int(11) NOT NULL,
  `Mã_chuyến_xe` int(11) NOT NULL,
  `Vị_trí_đặt` varchar(255) NOT NULL,
  `Trạng_thái` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dondatve`
--

INSERT INTO `dondatve` (`Mã`, `Mã_nhân_viên_đặt`, `Mã_khách_hàng`, `Mã_chuyến_xe`, `Vị_trí_đặt`, `Trạng_thái`, `created_at`, `updated_at`) VALUES
('141544628358', 1, 14, 22, 'A-8,A-9,A-7,A-4', 2, '2018-12-12 15:25:58', '2018-12-13 19:32:59'),
('281544591129', 1, 28, 22, 'A-1,A-2,A-3', 2, '2018-12-12 05:05:29', '2018-12-13 19:31:26'),
('281544712330', 1, 28, 22, 'A-2', 0, '2018-12-13 21:45:30', '2018-12-13 21:45:30'),
('301544631075', 1, 30, 22, 'A-5', 2, '2018-12-12 16:11:15', '2018-12-13 17:00:52'),
('311544704740', 1, 31, 22, 'A-1', 2, '2018-12-13 19:39:00', '2018-12-13 19:39:17'),
('321544631469', 1, 32, 22, 'A-6', 2, '2018-12-12 23:17:49', '2018-12-13 16:58:46'),
('331544706767', 1, 33, 22, 'A-1', 0, '2018-12-13 20:12:47', '2018-12-13 20:12:47'),
('331544847741', 6, 33, 22, 'A-3,A-4', 0, '2018-12-15 11:22:21', '2018-12-15 11:22:21'),
('71544704995', 1, 7, 22, 'A-1', 2, '2018-12-13 19:43:15', '2018-12-13 19:43:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duong_di`
--

CREATE TABLE `duong_di` (
  `Mã` int(11) NOT NULL,
  `Mã_Trạm_Start` int(11) NOT NULL,
  `Mã_Trạm_End` int(11) NOT NULL,
  `Tọa_độ_detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `Mã` int(11) NOT NULL,
  `Họ_Tên` varchar(255) NOT NULL,
  `Ngày_sinh` date NOT NULL,
  `Giới_tính` set('0','1','2') DEFAULT NULL,
  `Địa_chỉ` tinytext NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Loại_NV` set('QTV','QLDV','TX') NOT NULL,
  `Chi_nhánh` varchar(255) DEFAULT NULL,
  `Bằng_lái` varchar(255) DEFAULT NULL,
  `Sđt` varchar(255) NOT NULL,
  `Date_Starting` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`Mã`, `Họ_Tên`, `Ngày_sinh`, `Giới_tính`, `Địa_chỉ`, `Username`, `Password`, `Email`, `Loại_NV`, `Chi_nhánh`, `Bằng_lái`, `Sđt`, `Date_Starting`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Hồ Trọng Tín', '2000-09-15', '1', 'HCM', 'admin', 'admin', 'nhttin150920@gmail.com', 'QTV', 'Hồ Chí Minh', NULL, '0983034558', '2020-12-01', '2020-12-01 20:02:37', '2020-12-19 14:46:51'),
(3, 'Phan Anh Sơn', '1993-05-11', '1', 'Quảng Ngãi', 'tx_anhson', 'd41d8cd98f00b204e9800998ecf8427e', 'phananhson@email.com', 'TX', 'Hồ Chí Minh', '12345678', '0967676767', '2018-10-08', '2018-10-10 09:11:31', '2018-12-15 11:33:38'),
(4, 'Nguyễn Bằng', '1994-04-10', '1', '506/19/15 3/2 street', 'tx_nguyenbang', 'd41d8cd98f00b204e9800998ecf8427e', 'nguyenbang@gmail.com', 'TX', 'Ho Chi Minh City', '8886534', '0998989898', '2001-03-20', '2018-10-24 07:48:20', '2018-12-15 11:34:49'),
(5, 'Văn Hoang', '1988-01-10', '1', '402/33 Xô Viết Nghệ TĨnh', 'tx_vanhoang', 'd41d8cd98f00b204e9800998ecf8427e', 'vanhoang@gmail.com', 'TX', 'HCMC', '123321', '0909321123', '2018-10-31', '2018-10-31 07:46:15', '2018-12-20 03:12:48'),
(6, 'Phan Anh Lộc', '1995-09-11', '0', '506/19/15 3/2 street', 'qldv_anhloc', '96e79218965eb72c92a549dd5a330112', 'anhminh@email.com', 'QLDV', 'Ho Chi Minh City', NULL, '0987435212', '2015-03-10', '2018-11-13 02:24:40', '2018-11-13 02:24:40'),
(7, 'Trần Hoàng Anh', '1992-04-20', '1', 'Linh Trung, Thủ Đức', 'qldv_hoanganh', 'd41d8cd98f00b204e9800998ecf8427e', 'tranhoanganh@gmail.com', 'QLDV', 'Hồ Chí Minh', NULL, '0987788778', '2017-03-10', '2018-12-20 03:07:22', '2018-12-20 03:07:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioi_thieu`
--

CREATE TABLE `gioi_thieu` (
  `gt_id` int(10) NOT NULL,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `id_admin_created` int(10) NOT NULL,
  `id_admin_changed` int(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gioi_thieu`
--

INSERT INTO `gioi_thieu` (`gt_id`, `noidung`, `id_admin_created`, `id_admin_changed`, `created_at`, `updated_at`) VALUES
(1, '<p>test 1 tsdasdhsadkasdhlsakdksaldklsh</p>\r\n\r\n<p>dsad</p>\r\n\r\n<p>sadsadasd</p>\r\n\r\n<p>s</p>\r\n\r\n<p>d&aacute;</p>\r\n\r\n<p>dsdas</p>\r\n\r\n<p>dsa</p>\r\n\r\n<p>s</p>\r\n\r\n<p>d</p>\r\n\r\n<p>đ</p>', 1, 1, '2018-11-15 17:16:18', '2018-12-05 13:34:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `lh_id` int(10) NOT NULL,
  `ho_ten` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `dien_thoai` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tieu_de` varchar(255) CHARACTER SET utf8 NOT NULL,
  `noi_dung` text CHARACTER SET utf8 NOT NULL,
  `ngay_dang` datetime NOT NULL,
  `is_checked` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`lh_id`, `ho_ten`, `email`, `dien_thoai`, `tieu_de`, `noi_dung`, `ngay_dang`, `is_checked`) VALUES
(1, 'nguyen thhanh nhan', '51202526@gmail.com', '0989671651', 'testtesttestttesttesttesttesttesttesttesttesttesttesttesttesttesttestesttesttesttesttesttesttesttesttesttesttest', 'test', '2018-11-16 03:40:35', 0),
(2, 'Nguyen Thanh Nhan', 'nhan51202526@gmail.com', '0989671651', 'test', 'tetstsdasd', '2018-11-28 17:55:48', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lo_trinh`
--

CREATE TABLE `lo_trinh` (
  `Mã` int(11) NOT NULL,
  `Mã_nhân_viên_tạo` int(11) NOT NULL,
  `Mã_nhân_viên_chỉnh_sửa` int(11) NOT NULL,
  `Nơi_đi` varchar(255) NOT NULL,
  `Nơi_đến` varchar(255) NOT NULL,
  `Các_trạm_dừng_chân` varchar(255) NOT NULL,
  `Thời_gian_đi_dự_kiến` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lo_trinh`
--

INSERT INTO `lo_trinh` (`Mã`, `Mã_nhân_viên_tạo`, `Mã_nhân_viên_chỉnh_sửa`, `Nơi_đi`, `Nơi_đến`, `Các_trạm_dừng_chân`, `Thời_gian_đi_dự_kiến`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'TP.Hồ Chí Minh', 'Quảng Ngãi', '1,3', 9120, '2018-10-09 12:38:30', '2018-12-05 02:47:11'),
(2, 1, 1, 'Quảng Ngãi', 'TP.Hồ Chí Minh', '1,3', 0, '2018-10-09 08:50:20', '2018-10-24 07:28:44'),
(3, 1, 1, 'Quảng Nam', 'TP.Hồ Chí Minh', '1,3', 0, '2018-10-09 08:51:33', '2018-10-24 07:28:54'),
(4, 1, 1, 'Đà Nẵng', 'TP.Hồ Chí Minh', '1,3', 0, '2018-10-09 08:56:45', '2018-10-24 07:29:02'),
(5, 1, 1, 'Đà Lạt', 'TP.Hồ Chí Minh', '1', 0, '2018-10-24 07:29:27', '2018-10-24 07:29:55'),
(6, 1, 1, 'TP.Hồ Chí Minh', 'Đà Lạt', '1,3', 7200, '2018-10-24 07:30:12', '2018-10-24 07:30:12'),
(7, 1, 1, 'TP.Hồ Chí Minh', 'Bến Tre', '1', 0, '2018-10-31 07:41:50', '2018-10-31 07:41:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `introduce` text CHARACTER SET utf8 NOT NULL,
  `content` longtext CHARACTER SET utf8 NOT NULL,
  `check_slide` int(11) NOT NULL,
  `id_admin_created` int(10) NOT NULL,
  `id_admin_changed` int(10) NOT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `title`, `image`, `introduce`, `content`, `check_slide`, `id_admin_created`, `id_admin_changed`, `is_disabled`, `created_at`, `updated_at`) VALUES
(1, 'Mã Vũng Mới Cho Các Tỉnh Thành Trong 3 Đợt Thay Đổi Năm 2017', '1543856022-mavung.jpg', 'Bắt đầu từ 0h ngày 11/2/2017, 13 tỉnh thành đầu tiên trên cả nước sẽ tiến hành chuyển đổi sang mã vùng điện thoại cố định mới giai đoạn 1. Thời gian quay số song song từ 11/2/2017 đến 12/3/2017. Thời gian duy trì âm báo từ 13/3/2017 đến 14/4/2017.', '<p>C&aacute;c tỉnh n&agrave;y gồm Sơn La, Lai Ch&acirc;u, L&agrave;o Cai, Điện Bi&ecirc;n, Y&ecirc;n B&aacute;i, Quảng B&igrave;nh, Quảng Trị, Thừa Thi&ecirc;n - Huế, Quảng Nam, Đ&agrave; Nẵng, Thanh Ho&aacute;, Nghệ An, H&agrave; Tĩnh. C&aacute;c m&atilde; v&ugrave;ng mới được quy định cụ thể như sau:</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/mavung.jpg\" style=\"height:410px; width:850px\" /></p>\r\n\r\n<p>Giai đoạn 2 bắt đầu chuyển đổi từ 0h ng&agrave;y 15/04/2017, &aacute;p dụng cho 23 tỉnh, th&agrave;nh phố. Thời gian quay số song song từ 15/4/2017 đến 14/5/2017. Thời gian duy tr&igrave; &acirc;m b&aacute;o từ 15/5/2017 đến 16/6/2017. C&aacute;c m&atilde; v&ugrave;ng mới của 23 tỉnh th&agrave;nh chuyển đổi giai đoạn 2 được quy định cụ thể như sau:</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/mavung2.jpg\" style=\"height:613px; width:850px\" />Giai đoạn 3 bắt đầu từ 0h ng&agrave;y 17/06/2017 &aacute;p dụng cho 23 tỉnh, th&agrave;nh phố cuối c&ugrave;ng. Thời gian quay số song song từ 17/6/2017 đến 16/7/2017. Thời gian duy tr&igrave; &acirc;m b&aacute;o từ 17/7/2017 đến 31/8/2017.&nbsp;C&aacute;c m&atilde; v&ugrave;ng mới của 23 tỉnh th&agrave;nh chuyển đổi giai đoạn 3&nbsp;được quy định cụ thể như sau:</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/mavung3.jpg\" style=\"height:617px; width:850px\" /></p>\r\n\r\n<p>Ri&ecirc;ng 4 tỉnh Vĩnh Ph&uacute;c, Ph&uacute; Thọ, H&ograve;a B&igrave;nh v&agrave; H&agrave; Giang được giữ nguy&ecirc;n m&atilde; v&ugrave;ng.</p>\r\n\r\n<p><em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (Theo&nbsp;http://vietnamnet.vn)</em></p>\r\n\r\n<p>&nbsp;</p>', 0, 1, 1, 0, '2018-11-15 09:10:29', '2018-12-04 05:12:45'),
(3, 'Chương Trình Tặng Vé Tết Đinh Dậu 2017 Cho Sinh Viên', 'vetet.jpg', 'Sáng 18/01, tại Bến xe Cầu Rào, Thành đoàn – Hội Sinh viên Việt Nam thành phố phối hợp với Sở Giao thông vận tải Hải Phòng tổ chức chương trình “Hỗ trợ sinh viên học tập tại Hải Phòng về quê đón Tết Nguyên đán 2017”.', '<p>Tới dự chương tr&igrave;nh c&oacute; c&aacute;c đồng ch&iacute;: Trần Quang Tường - Ủy vi&ecirc;n Ban Chấp h&agrave;nh Trung ương Đo&agrave;n, Th&agrave;nh ủy vi&ecirc;n, B&iacute; thư Th&agrave;nh đo&agrave;n; Nguyễn B&igrave;nh Minh - Ủy vi&ecirc;n Ban Chấp h&agrave;nh Trung ương Đo&agrave;n, Ph&oacute; Trưởng Ban Thanh ni&ecirc;n Trường học Trung ương Đo&agrave;n; B&ugrave;i Thị Ngọc - Ph&oacute; B&iacute; thư Thường trực Th&agrave;nh đo&agrave;n; Ủy vi&ecirc;n Ban Thư k&yacute; Trung ương Hội Sinh vi&ecirc;n Việt Nam; Phạm Văn Huy - Ph&oacute; Gi&aacute;m đốc Sở Giao th&ocirc;ng vận tải Hải Ph&ograve;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/vetet.jpg\" style=\"height:735px; width:980px\" />Tại Chương tr&igrave;nh, Th&agrave;nh đo&agrave;n - Sở Giao th&ocirc;ng vận tải - Hội Sinh vi&ecirc;n Việt Nam th&agrave;nh phố v&agrave; c&aacute;c doanh nghiệp vận tải Ho&agrave;ng Long, Hải &Acirc;u ...&nbsp;đ&atilde; trao tặng hơn 690 v&eacute; xe miễn ph&iacute; cho sinh vi&ecirc;n về 27 tỉnh, th&agrave;nh phố. Ngo&agrave;i những tấm v&eacute; nghĩa t&igrave;nh, hơn 170 bạn sinh vi&ecirc;n c&oacute; ho&agrave;n cảnh kh&oacute; khăn c&ograve;n được nhận những suất qu&agrave; Tết, những phần qu&agrave; &yacute; nghĩa gi&uacute;p c&aacute;c bạn trở về b&ecirc;n gia đ&igrave;nh trong những ng&agrave;y xu&acirc;n th&ecirc;m đầm ấm.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; năm thứ 5 chương tr&igrave;nh được tổ chức nhằm hỗ trợ v&agrave; tạo điều kiện cho sinh vi&ecirc;n c&oacute; ho&agrave;n cảnh kh&oacute; khăn đang theo học tại c&aacute;c trường Đại học, Cao đẳng tr&ecirc;n địa b&agrave;n th&agrave;nh phố Hải Ph&ograve;ng về qu&ecirc; sum họp c&ugrave;ng gia đ&igrave;nh trong dịp Tết Nguy&ecirc;n đ&aacute;n. Qua đ&oacute;, thể hiện sự quan t&acirc;m, chia sẻ của x&atilde; hội, đ&atilde; tạo hiệu ứng t&iacute;ch cực v&agrave; lan tỏa trong sinh vi&ecirc;n v&agrave; cộng đồng. Tổng gi&aacute; trị của đợt hỗ trợ dịp Tết Nguy&ecirc;n đ&aacute;n Đinh Dậu 2017 cho sinh vi&ecirc;n l&agrave; gần 200 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/vetet2.jpg\" style=\"height:735px; width:980px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<em>(Theo http://thanhdoanhaiphong.gov.vn)</em></p>', 0, 1, 1, 0, '2018-11-15 10:12:50', '2018-11-15 10:12:50'),
(5, 'Chuyển Tuyến Hải Phòng ↔ Hồ Chí Minh, Vũng Tàu Về Bến Thượng Lý - Hải Phòng Từ 22/11/2017', 'tintuc3.jpg', 'Thông báo chuyển về BẾN XE THƯỢNG LÝ-HẢI PHÒNG từ 22/11/2017\r\nBẾN XE THƯỢNG LÝ: SỐ 52 ĐƯỜNG HÀ NỘI (SỞ DẦU) - HỒNG BÀNG.', '<p>Xe kh&aacute;ch Ho&agrave;ng Long k&iacute;nh b&aacute;o tới qu&yacute; kh&aacute;ch h&agrave;ng chuyển bến xe từ 22/11/2017 :<br />\r\n- Theo sự động vi&ecirc;n, định hướng từ Ủy Ban nh&acirc;n d&acirc;n Th&agrave;nh phố v&agrave; quy hoạch của Sở giao th&ocirc;ng vận tải Hải Ph&ograve;ng.</p>\r\n\r\n<p>- Kể từ 22/11/2017, Xe kh&aacute;ch Ho&agrave;ng Long chuyển to&agrave;n bộ tuyến đi c&aacute;c tỉnh miền trung, miền nam từ bến xe Niệm Nghĩa về BẾN XE THƯỢNG L&Yacute; :</p>\r\n\r\n<p><strong>Hải Ph&ograve;ng &harr;&nbsp;HỒ CH&Iacute; MINH<br />\r\nHải Ph&ograve;ng &harr; VŨNG T&Agrave;U&nbsp;<br />\r\nHải Ph&ograve;ng &harr; Đ&Agrave; NẴNG</strong></p>\r\n\r\n<p>C&aacute;c tuyến đi tới c&aacute;c tỉnh, th&agrave;nh phố tr&ecirc;n to&agrave;n Quốc như:&nbsp;<br />\r\n<em><strong>Ninh B&igrave;nh &rarr; Thanh H&oacute;a &rarr; Vinh, Nghệ An&rarr; H&agrave; Tĩnh &rarr; Đồng Hới, Quảng B&igrave;nh &rarr; Quảng Trị&nbsp;&rarr; Huế &rarr; Quảng Nam &rarr; Quảng Ng&atilde;i &rarr; B&igrave;nh Đ&igrave;nh, Quy Nhơn, Ph&uacute; Y&ecirc;n &rarr; Nha Trang, Cam Ranh,Kh&aacute;nh H&ograve;a &rarr; Phan Rang, Phan Thiết, B&igrave;nh Thuận &rarr; Đồng Nai &hellip; cũng sẽ xuất ph&aacute;t tại Bến xe Thượng L&yacute; v&agrave; ngược lại.&nbsp;</strong></em><br />\r\n- Ho&agrave;ng Long hiện đ&atilde; mở th&ecirc;m văn ph&ograve;ng chuyển ph&aacute;t nhanh h&agrave;ng h&oacute;a, b&aacute;n v&eacute; c&aacute;c tuyến ngắn v&agrave; tuyến miền trung, miền nam tại vị tr&iacute;&nbsp;<strong>cổng ch&iacute;nh Bến xe Thượng L&yacute;</strong>.<br />\r\n- Mọi hoạt động kh&aacute;c của xe kh&aacute;ch Ho&agrave;ng Long tr&ecirc;n địa b&agrave;n Hải Ph&ograve;ng kh&ocirc;ng thay đổi.&nbsp;<br />\r\n- Tuyến Hải Ph&ograve;ng- H&agrave; Nội vẫn hoạt động b&igrave;nh thường tại bến xe Niệm Nghĩa.</p>\r\n\r\n<p>- Mọi chi tiết xin li&ecirc;n hệ tổng đ&agrave;i<strong>&nbsp;02253.920.920&nbsp;</strong>24/7 Ho&agrave;ng Long sẽ tư vấn trực tiếp đến qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/tintuc3.jpg\" style=\"height:638px; width:960px\" /></p>', 0, 1, 1, 0, '2018-11-15 10:17:40', '2018-11-15 10:17:40'),
(17, 'Đà Lạt – Thiên đường du lịch nghỉ dưỡng của Việt Nam', 'canh-dep-da-lat.jpg', 'Đà Lạt là một thành phố trực thuộc tỉnh và tỉnh lị tỉnh Lâm Đồng, nằm trên cao nguyên Lâm Viên, ở độ cao 1.500 m so với mặt nước biển và diện tích tự nhiên: 393,29 km².\r\nVới nhiều cảnh quan đẹp, Đà Lạt là một trong những thành phố du lịch nổi tiếng nhất của Việt Nam. Trong thời Pháp thuộc, tên tiếng Latin Dat Aliis Laetitiam Aliis Temperiem có nghĩa là “cho những người này niềm vui, cho những người khác sự mát mẻ”. Đà Lạt được mệnh danh là : thành phố hoa, thành phố tình yêu, thành phố mùa xuân, thành phố sương mù.', '<p><strong>1. Giới thiệu:</strong><br />\r\nĐ&agrave; Lạt l&agrave; một th&agrave;nh phố trực thuộc tỉnh v&agrave; tỉnh lị tỉnh L&acirc;m Đồng, nằm tr&ecirc;n cao nguy&ecirc;n L&acirc;m Vi&ecirc;n, ở độ cao 1.500 m so với mặt nước biển v&agrave; diện t&iacute;ch tự nhi&ecirc;n: 393,29 km&sup2;.<br />\r\nVới nhiều cảnh quan đẹp, Đ&agrave; Lạt l&agrave; một trong những th&agrave;nh phố du lịch nổi tiếng nhất của Việt Nam. Trong thời Ph&aacute;p thuộc, t&ecirc;n tiếng Latin Dat Aliis Laetitiam Aliis Temperiem c&oacute; nghĩa l&agrave; &ldquo;cho những người n&agrave;y niềm vui, cho những người kh&aacute;c sự m&aacute;t mẻ&rdquo;. Đ&agrave; Lạt được mệnh danh l&agrave; : th&agrave;nh phố hoa, th&agrave;nh phố t&igrave;nh y&ecirc;u, th&agrave;nh phố m&ugrave;a xu&acirc;n, th&agrave;nh phố sương m&ugrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/anh%201.jpg\" style=\"height:591px; width:739px\" /></p>\r\n\r\n<p><strong>2. Vị tr&iacute; địa l&yacute;:</strong></p>\r\n\r\n<p>Th&agrave;nh phố Đ&agrave; Lạt nằm trong cao nguy&ecirc;n Lang Biang, ph&iacute;a Bắc tỉnh L&acirc;m Đồng, Về ph&iacute;a Bắc, Đ&agrave; Lạt gi&aacute;p với huyện Lạc Dương, về ph&iacute;a Đ&ocirc;ng v&agrave; Đ&ocirc;ng Nam gi&aacute;p với huyện Đơn Dương, về ph&iacute;a T&acirc;y v&agrave; T&acirc;y Nam gi&aacute;p với hai huyện L&acirc;m H&agrave; v&agrave; Đức Trọng.<br />\r\nH&agrave;ng trăm năm trước đ&acirc;y, Đ&agrave; Lạt l&agrave; địa b&agrave;n cư tr&uacute; của người Lạch, vốn l&agrave; cư d&acirc;n của to&agrave;n bộ cao nguy&ecirc;n Lang Biang. Đ&agrave; Lạt c&oacute; diện t&iacute;ch hơn 400 km&sup2;, bao bọc bởi c&aacute;c đỉnh n&uacute;i cao v&agrave; d&atilde;y n&uacute;i li&ecirc;n tiếp:</p>\r\n\r\n<p>a/ Ph&iacute;a Bắc v&agrave; T&acirc;y Bắc giới hạn bởi d&atilde;y Chorơmui, Yộ Đa Myut (1.816 m), T&acirc;y Bắc dựa v&agrave;o ch&acirc;n d&atilde;y n&uacute;i Chư Yang Kae (1.921 m), thuộc quần sơn Lang Biang m&agrave; đỉnh cao nhất l&agrave; Chư Yang Sinh (1.408 m).<br />\r\nb/ Ph&iacute;a Đ&ocirc;ng l&agrave; ch&acirc;n d&atilde;y n&uacute;i Bi Doup (2.278 m) dốc xuống cao nguy&ecirc;n Dran.<br />\r\nc/ Ph&iacute;a Đ&ocirc;ng Nam chắn bởi d&atilde;y Cho Proline (1.629 m).<br />\r\nd/ Ph&iacute;a Nam v&agrave; T&acirc;y Nam c&oacute; d&atilde;y n&uacute;i Voi (1.754 m) v&agrave; Y&agrave;ng Sơreng bao bọc. Địa h&igrave;nh: Cao trung b&igrave;nh so với mặt biển l&agrave; 1.500 m. Nơi cao nhất trong trung t&acirc;m th&agrave;nh phố l&agrave; Nh&agrave; Bảo T&agrave;ng (1.532 m), nơi thấp nhất l&agrave; thung lũng Nguyễn Tri Phương (1.398,2 m).</p>\r\n\r\n<p>B&ecirc;n trong cao nguy&ecirc;n, địa h&igrave;nh Đ&agrave; Lạt ph&acirc;n th&agrave;nh hai bậc r&otilde; rệt:<br />\r\n+ Bậc địa h&igrave;nh thấp l&agrave; v&ugrave;ng trung t&acirc;m c&oacute; dạng như một l&ograve;ng chảo bao gồm c&aacute;c d&atilde;y đồi đỉnh tr&ograve;n, dốc thoải c&oacute; độ cao tương đối 25-100 m, lượn s&oacute;ng nhấp nh&ocirc;, độ ph&acirc;n cắt yếu, độ cao trung b&igrave;nh khoảng 1.500 m.<br />\r\n+ Bao quanh khu vực l&ograve;ng chảo n&agrave;y l&agrave; c&aacute;c đỉnh n&uacute;i với độ cao khoảng 1.700 m tạo th&agrave;nh v&agrave;nh đai che chắn gi&oacute; cho v&ugrave;ng trung t&acirc;m. Ph&iacute;a Đ&ocirc;ng Bắc c&oacute; hai n&uacute;i thấp: h&ograve;n &Ocirc;ng (L&aacute;p B&ecirc; Bắc 1.738 m) v&agrave; h&ograve;n Bộ (L&aacute;p B&ecirc; Nam 1.709 m). Ở ph&iacute;a Bắc, ngự trị cao nguy&ecirc;n Lang Biang l&agrave; d&atilde;y n&uacute;i B&agrave; (Lang Biang) h&ugrave;ng vĩ, cao 2.169 m, k&eacute;o d&agrave;i theo trục Đ&ocirc;ng Bắc &ndash; T&acirc;y Nam từ suối Đa Sar (đổ v&agrave;o Đa Nhim) đến Đa Me (đổ v&agrave;o Đạ Đờng). Ph&iacute;a Đ&ocirc;ng &aacute;n ngữ bởi d&atilde;y n&uacute;i đỉnh Gi&oacute; H&uacute; (1.644 m). Về ph&iacute;a T&acirc;y Nam, c&aacute;c d&atilde;y n&uacute;i hướng v&agrave;o T&agrave; Nung giữa d&atilde;y Y&agrave;ng Sơreng m&agrave; c&aacute;c đỉnh cao ti&ecirc;u biểu l&agrave; Pin Hatt (1.691 m) v&agrave; You Lou Rouet (1.632 m).</p>\r\n\r\n<p>B&ecirc;n ngo&agrave;i cao nguy&ecirc;n l&agrave; c&aacute;c dốc n&uacute;i từ hơn 1.700 m đột ngột đổ xuống c&aacute;c cao nguy&ecirc;n b&ecirc;n dưới c&oacute; độ cao từ 700 m đến 900 m.</p>\r\n\r\n<p>Kh&iacute; hậu: Do ảnh hưởng của độ cao v&agrave; rừng th&ocirc;ng bao bọc, Đ&agrave; Lạt mang nhiều đặc t&iacute;nh của miền &ocirc;n đới. Nhiệt độ trung b&igrave;nh 18&ndash;21&deg;C, nhiệt độ cao nhất chưa bao giờ qu&aacute; 30&deg;C v&agrave; thấp nhất kh&ocirc;ng dưới 5&deg;C.<br />\r\nCh&iacute;nh th&ocirc;ng Đ&agrave; Lạt gi&uacute;p cho Đ&agrave; Lạt th&ecirc;m phần m&aacute;t mẻ</p>\r\n\r\n<p>Đ&agrave; Lạt c&oacute; hai m&ugrave;a r&otilde; rệt. M&ugrave;a mưa từ th&aacute;ng 5 đến th&aacute;ng 10, m&ugrave;a nắng từ th&aacute;ng 11 đến th&aacute;ng 4. M&ugrave;a h&egrave; thường c&oacute; mưa v&agrave;o buổi chiều, đ&ocirc;i khi c&oacute; mưa đ&aacute;.<br />\r\nLượng mưa trung b&igrave;nh năm l&agrave; 1562 mm v&agrave; độ ẩm 82%.<br />\r\nĐ&agrave; Lạt kh&ocirc;ng bao giờ c&oacute; b&atilde;o, chỉ c&oacute; gi&oacute; lớn do ảnh hưởng b&atilde;o từ biển thổi v&agrave;o v&igrave; sườn đ&ocirc;ng kh&ocirc;ng c&oacute; n&uacute;i che chắn.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/anh%202.jpg\" style=\"height:759px; width:1024px\" /></p>\r\n\r\n<p><strong>3. Tiềm năng du lịch:</strong></p>\r\n\r\n<p>Được v&iacute; như một Tiểu Paris, Đ&agrave; Lạt từng mộng mơ v&agrave; n&ecirc;n thơ nhờ c&aacute;i lạnh cao nguy&ecirc;n ban đ&ecirc;m, sương m&ugrave; buổi sớm v&agrave; những dải rừng th&ocirc;ng bao quanh th&agrave;nh phố. Kh&ocirc;ng gian n&agrave;y tuy vậy đ&atilde; phần n&agrave;o bị mất đi c&aacute;i chất Ph&aacute;p trong c&aacute;c kiến tr&uacute;c biệt thự thiếu chăm s&oacute;c hay bị sửa đổi kh&ocirc;ng ph&ugrave; hợp.<br />\r\nDu lịch tuy l&agrave; một thế mạnh song cũng l&agrave; yếu tố l&agrave;m thay đổi Đ&agrave; Lạt theo hướng đ&ocirc; thị h&oacute;a.</p>\r\n\r\n<p>Đồi C&ugrave; nằm giữa trung t&acirc;m th&agrave;nh phố Đ&agrave; Lạt nằm kế b&ecirc;n l&agrave; Hồ Xu&acirc;n Hương do vậy thường được nhắc đến như một địa danh d&iacute;nh liền nhau &ndash; nhiều người cho rằng Đ&agrave; Lạt sẽ k&eacute;m phần mỹ lệ nếu thiếu Đồi C&ugrave; v&agrave; hồ Xu&acirc;n Hương. Năm 1942, khi thiết kế đồ &aacute;n quy hoạch th&agrave;nh phố Đ&agrave; Lạt, kiến tr&uacute;c sư Lagisquet đ&atilde; khoanh v&ugrave;ng Đồi C&ugrave; như một khu vực bất khả x&acirc;m phạm nhằm tạo một tầm nh&igrave;n tho&aacute;ng đ&atilde;ng cho Đ&agrave; Lạt. Về sau, một kiến tr&uacute;c sư người Anh đ&atilde; thiết kế biến Đồi C&ugrave; th&agrave;nh s&acirc;n golf 9 lỗ kh&aacute; nổi tiếng của v&ugrave;ng Đ&ocirc;ng Nam &Aacute; v&agrave; hiện nay Đồi C&ugrave; đ&atilde; được n&acirc;ng cấp th&agrave;nh s&acirc;n golf 18 lỗ. T&ecirc;n Đồi C&ugrave; kh&ocirc;ng r&otilde; c&oacute; từ bao giờ, v&agrave; v&igrave; sao gọi l&agrave; &ldquo;Đồi C&ugrave;&rdquo; lại c&oacute; hai hướng l&yacute; giải, c&oacute; người cho rằng những quả đồi thoai thoải nơi đ&acirc;y khi nh&igrave;n từ xa giống như tấm lưng trần của những con c&ugrave; khổng lồ n&ecirc;n đ&atilde; v&iacute; von gọi l&agrave; &ldquo;Đồi C&ugrave;&rdquo;; cũng c&oacute; người giải th&iacute;ch sở dĩ c&oacute; t&ecirc;n &ldquo;Đồi C&ugrave;&rdquo; v&igrave; nơi đ&acirc;y l&agrave; một địa điểm chơi golf hay c&ograve;n gọi l&agrave; đ&aacute;nh c&ugrave;.</p>\r\n\r\n<p>Hồ Xu&acirc;n Hương nằm ngay trung t&acirc;m th&agrave;nh phố Đ&agrave; Lạt v&agrave; b&ecirc;n cạnh Đồi C&ugrave;. Hồ thực chất l&agrave; hồ nh&acirc;n tạo được x&acirc;y dựng v&agrave;o năm 1919 do s&aacute;ng kiến của Cunhac. Để tạo th&agrave;nh hồ, người ta đắp một c&aacute;i đập chắn d&ograve;ng suối chảy qua thung lũng, hồ c&oacute; diện t&iacute;ch mặt nước rộng 25 ha, chu vi d&agrave;i 5,1 km. Xung quanh hồ nhiều kiến tr&uacute;c độc đ&aacute;o c&oacute; gi&aacute; trị nghệ thuật, thẩm mỹ cao được x&acirc;y dựng như kh&aacute;ch sạn Palace, thao trường L&acirc;m Vi&ecirc;n, nh&agrave; nghỉ C&ocirc;ng Đo&agrave;n, Nh&agrave; h&agrave;ng Thanh Thủy, Thủy Tạ&hellip; Trước kia hồ c&oacute; t&ecirc;n gọi Grand Lac (hồ lớn). V&agrave;o buổi s&aacute;ng sớm sương m&ugrave; hiện l&ecirc;n rất đẹp v&agrave; thơ mộng.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/anh%203.jpg\" style=\"height:368px; width:550px\" /></p>\r\n\r\n<p>Hồ Suối V&agrave;ng l&agrave; hồ nước ngọt lớn nhất tại Đ&agrave; Lạt, cung cấp nước sinh hoạt cho th&agrave;nh phố qua đập tr&agrave;n của c&ocirc;ng ty cấp nước Đ&agrave; Lạt. Thung lũng Suối V&agrave;ng c&ograve;n l&agrave; điểm đến du lịch nổi tiếng với vườn hoa v&agrave; rừng th&ocirc;ng.</p>\r\n\r\n<p>C&ocirc;ng vi&ecirc;n hoa Đ&agrave; Lạt nằm quanh tr&ecirc;n bờ ph&iacute;a Bắc của hồ Xu&acirc;n Hương, tr&ecirc;n thung lũng của Đồi C&ugrave;. Trước đ&acirc;y c&ocirc;ng vi&ecirc;n hoa Đ&agrave; Lạt c&oacute; t&ecirc;n l&agrave; B&iacute;ch C&acirc;u, hiện nay diện t&iacute;ch của c&ocirc;ng vi&ecirc;n hoa được mở rộng tới 7000 m&sup2;, với c&aacute;ch bố tr&iacute; tho&aacute;ng đ&atilde;ng, tạo ấn tượng cho người chợt gh&eacute;. C&aacute;c loại hoa v&agrave; c&acirc;y cảnh nổi tiếng của Đ&agrave; Lạt được trồng tỉa chăm s&oacute;c chu đ&aacute;o, cảnh sắc tươi m&aacute;t, phong ph&uacute; bốn m&ugrave;a. H&agrave;ng năm thường tổ chức lễ hội hoa v&agrave; l&agrave; th&ocirc;ng điệp nhằm mời gọi, thu h&uacute;t c&aacute;c nh&agrave; đầu tư trong nước v&agrave; nước ngo&agrave;i ph&aacute;t triển Đ&agrave; Lạt v&agrave; c&aacute;c v&ugrave;ng phụ cận trở th&agrave;nh trung t&acirc;m sản xuất, xuất khẩu hoa của cả nước v&agrave; khu vực Đ&ocirc;ng Nam &Aacute;.</p>\r\n\r\n<p>C&aacute;c điểm tham quan du lịch kh&aacute;c:</p>\r\n\r\n<ul>\r\n	<li>Đỉnh Lang Biang</li>\r\n	<li>Hồ Than Thở</li>\r\n	<li>Th&aacute;c Cam Ly</li>\r\n	<li>Th&aacute;c Datanla</li>\r\n	<li>Th&aacute;c Hang Cọp</li>\r\n	<li>Th&aacute;c Prenn</li>\r\n	<li>Th&aacute;c Pongour</li>\r\n	<li>Thung lũng T&igrave;nh Y&ecirc;u</li>\r\n	<li>Đồi Mộng Mơ.</li>\r\n	<li>Thung Lũng V&agrave;ng (gần Hồ Dan Kia)</li>\r\n	<li>Hồ Tuyền L&acirc;m</li>\r\n	<li>Khu Biệt thự Trần Lệ Xu&acirc;n&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/anh%204.jpg\" style=\"height:768px; width:1024px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/anh%205.jpg\" style=\"height:529px; width:800px\" /></p>', 1, 1, 1, 0, '2018-11-30 18:01:04', '2018-11-30 18:01:04'),
(18, 'Vẻ đẹp đặc biệt của thành phố Hồ Chí Minh được hãng tin BBC hết lời khen ngợi', 'anh ho chi minh.jpg', 'Mới đây, hãng tin BBC đã đăng tải một bài viết giới thiệu về vẻ đẹp đặc biệt của Sài Gòn – một thành phố đáng để đặt chân tới với những trải nghiệm đầy thú vị cùng sự thân thiện từ con người nơi đây.', '<p>Lần đầu đặt ch&acirc;n tới th&agrave;nh phố Hồ Ch&iacute; Minh, hay c&ograve;n được gọi với c&aacute;i t&ecirc;n th&acirc;n mật kh&aacute;c l&agrave; S&agrave;i G&ograve;n, c&oacute; lẽ nhiều du kh&aacute;ch sẽ cảm thấy kh&aacute; sốc trước t&igrave;nh trạng &quot;hỗn loạn&quot; tại khu vực sầm uất nhất Việt Nam.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm1.jpg\" style=\"height:263px; width:600px\" /></p>\r\n\r\n<p>&quot;Những đ&aacute;m đ&ocirc;ng v&agrave; d&ograve;ng xe cộ hỗn loạn c&oacute; thể khiến cho nhiều du kh&aacute;ch cảm thấy nản l&ograve;ng v&agrave; muốn t&igrave;m tới nơi kh&aacute;c ngay lập tức. Tuy nhi&ecirc;n, đ&oacute; l&agrave; một sai lầm cực k&igrave; lớn.&quot;, anh James Clark, một người Australia sống tại S&agrave;i G&ograve;n từ năm 2012 chia sẻ.</p>\r\n\r\n<p>Mặc d&ugrave; giao th&ocirc;ng ở đ&acirc;y c&oacute; phần đi&ecirc;n rồ, song nếu c&oacute; cơ hội vi vu khắp c&aacute;c con phố nhỏ tr&ecirc;n một chiếc xe m&aacute;y đời cũ n&agrave;o đ&oacute; th&igrave; bạn sẽ thấy mọi chuyện kh&aacute;c xa so với tưởng tượng ban đầu.</p>\r\n\r\n<p>Đa phần c&aacute;c phương tiện đều di chuyển với tốc độ rất chậm, v&agrave; hiếm khi thấy vụ ẩu đả n&agrave;o xảy ra giữa đường lớn.</p>\r\n\r\n<p>B&ecirc;n cạnh sự đ&ocirc;ng đ&uacute;c vốn c&oacute;, S&agrave;i G&ograve;n c&ograve;n mang trong m&igrave;nh n&eacute;t dung dị rất &quot;đời&quot; khiến con người ta chợt cảm thấy y&ecirc;u v&agrave; thấy nhớ mỗi khi phải chia xa.&nbsp;Tất nhi&ecirc;n, bạn cần phải c&oacute; kha kh&aacute; thời gian để hiểu, hay đơn giản hơn l&agrave; để th&iacute;ch với th&agrave;nh phố n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm2.jpg\" style=\"height:380px; width:600px\" /></p>\r\n\r\n<p>Anh Baker &ndash; một người Anh định cư ở S&agrave;i G&ograve;n từng n&oacute;i: &quot;Bạn c&oacute; thể kh&aacute;m ph&aacute; được một th&agrave;nh phố với c&aacute; t&iacute;nh ri&ecirc;ng, t&iacute;nh c&aacute;ch ri&ecirc;ng c&ugrave;ng kh&ocirc;ng gian ẩm thực với mức gi&aacute;&nbsp;rẻ nhất h&agrave;nh tinh nếu chịu d&agrave;nh thời gian cho n&oacute;.&quot;</p>\r\n\r\n<p>Ngo&agrave;i ra, con người nơi đ&acirc;y cũng dễ thương lắm. Họ chẳng hề tỏ ra ki&ecirc;u k&igrave; hay kh&oacute; gần như bạn vẫn nghĩ, m&agrave; ngược lại, t&iacute;nh c&aacute;ch th&acirc;n thiện xuất ph&aacute;t từ tấm l&ograve;ng nhiệt th&agrave;nh sẽ khiến du kh&aacute;ch kh&ocirc;ng t&agrave;i n&agrave;o qu&ecirc;n được.</p>\r\n\r\n<p>&quot;C&oacute; dịp v&ograve;ng vo mọi ng&otilde; ng&aacute;ch b&eacute; x&iacute;u dưới c&aacute;i nắng ngọt ng&agrave;o của miền Nam, bạn sẽ thấy lối sống của người d&acirc;n bản xứ tương đối b&igrave;nh thản.&quot;, c&ocirc; Kelsey Cheng (Chicago, Mỹ) cho biết.</p>\r\n\r\n<p>Cũng theo anh Barker, người d&acirc;n S&agrave;i G&ograve;n thường rất thẳng thắn v&agrave; trực tiếp. Đ&acirc;y l&agrave; một n&eacute;t t&iacute;nh c&aacute;ch kh&aacute; kh&aacute;c biệt nếu so s&aacute;nh với sự th&acirc;n thiện thường thấy tại nhiều đất nước kh&aacute;c, v&iacute; dụ như Th&aacute;i Lan chẳng hạn.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm3.jpeg\" style=\"height:346px; width:600px\" /></p>\r\n\r\n<p>Lần đầu đặt ch&acirc;n tới th&agrave;nh phố Hồ Ch&iacute; Minh, hay c&ograve;n được gọi với c&aacute;i t&ecirc;n th&acirc;n mật kh&aacute;c l&agrave; S&agrave;i G&ograve;n, c&oacute; lẽ nhiều du kh&aacute;ch sẽ cảm thấy kh&aacute; sốc trước t&igrave;nh trạng &quot;hỗn loạn&quot; tại khu vực sầm uất nhất Việt Nam.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2017/1-1490678261402.jpg\" target=\"_blank\"><img alt=\"Vẻ đẹp đặc biệt của thành phố Hồ Chí Minh được hãng tin BBC hết lời khen ngợi - Ảnh 1.\" src=\"https://kenh14cdn.com/2017/1-1490678261402.jpg\" /></a></p>\r\n\r\n<p>Th&agrave;nh phố Hồ Ch&iacute; Minh l&agrave; điểm đến l&yacute; tưởng của rất nhiều du kh&aacute;ch trong v&agrave; ngo&agrave;i nước.</p>\r\n\r\n<p>&quot;Những đ&aacute;m đ&ocirc;ng v&agrave; d&ograve;ng xe cộ hỗn loạn c&oacute; thể khiến cho nhiều du kh&aacute;ch cảm thấy nản l&ograve;ng v&agrave; muốn t&igrave;m tới nơi kh&aacute;c ngay lập tức. Tuy nhi&ecirc;n, đ&oacute; l&agrave; một sai lầm cực k&igrave; lớn.&quot;, anh James Clark, một người Australia sống tại S&agrave;i G&ograve;n từ năm 2012 chia sẻ.</p>\r\n\r\n<p>Mặc d&ugrave; giao th&ocirc;ng ở đ&acirc;y c&oacute; phần đi&ecirc;n rồ, song nếu c&oacute; cơ hội vi vu khắp c&aacute;c con phố nhỏ tr&ecirc;n một chiếc xe m&aacute;y đời cũ n&agrave;o đ&oacute; th&igrave; bạn sẽ thấy mọi chuyện kh&aacute;c xa so với tưởng tượng ban đầu.</p>\r\n\r\n<p>Đa phần c&aacute;c phương tiện đều di chuyển với tốc độ rất chậm, v&agrave; hiếm khi thấy vụ ẩu đả n&agrave;o xảy ra giữa đường lớn.</p>\r\n\r\n<p>B&ecirc;n cạnh sự đ&ocirc;ng đ&uacute;c vốn c&oacute;, S&agrave;i G&ograve;n c&ograve;n mang trong m&igrave;nh n&eacute;t dung dị rất &quot;đời&quot; khiến con người ta chợt cảm thấy y&ecirc;u v&agrave; thấy nhớ mỗi khi phải chia xa.&nbsp;Tất nhi&ecirc;n, bạn cần phải c&oacute; kha kh&aacute; thời gian để hiểu, hay đơn giản hơn l&agrave; để th&iacute;ch với th&agrave;nh phố n&agrave;y.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2017/2-1490678261403.jpg\" target=\"_blank\"><img alt=\"Vẻ đẹp đặc biệt của thành phố Hồ Chí Minh được hãng tin BBC hết lời khen ngợi - Ảnh 2.\" src=\"https://kenh14cdn.com/2017/2-1490678261403.jpg\" /></a></p>\r\n\r\n<p>Tại nhiều thời điểm, đường phố nơi đ&acirc;y bỗng trở n&ecirc;n b&igrave;nh y&ecirc;n đến lạ.</p>\r\n\r\n<p>Anh Baker &ndash; một người Anh định cư ở S&agrave;i G&ograve;n từng n&oacute;i: &quot;Bạn c&oacute; thể kh&aacute;m ph&aacute; được một th&agrave;nh phố với c&aacute; t&iacute;nh ri&ecirc;ng, t&iacute;nh c&aacute;ch ri&ecirc;ng c&ugrave;ng kh&ocirc;ng gian ẩm thực với mức gi&aacute;&nbsp;rẻ nhất h&agrave;nh tinh nếu chịu d&agrave;nh thời gian cho n&oacute;.&quot;</p>\r\n\r\n<p>Ngo&agrave;i ra, con người nơi đ&acirc;y cũng dễ thương lắm. Họ chẳng hề tỏ ra ki&ecirc;u k&igrave; hay kh&oacute; gần như bạn vẫn nghĩ, m&agrave; ngược lại, t&iacute;nh c&aacute;ch th&acirc;n thiện xuất ph&aacute;t từ tấm l&ograve;ng nhiệt th&agrave;nh sẽ khiến du kh&aacute;ch kh&ocirc;ng t&agrave;i n&agrave;o qu&ecirc;n được.</p>\r\n\r\n<p>&quot;C&oacute; dịp v&ograve;ng vo mọi ng&otilde; ng&aacute;ch b&eacute; x&iacute;u dưới c&aacute;i nắng ngọt ng&agrave;o của miền Nam, bạn sẽ thấy lối sống của người d&acirc;n bản xứ tương đối b&igrave;nh thản.&quot;, c&ocirc; Kelsey Cheng (Chicago, Mỹ) cho biết.</p>\r\n\r\n<p>Cũng theo anh Barker, người d&acirc;n S&agrave;i G&ograve;n thường rất thẳng thắn v&agrave; trực tiếp. Đ&acirc;y l&agrave; một n&eacute;t t&iacute;nh c&aacute;ch kh&aacute; kh&aacute;c biệt nếu so s&aacute;nh với sự th&acirc;n thiện thường thấy tại nhiều đất nước kh&aacute;c, v&iacute; dụ như Th&aacute;i Lan chẳng hạn.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2017/3-1490678261405.jpeg\" target=\"_blank\"><img alt=\"Vẻ đẹp đặc biệt của thành phố Hồ Chí Minh được hãng tin BBC hết lời khen ngợi - Ảnh 3.\" src=\"https://kenh14cdn.com/2017/3-1490678261405.jpeg\" /></a></p>\r\n\r\n<p>S&agrave;i G&ograve;n về đ&ecirc;m với &aacute;nh đ&egrave;n lung linh hắt ra từ những t&ograve;a nh&agrave; cao ốc hiện đại.</p>\r\n\r\n<p>Mặc d&ugrave; một số &iacute;t sẽ cảm thấy h&agrave;nh động đ&oacute; kh&aacute; v&ocirc; duy&ecirc;n, song những người d&acirc;n đang sinh sống tại đ&acirc;y lại nghĩ rằng: &quot;Nhờ vậy m&agrave; ch&uacute;ng tui c&oacute; thể dễ d&agrave;ng hiểu được người kh&aacute;c muốn g&igrave; hay kh&ocirc;ng muốn g&igrave;.&quot;</p>\r\n\r\n<p>Nếu giải th&iacute;ch theo c&aacute;ch đơn giản th&igrave; ở H&agrave; Nội, đ&ocirc;i khi người ta n&oacute;i &quot;c&oacute;&quot; nhưng thực chất lại l&agrave; &quot;kh&ocirc;ng&quot;, c&ograve;n tại th&agrave;nh phố Hồ Ch&iacute; Minh th&igrave; &quot;c&oacute;&quot; l&agrave; &quot;c&oacute;&quot; m&agrave; &quot;kh&ocirc;ng&quot; chắc chắn sẽ l&agrave; &quot;kh&ocirc;ng&quot;.</p>\r\n\r\n<p>Những người nước ngo&agrave;i sống l&acirc;u năm ở đ&acirc;y cũng khẳng định S&agrave;i G&ograve;n l&agrave; một th&agrave;nh phố v&ocirc; c&ugrave;ng năng động, đặc biệt l&agrave; thế hệ trẻ lu&ocirc;n tr&agrave;n đầy ước mơ v&agrave; ho&agrave;i b&atilde;o m&atilde;nh liệt.</p>\r\n\r\n<p>&quot;Những người trẻ c&oacute; vẻ muốn trở th&agrave;nh doanh nh&acirc;n hơn l&agrave; đi l&agrave;m nh&agrave; nước. Họ đều mang b&ecirc;n m&igrave;nh chiếc smartphone v&agrave; đi lại vội v&atilde; tr&ecirc;n đường.&quot;, c&ocirc; Consul Alan Murray - một người Anh đ&atilde; sống tại th&agrave;nh phố Hồ Ch&iacute; Minh hơn 10 năm chia sẻ.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm4.jpg\" style=\"height:354px; width:600px\" /></p>\r\n\r\n<p>Mặc d&ugrave; sống nhanh v&agrave; c&oacute; phần hối hả, thế nhưng cư d&acirc;n tại đ&acirc;y lại v&ocirc; c&ugrave;ng nhiệt th&agrave;nh v&agrave; lu&ocirc;n sẵn s&agrave;ng dừng lại để gi&uacute;p đỡ c&aacute;c ho&agrave;n cảnh kh&oacute; khăn trong cuộc sống.</p>\r\n\r\n<p>&quot;Trong những ng&agrave;y đầu ti&ecirc;n tới đ&acirc;y, t&ocirc;i đ&atilde; bị lạc tại Quận 3. Khi đ&oacute;, t&ocirc;i t&igrave;m tới một nơi ph&aacute;t wifi miễn ph&iacute; để gọi Grab Bike nhưng lại kh&ocirc;ng thể n&agrave;o giao tiếp được với t&agrave;i xế. Hơi hoảng, t&ocirc;i liền đưa chiếc điện thoại của m&igrave;nh cho một người đ&agrave;n &ocirc;ng đứng b&ecirc;n cạnh v&agrave; &ocirc;ng ấy đ&atilde; gi&uacute;p t&ocirc;i n&oacute;i chuyện.</p>\r\n\r\n<p>T&ocirc;i cứ nghĩ người d&acirc;n v&ugrave;ng Midwest (một trong bốn v&ugrave;ng lớn tại Mỹ) l&agrave; th&acirc;n thiện nhất rồi, n&agrave;o ngờ người Việt Nam lại c&agrave;ng th&acirc;n thiện hơn nữa.&quot;, c&ocirc; Cheng kể lại.</p>\r\n\r\n<p>C&ograve;n anh An Dương - trưởng ph&ograve;ng c&ocirc;ng nghệ của c&ocirc;ng ty khởi nghiệp cung cấp dịch vụ t&igrave;m kiếm th&ocirc;ng tin du lịch TourMega v&agrave; l&agrave; một người d&acirc;n bản địa cũng đồng &yacute; với lời nhận x&eacute;t tr&ecirc;n.</p>\r\n\r\n<p>&quot;Người S&agrave;i G&ograve;n thường sẵn s&agrave;ng cho đi m&agrave; kh&ocirc;ng cần nhận lại bất cứ điều g&igrave;. Bạn sẽ thấy v&ocirc; số b&igrave;nh tr&agrave; đ&aacute; miễn ph&iacute; đặt tại nhiều con đường lớn nhỏ để gi&uacute;p đỡ những người b&aacute;n h&agrave;ng rong đang vất vả mưu sinh ngo&agrave;i cuộc sống.&nbsp;Ai nấy đều sẵn l&ograve;ng hỗ trợ người kh&aacute;c một c&aacute;ch nhiệt t&igrave;nh như với người th&acirc;n của m&igrave;nh vậy&quot;.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm5.jpg\" style=\"height:395px; width:600px\" /></p>\r\n\r\n<p>C&aacute;ch tốt nhất để thăm th&uacute; th&agrave;nh phố Hồ Ch&iacute; Minh l&agrave; vi vu tr&ecirc;n một chiếc xe m&aacute;y. Sử dụng phương tiện n&agrave;y, bạn c&oacute; thể tạm thời dừng lại v&agrave; gửi xe một c&aacute;ch dễ d&agrave;ng, từ đ&oacute; c&oacute; thể kh&aacute;m ph&aacute; những địa điểm vui chơi th&uacute; vị cũng như thưởng thức c&aacute;c qu&aacute;n ăn hấp dẫn b&ecirc;n lề đường.</p>\r\n\r\n<p>Anh Barker cho biết, một m&oacute;n ăn m&agrave; du kh&aacute;ch nước ngo&agrave;i kh&ocirc;ng n&ecirc;n bỏ qua khi tới đ&acirc;y l&agrave; m&oacute;n &quot;b&uacute;n thịt nướng&quot;, hay c&ograve;n gọi l&agrave; &quot;b&uacute;n chả&quot; theo c&aacute;ch n&oacute;i của những địa phương ở ph&iacute;a Bắc.</p>\r\n\r\n<p>&quot;Bạn c&oacute; thể t&igrave;m thấy những qu&aacute;n ăn đường phố tại mọi g&oacute;c đường, mọi con phố tr&ecirc;n khắp S&agrave;i G&ograve;n n&agrave;y. Việc bạn cần l&agrave;m ch&iacute;nh l&agrave; k&eacute;o một chiếc ghế nhựa về ph&iacute;a m&igrave;nh, ngồi xuống v&agrave; thưởng thức hương vị hấp dẫn từ b&aacute;t hủ tiếu g&otilde;, t&agrave;u hũ n&oacute;ng hay c&agrave; ph&ecirc; sữa đ&aacute;. Chỉ đơn giản c&oacute; thế m&agrave; th&ocirc;i&quot; .</p>\r\n\r\n<p><strong>Những địa điểm nhất định phải đến khi gh&eacute; thăm S&agrave;i G&ograve;n</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm6.jpg\" style=\"height:401px; width:600px\" /></strong></p>\r\n\r\n<p>To&agrave;n bộ th&agrave;nh phố Hồ Ch&iacute; Minh được chia l&agrave;m 24 quận. Đa phần người nước ngo&agrave;i đều bắt đầu định cư tại Quận 1 &ndash; nơi được mệnh danh l&agrave; &quot;thi&ecirc;n đường&quot; mua sắm với những khu chợ nổi tiếng như Bến Th&agrave;nh hay c&aacute;c con phố lớn với h&agrave;ng loạt hoạt động sầm uất về đ&ecirc;m.</p>\r\n\r\n<p>Cứ thử một lần gh&eacute; tới đường B&ugrave;i Viện hoặc Phạm Ngũ L&atilde;o sau 10 giờ tối m&agrave; xem, bạn sẽ tha hồ được tụ tập với du kh&aacute;ch bốn phương v&agrave; giao lưu đến tận l&uacute;c trời s&aacute;ng trong h&agrave;ng loạt qu&aacute;n pub, qu&aacute;n c&agrave; ph&ecirc;, qu&aacute;n bia tươi lề đường với &aacute;nh đ&egrave;n s&aacute;ng rực.</p>\r\n\r\n<p>Anh Baker chia sẻ: &quot;Khu vực Đa Kao thuộc Quận 1 l&agrave; nơi ưa th&iacute;ch nhất của t&ocirc;i. Nơi n&agrave;y c&oacute; rất nhiều cửa h&agrave;ng ẩm thực để thưởng thức, v&agrave; từ đ&acirc;y c&oacute; thể đi tới to&agrave;n bộ c&aacute;c địa điểm th&uacute; vị kh&aacute;c thuộc trung t&acirc;m th&agrave;nh phố.&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm7.png\" style=\"height:401px; width:600px\" /></p>\r\n\r\n<p>Khu vực Quận 2 gần s&ocirc;ng S&agrave;i G&ograve;n l&agrave; một v&ugrave;ng mới được ph&aacute;t triển với nhiều qu&aacute;n ăn, khu mua sắm v&agrave; cao ốc đắt tiền. Trong đ&oacute;, người nước ngo&agrave;i thường t&igrave;m tới phường Thảo Điền để tận hưởng cuộc sống tiện nghi nhất m&agrave; chẳng cần lặn lội tới c&aacute;c điểm vui chơi xa x&ocirc;i kh&aacute;c.</p>\r\n\r\n<p>Ngo&agrave;i ra, nếu muốn định cư l&acirc;u d&agrave;i hoặc c&oacute; con nhỏ th&igrave; họ lại lựa chọn Quận 7. Bởi đa phần những ng&ocirc;i trường quốc tế chất lượng cao c&ugrave;ng hệ thống nh&agrave; ở phong ph&uacute; đều tập trung hết ở khu vực n&agrave;y.</p>\r\n\r\n<p><strong>Từ S&agrave;i G&ograve;n, bạn c&oacute; thể vi vu c&aacute;c địa danh nổi tiếng trong v&ograve;ng &quot;một nốt nhạc&quot;</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm8.jpg\" style=\"height:257px; width:600px\" /></strong></p>\r\n\r\n<p>Những người muốn đi du lịch trong ng&agrave;y thường lựa chọn c&aacute;c b&atilde;i biển tuyệt đẹp tại Vũng T&agrave;u (khoảng 93km về ph&iacute;a Đ&ocirc;ng Nam) hay khu vực miền T&acirc;y (khoảng 200km về ph&iacute;a T&acirc;y Nam).</p>\r\n\r\n<p>Tuy nhi&ecirc;n, c&ugrave;ng với sự hiện đại của dịch vụ h&agrave;ng kh&ocirc;ng, du kh&aacute;ch cũng c&oacute; thể đi xa hơn nữa để thỏa sức ngắm nh&igrave;n những địa danh &quot;kh&ocirc;ng đến th&igrave; ph&iacute;&quot; ở Việt Nam.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm9.jpg\" style=\"height:337px; width:600px\" /></p>\r\n\r\n<p>Chỉ mất 1 giờ bay, bạn sẽ được đặt ch&acirc;n tới đảo ngọc Ph&uacute; Quốc &ndash; một trong những điểm hẹn hấp dẫn với b&atilde;i biển xanh biếc, khu rừng mưa nhiệt đới nguy&ecirc;n thủy c&ugrave;ng đời sống ẩm thực, &acirc;m nhạc v&agrave; lễ hội đang hết sức ph&aacute;t triển.</p>\r\n\r\n<p>Nếu muốn tr&aacute;nh c&aacute;i n&oacute;ng bỏng r&aacute;t của miền biển, du kh&aacute;ch cũng c&oacute; thể gh&eacute; thăm Đ&agrave; Lạt (khoảng 300km về ph&iacute;a Đ&ocirc;ng Bắc) - nơi được mệnh danh l&agrave; th&agrave;nh phố của m&ugrave;a xu&acirc;n vĩnh cửu với điều kiện thời tiết m&aacute;t mẻ quanh năm, hay tỉnh Đắk Lắk (khoảng 350km về ph&iacute;a Đ&ocirc;ng Bắc) với những th&aacute;c nước tuyệt đẹp, sản phẩm c&agrave; ph&ecirc; nổi tiếng v&agrave; cơ hội kh&aacute;m ph&aacute; sự đa dạng về văn h&oacute;a của hơn 40 tộc người kh&aacute;c nhau.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm11/hcm13.jpg\" style=\"height:378px; width:600px\" /></p>\r\n\r\n<p>Do đ&acirc;y l&agrave; một vị tr&iacute; chiến lược kh&aacute; quan trọng của to&agrave;n khu vực n&ecirc;n từ th&agrave;nh phố Hồ Ch&iacute; Minh, bạn c&oacute; thể dễ d&agrave;ng đ&aacute;p m&aacute;y bay tới những khu vực nổi tiếng kh&aacute;c tại Đ&ocirc;ng Nam &Aacute; như Bangkok, Kuala Lumpur hay Singapore với thời gian bay chưa đầy 2 giờ đồng hồ.</p>\r\n\r\n<p><strong>Mức gi&aacute; th&acirc;n thiện với t&uacute;i tiền của bạn</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm11/hcm11.jpg\" style=\"height:354px; width:600px\" /></strong></p>\r\n\r\n<p>Nếu so s&aacute;nh với những th&agrave;nh phố kh&aacute;c ở c&aacute;c nước phương T&acirc;y, cuộc sống tại th&agrave;nh phố Hồ Ch&iacute; Minh sẽ khiến bạn cảm thấy rất dễ chịu với mức gi&aacute; kh&ocirc;ng thể &quot;th&acirc;n thiện&quot; hơn.</p>\r\n\r\n<p>Đặc biệt, việc t&igrave;m kiếm địa điểm ăn uống b&ecirc;n ngo&agrave;i thực sự kh&aacute; dễ d&agrave;ng v&agrave; ph&ugrave; hợp với t&uacute;i tiền của số đ&ocirc;ng &ndash; chỉ chưa tới 80.000 đồng cho một bữa ăn thật ngon miệng.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm11/hcm12.jpg\" style=\"height:330px; width:600px\" /></p>\r\n\r\n<p>Chi ph&iacute; thu&ecirc; nh&agrave; ở đ&acirc;y cũng rất rẻ, chỉ từ 6,8 triệu đồng mỗi th&aacute;ng l&agrave; bạn đ&atilde; c&oacute; thể sở hữu một căn hộ chung cư tiện nghi cho một người, rẻ hơn tới 85% so với c&aacute;c th&agrave;nh phố lớn kh&aacute;c tại Mỹ.</p>\r\n\r\n<p>&quot;Bạn c&oacute; thể ti&ecirc;u tiền theo nhiều c&aacute;ch kh&aacute;c nhau. Nhưng nếu chỉ thu&ecirc; một căn hộ b&igrave;nh thường v&agrave; ăn uống kh&ocirc;ng qu&aacute; phung ph&iacute; th&igrave; chỉ cần chưa tới 1.000 USD (khoảng 23 triệu đồng) l&agrave; đủ để sống thoải m&aacute;i ở đ&acirc;y rồi.&quot;, anh Clark khẳng định.</p>', 1, 1, 1, 0, '2018-11-30 18:19:45', '2018-11-30 18:19:45');
INSERT INTO `news` (`news_id`, `title`, `image`, `introduce`, `content`, `check_slide`, `id_admin_created`, `id_admin_changed`, `is_disabled`, `created_at`, `updated_at`) VALUES
(20, 'Quảng Ngãi - Thành Phố Anh Hùng', 'quang ngai.jpg', 'Là tỉnh ven biển nằm trong vùng kinh tế trọng điểm của miền Trung, Quảng Ngãi hội đủ nhiều yếu tố hấp dẫn để các nhà đầu tư an tâm khi đầu tư vào đây, đó là Quảng Ngãi nằm giữa hai đầu Bắc- Nam, vừa có cảng biển, vừa có đường quốc lộ, vừa có đường sắt Bắc-Nam, cùng với những chính sách ưu đãi đầu tư đặc biệt từ Chính phủ và của địa phương. Chính vì vậy Quảng Ngãi là địa điểm lý tưởng cho các công ty muốn mở rộng thị trường đến đến cả hai miền Nam - Bắc và khu vực miền Trung rộng lớn. Ngoài ra, từ Quảng Ngãi, các doanh nghiệp có thể mở rộng tiếp cận thị trường sang Lào, đông bắc Thái Lan và Campuchia', '<p><strong>Ng&agrave;y nay, Quảng Ng&atilde;i đ&atilde; vươn l&ecirc;n trở th&agrave;nh một trong 13 tỉnh c&oacute; đ&oacute;ng g&oacute;p ng&acirc;n s&aacute;ch lớn nhờ c&oacute; Nh&agrave; m&aacute;y Lọc dầu Dung Quất &ndash; nh&agrave; m&aacute;y lọc h&oacute;a dầu đầu ti&ecirc;n của Việt Nam v&agrave; Khu kinh tế (KKT) Dung Quất, một trong những KKT ti&ecirc;n phong v&agrave; th&agrave;nh c&ocirc;ng nhất trong cả nước, g&oacute;p phần lớn cho việc ph&aacute;t triển trong khu vực kinh tế trọng điểm miền Trung.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/QuangNgai/qn1.jpg\" style=\"height:382px; width:650px\" /></strong></p>\r\n\r\n<p><strong>ĐIỀU KIỆN TỰ NHI&Ecirc;N V&Agrave; CƠ SỞ HẠ TẦNG</strong><br />\r\n<br />\r\n<strong>Địa l&yacute; h&agrave;nh ch&iacute;nh</strong></p>\r\n\r\n<p>Quảng Ng&atilde;i trải d&agrave;i từ 14&deg;32&rsquo; đến 15&deg;25&rsquo; vĩ độ Bắc, từ 108&deg;06&rsquo; đến 109&deg;04&rsquo; kinh độ Đ&ocirc;ng; ph&iacute;a bắc gi&aacute;p tỉnh Quảng Nam, ph&iacute;a nam gi&aacute;p tỉnh B&igrave;nh Định, ph&iacute;a t&acirc;y gi&aacute;p tỉnh Kon Tum, ph&iacute;a đ&ocirc;ng gi&aacute;p biển Đ&ocirc;ng, c&aacute;ch thủ đ&ocirc; H&agrave; Nội 883 km về ph&iacute;a bắc v&agrave; th&agrave;nh phố Hồ Ch&iacute; Minh 838 km về ph&iacute;a nam. Diện t&iacute;ch tự nhi&ecirc;n khoảng 5.152,67 km&sup2;, bao gồm 1 th&agrave;nh phố trực thuộc tỉnh (th&agrave;nh phố Quảng Ng&atilde;i), 6 huyện đồng bằng ven biển (B&igrave;nh Sơn, Sơn Tịnh, Tư Nghĩa, Nghĩa H&agrave;nh, Mộ Đức, Đức Phổ), 6 huyện miền n&uacute;i (Ba Tơ, Tr&agrave; Bồng, T&acirc;y Tr&agrave;, Sơn T&acirc;y, Sơn H&agrave;, Minh Long) v&agrave; 1 huyện đảo (L&yacute; Sơn).<br />\r\n<br />\r\n<strong>D&acirc;n số, d&acirc;n cư</strong></p>\r\n\r\n<p>D&acirc;n số Quảng Ng&atilde;i năm 2013 l&agrave; 1,236 triệu người, với mật độ d&acirc;n số trung b&igrave;nh 237 người/km&sup2;. Đ&acirc;y l&agrave; địa b&agrave;n sinh sống của nhiều tộc người kh&aacute;c nhau; trong đ&oacute; chiếm đa số l&agrave; người Kinh (88%), Hre (8,58%), Cor (1,8%)&hellip;<br />\r\n<br />\r\n<strong>Giao th&ocirc;ng vận tải</strong></p>\r\n\r\n<p><em><strong>1. Đường bộ:</strong></em></p>\r\n\r\n<p>Quốc lộ 1A: đoạn chạy qua tỉnh: 98km</p>\r\n\r\n<p>Quốc lộ 24A: Nối liền Quốc lội 1A (đoạn qua Thạch Trụ, huyện Mộ Đức, tỉnh Quảng Ng&atilde;i) với KonTum d&agrave;i 69km v&agrave; Quốc lộ 24B d&agrave;i 18km.</p>\r\n\r\n<p>Đường Đ&ocirc;ng Trường Sơn đi qua 02 x&atilde; Sơn M&ugrave;a v&agrave; Sơn Bua, huyện Sơn T&acirc;y với tổng chiều d&agrave;i 13 km</p>\r\n\r\n<p>Tỉnh lộ: Gồm 18 tuyến với tổng chiều d&agrave;i 520,5km</p>\r\n\r\n<p>Đường ven biển Dung Quất- Sa Huỳnh đi qua c&aacute;c huyện B&igrave;nh Sơn, Sơn Tịnh, Tư Nghĩa, Mộ Đức, Đức Phổ v&agrave; th&agrave;nh phố Quảng Ng&atilde;i, với chiều d&agrave;i khoảng 117 Km. C&oacute; điểm đầu tại ranh giữa hai tỉnh Quảng Nam v&agrave; Quảng Ng&atilde;i thuộc Khu kinh tế Dung Quất v&agrave; điểm cuối giao với Quốc lộ 1A tại Km1116 thuộc Sa Huỳnh, huyện Đức Phổ. Đ&acirc;y l&agrave; tuyến đường g&oacute;p phần quan trọng khơi dậy tiềm năng vừa ph&aacute;t triển kinh tế - x&atilde; hội dọc v&ugrave;ng ven biển, n&acirc;ng cao đời sống người d&acirc;n, vừa gắn với củng cố, tăng cường tiềm lực quốc ph&ograve;ng - an ninh ở khu vực n&agrave;y.</p>\r\n\r\n<p>Đường nội KKT Dung Quất: c&oacute; tổng chiều d&agrave;i tr&ecirc;n 60km. Hiện tiếp tục đầu tư x&acirc;y dựng ho&agrave;n th&agrave;nh c&aacute;c tuyến đường như: đường Dung Quất nối với đường Hồ Ch&iacute; Minh theo hướng Tr&agrave; My - Tr&agrave; Bồng - B&igrave;nh Long - Ng&atilde; ba Nh&agrave; m&aacute;y lọc dầu - cảng Dung Quất. Quy hoạch v&agrave; x&acirc;y dựng tuyến đường Trị B&igrave;nh - cảng Dung Quất v&agrave; một số tuyến đường trục ch&iacute;nh của đ&ocirc; thị Vạn Tường.<br />\r\n<em><strong>&nbsp;<br />\r\n2. Đường Sắt:</strong></em></p>\r\n\r\n<p>Tuyến đường sắt Bắc - Nam: chạy suốt chiều d&agrave;i tỉnh.</p>\r\n\r\n<p><em><strong>3. Đường h&agrave;ng kh&ocirc;ng:&nbsp;&nbsp;</strong></em></p>\r\n\r\n<p>S&acirc;n bay Chu Lai (Tỉnh Quảng Nam) c&aacute;ch Th&agrave;nh phố Quảng Ng&atilde;i 35km, c&aacute;ch Khu kinh tế Dung Quất 04km về hướng Bắc.</p>\r\n\r\n<p>&nbsp;<strong>4. Hệ thống cảng biển:&nbsp;</strong></p>\r\n\r\n<p>Cảng biển nước s&acirc;u Dung Quất: với lợi thế k&iacute;n gi&oacute;, c&aacute;ch tuyến h&agrave;ng hải quốc tế 90km, tuyến nội hải 30km v&agrave; độ s&acirc;u từ 10-19m, cảng Dung Quất đ&atilde; được thiết kế với hệ thống cảng đa chức năng gồm:</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp; Khu cảng Dầu kh&iacute; với lượng h&agrave;ng h&oacute;a th&ocirc;ng qua l&agrave; 6,1 triệu tấn dầu sản phẩm/năm v&agrave; x&acirc;y dựng 01 bến phao để nhập dầu th&ocirc; cho t&agrave;u dầu c&oacute; trọng tải từ 80.000 tấn - 110.000 tấn tại vịnh Việt Thanh; cảng chuy&ecirc;n d&ugrave;ng gắn với Khu c&ocirc;ng nghiệp li&ecirc;n hợp t&agrave;u thủy, khu x&acirc;y dựng Nh&agrave; m&aacute;y Luyện c&aacute;n th&eacute;p v&agrave; c&aacute;c Nh&agrave; m&aacute;y C&ocirc;ng nghiệp nặng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp; Cảng tổng hợp được chia th&agrave;nh 2 ph&acirc;n khu cảng: ph&acirc;n khu cảng Tổng hợp 1 ở ngay sau Khu cảng Dầu kh&iacute;, đảm bảo cho c&aacute;c t&agrave;u c&oacute; trọng tải từ 5.000 tấn - 50.000 tấn ra v&agrave;o; ph&acirc;n khu cảng Tổng hợp 2 ở ph&iacute;a Nam vịnh Dung Quất, b&ecirc;n tả s&ocirc;ng Đập.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp; &nbsp;Khu cảng Chuy&ecirc;n d&ugrave;ng gắn với Khu c&ocirc;ng nghiệp li&ecirc;n hợp t&agrave;u thủy, khu x&acirc;y dựng Nh&agrave; m&aacute;y Luyện c&aacute;n th&eacute;p v&agrave; c&aacute;c Nh&agrave; m&aacute;y C&ocirc;ng nghiệp nặng.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp; &nbsp;Khu cảng Thương mại phục vụ cho Khu bảo thuế v&agrave; 01 cảng trung chuyển container quốc tế nằm tại vị tr&iacute; giữa Khu cảng Chuy&ecirc;n d&ugrave;ng v&agrave; Khu cảng Tổng hợp để đ&oacute;n t&agrave;u c&oacute; trọng tải từ 10 - 15 vạn DWT.&nbsp;<br />\r\n&nbsp;<br />\r\nCảng Dung Quất được đầu tư x&acirc;y dựng để bảo đảm khối lượng h&agrave;ng h&oacute;a th&ocirc;ng qua khoảng 20 triệu tấn/năm v&agrave;o năm 2010 v&agrave; khoảng 34 triệu tấn/năm v&agrave;o năm 2020 Hiện nay đang vận h&agrave;nh bến tổng hợp cho t&agrave;u 1,5 vạn DWT.<br />\r\n&nbsp;<br />\r\n* Ngo&agrave;i ra, với bờ biển d&agrave;i 144 km, Quảng Ng&atilde;i c&oacute; nhiều cửa biển, cảng biển nhỏ như: Sa Kỳ, Sa Cần, B&igrave;nh Ch&acirc;u, Mỹ &Aacute;,&hellip; c&oacute; tiềm năng về giao th&ocirc;ng đường thủy, thương mại v&agrave; du lịch</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/QuangNgai/qn2.jpg\" style=\"height:1200px; width:1599px\" /></p>\r\n\r\n<p><strong>T&Agrave;I NGUY&Ecirc;N THI&Ecirc;N NHI&Ecirc;N V&Agrave; TIỀM NĂNG PH&Aacute;T TRIỂN</strong></p>\r\n\r\n<p><strong>T&agrave;i nguy&ecirc;n đất</strong></p>\r\n\r\n<p>Theo kết quả điều tra x&acirc;y dựng bản đồ đất thuộc hệ thống ph&acirc;n loại của FAO - UNESCO, tr&ecirc;n diện t&iacute;ch 513.688,14 ha, Quảng Ng&atilde;i c&oacute; 9 nh&oacute;m đất ch&iacute;nh với 25 đơn vị đất v&agrave; 68 đơn vị đất phụ. Ch&iacute;n nh&oacute;m đất ch&iacute;nh l&agrave;: cồn c&aacute;t, đất c&aacute;t ven biển, đất mặn, đất ph&ugrave; sa, đất gi&acirc;y, đất x&aacute;m, đất đỏ v&agrave;ng, đất đen, đất nứt nẻ, đất x&oacute;i m&ograve;n trơ trọi đ&aacute;. Trong đ&oacute;, nh&oacute;m đất x&aacute;m c&oacute; vị tr&iacute; quan trọng (chiếm 74,65% diện t&iacute;ch đất tự nhi&ecirc;n) th&iacute;ch hợp với c&acirc;y c&ocirc;ng nghiệp d&agrave;i ng&agrave;y, c&acirc;y đặc sản, dược liệu, chăn nu&ocirc;i gia s&uacute;c v&agrave; nh&oacute;m đất ph&ugrave; sa thuộc hạ lưu c&aacute;c s&ocirc;ng (chiếm 19,3% diện t&iacute;ch đất tự nhi&ecirc;n), th&iacute;ch hợp với trồng l&uacute;a, c&acirc;y c&ocirc;ng nghiệp ngắn ng&agrave;y, rau đậu.</p>\r\n\r\n<p>Diện t&iacute;ch đất của Quảng Ng&atilde;i được sử dụng gồm 322.034,59 ha đất n&ocirc;ng nghiệp (62,5% diện t&iacute;ch đất tự nhi&ecirc;n), 45.636,2 ha đất phi n&ocirc;ng nghiệp (8,86% diện t&iacute;ch đất tự nhi&ecirc;n) v&agrave; 147.595,9ha đất chưa sử dụng (28,64% diện t&iacute;ch đất tự nhi&ecirc;n).</p>\r\n\r\n<p><strong>T&agrave;i nguy&ecirc;n rừng</strong></p>\r\n\r\n<p>Rừng Quảng Ng&atilde;i phong ph&uacute; về l&acirc;m, thổ sản với nhiều loại gỗ như: trắc, huỳnh, đinh hương, sến, kiền kiền, gụ, dỗi&hellip;, tổng trữ lượng gỗ khoảng 9,8 triệu m&sup3;. So với c&aacute;c tỉnh trong v&ugrave;ng duy&ecirc;n hải miền Trung, vốn rừng tự nhi&ecirc;n của Quảng Ng&atilde;i rất &iacute;t, chủ yếu l&agrave; rừng trung b&igrave;nh v&agrave; rừng ngh&egrave;o, nhưng nếu so về trữ lượng (t&iacute;nh tr&ecirc;n 1 ha) th&igrave; trữ lượng c&aacute;c loại rừng của Quảng Ng&atilde;i lại cao hơn mức trung b&igrave;nh của cả nước.</p>\r\n\r\n<p><strong>T&agrave;i nguy&ecirc;n kho&aacute;ng sản</strong></p>\r\n\r\n<p>T&agrave;i nguy&ecirc;n kho&aacute;ng sản kh&ocirc;ng đa dạng về chủng loại, chủ yếu l&agrave; kho&aacute;ng sản phục vụ cho c&ocirc;ng nghiệp vật liệu x&acirc;y dựng, nước kho&aacute;ng v&agrave; một số kho&aacute;ng sản kh&aacute;c.</p>\r\n\r\n<p>Những kho&aacute;ng sản c&oacute; thể khai th&aacute;c trong 10 năm tới l&agrave;: graph&iacute;t trữ lượng khoảng 4 triệu tấn, trong đ&oacute; trữ lượng cho ph&eacute;p đưa v&agrave;o khai th&aacute;c 2,5 triệu tấn, h&agrave;m lượng c&aacute;cbon trung b&igrave;nh 20%, c&oacute; nơi 24% nằm tr&ecirc;n địa b&agrave;n huyện Sơn Tịnh; silimanhit trữ lượng 1 triệu tấn, ph&acirc;n bổ ở Hưng Nhượng (Sơn Tịnh); than b&ugrave;n ở B&igrave;nh Ph&uacute; (B&igrave;nh Sơn) trữ lượng 476 ngh&igrave;n m&sup3;; cao lanh ở Sơn Tịnh trữ lượng khoảng 4 triệu tấn. Đ&aacute; x&acirc;y dựng gồm c&aacute;c loại đ&aacute; l&agrave;m vật liệu x&acirc;y dựng, rải đường giao th&ocirc;ng, &aacute;p tường, l&aacute;t nền, trữ lượng tr&ecirc;n 7 tỷ m&sup3;, ph&acirc;n bố ở Đức Phổ, Tr&agrave; Bồng v&agrave; một số huyện kh&aacute;c; nước kho&aacute;ng ở Thạch B&iacute;ch (Tr&agrave; Bồng), Đức L&acirc;n (Mộ Đức), Nghĩa Thuận (Tư Nghĩa) v&agrave; Sơn Tịnh.</p>\r\n\r\n<p><strong>T&agrave;i nguy&ecirc;n biển v&agrave; ven biển</strong></p>\r\n\r\n<p>Với bờ biển d&agrave;i 144 km, c&ugrave;ng v&ugrave;ng l&atilde;nh hải rộng lớn 11.000 km&sup2;, c&oacute; 6 cửa biển, dồi d&agrave;o nguồn lực hải sản, Quảng Ng&atilde;i c&ograve;n c&oacute; một khả năng lớn để đi l&ecirc;n từ ph&aacute;t triển kinh tế biển đặc biệt l&agrave; khai th&aacute;c c&oacute; hiệu quả c&aacute; nổi trữ lượng khoảng 68.000 tấn c&aacute;c loại. &ETH;&acirc;y cũng l&agrave; ng&agrave;nh kinh tế mũi nhọn của tỉnh. Với 6 huyện ven biển v&agrave; một huyện đảo, c&oacute; thể n&oacute;i biển đảo Quảng Ng&atilde;i c&oacute; nhiều tiềm năng về cảnh quan, địa h&igrave;nh, nhiều di t&iacute;ch lịch sử, lễ hội truyền thống, l&agrave; một trong c&aacute;c tỉnh c&oacute; bờ biển d&agrave;i v&agrave; đẹp, c&oacute; diện t&iacute;ch khai th&aacute;c, nu&ocirc;i trồng thủy hải sản rộng lớn. Đặc biệt, đảo L&yacute; Sơn c&ograve;n l&agrave; nơi lưu giữ h&igrave;nh ảnh của những đội h&ugrave;ng binh xưa dong buồm ra biển Đ&ocirc;ng, đặt những vi&ecirc;n đ&aacute; chủ quyền thi&ecirc;ng li&ecirc;ng đầu ti&ecirc;n tr&ecirc;n quần đảo Ho&agrave;ng Sa v&agrave; Trường Sa.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/QuangNgai/qn3.jpg\" style=\"height:429px; width:640px\" /></p>\r\n\r\n<p><strong>T&agrave;i nguy&ecirc;n du lịch</strong></p>\r\n\r\n<p>Quảng Ng&atilde;i c&oacute; di chỉ văn h&oacute;a Sa Huỳnh, ch&ugrave;a Thi&ecirc;n Ấn, th&agrave;nh cổ Ch&acirc;u Sa... l&agrave; những di t&iacute;ch lịch sử - văn h&oacute;a (LSVH) quan trọng của thời tiền - sơ sử v&agrave; cổ trung đại. Quảng Ng&atilde;i cũng l&agrave; nơi lưu dấu nhiều sự kiện v&agrave; chứng t&iacute;ch quan trọng trong lịch sử đấu tranh c&aacute;ch mạng thời hiện đại như: Chứng t&iacute;ch Sơn Mỹ, địa đạo &ETH;&agrave;m To&aacute;i x&atilde; B&igrave;nh Ch&acirc;u, Ba Tơ quật khởi, mộ nh&agrave; ch&iacute; sĩ y&ecirc;u nước Huỳnh Th&uacute;c Kh&aacute;ng... Ngo&agrave;i ra, Quảng Ng&atilde;i c&oacute; 144 km bờ biển với những quang cảnh n&ecirc;n thơ rất th&iacute;ch hợp cho việc ph&aacute;t triển kinh doanh du lịch như: b&atilde;i biển Sa Huỳnh, b&atilde;i biển Mỹ Kh&ecirc;, vũng Dung Quất, mũi Ba L&agrave;ng An, Cổ Lũy c&ocirc; th&ocirc;n... Trong v&ugrave;ng biển ph&iacute;a đ&ocirc;ng của tỉnh c&oacute; đảo L&yacute; Sơn, một v&ugrave;ng biển đảo c&oacute; nhiều cảnh quan thi&ecirc;n nhi&ecirc;n kỳ th&uacute;, l&agrave; v&ugrave;ng đất ph&ecirc;n dậu ph&iacute;a đ&ocirc;ng của tỉnh, qu&ecirc; hương của những &ldquo;h&ugrave;ng binh&rdquo; Ho&agrave;ng Sa thuở trước, l&agrave; &ldquo;vương quốc&rdquo; của nghề trồng tỏi v&agrave; nghề đ&aacute;nh bắt hải sản xa bờ, cũng l&agrave; một &ldquo;trọng địa&rdquo; du lịch đầy tiềm năng với những b&atilde;i biển hoang sơ, c&oacute; nhiều di t&iacute;ch LSVH, c&ugrave;ng những bến thuyền t&agrave;u ghe tấp nập&hellip; hấp dẫn du kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/QuangNgai/qn4.jpg\" style=\"height:375px; width:500px\" /></p>\r\n\r\n<p><strong>Di sản văn h&oacute;a</strong></p>\r\n\r\n<p>Quảng Ng&atilde;i l&agrave; mảnh đất c&oacute; bề d&agrave;y lịch sử, l&agrave; qu&ecirc; hương của văn h&oacute;a Sa Huỳnh v&agrave; l&agrave; địa b&agrave;n trọng yếu của văn h&oacute;a Champa, c&oacute; hai danh thắng nổi tiếng l&agrave; &quot;n&uacute;i Ấn, s&ocirc;ng Tr&agrave;&quot;. Đặc biệt, Quảng Ng&atilde;i c&oacute; hệ thống Trường Lũy được x&acirc;y dựng từ thế kỷ XVI, trải dọc v&ugrave;ng trung du ph&iacute;a t&acirc;y của tỉnh, k&eacute;o d&agrave;i đến tỉnh B&igrave;nh Định, l&agrave; hệ thống th&agrave;nh lũy d&agrave;i nhất Việt Nam, được c&ocirc;ng nhận l&agrave; di t&iacute;ch LSVH cấp quốc gia. Quảng Ng&atilde;i c&ograve;n l&agrave; qu&ecirc; hương của c&aacute;c danh nh&acirc;n, danh tướng như: Trương Định, L&ecirc; Trung Đ&igrave;nh, Phạm Văn Đồng; nhiều nh&agrave; tr&iacute; thức, nh&agrave; văn, nh&agrave; thơ, nhạc sĩ, nghệ sĩ t&ecirc;n tuổi: B&iacute;ch Kh&ecirc;, Tế Hanh, NSND Tr&agrave; Giang, Trương Quang Lục, Thế Bảo, Nhất Sinh... Quảng Ng&atilde;i c&ograve;n c&oacute; những lễ hội văn h&oacute;a đặc sắc diễn ra quanh năm như: lễ hội nghinh &Ocirc;ng, lễ khao lề thế l&iacute;nh Ho&agrave;ng Sa (L&yacute; Sơn), lễ hội ăn tr&acirc;u, lễ hội cầu ngư, lễ hội đua thuyền&hellip;</p>\r\n\r\n<p>(Nguồn: www.nhipcauviet.com.vn)</p>', 1, 1, 1, 0, '2018-11-30 18:30:53', '2018-12-05 13:34:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_ke`
--

CREATE TABLE `thong_ke` (
  `Mã` int(11) NOT NULL,
  `Tháng` int(11) NOT NULL,
  `Năm` int(11) NOT NULL,
  `Số_chuyến_xe` int(11) NOT NULL,
  `Chi_phí` int(11) NOT NULL,
  `Doanh_thu` int(11) NOT NULL,
  `created__at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thong_ke`
--

INSERT INTO `thong_ke` (`Mã`, `Tháng`, `Năm`, `Số_chuyến_xe`, `Chi_phí`, `Doanh_thu`, `created__at`, `updated_at`) VALUES
(1, 1, 2017, 10, 50000000, 70000000, '2018-10-11 18:04:29', '2018-10-11 18:04:29'),
(2, 2, 2017, 15, 55000000, 80000000, '2018-10-11 19:00:10', '2018-10-11 19:00:10'),
(3, 3, 2017, 12, 56000000, 85000000, '2018-10-11 19:00:54', '2018-10-11 19:00:54'),
(4, 4, 2017, 20, 40000000, 65000000, '2018-10-11 19:01:32', '2018-10-11 19:01:32'),
(5, 5, 2017, 22, 65000000, 90000000, '2018-10-11 19:02:16', '2018-10-11 19:02:16'),
(6, 6, 2017, 23, 73000000, 89000000, '2018-10-11 19:02:58', '2018-10-11 19:02:58'),
(7, 7, 2017, 50, 80000000, 120000000, '2018-10-11 19:03:47', '2018-10-11 19:03:47'),
(8, 8, 2017, 13, 40000000, 67000000, '2018-12-13 17:11:07', '2018-12-13 17:11:07'),
(9, 9, 2017, 23, 45000000, 71000000, '2018-12-13 17:12:14', '2018-12-13 17:12:14'),
(10, 10, 2017, 25, 49000000, 75000000, '2018-12-13 17:12:40', '2018-12-13 17:12:40'),
(11, 11, 2017, 31, 54000000, 80000000, '2018-12-13 17:13:16', '2018-12-13 17:13:16'),
(12, 12, 2017, 35, 54000000, 89000000, '2018-12-13 17:13:45', '2018-12-13 17:13:45'),
(13, 1, 2018, 15, 50000000, 76000000, '2018-12-13 17:16:03', '2018-12-13 17:16:03'),
(14, 2, 2018, 15, 55000000, 82000000, '2018-12-13 17:16:35', '2018-12-13 17:16:35'),
(15, 3, 2018, 17, 56000000, 90000000, '2018-12-13 17:17:04', '2018-12-13 17:17:04'),
(16, 4, 2018, 21, 45000000, 73000000, '2018-12-13 17:17:34', '2018-12-13 17:17:34'),
(17, 5, 2018, 21, 65000000, 93000000, '2018-12-13 17:18:01', '2018-12-13 17:18:01'),
(18, 6, 2018, 31, 81000000, 95000000, '2018-12-13 17:18:36', '2018-12-13 17:18:36'),
(19, 7, 2018, 47, 83000000, 112000000, '2018-12-13 17:19:14', '2018-12-13 17:19:14'),
(20, 8, 2018, 20, 56000000, 75000000, '2018-12-13 17:19:51', '2018-12-13 17:19:51'),
(21, 9, 2018, 27, 49000000, 83000000, '2018-12-13 17:20:28', '2018-12-13 17:20:28'),
(22, 10, 2018, 32, 53000000, 85000000, '2018-12-13 17:21:22', '2018-12-13 17:21:22'),
(23, 11, 2018, 29, 54000000, 75000000, '2018-12-13 17:22:04', '2018-12-13 17:22:04'),
(24, 12, 2018, 42, 63000000, 97000000, '2018-12-13 17:22:40', '2018-12-13 17:22:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh`
--

CREATE TABLE `tinh` (
  `Mã` int(11) NOT NULL,
  `Tên` varchar(255) NOT NULL,
  `Tên_không_dấu` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tinh`
--

INSERT INTO `tinh` (`Mã`, `Tên`, `Tên_không_dấu`, `created_at`, `updated_at`) VALUES
(1, 'An Giang', 'An Giang', '2018-09-27 06:37:58', '2018-12-05 03:05:27'),
(2, 'Quảng Ngãi', 'Quang Ngai', '2018-10-09 17:13:46', '2018-10-09 17:13:46'),
(3, 'Quảng Nam', 'Quang Nam', '2018-10-09 10:42:25', '2018-10-09 10:54:53'),
(6, 'Đà Nẵng', 'Da Nang', '2018-10-09 11:09:39', '2018-10-09 11:09:39'),
(7, 'TP.Hồ Chí Minh', 'TP.Ho Chi Minh', '2018-10-24 04:43:03', '2018-10-24 07:27:13'),
(8, 'Bạc Liêu', 'Bac Lieu', '2018-10-24 07:00:11', '2018-10-24 07:00:11'),
(9, 'Bảo Lộc', 'Bao Loc', '2018-10-24 07:00:21', '2018-10-24 07:00:21'),
(10, 'Lâm Đồng', 'Lam Dong', '2018-10-24 07:00:32', '2018-10-24 07:00:32'),
(11, 'Nha Trang', 'Nha Trang', '2018-10-24 07:01:24', '2018-10-24 07:01:24'),
(12, 'Phan Thiết', 'Phan Thiet', '2018-10-24 07:01:36', '2018-10-24 07:01:36'),
(13, 'Cà Mau', 'Ca Mau', '2018-10-24 07:01:42', '2018-10-24 07:01:42'),
(14, 'Cần Thơ', 'Can Tho', '2018-10-24 07:01:50', '2018-10-24 07:01:50'),
(15, 'Đồng Tháp', 'Dong Thap', '2018-10-24 07:01:59', '2018-10-24 07:01:59'),
(16, 'Châu Đốc', 'Chau Doc', '2018-10-24 07:02:14', '2018-10-24 07:02:14'),
(17, 'Đà Lạt', 'Da Lat', '2018-10-24 07:05:43', '2018-10-24 07:05:43'),
(18, 'Hà Nội', 'Ha Noi', '2018-10-24 07:05:52', '2018-10-24 07:05:52'),
(19, 'Kiên Giang', 'Kien Giang', '2018-10-24 07:06:02', '2018-10-24 07:06:02'),
(20, 'Huế', 'Hue', '2018-10-24 07:06:11', '2018-10-24 07:06:11'),
(21, 'Nam Định', 'Nam Dinh', '2018-10-24 07:06:24', '2018-10-24 07:06:24'),
(22, 'Bình Định', 'Binh Dinh', '2018-10-24 07:06:46', '2018-10-24 07:06:46'),
(23, 'Sóc Trăng', 'Soc Trang', '2018-10-24 07:07:32', '2018-10-24 07:07:32'),
(24, 'Trà Vinh', 'Tra Vinh', '2018-10-24 07:07:46', '2018-10-24 07:07:46'),
(25, 'Vũng Tàu', 'Vung Tau', '2018-10-24 07:07:58', '2018-10-24 07:07:58'),
(26, 'Bến Tre', 'Ben Tre', '2018-10-24 07:08:14', '2018-10-24 07:08:14'),
(27, 'Tuy Hòa', 'Tuy Hoa', '2018-10-24 07:08:38', '2018-10-24 07:08:38'),
(28, 'Đắk Lắk', 'Dak Lak', '2018-10-24 07:09:17', '2018-10-24 07:09:17'),
(29, 'Đắk Nông', 'Dak Nong', '2018-10-24 07:09:25', '2018-10-24 07:09:25'),
(30, 'Tây Ninh', 'Tay Ninh', '2018-10-31 07:42:36', '2018-10-31 07:42:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tram_dung`
--

CREATE TABLE `tram_dung` (
  `Mã` int(11) NOT NULL,
  `Tên` varchar(255) NOT NULL,
  `Tọa_độ` varchar(255) NOT NULL,
  `Mã_nhân_viên_tạo` int(11) NOT NULL,
  `Mã_nhân_viên_chỉnh_sửa` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tram_dung`
--

INSERT INTO `tram_dung` (`Mã`, `Tên`, `Tọa_độ`, `Mã_nhân_viên_tạo`, `Mã_nhân_viên_chỉnh_sửa`, `created_at`, `updated_at`) VALUES
(1, 'Trường Đại Học Ngân Hàng', '10.860252,106.761847', 1, 1, '2018-10-08 13:25:29', '2018-12-06 11:52:34'),
(3, 'Trạm dừng 1', '10.863760207175778,106.7552897195435', 1, 1, '2018-10-08 11:58:21', '2018-12-13 10:25:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `Mã` int(11) NOT NULL,
  `Mã_chuyến_xe` int(11) NOT NULL,
  `Mã_nhân_viên_đặt` int(11) DEFAULT NULL,
  `Mã_khách_hàng` int(11) DEFAULT NULL,
  `Mã_đặt_vé` varchar(255) DEFAULT NULL,
  `Vị_trí_ghế` varchar(255) NOT NULL,
  `Trạng_thái` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_hide` tinyint(1) NOT NULL DEFAULT 0,
  `Thời_điểm_chọn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ve`
--

INSERT INTO `ve` (`Mã`, `Mã_chuyến_xe`, `Mã_nhân_viên_đặt`, `Mã_khách_hàng`, `Mã_đặt_vé`, `Vị_trí_ghế`, `Trạng_thái`, `created_at`, `updated_at`, `is_hide`, `Thời_điểm_chọn`) VALUES
(5191, 52, NULL, NULL, NULL, 'A-1', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5192, 52, NULL, NULL, NULL, 'A-2', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5193, 52, NULL, NULL, NULL, 'A-3', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5194, 52, NULL, NULL, NULL, 'A-4', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5195, 52, NULL, NULL, NULL, 'A-5', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5196, 52, NULL, NULL, NULL, 'A-6', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5197, 52, NULL, NULL, NULL, 'A-7', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5198, 52, NULL, NULL, NULL, 'A-8', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5199, 52, NULL, NULL, NULL, 'A-9', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5200, 52, NULL, NULL, NULL, 'A-10', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5201, 52, NULL, NULL, NULL, 'A-11', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5202, 52, NULL, NULL, NULL, 'A-12', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5203, 52, NULL, NULL, NULL, 'A-13', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5204, 52, NULL, NULL, NULL, 'A-14', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5205, 52, NULL, NULL, NULL, 'A-15', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5206, 52, NULL, NULL, NULL, 'A-16', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5207, 52, NULL, NULL, NULL, 'A-17', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5208, 52, NULL, NULL, NULL, 'A-18', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5209, 52, NULL, NULL, NULL, 'A-19', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5210, 52, NULL, NULL, NULL, 'A-20', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5211, 52, NULL, NULL, NULL, 'A-21', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5212, 52, NULL, NULL, NULL, 'A-22', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5213, 52, NULL, NULL, NULL, 'A-23', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5214, 52, NULL, NULL, NULL, 'A-24', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5215, 52, NULL, NULL, NULL, 'A-25', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5216, 52, NULL, NULL, NULL, 'A-26', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5217, 52, NULL, NULL, NULL, 'A-27', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5218, 52, NULL, NULL, NULL, 'A-28', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5219, 52, NULL, NULL, NULL, 'A-29', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5220, 52, NULL, NULL, NULL, 'A-30', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5221, 52, NULL, NULL, NULL, 'A-31', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5222, 52, NULL, NULL, NULL, 'A-32', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5223, 52, NULL, NULL, NULL, 'A-33', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5224, 52, NULL, NULL, NULL, 'A-34', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5225, 52, NULL, NULL, NULL, 'A-35', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5226, 52, NULL, NULL, NULL, 'A-36', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5227, 52, NULL, NULL, NULL, 'A-37', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5228, 52, NULL, NULL, NULL, 'A-38', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5229, 52, NULL, NULL, NULL, 'A-39', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5230, 52, NULL, NULL, NULL, 'A-40', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5231, 52, NULL, NULL, NULL, 'A-41', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5232, 52, NULL, NULL, NULL, 'A-42', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5233, 52, NULL, NULL, NULL, 'A-43', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5234, 52, NULL, NULL, NULL, 'A-44', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5235, 52, NULL, NULL, NULL, 'A-45', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5236, 52, NULL, NULL, NULL, 'A-46', 0, '2020-12-20 12:40:08', '2020-12-20 12:40:08', 0, NULL),
(5237, 51, 1, NULL, NULL, 'A01', 0, '2020-12-20 13:22:01', '2020-12-20 13:22:01', 0, NULL),
(5238, 51, 1, NULL, NULL, 'A-02', 0, '2020-12-20 13:22:36', '2020-12-20 13:22:36', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xe`
--

CREATE TABLE `xe` (
  `Mã` int(11) NOT NULL,
  `Biển_số` varchar(255) NOT NULL,
  `Mã_loại_xe` int(11) NOT NULL,
  `Ngày_bảo_trì_gần_nhất` date NOT NULL,
  `Ngày_bảo_trì_tiếp_theo` date NOT NULL,
  `location` tinytext DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `xe`
--

INSERT INTO `xe` (`Mã`, `Biển_số`, `Mã_loại_xe`, `Ngày_bảo_trì_gần_nhất`, `Ngày_bảo_trì_tiếp_theo`, `location`, `created_at`, `updated_at`) VALUES
(6, '51H1-34215', 6, '2018-10-04', '2018-10-18', '10.860252,106.761847', '2018-10-14 09:10:08', '2018-12-13 07:19:42'),
(7, '77A2-00011', 7, '2018-01-10', '2019-01-01', '10.859915,106.760239', '2018-10-25 08:22:03', '2018-10-25 08:22:03'),
(8, '51H1-32012', 6, '2018-10-31', '2018-11-30', '10.858756,106.759080', '2018-10-31 03:56:53', '2018-10-31 03:56:53');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_lienhe`
--
ALTER TABLE `admin_lienhe`
  ADD PRIMARY KEY (`Mã`);

--
-- Chỉ mục cho bảng `bus_model`
--
ALTER TABLE `bus_model`
  ADD PRIMARY KEY (`Mã`),
  ADD UNIQUE KEY `Tên_Loại` (`Tên_Loại`),
  ADD UNIQUE KEY `Sơ_đồ` (`Sơ_đồ`),
  ADD KEY `Mã_nhân_viên_chỉnh_sửa` (`Mã_nhân_viên_chỉnh_sửa`),
  ADD KEY `Mã_nhân_viên_tạo` (`Mã_nhân_viên_tạo`);

--
-- Chỉ mục cho bảng `chuyen_xe`
--
ALTER TABLE `chuyen_xe`
  ADD PRIMARY KEY (`Mã`),
  ADD KEY `Mã_lộ_trình` (`Mã_lộ_trình`),
  ADD KEY `Mã_tài_xế` (`Mã_tài_xế`),
  ADD KEY `Mã_xe` (`Mã_xe`),
  ADD KEY `Mã_nhân_viên_tạo` (`Mã_nhân_viên_tạo`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Mã`),
  ADD UNIQUE KEY `Sđt` (`Sđt`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Chỉ mục cho bảng `dondatve`
--
ALTER TABLE `dondatve`
  ADD PRIMARY KEY (`Mã`);

--
-- Chỉ mục cho bảng `duong_di`
--
ALTER TABLE `duong_di`
  ADD PRIMARY KEY (`Mã`),
  ADD KEY `Mã_Trạm_Start` (`Mã_Trạm_Start`),
  ADD KEY `Mã_Trạm_End` (`Mã_Trạm_End`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Mã`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Sđt` (`Sđt`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Chỉ mục cho bảng `gioi_thieu`
--
ALTER TABLE `gioi_thieu`
  ADD PRIMARY KEY (`gt_id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`lh_id`);

--
-- Chỉ mục cho bảng `lo_trinh`
--
ALTER TABLE `lo_trinh`
  ADD PRIMARY KEY (`Mã`),
  ADD KEY `Mã_nhân_viên_chỉnh_sửa` (`Mã_nhân_viên_chỉnh_sửa`),
  ADD KEY `Mã_nhân_viên_tạo` (`Mã_nhân_viên_tạo`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `thong_ke`
--
ALTER TABLE `thong_ke`
  ADD PRIMARY KEY (`Mã`);

--
-- Chỉ mục cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`Mã`),
  ADD UNIQUE KEY `Tên` (`Tên`) USING BTREE;

--
-- Chỉ mục cho bảng `tram_dung`
--
ALTER TABLE `tram_dung`
  ADD PRIMARY KEY (`Mã`),
  ADD UNIQUE KEY `Tên` (`Tên`),
  ADD UNIQUE KEY `Tọa_độ` (`Tọa_độ`),
  ADD KEY `Mã_nhân_viên_tạo` (`Mã_nhân_viên_tạo`),
  ADD KEY `Mã_nhân_viên_chỉnh_sửa` (`Mã_nhân_viên_chỉnh_sửa`);

--
-- Chỉ mục cho bảng `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`Mã`),
  ADD KEY `Mã_chuyến_xe` (`Mã_chuyến_xe`),
  ADD KEY `Mã_khách_hàng` (`Mã_khách_hàng`),
  ADD KEY `Mã_nhân_viên_đặt` (`Mã_nhân_viên_đặt`);

--
-- Chỉ mục cho bảng `xe`
--
ALTER TABLE `xe`
  ADD PRIMARY KEY (`Mã`),
  ADD UNIQUE KEY `Biển_số` (`Biển_số`),
  ADD KEY `Mã_loại_xe` (`Mã_loại_xe`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_lienhe`
--
ALTER TABLE `admin_lienhe`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bus_model`
--
ALTER TABLE `bus_model`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `chuyen_xe`
--
ALTER TABLE `chuyen_xe`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `duong_di`
--
ALTER TABLE `duong_di`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `gioi_thieu`
--
ALTER TABLE `gioi_thieu`
  MODIFY `gt_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `lh_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lo_trinh`
--
ALTER TABLE `lo_trinh`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `thong_ke`
--
ALTER TABLE `thong_ke`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tinh`
--
ALTER TABLE `tinh`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tram_dung`
--
ALTER TABLE `tram_dung`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `ve`
--
ALTER TABLE `ve`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5239;

--
-- AUTO_INCREMENT cho bảng `xe`
--
ALTER TABLE `xe`
  MODIFY `Mã` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bus_model`
--
ALTER TABLE `bus_model`
  ADD CONSTRAINT `bus_model_ibfk_1` FOREIGN KEY (`Mã_nhân_viên_tạo`) REFERENCES `employee` (`Mã`),
  ADD CONSTRAINT `bus_model_ibfk_2` FOREIGN KEY (`Mã_nhân_viên_chỉnh_sửa`) REFERENCES `employee` (`Mã`);

--
-- Các ràng buộc cho bảng `chuyen_xe`
--
ALTER TABLE `chuyen_xe`
  ADD CONSTRAINT `chuyen_xe_ibfk_1` FOREIGN KEY (`Mã_lộ_trình`) REFERENCES `lo_trinh` (`Mã`),
  ADD CONSTRAINT `chuyen_xe_ibfk_2` FOREIGN KEY (`Mã_tài_xế`) REFERENCES `employee` (`Mã`),
  ADD CONSTRAINT `chuyen_xe_ibfk_3` FOREIGN KEY (`Mã_xe`) REFERENCES `xe` (`Mã`),
  ADD CONSTRAINT `chuyen_xe_ibfk_4` FOREIGN KEY (`Mã_nhân_viên_tạo`) REFERENCES `employee` (`Mã`);

--
-- Các ràng buộc cho bảng `duong_di`
--
ALTER TABLE `duong_di`
  ADD CONSTRAINT `duong_di_ibfk_1` FOREIGN KEY (`Mã_Trạm_Start`) REFERENCES `tram_dung` (`Mã`),
  ADD CONSTRAINT `duong_di_ibfk_2` FOREIGN KEY (`Mã_Trạm_End`) REFERENCES `tram_dung` (`Mã`);

--
-- Các ràng buộc cho bảng `lo_trinh`
--
ALTER TABLE `lo_trinh`
  ADD CONSTRAINT `lo_trinh_ibfk_1` FOREIGN KEY (`Mã_nhân_viên_tạo`) REFERENCES `employee` (`Mã`),
  ADD CONSTRAINT `lo_trinh_ibfk_2` FOREIGN KEY (`Mã_nhân_viên_chỉnh_sửa`) REFERENCES `employee` (`Mã`);

--
-- Các ràng buộc cho bảng `tram_dung`
--
ALTER TABLE `tram_dung`
  ADD CONSTRAINT `tram_dung_ibfk_1` FOREIGN KEY (`Mã_nhân_viên_tạo`) REFERENCES `employee` (`Mã`),
  ADD CONSTRAINT `tram_dung_ibfk_2` FOREIGN KEY (`Mã_nhân_viên_chỉnh_sửa`) REFERENCES `employee` (`Mã`);

--
-- Các ràng buộc cho bảng `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`Mã_nhân_viên_đặt`) REFERENCES `employee` (`Mã`),
  ADD CONSTRAINT `ve_ibfk_2` FOREIGN KEY (`Mã_khách_hàng`) REFERENCES `customer` (`Mã`),
  ADD CONSTRAINT `ve_ibfk_3` FOREIGN KEY (`Mã_chuyến_xe`) REFERENCES `chuyen_xe` (`Mã`);

--
-- Các ràng buộc cho bảng `xe`
--
ALTER TABLE `xe`
  ADD CONSTRAINT `xe_ibfk_1` FOREIGN KEY (`Mã_loại_xe`) REFERENCES `bus_model` (`Mã`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
