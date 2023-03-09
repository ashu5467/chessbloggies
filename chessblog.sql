-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2023 at 08:17 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chessblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `image`) VALUES
(1, 1, '1.jpg'),
(2, 6, '2.jpg'),
(3, 5, '3.jpg'),
(4, 4, '4.jpg'),
(5, 2, '5.jpg'),
(6, 7, '6.jpg'),
(7, 8, '7.jpg'),
(8, 3, '8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `created_by`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-02-14 14:22:15', 1),
(2, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2023-02-14 14:22:15', 1),
(3, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '2023-02-14 14:23:32', 2),
(4, 'Where can i get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2023-02-14 14:24:07', 1),
(5, '1914 translation by H. Rackham', '\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"', '2023-02-14 14:24:45', 1),
(6, 'Chess Artificial Intelligence ( AI ) WARNING', 'Sometimes I’m playing a game of chess on chess.com thinking my opponent is using the Artificial Intelligence ( AI ) chess engine during a daily team match but the HUMANS don’t catch it. The HUMANS are too SLOW. HUMANS think the AI is the solution for everything. The military will weaponize the AI and no one will inherit the Earth.\n\n -uptohigh\n(chess.com  user)', '2023-02-15 11:40:50', 2),
(7, 'Chess competition 2023 in Bill Gates Institute of Computer Science and Management, Osmanabad.', 'Chess Competition was organized by Bill Gates Institute of Computer Science and Management, on 13th February, 2023 on the occasion of the Chatrapati Shivaji Maharaj Jayanti, 2023.', '2023-02-16 11:22:10', 2),
(8, 'What WIKIPEDIA says about chess AI?', 'Computer chess includes both hardware (dedicated computers) and software capable of playing chess. Computer chess provides opportunities for players to practice even in the absence of human opponents, and also provides opportunities for analysis, entertainment and training. Computer chess applications that play at the level of a chess master or higher are available on hardware from supercomputers to smart phones. Standalone chess-playing machines are also available. Stockfish, GNU Chess, Fruit, and other free open source applications are available for various platforms.\r\n\r\nComputer chess applications, whether implemented in hardware or software, utilize different strategies than humans to choose their moves: they use heuristic methods to build, search and evaluate trees representing sequences of moves from the current position and attempt to execute the best such sequence during play. Such trees are typically quite large, thousands to millions of nodes. The computational speed of modern computers, capable of processing tens of thousands to hundreds of thousands of nodes or more per second, along with extension and reduction heuristics that narrow the tree to mostly relevant nodes, make such an approach effective.\r\n\r\nThe first chess machines capable of playing chess or reduced chess-like games were software programs running on digital computers early in the vacuum-tube computer age (1950s). The early programs played so poorly that even a beginner could defeat them. Within 40 years, in 1997, chess engines running on super-computers or specialized hardware were capable of defeating even the best human players. By 2006, programs running on desktop PCs had attained the same capability. In 2006, Monty Newborn, Professor of Computer Science at McGill University, declared: \"the science has been done\". Nevertheless, solving chess is not currently possible for modern computers due to the game\'s extremely large number of possible variations.\r\n\r\nComputer chess was once considered the \"Drosophila of AI\", the edge of knowledge engineering. The field is now considered a scientifically completed paradigm, and playing chess is a mundane computing activity.', '2023-02-16 12:23:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic_id`, `title`, `content`, `image`, `created_at`) VALUES
(1, 1, 'ChessBloggies are ready to Jump in', '  Bloggers are welcome to ChessBloggies.\r\n  This website is designed by Abhijit and Pratik for B.Sc.(Computer Science) Final Year Non-commercial project submission in Bill Gates Institute of Computer Science and Management, Osmanabad.\r\n  Thankful for guidance...', 'images/1.jpg', '2023-02-16 10:46:50'),
(2, 2, 'Artificial Intelligence in Chess.', 'Artificial intelligence is a revolution in itself with numerous feats of accomplishments. The use of AI in the real world and real-life scenarios is ample.', 'images/2.jpg', '2023-02-16 12:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
