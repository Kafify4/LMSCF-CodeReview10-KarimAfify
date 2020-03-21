-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2020 at 02:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_karimafify_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `ISBN` varchar(30) DEFAULT NULL,
  `short_description` varchar(300) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `image`, `type`, `title`, `author`, `ISBN`, `short_description`, `publish_date`, `publisher`) VALUES
(1, 'https://media1.jpc.de/image/w600/front/0/9781408855652.jpg', 'Fantasy', 'Harry Potter and the Philosophers stone', 'JK Rowling', '98452', 'Young Harry Potter finds out he is a wizard...', '1997-06-26', 'Bloomsbury Publishing'),
(2, 'https://images-na.ssl-images-amazon.com/images/I/51tW-UJVfHL._SX321_BO1,204,203,200_.jpg', 'Fantasy', 'The Fellowship of the Ring', 'JRR Tolkien', '16921', 'The fellowship must reach mount doom to destroy the one Ring...', '2002-07-29', 'George Allen & Unwin'),
(3, 'https://www.carlsen.de/sites/default/files/styles/product_medium/public/produkt/cover/9783551728661.jpg?itok=oSLsPLto', 'Adventure, Manga', 'One Piece', 'Eiichiro Oda', '9292', 'In the age of the pirates everyone chases the same treasure...', '1997-09-02', 'Shueisha'),
(4, 'https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/TheHobbit_FirstEdition.jpg/220px-TheHobbit_FirstEdition.jpg', 'Fantasy', 'The Hobbit', 'JRR Tolkien', '96601', 'The life of Hobbit Bilbo changes as one day a Wizard and a bunch of Dwarfs appear in front of his house...', '1937-09-21', 'George Alln & Unwin'),
(5, 'https://upload.wikimedia.org/wikipedia/en/c/c4/TheAlchemist.jpg', 'Adventure, Fantasy', 'The Alchemist', 'Paulo Coelho', '00625141', 'A Quest to find the treasure hidden in the pyramids of Egypt', '1988-01-01', 'Harpertorch'),
(6, 'https://upload.wikimedia.org/wikipedia/en/2/26/And_Then_There_Were_None_US_First_Edition_Cover_1940.jpg', 'Mystery', 'And then there were none', 'Agatha Christie', '936492', 'On 8 August in the late 1930s, eight people arrive on a small, isolated island...', '1939-11-06', 'Collins Crime Club'),
(7, 'https://images-na.ssl-images-amazon.com/images/I/51VjV1cS1oL._SX311_BO1,204,203,200_.jpg', 'Romance, Mystery', 'The Master and Margarita', 'Mikhail Bulgakov', '640217309', 'The story concerns a visit by the devil to the officially atheistic Soviet Union.', '1966-01-01', 'YMCA Press'),
(8, 'https://images-na.ssl-images-amazon.com/images/I/81UjsCGC6rL.jpg', 'Family Saga', 'Dream of the Red Chamber', 'Cao Xueqin', '018729498', 'A semi-autobiography about the Authors own family..', '1791-02-02', 'ChinesePublic'),
(9, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/DaVinciCode.jpg/220px-DaVinciCode.jpg', 'Mystery, Thriller', 'The Da Vinci Code', 'Dan Brown', '0451822', 'There is a murder in the Louvre Museum in Paris...', '2003-04-23', 'Doubleday'),
(10, 'https://upload.wikimedia.org/wikipedia/en/thumb/d/dc/The_Hunger_Games.jpg/220px-The_Hunger_Games.jpg', 'Dystopian', 'The Hunger Games', 'Suzanne Collins', '9870438', 'The Hunger Games is an annual event in which one boy and one girl aged 12–18 from each of the twelve districts surrounding the Capitol are selected by lottery to compete in a televised battle royale to the death...', '2008-09-14', 'Schcolastic Press');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
