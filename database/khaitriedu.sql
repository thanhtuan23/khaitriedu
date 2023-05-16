-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 03:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khaitriedu`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2021-05-26 18:30:00', '2021-11-11 16:23:15'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.in', 0, '2021-11-10 18:28:11', NULL),
(4, 'suadmin2', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 0, '2021-11-10 18:28:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(9, 'TIN HỌC NGOẠI NGỮ', 'D', '2023-05-16 00:55:46', '2023-05-16 00:58:55', 1),
(10, 'ĐÀO TẠO DÀI HẠN', 'dao-tao-dai-han', '2023-05-16 01:18:39', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2021-06-29 18:30:00', '2021-11-06 18:30:00'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2021-06-29 18:30:00', '2021-11-06 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(14, 'CHIÊU SINH LỚP HỌC THỬ ANH VĂN THIẾU NHI THÁNG 06/2023 HOÀN TOÀN MIỄN PHÍ', 9, 11, '<div class=\"entry-content\" style=\"margin: 0px; padding: 0px;\"><h2 class=\"has-text-align-center\" style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 26px; text-align: center;\">ANH VĂN THIẾU NHI KHAI TRÍ – TƯNG BỪNG KHAI GIẢNG KHOÁ HÈ</h2><h2 class=\"has-text-align-center\" style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 26px; text-align: center;\">HỌC VUI NHỘN – RÈN TRI THỨC</h2><h3 style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px;\"><span style=\"margin: 0px; padding: 0px;\">ĐĂNG KÝ tham gia khóa học nhận ngay các ƯU ĐÃI siêu “HOTTT”</span></h3><ul style=\"margin-right: 0px; margin-left: 25px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Trải nghiệm học thử khóa học 2 tuần HOÀN TOÀN MIỄN PHÍ</li><li style=\"margin: 0px; padding: 0px;\">Giảm ngay 10% học phí tất cả học viên đến Trung tâm đăng ký</li><li style=\"margin: 0px; padding: 0px;\">Giảm ngay 20% học viên có voucher ưu đãi</li></ul><h3 style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px;\">DỰ KIẾN KHAI GIẢNG:</h3><ul style=\"margin-right: 0px; margin-left: 25px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">05/06/2022 học tối 2, 4, 6</li><li style=\"margin: 0px; padding: 0px;\">06/06/2022 học tối 3, 5, 7</li></ul><h3 style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px;\">TẠI ĐÂY CON BẠN SẼ :</h3><ul style=\"margin-right: 0px; margin-left: 25px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Được học với những Teacher nước ngoài đầy nhiệt huyết, am hiểu tâm lý trẻ em cùng với đội ngũ GV Việt Nam giàu kinh nghiệm giảng dạy quốc tế.</li><li style=\"margin: 0px; padding: 0px;\">Được hòa mình vào lớp học “Vừa học vừa chơi” cực kỳ sinh động.</li><li style=\"margin: 0px; padding: 0px;\">Phụ huynh được cập nhật thường xuyên tình hình học tập, hoạt động vui chơi của bé trên lớp.</li><li style=\"margin: 0px; padding: 0px;\">Tham gia miễn phí các hoạt động ngoại khóa cực bổ ích của trung tâm như: Halloween party, Tet holiday…</li></ul><h3 style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px;\">Hơn thế nữa trẻ còn được phát triển các kỹ năng</h3><ul style=\"margin-right: 0px; margin-left: 25px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">PHƯƠNG PHÁP PHẢN XẠ</li><li style=\"margin: 0px; padding: 0px;\">TƯ DUY ĐỘC LẬP</li><li style=\"margin: 0px; padding: 0px;\">KỸ NĂNG GIAO TIẾP</li></ul><h3 class=\"has-text-align-center\" style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px; text-align: center;\">HỆ THỐNG GIÁO DỤC VÀ ĐÀO TẠO KHAI TRÍ</h3><h3 class=\"has-text-align-center\" style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px; text-align: center;\">TRUNG TÂM NGOẠI NGỮ – TIN HỌC KHAI TRÍ</h3><p class=\"has-title-color has-text-color\" style=\"margin-bottom: 20px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Địa chỉ:</span>&nbsp;<a href=\"https://www.google.com/maps/place/223+Ung+V%C4%83n+Khi%C3%AAm,+P.+M%E1%BB%B9+Ph%C6%B0%E1%BB%9Bc,+Th%C3%A0nh+ph%E1%BB%91+Long+Xuy%C3%AAn,+An+Giang,+Vi%E1%BB%87t+Nam/@10.3675753,105.4374546,17z/data=!3m1!4b1!4m5!3m4!1s0x310a731b04930ca7:0x94f74cec3f8bb81f!8m2!3d10.36757!4d105.4396433\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"margin: 0px; padding: 0px; color: inherit; transition: all 0.3s ease 0s;\">223 Ung Văn Khiêm, phường Mỹ Phước, thành phố Long Xuyên, An Giang</a></p><p style=\"margin-bottom: 20px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Điện thoại – zalo:</span></p><ul class=\"has-title-color has-text-color\" style=\"margin-right: 0px; margin-left: 25px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><a rel=\"noreferrer noopener\" href=\"tel:+84981611141\" target=\"_blank\" style=\"margin: 0px; padding: 0px; transition: all 0.3s ease 0s; font-size: revert;\">0981611141</a></li><li style=\"margin: 0px; padding: 0px;\"><a rel=\"noreferrer noopener\" href=\"tel:+84867852853\" target=\"_blank\" style=\"margin: 0px; padding: 0px; transition: all 0.3s ease 0s; font-size: revert;\">0867852853</a></li></ul><p class=\"has-title-color has-text-color\" style=\"margin-bottom: 20px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Facebook:</span>&nbsp;<a href=\"https://www.facebook.com/khaitriag.edu.vn\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"margin: 0px; padding: 0px; color: inherit; transition: all 0.3s ease 0s;\">https://www.facebook.com/khaitriag.edu.vn</a></p><p class=\"has-title-color has-text-color\" style=\"margin-bottom: 20px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Youtube:&nbsp;</span><a rel=\"noreferrer noopener\" href=\"https://www.youtube.com/channel/UCPrE7RBNFZHZAxJzvCxvMSg\" target=\"_blank\" style=\"margin: 0px; padding: 0px; color: inherit; transition: all 0.3s ease 0s;\">https://www.youtube.com/channel/UCPrE7RBNFZHZAxJzvCxvMSg</a></p><p style=\"padding: 0px;\"></p></div><div class=\"entry-tag-share\" style=\"margin: 80px 0px 50px; padding: 0px;\"><div class=\"row\" style=\"margin: 0px -15px; padding: 0px;\"><div class=\"col-sm-6\" style=\"margin: 0px; padding: 0px 15px; width: 600px; font-family: Roboto; font-size: 18px; background-color: rgb(252, 252, 252);\"></div><div class=\"col-sm-6\" style=\"margin: 0px; padding: 0px 15px; width: 600px; font-family: Roboto; font-size: 18px; background-color: rgb(252, 252, 252);\"></div></div></div>', '2023-05-16 01:03:25', NULL, 1, 'CHIÊU-SINH-L?P-H?C-TH?-ANH-V?N-THI?U-NHI-THÁNG-06/2023-HOÀN-TOÀN-MI?N-PHÍ', 'bdbc24f03fbba2c41e4f3c4233cd0d1c.jpg', NULL, 'admin', NULL),
(15, 'THÔNG BÁO LỊCH KHAI GIẢNG LỚP TRUNG CẤP CÔNG NGHỆ THÔNG TIN THÁNG 11/2022', 10, 13, '<div class=\"entry-content\" style=\"margin: 0px; padding: 0px;\"><h2 class=\"has-text-align-center\" style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 26px; text-align: center;\">Lịch khai giảng Trung cấp Công nghệ thông tin</h2><h3 class=\"has-text-align-center has-primary-color has-text-color\" style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; font-size: 22px; text-align: center; color: rgb(0, 153, 255) !important;\">Triển vọng tương lai</h3><h3 style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px;\">Lịch khai giảng dự kiến:</h3><p style=\"margin-bottom: 20px; padding: 0px;\">26.11.2022</p><h3 style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px;\">Lịch học:</h3><p style=\"margin-bottom: 20px; padding: 0px;\">Thứ 7, chủ nhật</p><h3 style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px;\">Lợi thế khi có bằng Trung cấp Công Nghệ Thông Tin:</h3><ul style=\"margin-right: 0px; margin-left: 25px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Được miễn sát hạch Tin học và thay thế các loại chứng chỉ Tin học khác</li><li style=\"margin: 0px; padding: 0px;\">Được miễn thi tin học khi nâng hạng giáo viên, nâng ngạch chuyên viên</li><li style=\"margin: 0px; padding: 0px;\">Được miễn thi tin học khi dự thi tuyển viên chức</li></ul><p style=\"margin-bottom: 20px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Vậy thì bạn còn băn khoăn điều gì mà không đăng ký ngay lúc này với chúng tôi?</span></p><h3 style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px;\">Khi học tại KHAI TRÍ bạn sẽ được học các môn chuyên ngành như:</h3><ul style=\"margin-right: 0px; margin-left: 25px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Đào tạo Kỹ thuật máy tính, kỹ thuật quản trị mạng</li><li style=\"margin: 0px; padding: 0px;\">Học thiết kế Web, thiết kế đồ họa, cách quản trị nội dung website cho các doanh nghiệp</li></ul><h3 style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px;\">Đối tượng</h3><ul style=\"margin-right: 0px; margin-left: 25px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Tốt nghiệp THCS: 2 năm</li><li style=\"margin: 0px; padding: 0px;\">Tốt nghiệp THPT: 18 tháng</li><li style=\"margin: 0px; padding: 0px;\">Có bằng TC, CĐ, ĐH: 12 tháng</li></ul><h3 style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px;\">ƯU ĐIỂM khi học TRUNG CẤP CÔNG NGHỆ THÔNG TIN tại Khai Trí</h3><ul style=\"margin-right: 0px; margin-left: 25px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\">Ngành học dễ tìm việc</li><li style=\"margin: 0px; padding: 0px;\">Nhận ngay bằng chính quy</li><li style=\"margin: 0px; padding: 0px;\">Học phí thấp</li><li style=\"margin: 0px; padding: 0px;\">Giảng viên giàu kinh nghiệm</li><li style=\"margin: 0px; padding: 0px;\">Hệ thống cơ sở vật chất hiện đại</li><li style=\"margin: 0px; padding: 0px;\">Chương trình bám sát thực tế các nghiệp vụ tại doanh nghiệp</li><li style=\"margin: 0px; padding: 0px;\">Song song thực hành và lý thuyết</li><li style=\"margin: 0px; padding: 0px;\">Được học liên thông lên Cao đẳng, Đại học</li></ul><h3 class=\"has-text-align-center\" style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px; text-align: center;\">HỆ THỐNG GIÁO DỤC VÀ ĐÀO TẠO KHAI TRÍ</h3><h3 class=\"has-text-align-center\" style=\"margin-top: 20px; padding: 0px; font-family: &quot;Roboto Slab&quot;; font-weight: 700; line-height: 1.6em; color: rgb(0, 0, 0); font-size: 22px; text-align: center;\">TRƯỜNG TRUNG CẤP HỒNG HÀ TP.CẦN THƠ – PHÂN HIỆU AN GIANG</h3><p class=\"has-title-color has-text-color\" style=\"margin-bottom: 20px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Địa chỉ:</span>&nbsp;<a href=\"https://www.google.com/maps/place/223+Ung+V%C4%83n+Khi%C3%AAm,+P.+M%E1%BB%B9+Ph%C6%B0%E1%BB%9Bc,+Th%C3%A0nh+ph%E1%BB%91+Long+Xuy%C3%AAn,+An+Giang,+Vi%E1%BB%87t+Nam/@10.3675753,105.4374546,17z/data=!3m1!4b1!4m5!3m4!1s0x310a731b04930ca7:0x94f74cec3f8bb81f!8m2!3d10.36757!4d105.4396433\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"margin: 0px; padding: 0px; color: inherit; transition: all 0.3s ease 0s;\">223 Ung Văn Khiêm, phường Mỹ Phước, thành phố Long Xuyên, An Giang</a></p><p style=\"margin-bottom: 20px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Điện thoại – zalo:</span></p><ul class=\"has-title-color has-text-color\" style=\"margin-right: 0px; margin-left: 25px; padding: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><a rel=\"noreferrer noopener\" href=\"tel:+84981611141\" target=\"_blank\" style=\"margin: 0px; padding: 0px; transition: all 0.3s ease 0s; font-size: revert;\">0981611141</a></li><li style=\"margin: 0px; padding: 0px;\"><a rel=\"noreferrer noopener\" href=\"tel:+84867852853\" target=\"_blank\" style=\"margin: 0px; padding: 0px; transition: all 0.3s ease 0s; font-size: revert;\">0867852853</a></li></ul><p class=\"has-title-color has-text-color\" style=\"margin-bottom: 20px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Facebook:</span>&nbsp;<a href=\"https://www.facebook.com/khaitriag.edu.vn\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"margin: 0px; padding: 0px; color: inherit; transition: all 0.3s ease 0s;\">https://www.facebook.com/khaitriag.edu.vn</a></p><p class=\"has-title-color has-text-color\" style=\"padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">Youtube:&nbsp;</span><a rel=\"noreferrer noopener\" href=\"https://www.youtube.com/channel/UCPrE7RBNFZHZAxJzvCxvMSg\" target=\"_blank\" style=\"margin: 0px; padding: 0px; color: inherit; transition: all 0.3s ease 0s;\">https://www.youtube.com/channel/UCPrE7RBNFZHZAxJzvCxvMSg</a></p></div><div class=\"entry-tag-share\" style=\"margin: 80px 0px 50px; padding: 0px;\"><div class=\"row\" style=\"margin: 0px -15px; padding: 0px;\"><div class=\"col-sm-6\" style=\"margin: 0px; padding: 0px 15px; width: 600px; font-family: Roboto; font-size: 18px; background-color: rgb(252, 252, 252);\"></div><div class=\"col-sm-6\" style=\"margin: 0px; padding: 0px 15px; width: 600px; font-family: Roboto; font-size: 18px; background-color: rgb(252, 252, 252);\"></div></div></div>', '2023-05-16 01:22:21', NULL, 1, 'THÔNG-BÁO-L?CH-KHAI-GI?NG-L?P-TRUNG-C?P-CÔNG-NGH?-THÔNG-TIN-THÁNG-11/2022', '2add0370afe6cf30987430a363809856.jpg', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `SubCatDescription` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(11, 9, 'ANH VĂN THIẾU NHI', 'anh văn', '2023-05-16 00:59:29', NULL, 1),
(12, 9, 'TRUNG CẤP -CAO ĐẲNG', 'trung cấp - cao đẳng', '2023-05-16 01:21:08', NULL, 1),
(13, 10, 'TRUNG CẤP -CAO ĐẲNG', 'd', '2023-05-16 01:21:45', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
