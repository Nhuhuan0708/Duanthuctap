-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 09:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wogomin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'phong', '7bb060764a818184ebb1cc0d43d382aa');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatRoom_id` int(11) NOT NULL,
  `fromUser` int(11) NOT NULL,
  `toUser` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `dateCreated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatRoom_id`, `fromUser`, `toUser`, `content`, `dateCreated`) VALUES
(16, 1, 2, 'Hello', '2021-01-14'),
(16, 2, 1, 'Hi', '2021-01-11'),
(19, 2, 3, 'kkk', '2021-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

CREATE TABLE `chatroom` (
  `id` int(11) NOT NULL,
  `roomName` varchar(255) NOT NULL,
  `dateCreated` date NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chatroom`
--

INSERT INTO `chatroom` (`id`, `roomName`, `dateCreated`, `images`) VALUES
(16, 'Friendly and Love', '2021-01-18', '28530.jpg'),
(17, 'Marriage Family', '2021-01-09', '3344439.jpg'),
(18, 'Vocational guidance', '2021-01-09', 'huongnghiep.jpg'),
(19, 'Psychotherapy', '2021-01-18', '61377.jpg'),
(20, 'Age and gender', '2021-01-09', '3844041.jpg'),
(27, 'Reproductive Health', '2021-01-18', '3344439.jpg'),
(28, 'School psychology', '2021-01-18', '10790.jpg'),
(29, 'Children education', '2021-01-18', '3896589.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 1, 13, 'safsdas', '2021-01-20 07:19:43', 0),
(2, 13, 1, 'dfasf', '2021-01-20 07:20:42', 0),
(3, 1, 13, 'asdfasdfas', '2021-01-20 07:26:26', 0),
(4, 1, 13, 'dfsafasdfasd', '2021-01-20 07:26:45', 0),
(5, 13, 1, 'dsfadf', '2021-01-20 07:26:53', 0),
(6, 13, 1, '?????', '2021-01-20 07:36:36', 0),
(7, 13, 1, '?', '2021-01-20 07:36:40', 0),
(8, 1, 13, '😕😕😕😕😕', '2021-01-20 07:44:33', 0),
(9, 1, 13, '😞😞😞😒😜😋☹☹☹☹☹☹☹☹☹☹☹☹☹', '2021-01-20 07:44:40', 0),
(10, 1, 13, '😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀😊😘🤗🤨🤨☠😻🤞☝🖐👉👆', '2021-01-20 07:44:57', 0),
(11, 1, 13, '💼👝📀🎥🎚⏲⏲', '2021-01-20 07:45:08', 0),
(12, 1, 13, '➿🎑🎑🎆🎆🔯♉🔯🔀💲', '2021-01-20 07:45:22', 0),
(13, 13, 1, 'sadfsda😌fasd😉😉sdfa', '2021-01-20 07:59:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `idchatroom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `field`, `idchatroom`) VALUES
(1, 'Doctor A', 'mentality', 16),
(2, 'Doctor B', 'Family', 17);

-- --------------------------------------------------------

--
-- Table structure for table `expert`
--

CREATE TABLE `expert` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'johnsmith', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(2, 'peterParker', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396'),
(3, 'davidMoore', '$2y$10$4REfvTZpxLgkAR/lKG9QiOkSdahOYIR3MeoGJAyiWmRkEFfjH3396');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 1, '2021-01-20 08:17:00', 'no'),
(2, 13, '2021-01-20 07:58:34', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `createdDate` date NOT NULL,
  `wallet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullName`, `phone`, `password`, `email`, `address`, `sex`, `createdDate`, `wallet`) VALUES
(1, 'Dhphong', '0379018737', '7ee8f3173289c0c6d22ccd973e3c1f8e', 'phong@gmail.com', 'Ninh Hòa', 1, '2021-01-16', 30000),
(13, 'vodenta', '0928981095', '1dff2ee40fb56d4b0739794b8609caf0', 'vodenta@gmail.com', 'be to na mu', 1, '2021-01-20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_chatroom`
--

CREATE TABLE `user_chatroom` (
  `chatRoom_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `videocall`
--

CREATE TABLE `videocall` (
  `id` int(11) NOT NULL,
  `fromUser` int(11) NOT NULL,
  `toUser` int(11) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatroom`
--
ALTER TABLE `chatroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expert`
--
ALTER TABLE `expert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_chatroom`
--
ALTER TABLE `user_chatroom`
  ADD PRIMARY KEY (`chatRoom_id`);

--
-- Indexes for table `videocall`
--
ALTER TABLE `videocall`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chatroom`
--
ALTER TABLE `chatroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expert`
--
ALTER TABLE `expert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `videocall`
--
ALTER TABLE `videocall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
