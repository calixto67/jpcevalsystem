-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 02:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jpcevalsystem_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_list`
--

CREATE TABLE `academic_list` (
  `id` int(30) NOT NULL,
  `year` text NOT NULL,
  `semester` int(30) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '0=Pending,1=Start,2=Closed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_list`
--

INSERT INTO `academic_list` (`id`, `year`, `semester`, `is_default`, `status`) VALUES
(1, '2019-2020', 1, 0, 2),
(2, '2019-2020', 2, 0, 2),
(3, '2020-2021', 1, 0, 2),
(4, '2022-2023', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_list`
--

CREATE TABLE `class_list` (
  `id` int(30) NOT NULL,
  `curriculum` text NOT NULL,
  `level` text NOT NULL,
  `section` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_list`
--

INSERT INTO `class_list` (`id`, `curriculum`, `level`, `section`) VALUES
(1, 'BSCS', '1', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_list`
--

CREATE TABLE `criteria_list` (
  `id` int(30) NOT NULL,
  `criteria` text NOT NULL,
  `order_by` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria_list`
--

INSERT INTO `criteria_list` (`id`, `criteria`, `order_by`) VALUES
(4, 'Instructional Effectiveness', 2),
(5, 'Classroom Management', 3),
(6, 'Student Assessment and Feedback', 4),
(7, 'Professionalism and Collaboration', 5),
(8, 'Communication Skills', 6);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_answers`
--

CREATE TABLE `evaluation_answers` (
  `evaluation_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `rate` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluation_answers`
--

INSERT INTO `evaluation_answers` (`evaluation_id`, `question_id`, `rate`) VALUES
(1, 1, 5),
(1, 6, 4),
(1, 3, 5),
(2, 1, 5),
(2, 6, 5),
(2, 3, 4),
(3, 1, 5),
(3, 6, 5),
(3, 3, 4),
(4, 7, 3),
(4, 8, 3),
(4, 9, 4),
(4, 10, 3),
(4, 11, 5),
(4, 12, 5),
(4, 13, 5),
(4, 14, 5),
(4, 15, 5),
(4, 16, 5),
(4, 17, 5),
(4, 21, 5),
(4, 18, 5),
(4, 19, 5),
(4, 20, 5),
(5, 7, 1),
(5, 8, 1),
(5, 9, 1),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 13, 3),
(5, 14, 3),
(5, 15, 3),
(5, 16, 2),
(5, 17, 2),
(5, 21, 2),
(5, 18, 1),
(5, 19, 1),
(5, 20, 1),
(6, 7, 1),
(6, 8, 1),
(6, 9, 1),
(6, 10, 1),
(6, 11, 1),
(6, 12, 1),
(6, 13, 1),
(6, 14, 1),
(6, 15, 1),
(6, 16, 1),
(6, 17, 1),
(6, 21, 1),
(6, 18, 1),
(6, 19, 1),
(6, 20, 1),
(7, 7, 5),
(7, 8, 5),
(7, 9, 5),
(7, 10, 5),
(7, 11, 5),
(7, 12, 5),
(7, 13, 5),
(7, 14, 5),
(7, 15, 5),
(7, 16, 5),
(7, 17, 5),
(7, 21, 5),
(7, 18, 5),
(7, 19, 5),
(7, 20, 5),
(8, 7, 1),
(8, 8, 1),
(8, 9, 1),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 13, 3),
(8, 14, 3),
(8, 15, 3),
(8, 16, 2),
(8, 17, 2),
(8, 21, 2),
(8, 18, 1),
(8, 19, 1),
(8, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_list`
--

CREATE TABLE `evaluation_list` (
  `evaluation_id` int(30) NOT NULL,
  `academic_id` int(30) NOT NULL,
  `class_id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL,
  `faculty_id` int(30) NOT NULL,
  `restriction_id` int(30) NOT NULL,
  `date_taken` datetime NOT NULL DEFAULT current_timestamp(),
  `feedback` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluation_list`
--

INSERT INTO `evaluation_list` (`evaluation_id`, `academic_id`, `class_id`, `student_id`, `subject_id`, `faculty_id`, `restriction_id`, `date_taken`, `feedback`) VALUES
(4, 4, 1, 4, 2, 1, 11, '2023-12-10 19:24:04', ''),
(5, 4, 1, 5, 2, 1, 11, '2023-12-14 17:45:00', NULL),
(6, 4, 1, 6, 2, 1, 11, '2023-12-14 17:59:48', 'He is bad and shouting at us always. He is not approachale. I dislike him.'),
(7, 4, 1, 6, 3, 2, 12, '2023-12-14 18:27:24', 'He is really good '),
(8, 4, 1, 6, 2, 1, 13, '2023-12-15 19:52:51', 'He is not approachable ');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_list`
--

CREATE TABLE `faculty_list` (
  `id` int(30) NOT NULL,
  `school_id` varchar(100) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_list`
--

INSERT INTO `faculty_list` (`id`, `school_id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(1, '1', 'JOHN PAUL', 'DIMATULAC', 'sample@sample.com', 'e0a8aa81eb1762d529783cf587f6f422', '1608011100_avatar.jpg', '2020-12-15 13:45:18'),
(2, '2', 'Calixto', 'Gelarzo', 'calixto@sample.com', 'e0a8aa81eb1762d529783cf587f6f422', 'no-image-available.png', '2023-12-14 18:24:18'),
(3, '3', 'Key 3', 'Key 3', 'key3@sample.com', 'e0a8aa81eb1762d529783cf587f6f422', 'no-image-available.png', '2023-12-15 20:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `question_list`
--

CREATE TABLE `question_list` (
  `id` int(30) NOT NULL,
  `academic_id` int(30) NOT NULL,
  `question` text NOT NULL,
  `order_by` int(30) NOT NULL,
  `criteria_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question_list`
--

INSERT INTO `question_list` (`id`, `academic_id`, `question`, `order_by`, `criteria_id`) VALUES
(1, 3, 'Sample Question', 0, 1),
(3, 3, 'Test', 2, 2),
(5, 0, 'Question 101', 0, 1),
(6, 3, 'Sample 101', 4, 1),
(7, 4, 'How well does the teacher plan and deliver instruction to meet the diverse needs of students?', 0, 4),
(8, 4, 'Does the teacher use effective teaching methods and strategies?', 1, 4),
(9, 4, 'Are the learning objectives clear and aligned with curriculum standards?', 2, 4),
(10, 4, 'How effectively does the teacher establish and maintain a positive and inclusive classroom environment?', 3, 5),
(11, 4, 'How well does the teacher manage student behavior and create a conducive learning atmosphere?', 4, 5),
(12, 4, 'Are classroom routines and procedures effectively implemented?', 5, 5),
(13, 4, 'How does the teacher assess student learning and provide timely and constructive feedback?', 6, 6),
(14, 4, 'Are assessments aligned with learning objectives and varied to accommodate different learning styles?', 7, 6),
(15, 4, 'Does the teacher use assessment data to inform instruction and address student needs?', 8, 6),
(16, 4, 'To what extent does the teacher collaborate with colleagues, administrators, and parents?', 9, 7),
(17, 4, 'How does the teacher engage in continuous professional development and stay current with educational trends?', 10, 7),
(18, 4, 'How effectively does the teacher communicate with students, parents, and colleagues?', 11, 8),
(19, 4, 'Is communication clear, respectful, and tailored to the audience?', 12, 8),
(20, 4, 'Does the teacher encourage open communication and involvement from parents in the education process?', 13, 8),
(21, 4, 'Does the teacher demonstrate a commitment to the school\'s mission and values?', 14, 7);

-- --------------------------------------------------------

--
-- Table structure for table `restriction_list`
--

CREATE TABLE `restriction_list` (
  `id` int(30) NOT NULL,
  `academic_id` int(30) NOT NULL,
  `faculty_id` int(30) NOT NULL,
  `class_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restriction_list`
--

INSERT INTO `restriction_list` (`id`, `academic_id`, `faculty_id`, `class_id`, `subject_id`) VALUES
(12, 4, 2, 1, 3),
(13, 4, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `school_id` varchar(100) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `class_id` int(30) NOT NULL,
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `school_id`, `firstname`, `lastname`, `email`, `password`, `class_id`, `avatar`, `date_created`) VALUES
(2, '101497', 'Juan', 'Dela Cruz', 'juan.delacruz@sample.com', '4744ddea876b11dcb1d169fadf494418', 0, '1608012720_47446233-clean-noir-et-gradient-sombre-image-de-fond-abstrait-.jpg', '2020-12-15 14:12:03'),
(4, '2110792', 'Prince Hinrich', 'Salmorin', 'a@a.com', 'e0a8aa81eb1762d529783cf587f6f422', 1, 'no-image-available.png', '2023-12-10 18:14:30'),
(5, 'Salmorin', 'Nick Carlo', 'Canubas', 'a@b.com', 'e0a8aa81eb1762d529783cf587f6f422', 1, 'no-image-available.png', '2023-12-10 18:16:13'),
(6, '202106737', 'Elsa', 'Eulogio', 'a@c.com', 'e0a8aa81eb1762d529783cf587f6f422', 1, 'no-image-available.png', '2023-12-10 18:16:41'),
(7, '202101305', 'Portild', 'Gadon', 'a@d.com', 'e0a8aa81eb1762d529783cf587f6f422', 1, 'no-image-available.png', '2023-12-10 18:17:49'),
(8, '3160656', 'Kent Ashley Aerone', 'Benosa', 'a@e.com', 'e0a8aa81eb1762d529783cf587f6f422', 1, 'no-image-available.png', '2023-12-10 18:18:17'),
(9, '2311242', 'Lady Queen', 'Bariño', 'a@f.com', 'e0a8aa81eb1762d529783cf587f6f422', 1, 'no-image-available.png', '2023-12-10 18:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `subject_list`
--

CREATE TABLE `subject_list` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `subject` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_list`
--

INSERT INTO `subject_list` (`id`, `code`, `subject`, `description`) VALUES
(2, 'JPC-ENG001', 'English', 'English'),
(3, 'JPC-MATH001', 'Math 001', 'Math - Advance Algebra '),
(4, 'JPC-SOC001', 'Social Science 001', '');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Faculty Teaching Performance Evaluation', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(1, 'Administrator', '', 'bscpe@admin.com', '0192023a7bbd73250516f069df18b500', '1607135820_avatar.jpg', '2020-11-26 10:57:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_list`
--
ALTER TABLE `academic_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_list`
--
ALTER TABLE `class_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria_list`
--
ALTER TABLE `criteria_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation_list`
--
ALTER TABLE `evaluation_list`
  ADD PRIMARY KEY (`evaluation_id`);

--
-- Indexes for table `faculty_list`
--
ALTER TABLE `faculty_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_list`
--
ALTER TABLE `question_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restriction_list`
--
ALTER TABLE `restriction_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_list`
--
ALTER TABLE `subject_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_list`
--
ALTER TABLE `academic_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_list`
--
ALTER TABLE `class_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `criteria_list`
--
ALTER TABLE `criteria_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `evaluation_list`
--
ALTER TABLE `evaluation_list`
  MODIFY `evaluation_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculty_list`
--
ALTER TABLE `faculty_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question_list`
--
ALTER TABLE `question_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `restriction_list`
--
ALTER TABLE `restriction_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subject_list`
--
ALTER TABLE `subject_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
