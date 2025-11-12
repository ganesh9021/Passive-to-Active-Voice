-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2016 at 08:48 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `olabsenglishdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `activity_id` int(5) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(2000) NOT NULL,
  `activity_type` varchar(2000) DEFAULT NULL,
  `activity_desc` text,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`activity_id`, `activity_name`, `activity_type`, `activity_desc`) VALUES
(1, 'Picture Based Activity', 'picture_based_activity', 'Picture based activity to learn preposition.'),
(2, 'Comprehension', 'comprehension', 'Learning Comprehension Skills'),
(3, 'Word Order', 'word_order', ''),
(4, 'Drag and Drop', 'drag_drop', 'Drag the words and Drop in the perticular boxes'),
(5, 'Drop down selection', 'drop_down_selection', 'Select correct option from the drop down list, to form the correct sentence.'),
(6, 'Spot the Error', 'Correct the error', 'Identify the error in the sentence, and correct the sentence');

-- --------------------------------------------------------

--
-- Table structure for table `adjective`
--

CREATE TABLE IF NOT EXISTS `adjective` (
  `adjective_id` int(10) NOT NULL AUTO_INCREMENT,
  `adjective_word` varchar(50) NOT NULL,
  `adjective_category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adjective_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=238 ;

--
-- Dumping data for table `adjective`
--

INSERT INTO `adjective` (`adjective_id`, `adjective_word`, `adjective_category`) VALUES
(1, 'blue', 'color'),
(2, 'red', 'color'),
(3, ' green', 'color'),
(4, ' brown', 'color'),
(5, ' yellow', 'color'),
(6, ' black', 'color'),
(7, 'white', 'color'),
(8, ' purple', 'color'),
(9, ' pink', 'color'),
(10, 'big', 'size'),
(16, 'large', 'size'),
(18, 'small', 'size'),
(20, 'tiny', 'size'),
(21, 'high', 'size'),
(23, ' Tall', 'size'),
(25, 'short', 'size'),
(26, 'round', 'shape'),
(27, 'circle', 'shape'),
(28, 'triangular', 'shape'),
(29, 'rectangular', 'shape'),
(30, 'square', 'shape'),
(31, 'oval', 'shape'),
(32, ' broad', 'shape'),
(35, 'happy', 'feelings'),
(36, 'gald', 'feelings'),
(38, ' cheerful', 'feelings'),
(41, ' pleased', 'feelings'),
(43, ' delighted', 'feelings'),
(45, ' sad', 'feelings'),
(46, 'depressed', 'feelings'),
(48, 'disappointed', 'feelings'),
(49, 'discouraged', 'feelings'),
(51, ' displeased', 'feelings'),
(54, 'angry', 'feelings'),
(59, 'good', 'qualities'),
(60, 'excellent', 'qualities'),
(61, ' brilliant', 'qualities'),
(63, ' fantastic', 'qualities'),
(65, ' bad', 'qualities'),
(66, ' terrible', 'qualities'),
(67, ' awsome', 'appearance'),
(70, ' beautiful', 'appearance'),
(71, ' pretty', 'appearance'),
(72, 'gorgeous', 'appearance'),
(75, 'elegant', 'appearance'),
(76, 'good-looking', 'appearance'),
(77, 'handsome', 'appearance'),
(79, 'funny', 'qualities'),
(80, ' amusing', 'qualities'),
(81, ' entertaining', 'qualities'),
(92, ' calm', 'qualities'),
(93, ' powerful', 'qualities'),
(94, ' attractive', 'qualities'),
(99, ' weak', 'qualities'),
(100, ' strong', 'qualities'),
(102, ' confused', 'qualities'),
(104, 'careful', 'qualities'),
(107, 'crazy', 'qualities'),
(112, ' intelligent', 'qualities'),
(113, ' clever', 'qualities'),
(119, ' courageous', 'qualities'),
(120, ' brave', 'qualities'),
(121, 'helpful', 'qualities'),
(122, 'helpless', 'qualities'),
(124, 'important', 'condition'),
(125, 'principal', 'condition'),
(131, ' odd', 'condition'),
(134, ' outsanding', 'condition'),
(135, ' impossible', 'condition'),
(136, 'easy', 'condition'),
(137, ' difficult', 'condition'),
(138, ' closed', 'condition'),
(139, ' open', 'condition'),
(140, 'one', 'quantity'),
(141, ' two', 'quantity'),
(142, 'three', 'quantity'),
(143, 'first', 'quantity'),
(144, 'second', 'quantity'),
(145, 'third', 'quantity'),
(146, ' abundant', 'quantity'),
(147, 'empty', 'quantity'),
(148, 'heavy', 'quantity'),
(149, ' light', 'quantity'),
(154, 'cold', 'temperature'),
(155, 'warm', 'temperature'),
(156, 'hot', 'temperature'),
(157, 'cool', 'temperature'),
(158, 'rainy', 'weather'),
(162, 'sunny', 'weather'),
(163, 'cloudy', 'weather'),
(166, 'late', 'time'),
(167, 'early', 'time'),
(168, 'punctual', 'time'),
(169, 'delayed', 'time'),
(184, 'wooden', 'material'),
(185, ' woolen', 'material'),
(189, ' bronze', 'material'),
(190, 'old', 'age'),
(192, 'aged', 'age'),
(193, 'elderly', 'age'),
(194, 'young', 'age'),
(196, 'youthful', 'age'),
(197, 'delicious', 'taste'),
(198, 'bitter', 'taste'),
(199, 'fresh', 'taste'),
(203, ' salty', 'taste'),
(204, ' sour', 'taste'),
(205, ' spicy', 'taste'),
(208, ' sweet', 'taste'),
(213, ' hard', 'touch'),
(214, ' hot', 'touch'),
(217, ' rough', 'touch'),
(218, ' slippery', 'touch'),
(219, ' smooth', 'touch'),
(220, 'soft', 'touch'),
(223, ' wet', 'touch'),
(233, ' loud', 'sound'),
(234, ' melodic', 'sound'),
(237, ' noisy', 'sound');

-- --------------------------------------------------------

--
-- Table structure for table `adverb`
--

CREATE TABLE IF NOT EXISTS `adverb` (
  `adverb_id` int(11) NOT NULL AUTO_INCREMENT,
  `adverb_word` varchar(50) NOT NULL,
  `adverb_indirect` varchar(50) DEFAULT NULL,
  `adverb_tense` varchar(50) DEFAULT NULL,
  `adverb_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adverb_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=261 ;

--
-- Dumping data for table `adverb`
--

INSERT INTO `adverb` (`adverb_id`, `adverb_word`, `adverb_indirect`, `adverb_tense`, `adverb_type`) VALUES 
(1, 'now', 'then', 'present', 'adverb_of_time'),
(2, 'today', 'that day', 'present', 'adverb_of_time'),
(3, 'yesterday', 'the day before', 'past', 'adverb_of_time'),
(4, 'this morning', 'that morning', 'present', 'adverb_of_time'),
(5, 'here', 'there', 'place', 'adverb_of_place'),
(6, 'tomorrow', 'the next day', 'future', 'adverb_of_time'),
(7, 'next week', 'the following week', 'future', 'adverb_of_time'),
(8, 'the next month', 'the following month', 'future', 'adverb_of_time'),
(9, 'ago', 'before', 'past', 'adverb_of_time'),
(10, 'thus', 'so', 'reason', 'adverb_of_reason'),
(11, 'last night', 'the night before', 'past', 'adverb_of_time'),
(12, 'this', 'that', 'place', 'adverb_of_place'),
(13, 'these', 'those', 'place', 'adverb_of_place'),
(14, 'hither', 'thither', 'place', 'adverb_of_place'),
(15, 'hence', 'thence', 'reason', 'adverb_of_reason'),
(16, 'come', 'go', 'action', 'adverb_of_action'),
(17, 'last week', 'the week before', 'past', 'adverb_of_time'),
(18, 'almost', 'almost', NULL, 'adverb_of_degree'),
(19, 'absolutely', 'absolutely', NULL, 'adverb_of_degree'),
(20, 'awfully', 'awfully', NULL, 'adverb_of_degree'),
(21, 'badly', 'badly', NULL, 'adverb_of_degree'),
(22, 'barely', 'barely', NULL, 'adverb_of_degree'),
(23, 'completely', 'completely', NULL, 'adverb_of_degree'),
(24, 'decidedly', 'decidedly', NULL, 'adverb_of_degree'),
(25, 'deeply', 'deeply', NULL, 'adverb_of_degree'),
(26, 'enough', 'enough', NULL, 'adverb_of_degree'),
(27, 'enormously', 'enormously', NULL, 'adverb_of_degree'),
(28, 'entirely', 'entirely', NULL, 'adverb_of_degree'),
(29, 'extremely', 'extremely', NULL, 'adverb_of_degree'),
(30, 'fairly', 'fairly', NULL, 'adverb_of_degree'),
(31, 'far', 'far', NULL, 'adverb_of_degree'),
(32, 'fully', 'fully', NULL, 'adverb_of_degree'),
(33, 'greatly', 'greatly', NULL, 'adverb_of_degree'),
(34, 'hardly', 'hardly', NULL, 'adverb_of_degree'),
(35, 'highly', 'highly', NULL, 'adverb_of_degree'),
(36, 'how', 'how', NULL, 'adverb_of_degree'),
(37, 'incredibly', 'incredibly', NULL, 'adverb_of_degree'),
(38, 'indeed', 'indeed', NULL, 'adverb_of_degree'),
(39, 'intensely', 'intensely', NULL, 'adverb_of_degree'),
(40, 'just', 'just', NULL, 'adverb_of_degree'),
(41, 'least', 'least', NULL, 'adverb_of_degree'),
(42, 'less', 'less', NULL, 'adverb_of_degree'),
(43, 'little', 'little', NULL, 'adverb_of_degree'),
(44, 'lots', 'lots', NULL, 'adverb_of_degree'),
(45, 'most', 'most', NULL, 'adverb_of_degree'),
(46, 'much', 'much', NULL, 'adverb_of_degree'),
(47, 'nearly', 'nearly', NULL, 'adverb_of_degree'),
(48, 'perfectly', 'perfectly', NULL, 'adverb_of_degree'),
(49, 'positively', 'positively', NULL, 'adverb_of_degree'),
(50, 'practically', 'practically', NULL, 'adverb_of_degree'),
(51, 'pretty*', 'pretty*', NULL, 'adverb_of_degree'),
(52, 'purely', 'purely', NULL, 'adverb_of_degree'),
(53, 'quite', 'quite', NULL, 'adverb_of_degree'),
(54, 'rather', 'rather', NULL, 'adverb_of_degree'),
(55, 'really', 'really', NULL, 'adverb_of_degree'),
(56, 'scarcely', 'scarcely', NULL, 'adverb_of_degree'),
(57, 'simply', 'simply', NULL, 'adverb_of_degree'),
(58, 'so', 'so', NULL, 'adverb_of_degree'),
(59, 'somewhat', 'somewhat', NULL, 'adverb_of_degree'),
(60, 'strongly', 'strongly', NULL, 'adverb_of_degree'),
(61, 'terribly', 'terribly', NULL, 'adverb_of_degree'),
(62, 'thoroughly', 'thoroughly', NULL, 'adverb_of_degree'),
(63, 'too', 'too', NULL, 'adverb_of_degree'),
(64, 'totally', 'totally', NULL, 'adverb_of_degree'),
(65, 'utterly', 'utterly', NULL, 'adverb_of_degree'),
(66, 'very', 'very', NULL, 'adverb_of_degree'),
(67, 'virtually', 'virtually', NULL, 'adverb_of_degree'),
(68, 'well', 'well', NULL, 'adverb_of_degree'),
(69, 'accidentally', 'accidentally', NULL, 'adverb_of_manner'),
(70, 'angrily', 'angrily', NULL, 'adverb_of_manner'),
(71, 'anxiously', 'anxiously', NULL, 'adverb_of_manner'),
(72, 'awkwardly', 'awkwardly', NULL, 'adverb_of_manner'),
(73, 'badly', 'badly', NULL, 'adverb_of_manner'),
(74, 'beautifully', 'beautifully', NULL, 'adverb_of_manner'),
(75, 'blindly', 'blindly', NULL, 'adverb_of_manner'),
(76, 'boldly', 'boldly', NULL, 'adverb_of_manner'),
(77, 'bravely', 'bravely', NULL, 'adverb_of_manner'),
(78, 'brightly', 'brightly', NULL, 'adverb_of_manner'),
(79, 'busily', 'busily', NULL, 'adverb_of_manner'),
(80, 'calmly', 'calmly', NULL, 'adverb_of_manner'),
(81, 'carefully', 'carefully', NULL, 'adverb_of_manner'),
(82, 'carelessly', 'carelessly', NULL, 'adverb_of_manner'),
(83, 'cautiously', 'cautiously', NULL, 'adverb_of_manner'),
(84, 'cheerfully', 'cheerfully', NULL, 'adverb_of_manner'),
(85, 'clearly', 'clearly', NULL, 'adverb_of_manner'),
(86, 'closely', 'closely', NULL, 'adverb_of_manner'),
(87, 'correctly', 'correctly', NULL, 'adverb_of_manner'),
(88, 'courageously', 'courageously', NULL, 'adverb_of_manner'),
(89, 'cruelly', 'cruelly', NULL, 'adverb_of_manner'),
(90, 'daringly', 'daringly', NULL, 'adverb_of_manner'),
(91, 'deliberately', 'deliberately', NULL, 'adverb_of_manner'),
(92, 'doubtfully', 'doubtfully', NULL, 'adverb_of_manner'),
(93, 'eagerly', 'eagerly', NULL, 'adverb_of_manner'),
(94, 'easily', 'easily', NULL, 'adverb_of_manner'),
(95, 'elegantly', 'elegantly', NULL, 'adverb_of_manner'),
(96, 'enormously', 'enormously', NULL, 'adverb_of_manner'),
(97, 'enthusiastically', 'enthusiastically', NULL, 'adverb_of_manner'),
(98, 'equally', 'equally', NULL, 'adverb_of_manner'),
(99, 'eventually', 'eventually', NULL, 'adverb_of_manner'),
(100, 'exactly', 'exactly', NULL, 'adverb_of_manner'),
(101, 'faithfully', 'faithfully', NULL, 'adverb_of_manner'),
(102, 'fast', 'fast', NULL, 'adverb_of_manner'),
(103, 'fatally', 'fatally', NULL, 'adverb_of_manner'),
(104, 'fiercely', 'fiercely', NULL, 'adverb_of_manner'),
(105, 'fondly', 'fondly', NULL, 'adverb_of_manner'),
(106, 'foolishly', 'foolishly', NULL, 'adverb_of_manner'),
(107, 'fortunately', 'fortunately', NULL, 'adverb_of_manner'),
(108, 'frankly', 'frankly', NULL, 'adverb_of_manner'),
(109, 'frantically', 'frantically', NULL, 'adverb_of_manner'),
(110, 'generously', 'generously', NULL, 'adverb_of_manner'),
(111, 'gently', 'gently', NULL, 'adverb_of_manner'),
(112, 'gladly', 'gladly', NULL, 'adverb_of_manner'),
(113, 'gracefully', 'gracefully', NULL, 'adverb_of_manner'),
(114, 'greedily', 'greedily', NULL, 'adverb_of_manner'),
(115, 'happily', 'happily', NULL, 'adverb_of_manner'),
(116, 'hard', 'hard', NULL, 'adverb_of_manner'),
(117, 'hastily', 'hastily', NULL, 'adverb_of_manner'),
(118, 'healthily', 'healthily', NULL, 'adverb_of_manner'),
(119, 'honestly', 'honestly', NULL, 'adverb_of_manner'),
(120, 'hungrily', 'hungrily', NULL, 'adverb_of_manner'),
(121, 'hurriedly', 'hurriedly', NULL, 'adverb_of_manner'),
(122, 'inadequately', 'inadequately', NULL, 'adverb_of_manner'),
(123, 'ingeniously', 'ingeniously', NULL, 'adverb_of_manner'),
(124, 'innocently', 'innocently', NULL, 'adverb_of_manner'),
(125, 'inquisitively', 'inquisitively', NULL, 'adverb_of_manner'),
(126, 'irritably', 'irritably', NULL, 'adverb_of_manner'),
(127, 'joyously', 'joyously', NULL, 'adverb_of_manner'),
(128, 'justly', 'justly', NULL, 'adverb_of_manner'),
(129, 'kindly', 'kindly', NULL, 'adverb_of_manner'),
(130, 'lazily', 'lazily', NULL, 'adverb_of_manner'),
(131, 'loosely', 'loosely', NULL, 'adverb_of_manner'),
(132, 'loudly', 'loudly', NULL, 'adverb_of_manner'),
(133, 'madly', 'madly', NULL, 'adverb_of_manner'),
(134, 'mortally', 'mortally', NULL, 'adverb_of_manner'),
(135, 'mysteriously', 'mysteriously', NULL, 'adverb_of_manner'),
(136, 'neatly', 'neatly', NULL, 'adverb_of_manner'),
(137, 'nervously', 'nervously', NULL, 'adverb_of_manner'),
(138, 'noisily', 'noisily', NULL, 'adverb_of_manner'),
(139, 'obediently', 'obediently', NULL, 'adverb_of_manner'),
(140, 'openly', 'openly', NULL, 'adverb_of_manner'),
(141, 'painfully', 'painfully', NULL, 'adverb_of_manner'),
(142, 'patiently', 'patiently', NULL, 'adverb_of_manner'),
(143, 'perfectly', 'perfectly', NULL, 'adverb_of_manner'),
(144, 'politely', 'politely', NULL, 'adverb_of_manner'),
(145, 'poorly', 'poorly', NULL, 'adverb_of_manner'),
(146, 'powerfully', 'powerfully', NULL, 'adverb_of_manner'),
(147, 'promptly', 'promptly', NULL, 'adverb_of_manner'),
(148, 'punctually', 'punctually', NULL, 'adverb_of_manner'),
(149, 'quickly', 'quickly', NULL, 'adverb_of_manner'),
(150, 'quietly', 'quietly', NULL, 'adverb_of_manner'),
(151, 'rapidly', 'rapidly', NULL, 'adverb_of_manner'),
(152, 'rarely', 'rarely', NULL, 'adverb_of_manner'),
(153, 'really', 'really', NULL, 'adverb_of_manner'),
(154, 'recklessly', 'recklessly', NULL, 'adverb_of_manner'),
(155, 'regularly', 'regularly', NULL, 'adverb_of_manner'),
(156, 'reluctantly', 'reluctantly', NULL, 'adverb_of_manner'),
(157, 'repeatedly', 'repeatedly', NULL, 'adverb_of_manner'),
(158, 'rightfully', 'rightfully', NULL, 'adverb_of_manner'),
(159, 'roughly', 'roughly', NULL, 'adverb_of_manner'),
(160, 'rudely', 'rudely', NULL, 'adverb_of_manner'),
(161, 'sadly', 'sadly', NULL, 'adverb_of_manner'),
(162, 'safely', 'safely', NULL, 'adverb_of_manner'),
(163, 'selfishly', 'selfishly', NULL, 'adverb_of_manner'),
(164, 'sensibly', 'sensibly', NULL, 'adverb_of_manner'),
(165, 'seriously', 'seriously', NULL, 'adverb_of_manner'),
(166, 'sharply', 'sharply', NULL, 'adverb_of_manner'),
(167, 'shyly', 'shyly', NULL, 'adverb_of_manner'),
(168, 'silently', 'silently', NULL, 'adverb_of_manner'),
(169, 'sleepily', 'sleepily', NULL, 'adverb_of_manner'),
(170, 'slowly', 'slowly', NULL, 'adverb_of_manner'),
(171, 'smoothly', 'smoothly', NULL, 'adverb_of_manner'),
(172, 'so', 'so', NULL, 'adverb_of_manner'),
(173, 'softly', 'softly', NULL, 'adverb_of_manner'),
(174, 'solemnly', 'solemnly', NULL, 'adverb_of_manner'),
(175, 'speedily', 'speedily', NULL, 'adverb_of_manner'),
(176, 'stealthily', 'stealthily', NULL, 'adverb_of_manner'),
(177, 'sternly', 'sternly', NULL, 'adverb_of_manner'),
(178, 'straight', 'straight', NULL, 'adverb_of_manner'),
(179, 'stupidly', 'stupidly', NULL, 'adverb_of_manner'),
(180, 'successfully', 'successfully', NULL, 'adverb_of_manner'),
(181, 'suddenly', 'suddenly', NULL, 'adverb_of_manner'),
(182, 'suspiciously', 'suspiciously', NULL, 'adverb_of_manner'),
(183, 'swiftly', 'swiftly', NULL, 'adverb_of_manner'),
(184, 'tenderly', 'tenderly', NULL, 'adverb_of_manner'),
(185, 'tensely', 'tensely', NULL, 'adverb_of_manner'),
(186, 'thoughtfully', 'thoughtfully', NULL, 'adverb_of_manner'),
(187, 'tightly', 'tightly', NULL, 'adverb_of_manner'),
(188, 'truthfully', 'truthfully', NULL, 'adverb_of_manner'),
(189, 'unexpectedly', 'unexpectedly', NULL, 'adverb_of_manner'),
(190, 'victoriously', 'victoriously', NULL, 'adverb_of_manner'),
(191, 'violently', 'violently', NULL, 'adverb_of_manner'),
(192, 'vivaciously', 'vivaciously', NULL, 'adverb_of_manner'),
(193, 'warmly', 'warmly', NULL, 'adverb_of_manner'),
(194, 'weakly', 'weakly', NULL, 'adverb_of_manner'),
(195, 'wearily', 'wearily', NULL, 'adverb_of_manner'),
(196, 'well', 'well', NULL, 'adverb_of_manner'),
(197, 'wildly', 'wildly', NULL, 'adverb_of_manner'),
(198, 'wisely', 'wisely', NULL, 'adverb_of_manner'),
(199, 'about', 'about', NULL, 'adverb_of_place'),
(200, 'above', 'above', NULL, 'adverb_of_place'),
(201, 'abroad', 'abroad', NULL, 'adverb_of_place'),
(202, 'anywhere', 'anywhere', NULL, 'adverb_of_place'),
(203, 'away', 'away', NULL, 'adverb_of_place'),
(204, 'back', 'back', NULL, 'adverb_of_place'),
(205, 'backward', 'backward', NULL, 'adverb_of_place'),
(206, 'behind', 'behind', NULL, 'adverb_of_place'),
(207, 'below', 'below', NULL, 'adverb_of_place'),
(208, 'down', 'down', NULL, 'adverb_of_place'),
(209, 'downstairs', 'downstairs', NULL, 'adverb_of_place'),
(210, 'east (etc)', 'east (etc)', NULL, 'adverb_of_place'),
(211, 'elsewhere', 'elsewhere', NULL, 'adverb_of_place'),
(212, 'far', 'far', NULL, 'adverb_of_place'),
(213, 'in', 'in', NULL, 'adverb_of_place'),
(214, 'indoors', 'indoors', NULL, 'adverb_of_place'),
(215, 'inside', 'inside', NULL, 'adverb_of_place'),
(216, 'near', 'near', NULL, 'adverb_of_place'),
(217, 'nearby', 'nearby', NULL, 'adverb_of_place'),
(218, 'off', 'off', NULL, 'adverb_of_place'),
(219, 'on', 'on', NULL, 'adverb_of_place'),
(220, 'out', 'out', NULL, 'adverb_of_place'),
(221, 'outside', 'outside', NULL, 'adverb_of_place'),
(222, 'over', 'over', NULL, 'adverb_of_place'),
(223, 'there', 'there', NULL, 'adverb_of_place'),
(224, 'towards', 'towards', NULL, 'adverb_of_place'),
(225, 'under', 'under', NULL, 'adverb_of_place'),
(226, 'up', 'up', NULL, 'adverb_of_place'),
(227, 'upstairs', 'upstairs', NULL, 'adverb_of_place'),
(228, 'where', 'where', NULL, 'adverb_of_place'),
(229, 'always', 'always', NULL, 'adverb_of_time'),
(230, 'constantly', 'constantly', NULL, 'adverb_of_time'),
(231, 'ever', 'ever', NULL, 'adverb_of_time'),
(232, 'frequently', 'frequently', NULL, 'adverb_of_time'),
(233, 'generally', 'generally', NULL, 'adverb_of_time'),
(234, 'infrequently', 'infrequently', NULL, 'adverb_of_time'),
(235, 'never', 'never', NULL, 'adverb_of_time'),
(236, 'normally', 'normally', NULL, 'adverb_of_time'),
(237, 'occasionally', 'occasionally', NULL, 'adverb_of_time'),
(238, 'often', 'often', NULL, 'adverb_of_time'),
(239, 'rarely', 'rarely', NULL, 'adverb_of_time'),
(240, 'regularly', 'regularly', NULL, 'adverb_of_time'),
(241, 'seldom', 'seldom', NULL, 'adverb_of_time'),
(242, 'sometimes', 'sometimes', NULL, 'adverb_of_time'),
(243, 'regularly', 'regularly', NULL, 'adverb_of_time'),
(244, 'usually', 'usually', NULL, 'adverb_of_time'),
(245, 'already', 'already', NULL, 'adverb_of_time'),
(246, 'before', 'before', NULL, 'adverb_of_time'),
(247, 'early', 'early', NULL, 'adverb_of_time'),
(248, 'earlier', 'earlier', NULL, 'adverb_of_time'),
(249, 'eventually', 'eventually', NULL, 'adverb_of_time'),
(250, 'finally', 'finally', NULL, 'adverb_of_time'),
(251, 'first', 'first', NULL, 'adverb_of_time'),
(252, 'formerly', 'formerly', NULL, 'adverb_of_time'),
(253, 'just', 'just', NULL, 'adverb_of_time'),
(254, 'last', 'last', NULL, 'adverb_of_time'),
(255, 'late', 'late', NULL, 'adverb_of_time'),
(256, 'later', 'later', NULL, 'adverb_of_time'),
(257, 'lately', 'lately', NULL, 'adverb_of_time'),
(258, 'next', 'next', NULL, 'adverb_of_time'),
(259, 'previously', 'previously', NULL, 'adverb_of_time'),
(260, 'recently', 'recently', NULL, 'adverb_of_time');

-- --------------------------------------------------------

--
-- Table structure for table `antonyms`
--

CREATE TABLE IF NOT EXISTS `antonyms` (
  `antonyms_id` int(10) NOT NULL AUTO_INCREMENT,
  `word` varchar(100) DEFAULT NULL,
  `Antonyms` varchar(100) NOT NULL,
  PRIMARY KEY (`antonyms_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=619 ;

--
-- Dumping data for table `antonyms`
--

INSERT INTO `antonyms` (`antonyms_id`, `word`, `Antonyms`) VALUES
(1, 'about', 'exactly'),
(2, 'above', 'below'),
(3, 'absence', 'presence'),
(4, 'abundance', 'lack'),
(5, 'to accept', 'to refuse'),
(6, 'accidental', 'intentional'),
(7, 'active', 'lazy'),
(8, 'add', 'subtract'),
(9, 'admit', 'deny'),
(10, 'adult', 'child'),
(11, 'advanced', 'elementary'),
(12, 'affirmative', 'negative'),
(13, 'afraid', 'brave'),
(14, 'after', 'before'),
(15, 'against', 'for'),
(16, 'alike', 'different'),
(17, 'alive', 'dead'),
(18, 'all', 'none'),
(19, 'always', 'never'),
(20, 'ancient', 'modern'),
(21, 'agree', 'refuse'),
(22, 'agree', ' argue'),
(23, 'allow', 'forbid'),
(24, 'already', 'not yet'),
(25, 'always', 'never'),
(26, 'amateur', 'professional'),
(27, 'to amuse', 'to bore'),
(28, 'ancestor', 'descendant'),
(29, 'angel', 'devil'),
(30, 'animal', 'human'),
(31, 'annoy', ' satisfy'),
(32, 'answer', 'ask'),
(33, 'answer', 'question'),
(34, 'antonym', 'synonym'),
(35, 'apart', 'together'),
(36, 'approximately', 'exactly'),
(37, ' argue', 'agree'),
(38, 'arrest', 'free'),
(39, 'arrival', 'departure'),
(40, 'arrive', 'depart'),
(41, 'artificial', 'natural'),
(42, 'ask', 'answer'),
(43, 'asleep', 'awake'),
(44, 'attack', ' defend'),
(45, 'attack', ' protect'),
(46, 'attic', 'cellar'),
(47, 'autumn', 'spring'),
(48, 'awake', 'asleep'),
(49, 'awful', ' pleasant'),
(50, 'back', 'front'),
(51, 'background', 'foreground'),
(52, 'backward', 'forward'),
(53, 'bad', 'good'),
(54, 'bad luck', ' good luck'),
(55, 'beauty', 'ugliness'),
(56, 'before', 'after'),
(57, 'begin', 'end'),
(58, 'beginning', 'ending'),
(59, 'behind', ' front '),
(60, 'below', 'above'),
(61, 'best', 'worst'),
(62, 'better', 'worse'),
(63, 'beautiful', 'ugly'),
(64, 'big', 'small'),
(65, 'birth', 'death'),
(66, 'bitter', 'sweet'),
(67, 'black', 'white'),
(68, 'blunt', 'sharp'),
(69, 'body', 'soul'),
(70, 'bore', 'amuse'),
(71, 'boring', ' interesting'),
(72, 'to borrow', 'to lend'),
(73, 'bottom', 'top'),
(74, 'boy', 'girl'),
(75, 'brave', 'cowardly'),
(76, 'to break', ' mend'),
(77, 'broad', 'narrow'),
(78, 'brother', 'sister'),
(79, 'to build', 'to destroy'),
(80, 'busy', 'lazy'),
(81, 'buy', 'sell'),
(82, 'calm', 'excited'),
(83, 'careful', 'careless'),
(84, 'careless', 'careful'),
(85, 'catch', ' miss,'),
(86, 'ceiling', 'floor'),
(87, 'cellar', 'attic'),
(88, 'centre', 'outskirts, suburb'),
(89, 'certainly', 'probably'),
(90, 'changeable', 'constant'),
(91, 'cheap', 'expensive'),
(92, 'child', 'adult'),
(93, 'children', 'parents'),
(94, 'clean', 'dirty'),
(95, 'clear', 'cloudy'),
(96, 'clever', 'stupid'),
(97, ' close', 'open'),
(98, 'closed', 'open'),
(99, 'cloudy', 'sunny'),
(100, 'cold ', 'hot'),
(101, 'come', 'go'),
(102, 'comedy', ' tragedy'),
(103, 'complicated', 'simple'),
(104, 'compliment', 'insult'),
(105, 'compulsory', 'voluntary'),
(106, 'connect', 'separate'),
(107, 'consonant', 'vowel'),
(108, 'constant', 'changeable'),
(109, 'construction', 'destruction'),
(110, 'continue', ' interrupt'),
(111, 'cool', 'warm'),
(112, 'correct', 'FALSE'),
(113, 'correct', 'wrong'),
(114, 'courage', 'fear'),
(115, 'courageous', 'cowardly'),
(116, 'cowardly', 'brave'),
(117, 'cowardly', 'courageous'),
(118, ' create', 'destroy'),
(119, 'cruel', ' kind'),
(120, 'cry ', 'laugh'),
(121, 'damage', 'repair'),
(122, 'danger', 'security'),
(123, 'danger', 'safety'),
(124, 'dangerous', 'safe'),
(125, 'dark', 'light'),
(126, 'daughter', 'son'),
(127, 'dawn', 'dusk'),
(128, 'day', 'night'),
(129, 'dead', 'alive'),
(130, 'death', 'birth'),
(131, 'death', ' life'),
(132, 'deep', 'shallow'),
(133, 'defeat', 'victory'),
(134, 'defence', 'attack'),
(135, 'to defend', 'attack'),
(136, 'delicious', 'awful'),
(137, 'deny', 'admit'),
(138, 'depart', 'arrive'),
(139, 'departure', 'arrival'),
(140, 'desperate', 'hopeful'),
(141, 'destroy', 'build'),
(142, 'destruction', 'construction'),
(143, 'devil', 'angel'),
(144, 'dictatorship', 'republic'),
(145, 'die', 'live'),
(146, 'different', 'alike'),
(147, 'difficult', 'easy'),
(148, 'dirty', 'clean'),
(149, 'disease', 'health'),
(150, 'distant', 'near'),
(151, 'divide', 'unite'),
(152, 'division', 'unity'),
(153, 'divorce', 'marry'),
(154, 'divorce', 'marriage'),
(155, 'divorced', 'married'),
(156, 'domestic', 'foreign'),
(157, 'down', 'up'),
(158, 'downstairs', 'upstairs'),
(159, 'drama', 'comedy'),
(160, 'dry', ' wet'),
(161, 'dull', 'interesting'),
(162, 'dusk', 'dawn'),
(163, 'early', 'late'),
(164, 'east', 'west'),
(165, 'easy', 'difficult'),
(166, 'elementary', 'advanced'),
(167, 'to emigrate', 'to immigrate'),
(168, 'emigration', 'immigration'),
(169, 'empty', 'full'),
(170, 'to end', 'to begin'),
(171, 'end', 'beginning'),
(172, 'ending', 'beginning'),
(173, 'enemy', 'friend'),
(174, 'to enjoy', 'to hate'),
(175, 'to enter', 'to leave'),
(176, 'entrance', 'exit'),
(177, 'equal', 'different'),
(178, 'even', 'odd'),
(179, 'evening', 'morning'),
(180, 'everybody', 'nobody'),
(181, 'everything', 'nothing'),
(182, 'exactly', 'approximately'),
(183, 'excited', 'calm'),
(184, 'exciting', 'boring'),
(185, 'to exclude', 'to include'),
(186, 'exit', 'entrance'),
(187, 'expensive', 'cheap'),
(188, 'export', 'import'),
(189, 'exposure', 'shelter'),
(190, 'extreme', 'moderate'),
(191, 'fail', ' pass'),
(192, 'failure', 'success'),
(193, 'FALSE', 'TRUE'),
(194, 'far', 'near'),
(195, 'fast', 'slow'),
(196, 'fat', ' thin'),
(197, 'fear', 'courage'),
(198, 'female', 'male'),
(199, 'few', 'many'),
(200, 'final', 'first'),
(201, 'find', 'lose'),
(202, 'finish', 'begin'),
(203, 'finish', 'start'),
(204, 'first', ' last'),
(205, ' fix', 'break'),
(206, 'flat', 'hilly'),
(207, 'floor', 'ceiling'),
(208, ' follow', 'lead'),
(209, 'forbid', 'allow'),
(210, 'for', 'against'),
(211, 'foreground', 'background'),
(212, 'foreign', 'domestic'),
(213, 'foreigner', 'native'),
(214, 'to forget', 'to remember'),
(215, 'to form', 'to destroy'),
(216, 'fortune', 'bad luck'),
(217, 'forward', 'backward'),
(218, 'to free', 'to arrest'),
(219, 'to freeze', 'to melt'),
(220, 'frequently', 'occasionally'),
(221, 'fresh', 'stale'),
(222, 'friend', 'enemy'),
(223, 'front', 'rear'),
(224, ' front ', ' behind'),
(225, 'full', 'empty'),
(226, 'funny', 'serious'),
(227, 'future', 'past'),
(228, 'general', ' special'),
(229, 'generous', 'mean'),
(230, 'gentle', 'violent'),
(231, 'gentleman', 'lady'),
(232, 'giant', 'tiny'),
(233, 'girl', 'boy'),
(234, 'give', 'take'),
(235, 'go', 'come'),
(236, 'good', 'bad'),
(237, 'guest', 'host'),
(238, 'guilty', 'innocent'),
(239, 'happiness', 'sadness'),
(240, 'happy', 'sad'),
(241, 'handsome', 'ugly'),
(242, 'hard', 'easy'),
(243, 'harvest', 'plant'),
(244, 'hate', 'love'),
(245, 'health', 'disease'),
(246, 'healthy', ' sick'),
(247, 'heat', 'cold'),
(248, 'heaven', 'hell'),
(249, 'heavy', 'light'),
(250, 'hell', 'heaven'),
(251, 'here', 'there'),
(252, 'high', 'deep'),
(253, 'high', 'low'),
(254, 'hilly', 'flat'),
(255, 'to hit', 'to miss'),
(256, 'hopeful', 'desperate, hopeless'),
(257, 'hopeless', 'hopeful'),
(258, 'horizontal', 'vertical'),
(259, 'host', 'guest, visitor'),
(260, 'hot', 'cold'),
(261, 'huge', 'tiny'),
(262, 'human', 'animal'),
(263, 'humane', 'cruel'),
(264, 'humid', 'dry'),
(265, 'hungry', 'thirsty'),
(266, 'husband', 'wife'),
(267, 'ignore', 'notice'),
(268, 'ill', 'healty'),
(269, 'immigrate', 'emigrate'),
(270, 'immigration', 'emigration'),
(271, 'import', 'export'),
(272, 'in', 'out'),
(273, 'include', 'exclude'),
(274, 'increase', 'reduce'),
(275, 'innocent', 'guilty'),
(276, 'inside', 'outside'),
(277, 'insult', 'compliment'),
(278, 'intelligent', 'stupid'),
(279, 'intentional', 'accidental'),
(280, 'interesting', 'boringl'),
(281, 'interrupt', 'continue'),
(282, 'junior', 'senior'),
(283, 'kind', 'cruel'),
(284, 'lack', 'plenty'),
(285, 'lady', 'gentleman'),
(286, 'land', 'take off'),
(287, 'land', 'water'),
(288, 'large', 'small'),
(289, 'last', 'first'),
(290, 'late', 'early'),
(291, 'laugh', 'cry'),
(292, 'lazy', ' busy'),
(293, 'lead', 'follow'),
(294, 'learn', 'teach'),
(295, 'leave', 'arrive'),
(296, 'left', 'right'),
(297, 'lend', ' borrow'),
(298, 'less', 'more'),
(299, 'let', 'forbid'),
(300, 'lie', 'stand'),
(301, 'life', 'death'),
(302, 'light', 'dark'),
(303, 'like', ' hate'),
(304, 'liquid', 'solid'),
(305, 'little', 'big'),
(306, 'little', 'much'),
(307, ' live', 'die'),
(308, 'long', 'short'),
(309, 'lose', 'find'),
(310, 'loser', 'winner'),
(311, 'loud', 'quiet'),
(312, 'to love', 'to hate'),
(313, 'lovely', 'terrible'),
(314, 'low', 'high'),
(315, 'lower', 'raise'),
(316, 'major', 'minor'),
(317, 'male', 'female'),
(318, 'man', 'woman'),
(319, 'many', 'few, some'),
(320, 'marriage', 'divorce'),
(321, 'married', 'single'),
(322, 'marry', 'divorce'),
(323, 'master', 'servant'),
(324, 'maximum', 'minimum'),
(325, 'mean', 'generous'),
(326, 'melt', 'freeze'),
(327, 'men', 'women'),
(328, 'mend', 'break'),
(329, 'mess', 'order'),
(330, 'midnight', 'noon'),
(331, 'minimum', 'maximum'),
(332, 'minor', 'major'),
(333, 'miss', ' catch'),
(334, 'moderate', 'extreme'),
(335, 'modern', 'ancient'),
(336, 'monarchy', 'republic'),
(337, 'moon', 'sun'),
(338, 'more', 'less'),
(339, 'morning', 'evening'),
(340, 'mountain', 'valley'),
(341, 'much', 'little'),
(342, 'narrow', 'wide'),
(343, 'nasty', ' pleasant'),
(344, 'native', 'foreigner'),
(345, 'natural', 'artificial'),
(346, 'near', ' far'),
(347, 'negative', 'affirmative'),
(348, 'nephew', 'niece'),
(349, 'never', 'always'),
(350, 'new', ' old'),
(351, 'nice', 'nasty'),
(352, 'niece', 'nephew'),
(353, 'night', 'day'),
(354, 'no', 'yes'),
(355, 'nobody', 'everybody'),
(356, 'noisy', ' silent'),
(357, 'noon', 'midnight'),
(358, 'none of', 'al lof'),
(359, 'normal', 'strange'),
(360, 'north', 'south'),
(361, 'not yet', 'already'),
(362, 'nothing', 'everything'),
(363, ' notice', ' ignore'),
(364, 'now', 'then'),
(365, 'occasionally', 'frequently'),
(366, 'occupied', 'vacant'),
(367, 'odd', 'even'),
(368, 'off', 'on'),
(369, 'often', 'seldom'),
(370, 'old', ' new'),
(371, 'on', 'off'),
(372, 'open', 'shut'),
(373, 'open', 'closed'),
(374, 'opponent', 'supporter'),
(375, 'order', 'mess'),
(376, 'ordinary', 'special'),
(377, 'other', 'same'),
(378, 'out', 'in'),
(379, 'outside', 'inside'),
(380, 'outskirts', 'centre'),
(381, 'over', 'under'),
(382, 'parents', 'children'),
(383, 'part', 'whole'),
(384, 'partial', 'total'),
(385, 'particular', 'general'),
(386, 'pass', 'fail'),
(387, 'past', 'future'),
(388, 'peace', 'war'),
(389, 'permit', 'forbid'),
(390, 'plant', 'harvest'),
(391, 'plenty', 'lack'),
(392, 'pleasant', 'awful'),
(393, 'polite', 'rude'),
(394, 'poor', 'rich'),
(395, 'poverty', 'wealth'),
(396, 'powerful', 'weak'),
(397, 'presence', 'absence'),
(398, 'present', 'past'),
(399, 'pretty', 'ugly'),
(400, 'private', 'public'),
(401, 'probably', 'certainly'),
(402, 'professional', 'amateur'),
(403, 'protect', 'attack'),
(404, 'protection', 'attack'),
(405, 'public', 'private'),
(406, 'pull', 'push'),
(407, 'pupil', 'teacher'),
(408, 'push', 'pull'),
(409, 'question', 'answer'),
(410, 'quick', 'slow'),
(411, 'quiet', 'loud, noisy'),
(412, 'raise', 'lower'),
(413, 'rainy', 'sunny'),
(414, 'rear', 'front'),
(415, 'receive', 'send'),
(416, 'reduce', 'increase'),
(417, 'refuse', 'agree'),
(418, 'regret', 'satisfaction'),
(419, 'remember', 'forget'),
(420, 'repair', 'damage'),
(421, 'reply', 'ask'),
(422, 'reply', 'question'),
(423, 'republic', 'dictatorship'),
(424, 'rest', 'work'),
(425, 'rich', 'poor'),
(426, 'right', 'wrong'),
(427, 'rise', 'sink'),
(428, 'rough', 'gentle'),
(429, 'rude', 'polite'),
(430, 'rural', 'urban'),
(431, 'sad', 'happy'),
(432, 'sadness', 'happiness'),
(433, 'safe', 'dangerous'),
(434, 'safety', 'danger'),
(435, 'salt', 'sugar'),
(436, 'same', 'different'),
(437, 'satisfaction', 'regret'),
(438, 'satisfy', 'annoy'),
(439, 'save', 'waste'),
(440, 'scream', 'whisper'),
(441, 'security', 'danger'),
(442, 'seldom', 'often'),
(443, 'sell', 'buy'),
(444, 'send', 'receive'),
(445, 'senior', 'junior'),
(446, 'separate', 'unite'),
(447, 'serious', 'funny'),
(448, 'servant', 'master'),
(449, 'to set free', 'to arrest'),
(450, 'shallow', 'deep'),
(451, 'sharp', 'blunt'),
(452, 'shelter', 'exposure'),
(453, 'short', 'long'),
(454, 'shout', 'whisper'),
(455, 'shut', 'open'),
(456, 'sick', 'healthy'),
(457, 'silent', 'noisy'),
(458, 'silly', 'intelligent'),
(459, 'simple', 'complicated'),
(460, 'sink', 'rise'),
(461, 'single', 'married'),
(462, 'sister', 'brother'),
(463, 'slim', 'fat'),
(464, 'slow', 'fast'),
(465, 'small', 'big'),
(466, 'smooth', 'rough'),
(467, 'soft', 'hard'),
(468, 'solid', 'liquid'),
(469, 'some', 'many'),
(470, 'sometimes', 'often'),
(471, 'son', 'daughter'),
(472, 'soul', 'body'),
(473, 'sour', 'sweet'),
(474, 'south', 'north'),
(475, 'special', 'general'),
(476, 'spring', 'autumn'),
(477, 'stand', 'sit'),
(478, 'start', 'stop'),
(479, 'stop', 'start'),
(480, 'stand', 'lie'),
(481, 'strange', 'normal'),
(482, 'stranger', 'native'),
(483, 'strict', 'gentle'),
(484, 'strong', 'weak'),
(485, 'student', 'teacher'),
(486, 'stupid', ' intelligent'),
(487, 'suburb', 'centre'),
(488, 'to succeed', 'to fail'),
(489, 'success', 'failure'),
(490, 'subtract', 'add'),
(491, 'sugar', 'salt'),
(492, 'summer', 'winter'),
(493, 'sun', 'moon'),
(494, 'sunny', 'rainy'),
(495, 'supporter', 'opponent'),
(496, 'suspect', 'trust'),
(497, 'sweet', 'bitter'),
(498, 'synonym', 'antonym'),
(499, 'take', 'give'),
(500, 'take off', 'land'),
(501, 'tall', 'short'),
(502, 'teach', ' learn'),
(503, 'teacher', 'student'),
(504, 'then', 'now'),
(505, 'terrible', 'lovely'),
(506, 'there', 'here'),
(507, 'thick', 'thin'),
(508, 'thin', 'thick'),
(509, 'thirsty', 'hungry'),
(510, 'to throw', 'catch'),
(511, 'tight', 'loose'),
(512, 'tiny', 'huge'),
(513, 'together', 'apart'),
(514, 'tomorrow', 'yesterday'),
(515, 'top', 'bottom'),
(516, 'total', 'partial'),
(517, 'town', 'village'),
(518, 'tragedy', 'comedy'),
(519, 'TRUE', 'FALSE'),
(520, 'trust', 'suspect'),
(521, 'ugliness', 'beauty'),
(522, 'ugly', 'beautiful'),
(523, 'under', 'over'),
(524, 'unite', 'divide'),
(525, 'unity', 'division'),
(526, 'up', 'down'),
(527, 'upstairs', 'downstairs'),
(528, 'urban', 'rural'),
(529, 'useful', 'useless'),
(530, 'useless', 'useful'),
(531, 'vacant', 'occupied'),
(532, 'valley', 'mountain'),
(533, 'vertical', 'horizontal'),
(534, 'victory', 'defeat'),
(535, 'village', 'town'),
(536, 'violent', 'gentle'),
(537, 'visitor', 'host'),
(538, 'voluntary', 'compulsory'),
(539, 'vowel', 'consonant'),
(540, 'war', 'peace'),
(541, 'warm', 'cool'),
(542, 'to waste', 'to save'),
(543, 'water', 'land'),
(544, 'weak', 'strong'),
(545, 'wealth', 'poverty'),
(546, 'wealthy', 'poor'),
(547, 'wedding', 'divorce'),
(548, 'well', 'ill'),
(549, 'west', 'east'),
(550, 'wet', 'dry'),
(551, 'whisper', 'scream'),
(552, 'white', 'black'),
(553, 'whole', 'part'),
(554, 'wide', 'narrow'),
(555, 'wife', 'husband'),
(556, 'win', 'lose'),
(557, 'winner', 'loser'),
(558, 'winter', 'summer'),
(559, 'work', 'rest'),
(560, 'woman', 'man'),
(561, 'women', 'men'),
(562, 'worse', 'better'),
(563, 'worst', 'best'),
(564, 'wrong', ' right'),
(565, 'yes', 'no'),
(566, 'yesterday', 'tomorrow'),
(567, 'young', 'old'),
(568, 'terrible', 'wonderful'),
(569, 'crazy', 'smart'),
(570, 'foolish', 'clever'),
(571, 'clever', 'foolish'),
(572, 'confident', 'shy'),
(573, 'shy', 'confident'),
(574, 'shabby', 'splendid'),
(575, 'splendid', 'shabby'),
(576, 'delayed', 'in hurry'),
(577, 'calm', 'violent'),
(578, 'powerfull', 'weak'),
(579, 'ill-timed', 'well-timed'),
(580, 'young', 'old'),
(581, 'intelligent', 'idiotic'),
(582, 'rich', 'poor'),
(583, 'traditional', 'untraditional'),
(584, 'courageous', 'cowardly'),
(585, 'excellent', 'ordinary'),
(586, 'excellent', 'ordinary'),
(587, 'brilliant', 'dull'),
(588, 'splendid', 'shabby'),
(589, 'fantastic', 'conventional'),
(590, 'magnificent', 'offensive'),
(591, 'terrible', 'wonderful'),
(592, 'funny', 'serious'),
(593, 'amusing', 'hate'),
(594, 'entertaining', 'depressing'),
(595, 'noisy', 'quiet'),
(596, 'quiet', 'loud'),
(597, 'attractive', 'unattractive'),
(598, 'blushing', 'arrogant'),
(599, 'colorful', 'colorless'),
(600, 'weak', 'strong'),
(601, 'strong', 'weak'),
(602, 'doubtful', 'confirmed'),
(603, 'confused', 'clear'),
(604, 'puzzled', 'unpuzzled'),
(605, 'careful', 'careless'),
(606, 'concerned', 'unconcerned'),
(607, 'guilty', 'innocent'),
(608, 'crazy', 'smart'),
(609, 'silly', 'wise'),
(610, 'old-fashioned', 'modern'),
(611, 'traditional', 'untraditional'),
(612, 'old-fashioned', 'modern'),
(613, 'traditional', 'untraditional'),
(614, 'late', 'early'),
(615, 'early', 'late'),
(616, 'punctual', 'late'),
(617, 'old', 'young'),
(618, 'young', 'old');

-- --------------------------------------------------------

--
-- Table structure for table `comprehension`
--

CREATE TABLE IF NOT EXISTS `comprehension` (
  `comprehension_id` int(11) NOT NULL AUTO_INCREMENT,
  `comprehension_data` text,
  `comprehension_type` varchar(2000) NOT NULL,
  `exercise_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`comprehension_id`),
  KEY `exercise_id` (`exercise_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `comprehension`
--

INSERT INTO `comprehension` (`comprehension_id`, `comprehension_data`, `comprehension_type`, `exercise_id`) VALUES
(5, '\n<p>Working 12 to 18 hours a day was not uncommon for scientists at the rocket\nlaunching station, Thumba. A group of such scientists was frustrated due to the work pressure and meeting their boss'' demands; however, they were loyal to him.</p>\n\n<div style="width: 328px;height: 219px;background-color: rgb(167, 176, 176);float: right;margin: 10px;">\n<img src="../resources/img/comprehension_images/apj.jpg" alt="Smiley face" style="width: 100%;height: 100%;border: rgb(59, 66, 66);border-style:groove;\n">\n\n</div>\n\n<p>One day, a scientist gathered enough courage to go up to his boss and say, "Sir, I have promised my children that I will take them to the exhibition this evening.\nTherefore, I have to leave the office at 5.30 pm. Can I leave early today, Sir?" </p>\n\n<p>His boss replied, "Alright. You may leave early today." </p>\n<p>The scientist was happy for having received the permission and went on to continue his work. He stayed on to work after lunch, and, as always, got so engrossed in his work, that he peered at his watch only when he thought he was done. Unfortunately, it was past 08:15 pm.</p>\n<p>With a jolt, he remembered his promise to his children. He looked for his boss who was not in his office. Having told him just that morning, he wrapped up work and hurried home.</p>\n<p> As he drove home, he felt very guilty for having let his children down. When he reached, the children were not at home. His wife was busy reading. He felt that initiating any conversation with her would only add fuel to fire, so he stayed quiet.</p>\n<p> Looking up at him, his wife asked, "Do you want something hot to drink or have dinner right away?" </p>\n<p>The man could only ask, "Where are the children?"</p>\n<p> His wife said, "Don''t you know? Your boss came here at 5.15 pm and took the\nchildren to the exhibition you had promised to take them to."</p>\n<p> He was surprised, but, it did not take him too long to guess what had happened.</p>\n<p> The boss who granted him permission had observed him working very seriously well past 5.00 pm He must have thought that the scientist would not leave the work half done, but if he has promised his children a visit to the exhibition, then they deserve it. So, he took the lead in taking them to the exhibition himself. </p>\n<p>The boss does not have to do it every time. But once it is done, loyalty is established.</p>\n<p> No wonder, all scientists at Thumba continue to work under this boss in spite of the great pressure.</p>\n<p> This boss was none other than Dr APJ Abdul Kalam.</p>\n', 'text-passage', 8),
(6, '<p>Lionel was in bad shape. He was bloodied and beaten. He was too weak to haul his poor, broken\nlittle body inside the house. By the time Nola saw him; his battered body had already lost too\nmuch blood. Lionel the duck, died a few minutes later.</p>\n\n<p>When Nola broke the news to her customers, they were devastated. One elderly gentleman was\nespecially heart-broken. He used to feed Lionel a slice of bread or a biscuit which he kept in his\npocket especially for the occasion. They would spend an hour every week like that, enjoying\neach other''s company. When he heard about Lionel''s death, the old man sat down on the same\nbench and let the tears run freely down his cheeks. Two weeks later, he was dead.</p>\n\n<p>Nola also had to tell the children who used to play with Lionel on their way to school. Lionel\nwaddled around them, muttering and letting them feel his soft white feathers while they waited for\nthe bus. Some of the children made sympathy cards for Nola. She also received many\ncondolences-a few from friends and many from strangers. It was only then that we realized how\nmany friends Lionel had made; how many hearts he had touched. It seemed as if the whole town\nwas mourning his death.</p> ', 'text-passage', 18),
(8, '<pre>Once upon a time a frog \ncroaked away in Bingle Bog \nEvery night from dusk to dawn \nHe croaked awn and awn and awn. \nOther creatures loathed his voice, \nBut, alas, they had no choice. \nAnd the crass cacophony \nBlared out from the sumac tree \nAt whose foot the frog each night \nMinstrelled  on till morning night. \nNeither stones nor prayers nor sticks, \nInsults or complaints or bricks \nStilled the frog''s determination \nTo display his heart''s elation . \nBut one night a nightingale \nIn the moonlight cold and pale \nPerched upon the sumac tree \nCasting forth her melody. \nDumbstruck sat the gaping frog\nAnd the whole admiring bog \nStared towards the sumac, rapt , \nAnd, when she had ended, clapped, \nDucks had swum and herons waded \nTo her as she serenaded\nAnd a solitary loon \nWept, beneath the summer moon. \nToads and teals and tiddlers, captured \nBy her voice, cheered on, enraptured: \n"Bravo!" "Too divine!" "Encore!" \nSo the nightingale once more, \nQuite unused to such applause, \nSang till dawn without a pause. \nNext night when the Nightingale \nShook her head and twitched her tail, \nClosed an eye and fluffed a wing \nAnd had cleared her throat to sing \nShe was startled by a croak. \n"Sorry - was that you who spoke?" \nShe enquired when the frog \nHopped towards her from the bog. \n"Yes," the frog replied. "You see, \nI''m the frog who owns this tree. \nIn this bog I''ve long been known \nFor my splendid baritone\nAnd, of course, I wield my pen \nFor Bog Trumpet now and then". \n"Did you... did you like my song?"\n"Not too bad - but far too long. \nThe technique was fine of course, \nBut it lacked a certain force". \n"Oh!" the nightingale confessed. \nGreatly flattered and impressed \nThat a critic of such note \nHad discussed her art and throat: \n"I don''t think the song''s divine. \nBut - oh, well - at least it''s mine". \n"That''s not much to boast about". \nSaid the heartless frog. "Without \nProper training such as I \n- And few others - can supply. \nYou''ll remain a mere beginner. \nBut with me you''ll be a winner". \n"Dearest frog", the nightingale \nBreathed: "This is a fairy tale - \nAnd you''re Mozart in disguise \nCome to earth before my eyes". \n"Well I charge a modest fee. \nOh!... But it won''t hurt, you''ll see" \nNow the nightingale inspired, \nFlushed with confidence, and fired \nWith both art and adoration, \nSang - and was a huge sensation. \nAnimals for miles around \nFlocked towards the magic sound, \nAnd the frog with great precision \nCounted heads and charged admission.	\nHe began her vocal training. \n"But I can''t sing in this weather". \nThough next morning it was raining, \n"Come my dear - we''ll sing together. \nJust put on your scarf and sash, \nKoo-oh-ah! ko-ash! ko-ash!" \nSo the frog and nightingale \nJourneyed up and down the scale\nFor six hours, till she was shivering \nand her voice was hoarse and quivering . \nThough subdued and sleep deprived, \nIn the night her throat revived, \nAnd the sumac tree was bowed, \nWith a breathless, titled crowd: \nOwl of Sandwich, Duck of Kent, \nMallard and Milady Trent, \nMartin Cardinal Mephisto, \nAnd the Coot of Monte Cristo, \nLadies with tiaras glittering \nIn the interval sat twittering - \nAnd the frog observed them glitter \nWith a joy both sweet and bitter. \nEvery day the frog who''d sold her \n100 Songs for silver tried to scold her: \n"You must practice even longer \nTill your voice, like mine grows stronger. \nIn the second song last night \nYou got nervous in mid-flight\nAnd, my dear, lay on more trills \nAudiences enjoy such frills. \nYou must make your public happier: \nGive them something sharper, snappier. \nWe must aim for better billings .\nYou still owe me sixty shillings." \nDay by day the nightingale \nGrew more sorrowful and pale. \nNight on night her tired song \nZipped and trilled and bounced along, \nTill the birds and beasts grew tired \nAt a voice so uninspired \nAnd the ticket office gross \nCrashed, and she grew more morose\nFor her ears were now addicted \nTo applause quite unrestricted, \nAnd to sing into the night \nAll alone gave no delight. \nNow the frog puffed up with rage. \n"Brainless bird - you''re on the stage\nUse your wits and follow fashion. \nPuff your lungs out with your passion." \nTrembling, terrified to fail, \nBlind with tears, the nightingale \nHeard him out in silence, tried, \nPuffed up, burst a vein, and died. \nSaid the frog: "I tried to teach her, \nBut she was a stupid creature - \nFar too nervous, far too tense. \nFar too prone to influence.\nThat your song must be your own. \nThat''s why I sing with panache \nWell, poor bird - she should have known \n"Koo-oh-ah! ko-ash! ko-ash!" \nAnd the foghorn of the frog \nBlared unrivalled through the bog.</pre>', 'text-poetry', 20),
(9, '<p>AUSABLE did not fit any description of a secret agent Fowler had ever\nread. Following him down the musty corridor of the gloomy French\nhotel where Ausable had a room, Fowler felt let down. It was a\nsmall room, on the sixth and top floor, and scarcely a setting for a\nromantic adventure.</p>\n<p class="indent">Ausable was, for one thing, fat. Very fat. And then there was his\naccent. Though he spoke French and German passably, he had never\naltogether lost the American accent he had brought to Paris from Boston\ntwenty years ago.</p>\n<p class="indent">“You are disappointed,” Ausable said wheezily over his shoulder.\n“You were told that I was a secret agent, a spy, dealing in espionage\nand danger. You wished to meet me because you are a writer, young\nand romantic. You envisioned mysterious figures in the night, the crack\nof pistols, drugs in the wine.”</p>\n<p class="indent">“Instead, you have spent a dull evening in a French music hall\nwith a sloppy fat man who, instead of having messages slipped into\nhis hand by dark-eyed beauties, gets only a prosaic telephone call\nmaking an appointment in his room. You have been bored!” The fat\nman chuckled to himself as he unlocked the door of his room and\nstood aside to let his frustrated guest enter.</p>\n<p class="indent">“You are disillusioned,” Ausable told him. “But take cheer, my young\nfriend. Presently you will see a paper, a quite important paper for\nwhich several men and women have risked their lives, come to me.\nSome day soon that paper may well affect the course of history. In that\nthought is drama, is there not?”</p>\n<p class="indent">As he spoke, Ausable closed the door behind him. Then he switched\non the light.</p>\n<p class="indent">And as the light came on, Fowler had his first authentic thrill of\nthe day. For halfway across the room, a small automatic pistol in his\nhand, stood a man.</p>\n<p class="indent">Ausable blinked a few times.</p>\n<p class="indent">“Max,” he wheezed, “you gave me quite a start. I thought you were\nin Berlin. What are you doing here in my room?”</p>\n<p class="indent">Max was slender, a little less than tall, with features that suggested\nslightly the crafty, pointed countenance of a fox. There was about him —\naside from the gun — nothing especially menacing.</p>\n<p class="indent">“The report,” he murmured. “The report that is being brought to\nyou tonight concerning some new missiles. I thought I would take it\nfrom you. It will be safer in my hands than in yours.”</p>\n<p class="indent">Ausable moved to an armchair and sat down heavily. “I’m going to\nraise the devil with the management this time, and you can bet on it,”\nhe said grimly. “This is the second time in a month that somebody has\ngot into my room through that nuisance of a balcony!” Fowler’s eyes\nwent to the single window of the room. It was an ordinary window,\nagainst which now the night was pressing blackly.</p>\n<p class="indent">“Balcony?” Max said, with a rising inflection. “No, a passkey. I did\nnot know about the balcony. It might have saved me some trouble\nhad I known.”</p>\n<p class="indent">“It’s not my balcony,” Ausable said with extreme irritation. “It belongs\nto the next apartment.” He glanced explanatorily at Fowler. “You see,”\nhe said, “this room used to be part of a large unit, and the next room —\nthrough that door there — used to be the living room. It had the balcony,\nwhich extends under my window now. You can get onto it from the\nempty room two doors down — and somebody did, last month. The\nmanagement promised to block it off. But they haven’t.”</p>\n<p class="indent">Max glanced at Fowler, who was standing stiffly not far from Ausable,\nand waved the gun with a commanding gesture. “Please sit down,” he\nsaid. “We have a wait of half an hour, I think.”</p>\n<p class="indent">“Thirty-one minutes,” Ausable said moodily. “The appointment was\nfor twelve-thirty. I wish I knew how you learned about the report, Max.”</p>\n<p class="indent">The little spy smiled evilly. “And we wish we knew how your people\ngot the report. But no harm has been done. I will get it back tonight.\nWhat is that? Who is at the door?”</p>\n<p class="indent">Fowler jumped at the sudden knocking at the door. Ausable just\nsmiled. “That will be the police,” he said. “I thought that such an\nimportant paper as the one we are waiting for should have a little\nextra protection. I told them to check on me to make sure everything\nwas alright.”</p>\n<p>Max bit his lip nervously. The knocking was repeated.</p>\n<p class="indent">“What will you do now, Max?” Ausable asked. “If I do not answer the\ndoor, they will enter anyway. The door is unlocked. And they will not\nhesitate to shoot.”</p>\n<p class="indent">Max’s face was black with anger as he backed swiftly towards the\nwindow. He swung a leg over the sill. “Send them away!” he warned. “I\nwill wait on the balcony. Send them away or I’ll shoot and take my\nchances!”</p>\n<p>The knocking at the door became louder and a voice was raised.\n“Mr Ausable! Mr Ausable!”</p>\n<p class="indent">Keeping his body twisted so that his gun still covered the fat man\nand his guest, the man at the window grasped the frame with his free\nhand to support himself. Then he swung his other leg up and over the\nwindow-sill.</p>\n<p class="indent">The doorknob turned. Swiftly Max pushed with his left hand to free\nhimself from the sill and drop to the balcony. And then, as he dropped,\nhe screamed once, shrilly.</p>\n<p class="indent">The door opened and a waiter stood there with a tray, a bottle and\ntwo glasses. “Here is the drink you ordered for when you returned,” he\nsaid, and set the tray on the table, deftly uncorked the bottle, and left\nthe room.</p>\n<p>White-faced, Fowler stared after him. “But...” he stammered, “the\npolice...”</p>\n<p>“There were no police.” Ausable sighed. “Only Henry, whom I was\nexpecting.”</p>\n<p>“But won’t that man out on the balcony...?” Fowler began.</p>\n<p class="indent">“No,” said Ausable, “he won’t return. You see, my young friend,\nthere is no balcony.”\n		  ROBERT ARTHUR</p>', 'text-passage', 24),
(10, '\r\n<p>Indian thrill seekers are rushing into adventure sports full throttle. Mountain biking, kayaking on\r\nthe Beas river, hot air ballooning in Jaipur and Delhi, camel safari in Jaisalmer…these are just a\r\nfew of the exciting activities to offer. According to Alok Bajpai, CEO, The Explorers, an\r\norganization that specializes in catering to adventure and nature travel needs, the rising\r\npopularity of adventure tourism is a direct result of satellite television beaming in exciting\r\nactivities into people''s homes. "The Indian tendency to lie safe has changed over the last 10\r\nyears. When we started in 1995, adventure travel was considered something that only the\r\ntourists indulged in. Today, people have a higher disposable income to spend on such activities.\r\nBesides, adventure travel is now considered glamorous and every one wants to talk about their\r\nexperiences," he observes.</p>\r\n<p>Capt. Saurabh Mahajan of Colonel''s Camps & Tours, which offers adventure travel options in\r\nand around Rishikesh agrees: "Since we started in 2000, there has been a steady increase in the\r\nnumber of adventure seekers. The adventurous streak is not limited to one group of people.\r\nStudents, executives, housewives, senior citizens, everyone enjoys river rafting, rock climbing\r\netc. and several corporates send their executives to us for team building, adventure-oriented\r\nactivities." He attributes the escalating numbers to people getting adventure-oriented and\r\nschools realizing the importance of adventure sports and love for flora and fauna. Explains\r\npsychoanalyst Dr. Harish Shetty: "Apassion for adventure stems from the need to experiment, to\r\nenjoy the thrills of difficult encounters. Also, these activities are easily available for the youth\r\ntoday. Earlier, those who would go to the clubs and play games, now engage in adventure\r\nsports."\r\n</p>', 'text-passage', 25);

-- --------------------------------------------------------

--
-- Table structure for table `crossword_configuration`
--

CREATE TABLE IF NOT EXISTS `crossword_configuration` (
  `crossword_id` int(10) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL,
  `clue` varchar(2000) NOT NULL,
  `question_id` int(10) NOT NULL,
  PRIMARY KEY (`crossword_id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `crossword_configuration`
--

INSERT INTO `crossword_configuration` (`crossword_id`, `word`, `clue`, `question_id`) VALUES
(10, 'gullible', 'Easily tricked', 41),
(11, 'innocent', 'Without experience or malicious intent', 41),
(12, 'naive', 'Lacking sophistication/simple', 41),
(13, 'humble', 'Conscious of one''s failings', 41),
(14, 'creative', 'Imagninative or inventive', 41),
(15, 'melodious', 'pleasing to the ear', 41),
(16, 'fawning', 'to show flattery', 41),
(17, 'timid', 'shy/not bold', 41),
(18, 'stupid', 'lacking intelligence', 41),
(19, 'deduce', 'to infer by logical reasoning.', 46),
(20, 'detective', 'a person who investigates crime and gathers information.', 46),
(21, 'spy', '(military) a secret agent hired by a state to obtain information about its enemies or by a business to obtain industrial secrets from competitors.', 46),
(22, 'mystery', 'something that is secret and unknown.', 46),
(23, 'victim', 'someone who is harmed or suffers some loss.', 46),
(24, 'clue', 'a fact or object that helps to solve mysteries.', 46),
(25, 'witness', 'someone who saw or can give a firsthand account of something.', 46),
(26, 'motive', 'an inner drive that causes a person to do something or act in a certain way.', 46),
(27, 'evidence', 'something , such as a witness statement or object that is used as proof in a crime.', 46),
(28, 'suspect', 'a person who is suspected of a crime.', 46),
(29, 'espionage', 'the systematic use of spies to get military or political secrets.', 46),
(30, 'alibi', 'an excuse that an accused person uses to show that he/she was somewhere else than at the scene of the crime.', 46),
(31, 'sleuth', 'another name of a detective.', 46),
(32, 'crime', 'an act commited in violation of law.', 46),
(33, 'hunch', 'a guess or feeling not based on known facts.', 46);

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE IF NOT EXISTS `exercise` (
  `exercise_id` int(5) NOT NULL AUTO_INCREMENT,
  `exercise_title` varchar(2000) NOT NULL,
  `exercise_instruction` text,
  `exercise_type` varchar(2000) DEFAULT NULL,
  `activity_id` int(5) NOT NULL,
  PRIMARY KEY (`exercise_id`),
  KEY `activity_id` (`activity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`exercise_id`, `exercise_title`, `exercise_instruction`, `exercise_type`, `activity_id`) VALUES
(1, 'Convert Passive Voice to Active Voice', 'Select the desired tense.\nThe sentence displayed is in Passive voice.\nNow, rearrange the given words below to construct the corresponding Active voice of the given sentence.\nClick on "Hints" to view  hints.\nClick on "Submit" to check whether the Active voice is properly constructed.\nClick on "Next" to view the next sentence.', NULL, 3),
(3, 'Convert Active Voice to Passive Voice', 'Select the desired tense.\nThe sentence displayed is in Active voice.\nNow, rearrange the given words below to construct the corresponding Passive voice of the given sentence.\nClick on "Hints" to view  hints.\nClick on "Submit" to check whether the Passive voice is properly constructed.\nClick on "Next" to view the next sentence.', NULL, 3),
(4, 'Tense Conversion', 'Select the desired tense.\nAccording to the selected tense, the sentence will be displayed below.\nNow select the tense to which the sentence needs to be converted.\nDrag and Drop the appropriate form of the verb to complete this sentence.\nClick on "Hint" for view hints.\nClick on "Submit" to check whether selected form of the verb is correct.\nClick on "Next" to view the next sentence.', NULL, 4),
(8, 'An Exemplary Boss', NULL, 'story_sentence_ordering', 2),
(17, 'Ball in the living room', 'According to the question, drag and place the "Ball" at the appropriate position in the given picture of the living room.', NULL, 1),
(18, 'Lionel', '', 'story_sentence_ordering', 2),
(20, 'The Frog and the Nightingale.', NULL, 'story_sentence_ordering', 2),
(21, 'Direct to Indirect Speech Conversion', '1)Punctuate given direct speech sentence.\n2) Convert the punctuated sentence into its appropriate indirect speech form.', NULL, 5),
(22, 'Transformation_of_Sentences', 'You Have to select the two sentence types. One to convert and another to be converted into.\r\nRead the sentence of the selected type and rearrange the given words to construct correct Sentence.\r\nClick on ''Hint'' for help.Click on "Submit" to check whether submitted answer is correctly constructed.\r\nClick on "Next" to view next sentence.', 'drag and drop', 4),
(24, 'The midnight visitor.', NULL, NULL, 2),
(25, 'Adventure Sports', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ex_sent_temp_assoc`
--

CREATE TABLE IF NOT EXISTS `ex_sent_temp_assoc` (
  `Ex_Sent_Temp_Assoc` int(10) NOT NULL AUTO_INCREMENT,
  `exercise_id` int(10) NOT NULL,
  `sentence_template_id` int(10) NOT NULL,
  PRIMARY KEY (`Ex_Sent_Temp_Assoc`),
  KEY `exercise_id` (`exercise_id`,`sentence_template_id`),
  KEY `sentence_template_id` (`sentence_template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ex_sent_temp_assoc`
--

INSERT INTO `ex_sent_temp_assoc` (`Ex_Sent_Temp_Assoc`, `exercise_id`, `sentence_template_id`) VALUES
(4, 1, 1),
(2, 3, 1),
(3, 4, 1),
(1, 22, 2);

-- --------------------------------------------------------

--
-- Table structure for table `helping_verbs`
--

CREATE TABLE IF NOT EXISTS `helping_verbs` (
  `helping_verb_id` int(10) NOT NULL AUTO_INCREMENT,
  `helping_verb_word` varchar(50) NOT NULL,
  `helping_verb_category` varchar(50) NOT NULL,
  `helping_verb_indirect_form` varchar(50) DEFAULT NULL,
  `helping_verb_desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`helping_verb_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `helping_verbs`
--

INSERT INTO `helping_verbs` (`helping_verb_id`, `helping_verb_word`, `helping_verb_category`, `helping_verb_indirect_form`, `helping_verb_desc`) VALUES
(1, 'may', 'modal_verb', 'might', 'possibility'),
(2, 'may', 'modal_verb', 'might', 'permission'),
(3, 'may', 'modal_verb', 'might', 'request'),
(4, 'may', 'modal_verb', 'might', 'suggestion'),
(5, 'must', 'modal_verb', 'had to', 'obligation'),
(6, 'must', 'modal_verb', 'had to', 'conclusion'),
(7, 'might', 'modal_verb', 'might', 'possibility'),
(8, 'should', 'modal_verb', 'should', 'obligation'),
(9, 'should', 'modal_verb', 'should', 'conclusion'),
(10, 'could', 'modal_verb', 'could', 'request'),
(11, 'could', 'modal_verb', 'could', 'possibility'),
(12, 'would', 'modal_verb', 'would', 'request'),
(13, 'will', 'modal_verb', 'would', NULL),
(14, 'shall', 'modal_verb', 'should', NULL),
(15, 'can', 'modal_verb', 'could', 'possibility'),
(16, 'can', 'modal_verb', 'could', 'permission'),
(17, 'can', 'modal_verb', 'could', 'request'),
(18, 'can', 'modal_verb', 'could', 'suggestion'),
(19, 'is', 'Auxiliary_verb', NULL, 'interrogative_pronoun'),
(20, 'am', 'Auxiliary_verb', NULL, 'interrogative_pronoun'),
(21, 'are', 'Auxiliary_verb', NULL, 'interrogative_pronoun'),
(22, 'have', 'Auxiliary_verb', NULL, 'interrogative_adjective'),
(23, 'has', 'Auxiliary_verb', NULL, 'interrogative_adjective'),
(24, 'had', 'Auxiliary_verb', NULL, 'interrogative_adjective'),
(25, 'did', 'Auxiliary_verb', NULL, 'interrogative_adjective'),
(26, 'was', 'Auxiliary_verb', NULL, 'interrogative_pronoun'),
(27, 'were', 'Auxiliary_verb', NULL, 'interrogative_pronoun'),
(28, 'be', 'Auxiliary_verb', NULL, NULL),
(29, 'does', 'Auxiliary_verb', NULL, NULL),
(30, 'do', 'Auxiliary_verb', NULL, NULL),
(31, 'did', 'Auxiliary_verb', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hint`
--

CREATE TABLE IF NOT EXISTS `hint` (
  `hint_id` int(5) NOT NULL AUTO_INCREMENT,
  `hint_name` varchar(2000) NOT NULL,
  `hint_text` text,
  `hint_explanation` text,
  `rule_id` int(5) DEFAULT NULL,
  `exercise_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`hint_id`),
  KEY `exercise_id` (`exercise_id`),
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `hint`
--

INSERT INTO `hint` (`hint_id`, `hint_name`, `hint_text`, `hint_explanation`, `rule_id`, `exercise_id`) VALUES
(1, 'Hint 1', ' In passive voice, the positions of ‘Subject’ and ‘Object’ are interchanged.', NULL, NULL, 3),
(2, 'Hint 2', 'In passive voice, Past Participle (3rd form of Verb) is always used as ‘Main verb’.', NULL, NULL, 3),
(3, 'Hint 3', 'In passive voice, ‘Helping Verb’ (if present) precedes the ‘Main Verb’, and depends on ‘Subject’ and tense.', NULL, NULL, 3),
(4, 'Hint 4', 'In passive voice, most of the times, the word “by” is used before ‘Subject’.', NULL, NULL, 3),
(5, 'Hint 1', 'In active voice, the positions of ‘Subject’ and ‘Object’ are interchanged.', NULL, NULL, 1),
(6, 'Hint 2', 'In active voice, ‘Helping Verb’ (if present) precedes the ‘Main Verb’, and depends on ‘Subject’ and tense.', NULL, NULL, 1),
(7, 'Simple Present Tense', 'Base form is used in Simple Present Tense.', NULL, NULL, NULL),
(8, 'Present Continuous Tense', 'Present participle form of verb is used in Present Continuous Tense.', NULL, NULL, NULL),
(9, 'Simple Past Tense', 'Past form of the verb is used in Simple Past Tense.', NULL, NULL, NULL),
(10, 'Past Continuous Tense', 'Present participle form of verb is used in Past Continuous Tense.', NULL, NULL, NULL),
(11, 'Present Perfect Tense', 'Past Participle form of verb is used in Present Perfect Tense.', NULL, NULL, NULL),
(12, 'Past Perfect Tense', 'Past Participle form of verb is used in Past Perfect Tense.', NULL, NULL, NULL),
(13, 'Simple Future Tense', 'Base form of verb is used in Simple Future Tense.', NULL, NULL, NULL),
(14, 'Future Perfect Tense', 'Past Participle form of verb is used in Future Perfect Tense.', NULL, NULL, NULL),
(15, 'Affirmative to Negative', 'convert affirmative to negative', NULL, NULL, 22),
(16, 'Affirmative to Negative', 'Convert Affirmative to Negative', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images_exercise`
--

CREATE TABLE IF NOT EXISTS `images_exercise` (
  `image_exercise_id` int(5) NOT NULL AUTO_INCREMENT,
  `image_id` int(5) NOT NULL,
  `exercise_id` int(5) NOT NULL,
  `image_sequence_no` int(5) DEFAULT NULL,
  PRIMARY KEY (`image_exercise_id`),
  KEY `exercise_id` (`exercise_id`),
  KEY `image_id` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `images_exercise`
--

INSERT INTO `images_exercise` (`image_exercise_id`, `image_id`, `exercise_id`, `image_sequence_no`) VALUES
(46, 59, 17, -1),
(47, 60, 17, -2);

-- --------------------------------------------------------

--
-- Table structure for table `images_repository`
--

CREATE TABLE IF NOT EXISTS `images_repository` (
  `image_id` int(5) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(2000) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `images_repository`
--

INSERT INTO `images_repository` (`image_id`, `image_path`) VALUES
(39, '../../images/prepositionActivityImages/img/on.png'),
(40, '../../images/prepositionActivityImages/img/below.jpg'),
(41, '../../images/prepositionActivityImages/img/Ball_is_above_the_table.png'),
(42, '../../images/prepositionActivityImages/img/Ball_is_below_the_table.png'),
(43, '../../images/prepositionActivityImages/img/Ball_is_between_two_cylinders.png'),
(44, '../../images/prepositionActivityImages/img/Ball_is_on_the_table.png'),
(45, '../../images/prepositionActivityImages/img/Ball_is_under_the_table.png'),
(47, 'PictureBasedActivity/activities/Ball in the living room/fixedPict.jpg'),
(48, 'PictureBasedActivity/activities/Ball in the living room/movingPict.jpg'),
(49, 'PictureBasedActivity/activities//fixedPict.jpg'),
(50, 'PictureBasedActivity/activities//movingPict.jpg'),
(51, 'PictureBasedActivity/activities/Ball in the living room/fixedPict.jpg'),
(52, 'PictureBasedActivity/activities/Ball in the living room/movingPict.jpg'),
(53, 'PictureBasedActivity/activities/Ball in the living room/fixedPict.jpg'),
(54, 'PictureBasedActivity/activities/Ball in the living room/movingPict.jpg'),
(55, 'PictureBasedActivity/activities/Ball in the living room/fixedPict.jpg'),
(56, 'PictureBasedActivity/activities/Ball in the living room/movingPict.jpg'),
(57, 'PictureBasedActivity/activities/Ball in the living room/fixedPict.jpg'),
(58, 'PictureBasedActivity/activities/Ball in the living room/movingPict.jpg'),
(59, 'PictureBasedActivity/activities/Ball in the living room/fixedPict.jpg'),
(60, 'PictureBasedActivity/activities/Ball in the living room/movingPict.jpg'),
(61, 'PictureBasedActivity/activities/test/fixedPict.jpg'),
(62, 'PictureBasedActivity/activities/test/movingPict.jpg'),
(63, 'PictureBasedActivity/activities/test/fixedPict.jpg'),
(64, 'PictureBasedActivity/activities/test/movingPict.jpg'),
(65, 'PictureBasedActivity/activities/test/fixedPict.jpg'),
(66, 'PictureBasedActivity/activities/test/movingPict.jpg'),
(67, 'PictureBasedActivity/activities/test2/fixedPict.jpg'),
(68, 'PictureBasedActivity/activities/test2/movingPict.jpg'),
(69, 'PictureBasedActivity/activities/test/fixedPict.jpg'),
(70, 'PictureBasedActivity/activities/test/movingPict.jpg'),
(71, 'PictureBasedActivity/activities/test/fixedPict.jpg'),
(72, 'PictureBasedActivity/activities/test/movingPict.jpg'),
(73, 'PictureBasedActivity/activities/asda/fixedPict.jpg'),
(74, 'PictureBasedActivity/activities/asda/movingPict.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mcq_configuration`
--

CREATE TABLE IF NOT EXISTS `mcq_configuration` (
  `mcq_configuration_id` int(10) NOT NULL AUTO_INCREMENT,
  `question_id` int(10) NOT NULL,
  `sentence_id` int(10) NOT NULL,
  `correct_answer` tinyint(1) NOT NULL,
  PRIMARY KEY (`mcq_configuration_id`),
  KEY `question_id` (`question_id`),
  KEY `sentence_id` (`sentence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `mcq_configuration`
--

INSERT INTO `mcq_configuration` (`mcq_configuration_id`, `question_id`, `sentence_id`, `correct_answer`) VALUES
(10, 42, 87, 0),
(11, 42, 88, 0),
(12, 42, 89, 1),
(13, 42, 90, 0),
(14, 43, 91, 1),
(15, 43, 92, 0),
(16, 43, 93, 0),
(17, 43, 94, 0),
(18, 44, 95, 0),
(19, 44, 96, 0),
(20, 44, 97, 1),
(21, 44, 98, 0),
(22, 45, 99, 1),
(23, 45, 100, 0),
(24, 45, 101, 0),
(25, 45, 102, 0);

-- --------------------------------------------------------

--
-- Table structure for table `miscellaneous_words`
--

CREATE TABLE IF NOT EXISTS `miscellaneous_words` (
  `misc_word_id` int(10) NOT NULL AUTO_INCREMENT,
  `misc_word_name` varchar(50) NOT NULL,
  `misc_word_type` varchar(50) NOT NULL,
  `misc_word_desc` varchar(2000) DEFAULT NULL,
  `misc_word_category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`misc_word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `multimedia_exercise`
--

CREATE TABLE IF NOT EXISTS `multimedia_exercise` (
  `multimedia_exercise_id` int(5) NOT NULL AUTO_INCREMENT,
  `multimedia_id` int(5) NOT NULL,
  `exercise_id` int(5) NOT NULL,
  `multimedia_sequence_no` int(5) DEFAULT NULL,
  PRIMARY KEY (`multimedia_exercise_id`),
  KEY `exercise_id` (`exercise_id`),
  KEY `multimedia_id` (`multimedia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `multimedia_repository`
--

CREATE TABLE IF NOT EXISTS `multimedia_repository` (
  `multimedia_id` int(5) NOT NULL AUTO_INCREMENT,
  `multimedia_path` varchar(2000) NOT NULL,
  PRIMARY KEY (`multimedia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `noun`
--

CREATE TABLE IF NOT EXISTS `noun` (
  `noun_id` int(20) NOT NULL AUTO_INCREMENT,
  `noun_name` varchar(50) DEFAULT NULL,
  `noun_type` varchar(50) DEFAULT NULL,
  `noun_number` varchar(50) DEFAULT NULL,
  `noun_person` varchar(50) DEFAULT NULL,
  `noun_gender` varchar(50) DEFAULT NULL,
  `noun_case` varchar(50) DEFAULT NULL,
  `plural` varchar(100) NOT NULL,
  `rule_singular_plural` int(11) NOT NULL,
  `countable` tinyint(1) NOT NULL DEFAULT '1',
  `noun_phoneme` varchar(50) NOT NULL DEFAULT 'consonant',
  PRIMARY KEY (`noun_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=203 ;

--
-- Dumping data for table `noun`
--

INSERT INTO `noun` (`noun_id`, `noun_name`, `noun_type`, `noun_number`, `noun_person`, `noun_gender`, `noun_case`, `plural`, `rule_singular_plural`, `countable`, `noun_phoneme`) VALUES
(1, 'John', 'proper', 'singular', 'third', 'male', 'person', 'Jhon', 9, 1, 'consonant'),
(2, 'banana', 'common', 'singular', NULL, 'neutral', 'fruit', 'bananas', 1, 1, 'consonant'),
(3, 'James', 'proper', 'singular', 'third', 'male', 'person', 'James', 9, 1, 'consonant'),
(4, 'apple', 'common', 'singular', NULL, 'neutral', 'fruit', 'apples', 1, 1, 'vowel'),
(5, 'chair', 'common', 'singular', 'third', 'neutral', 'thing', 'chairs', 1, 1, 'consonant'),
(6, 'ball', 'common', 'singular', 'third', 'neutral', 'thing', 'balls', 1, 1, 'consonant'),
(7, 'table', 'common', 'singular', 'third', 'neutral', 'thing', 'tables', 1, 1, 'consonant'),
(8, 'sofa', 'common', 'singular', 'third', 'neutral', 'thing', 'sofas', 1, 1, 'consonant'),
(9, 'clock', 'common', 'singular', 'third', 'neutral', 'thing', 'clocks', 1, 1, 'consonant'),
(10, 'lamp', 'common', 'singular', 'third', 'neutral', 'thing', 'lamps', 1, 1, 'consonant'),
(11, 'book', 'common', 'singular', 'third', 'neutral', 'thing', 'books', 1, 1, 'consonant'),
(12, 'flower vase', 'common', 'singular', 'third', 'neutral', 'thing', 'flower vases', 1, 1, 'consonant'),
(13, 'cat', 'common', 'singular', NULL, 'neutral', 'animal', 'cats', 1, 1, 'consonant'),
(14, 'mat', 'common', 'singular', 'third', 'neutral', 'thing', 'mats', 1, 1, 'consonant'),
(15, 'table', 'common', 'singular', 'third', 'neutral', 'thing', 'tables', 1, 1, 'consonant'),
(16, 'wall painting', 'common', 'singular', 'third', 'neutral', 'thing', 'wall paintings', 1, 1, 'consonant'),
(17, 'family portrait', 'common', 'singular', 'third', 'neutral', 'thing', 'family portraits', 1, 1, 'consonant'),
(18, 'cookie', 'common', 'singular', NULL, 'neutral', 'food', 'cookies', 1, 1, 'consonant'),
(19, 'cake', 'common', 'singular', NULL, 'neutral', 'food', 'cakes', 1, 1, 'consonant'),
(20, 'tea', 'common', 'singular', NULL, 'neutral', 'drinkable', 'tea', 10, 1, 'consonant'),
(21, 'milk', 'common', 'singular', NULL, 'neutral', 'drinkable', 'milk', 10, 1, 'consonant'),
(22, 'coffee', 'common', 'singular', NULL, 'neutral', 'drinkable', 'coffee', 10, 1, 'consonant'),
(23, 'ice-cream', 'common', 'singular', NULL, 'neutral', 'food', 'icecream', 10, 1, 'vowel'),
(24, 'chocolate', 'common', 'singular', NULL, 'neutral', 'food', 'chocolate', 10, 1, 'consonant'),
(25, 'cricket', 'proper', 'singular', NULL, 'neutral', 'playable', 'cricket', 9, 1, 'consonant'),
(26, 'football', 'proper', 'singular', NULL, 'neutral', 'playable', 'football', 9, 1, 'consonant'),
(27, 'flute', 'common', 'singular', NULL, 'neutral', 'playable', 'flutes', 1, 1, 'consonant'),
(28, 'tennis', 'proper', 'singular', NULL, 'neutral', 'playable', 'tennis', 9, 1, 'consonant'),
(29, 'carrom', 'proper', 'singular', NULL, 'neutral', 'playable', 'carrom', 9, 1, 'consonant'),
(30, 'hockey', 'proper', 'singular', NULL, 'neutral', 'playable', 'hockey', 9, 1, 'consonant'),
(31, 'guitar', 'common', 'singular', NULL, 'neutral', 'playable', 'guitars', 1, 1, 'consonant'),
(32, 'tree', 'common', 'singular', 'third', 'neutral', 'thing', 'trees', 1, 1, 'consonant'),
(33, 'ladder', 'common', 'singular', 'third', 'neutral', 'thing', 'ladders', 1, 1, 'consonant'),
(34, 'cupboard', 'common', 'singular', 'third', 'neutral', 'thing', 'cupboards', 1, 1, 'consonant'),
(35, 'shelf', 'common', 'singular', 'third', 'neutral', 'thing', 'shelves', 4, 1, 'consonant'),
(36, 'car', 'common', 'singular', 'third', 'neutral', 'thing', 'cars', 1, 1, 'consonant'),
(37, 'scooter', 'common', 'singular', 'third', 'neutral', 'thing', 'scooters', 1, 1, 'consonant'),
(38, 'bike', 'common', 'singular', 'third', 'neutral', 'thing', 'bikes', 1, 1, 'consonant'),
(40, 'juice', 'common', 'singular', NULL, 'neutral', 'drinkable', 'juice', 10, 1, 'consonant'),
(41, 'Naina', 'proper', 'singular', 'third', 'female', 'person', 'Naina', 9, 1, 'consonant'),
(42, 'Ritu', 'proper', 'singular', 'third', 'female', 'person', 'Ritu', 9, 1, 'consonant'),
(43, 'Priya', 'proper', 'singular', 'third', 'female', 'person', 'Priya', 9, 1, 'consonant'),
(44, 'Emily', 'proper', 'singular', 'third', 'female', 'person', 'Emily', 9, 1, 'consonant'),
(45, 'Allena', 'proper', 'singular', 'third', 'female', 'person', 'Allena', 9, 1, 'consonant'),
(46, 'Madhu', 'proper', 'singular', 'third', 'female', 'person', 'Madhu', 9, 1, 'consonant'),
(47, 'Robert', 'proper', 'singular', 'third', 'male', 'person', 'Robert', 9, 1, 'consonant'),
(48, 'Alex', 'proper', 'singular', 'third', 'male', 'person', 'Alex', 9, 1, 'consonant'),
(49, 'Allen', 'proper', 'singular', 'third', 'male', 'person', 'Allen', 9, 1, 'consonant'),
(50, 'Ricky', 'proper', 'singular', 'third', 'male', 'person', 'Ricky', 9, 1, 'consonant'),
(51, 'Joe', 'proper', 'singular', 'third', 'male', 'person', 'Joe', 9, 1, 'consonant'),
(52, 'David', 'proper', 'singular', 'third', 'male', 'person', 'David', 9, 1, 'consonant'),
(53, 'Mary', 'proper', 'singular', 'third', 'female', 'person', 'Mary', 9, 1, 'consonant'),
(54, 'parrot', 'common', 'singular', 'third', 'Male', 'bird', 'parrots', 1, 1, 'consonant'),
(55, 'crow', 'common', 'singular', 'third', 'Male', 'bird', 'crows', 1, 1, 'consonant'),
(56, 'sparrow', 'common', 'singular', 'third', 'Female', 'bird', 'sparrows', 1, 1, 'consonant'),
(57, 'cuckoo', 'common', 'singular', 'third', 'Female', 'bird', 'cuckoos', 1, 1, 'consonant'),
(58, 'eagle', 'common', 'singular', 'third', 'Female', 'bird', 'eagles', 1, 1, 'vowel'),
(59, 'chair', 'common', 'singular', 'third', 'neutral', 'furniture', 'chairs', 1, 1, 'consonant'),
(60, 'table', 'common', 'singular', 'third', 'neutral', 'furniture', 'tables', 1, 1, 'consonant'),
(61, 'bench', 'common', 'singular', 'third', 'neutral', 'furniture', 'benches', 2, 1, 'consonant'),
(62, 'house', 'common', 'singular', 'third', 'neutral', 'purchasable', 'houses', 1, 1, 'consonant'),
(63, 'house', 'common', 'singular', 'third', 'neutral', 'paintable', 'houses', 1, 1, 'consonant'),
(64, 'car', 'common', 'singular', 'third', 'neutral', 'purchasable', 'cars', 1, 1, 'consonant'),
(65, 'car', 'common', 'singular', 'third', 'neutral', 'paintable', 'cars', 1, 1, 'consonant'),
(66, 'car', 'common', 'singular', 'third', 'neutral', 'drivable', 'cars', 1, 1, 'consonant'),
(67, 'computer', 'common', 'singular', 'third', 'neutral', 'buyable', 'computers', 1, 1, 'consonant'),
(68, 'computer', 'common', 'singular', 'third', 'neutral', 'purchasable', 'computers', 1, 1, 'consonant'),
(69, 'letter', 'common', 'singular', 'third', 'neutral', 'writable', 'letters', 1, 1, 'consonant'),
(70, 'letter', 'common', 'singular', 'third', 'neutral', 'receivable', 'letters', 1, 1, 'consonant'),
(71, 'article', 'common', 'singular', 'third', 'neutral', 'readable', 'articles', 1, 1, 'vowel'),
(72, 'article', 'common', 'singular', 'third', 'neutral', 'writable', 'articles', 1, 1, 'vowel'),
(73, 'newspaper', 'common', 'singular', 'third', 'neutral', 'readable', 'newspapers', 1, 1, 'consonant'),
(74, 'magazine', 'common', 'singular', 'third', 'neutral', 'readable', 'newspapers', 1, 1, 'consonant'),
(75, 'comic', 'common', 'singular', 'third', 'neutral', 'readable', 'comics', 1, 1, 'consonant'),
(76, 'story', 'common', 'singular', 'third', 'neutral', 'listenable', 'stories', 3, 1, 'consonant'),
(77, 'Delhi', 'proper', 'singular', 'third', 'neutral', 'place', 'Delhi', 9, 1, 'consonant'),
(78, 'London', 'proper', 'singular', 'third', 'neutral', 'place', 'London', 9, 1, 'consonant'),
(79, 'Kolkata', 'proper', 'singular', 'third', 'neutral', 'place', 'Kolkata', 9, 1, 'consonant'),
(80, 'UK', 'proper', 'singular', 'third', 'neutral', 'place', 'UK', 9, 1, 'consonant'),
(81, 'Mumbai', 'proper', 'singular', 'third', 'neutral', 'place', 'Mumbai', 9, 1, 'consonant'),
(82, 'english', 'proper', 'singular', 'third', 'neutral', 'language', 'English', 9, 1, 'consonant'),
(83, 'french', 'proper', 'singular', 'third', 'neutral', 'language', 'French', 9, 1, 'consonant'),
(84, 'tamil', 'proper', 'singular', 'third', 'neutral', 'language', 'Tamil', 9, 1, 'consonant'),
(85, 'spanish', 'proper', 'singular', 'third', 'neutral', 'language', 'Spanish', 9, 1, 'consonant'),
(86, 'marathi', 'proper', 'singular', 'third', 'neutral', 'language', 'Marathi', 9, 1, 'consonant'),
(87, 'hindi', 'proper', 'singular', 'third', 'neutral', 'language', 'Hindi', 9, 1, 'consonant'),
(88, 'dance', 'common', 'singular', 'third', 'neutral', 'learnable', 'dance', 10, 1, 'consonant'),
(89, 'Dance', 'common', 'singular', 'third', 'neutral', 'skill', 'dance', 10, 1, 'consonant'),
(90, 'music', 'common', 'singular', 'third', 'neutral', 'skill', 'music', 10, 1, 'consonant'),
(91, 'music', 'common', 'singular', 'third', 'neutral', 'listenable', 'music', 10, 1, 'consonant'),
(92, 'swimming', 'common', 'singular', 'third', 'neutral', 'skill', 'swimming', 10, 1, 'consonant'),
(93, 'martial arts', 'common', 'singular', 'third', 'neutral', 'skill', 'swimming', 10, 1, 'consonant'),
(94, 'lecture', 'common', 'singular', 'third', 'neutral', 'listenable', 'lectures', 1, 1, 'consonant'),
(95, 'cake', 'common', 'singular', 'third', 'neutral', 'baked_item', 'cakes', 1, 1, 'consonant'),
(96, 'cookie', 'common', 'singular', 'third', 'neutral', 'baked_item', 'cookies', 1, 1, 'consonant'),
(97, 'hill', 'common', 'singular', 'third', 'neutral', 'climbable', 'hills', 1, 1, 'consonant'),
(98, 'mountain', 'common', 'singular', 'third', 'neutral', 'climbable', 'mountains', 1, 1, 'consonant'),
(99, 'shelf', 'common', 'singular', 'third', 'neutral', 'cleanable', 'shelves', 4, 1, 'consonant'),
(100, 'cupboard', 'common', 'singular', 'third', 'neutral', 'cleanable', 'cupboards', 1, 1, 'consonant'),
(101, 'desk', 'common', 'singular', 'third', 'neutral', 'cleanable', 'desks', 1, 1, 'consonant'),
(102, 'room', 'common', 'singular', 'third', 'neutral', 'cleanable', 'rooms', 1, 1, 'consonant'),
(103, 'money', 'common', 'singular', 'third', 'neutral', 'borrowable', 'money', 10, 1, 'consonant'),
(104, 'pen', 'common', 'singular', 'third', 'neutral', 'buyable', 'pens', 1, 1, 'consonant'),
(105, 'pen', 'common', 'singular', 'third', 'neutral', 'borrowable', 'pens', 1, 1, 'consonant'),
(106, 'pencil', 'common', 'singular', 'third', 'neutral', 'buyable', 'pencils', 1, 1, 'consonant'),
(107, 'pencil', 'common', 'singular', 'third', 'neutral', 'borrowable', 'pencils', 1, 1, 'consonant'),
(109, 'man', 'common', 'singular', 'third', 'neutral', 'person', 'men', 7, 1, 'consonant'),
(112, 'woman', 'common', 'singular', 'third', 'female', 'person', 'women', 7, 1, 'consonant'),
(113, 'girl', 'common', 'singular', 'third', 'female', 'person', 'girls', 1, 1, 'consonant'),
(114, 'boy', 'common', 'singular', 'third', 'male', 'person', 'boys', 1, 1, 'consonant'),
(117, 'teacher', 'common', 'singular', 'third', 'neutral', 'person', 'teachers', 1, 1, 'consonant'),
(118, 'student', 'common', 'singular', 'third', 'neutral', 'person', 'students', 1, 1, 'consonant'),
(119, 'child', 'common', 'singular', 'third', 'neutral', 'person', 'children', 5, 1, 'consonant'),
(120, 'mail', 'common', 'singular', 'third', 'neutral', 'receivable', 'mails', 1, 1, 'consonant'),
(121, 'telegram', 'common', 'singular', 'third', 'neutral', 'receivable', 'telegrams', 1, 1, 'consonant'),
(122, 'note', 'common', 'singular', 'third', 'neutral', 'receivable', 'notes', 1, 1, 'consonant'),
(123, 'warning', 'common', 'singular', 'third', 'neutral', '', 'warnings', 1, 1, 'consonant'),
(126, 'tiger', 'common', 'singular', 'third', 'male', 'wild_animal', 'tigers', 1, 1, 'consonant'),
(127, 'leopard', 'common', 'singular', 'third', 'male', 'wild_animal', 'leopards', 1, 1, 'consonant'),
(128, 'bear', 'common', 'singular', 'third', 'male', 'wild_animal', 'bears', 1, 1, 'consonant'),
(129, 'lion', 'common', 'singular', 'third', 'male', 'wild_animal', 'lions', 1, 1, 'consonant'),
(130, 'snake', 'common', 'singular', 'third', 'male', 'wild_animal', 'snakes', 1, 1, 'consonant'),
(131, 'food', 'common', 'singular', 'third', 'neutral', 'wastable', 'food', 10, 1, 'consonant'),
(132, 'money', 'common', 'singular', 'third', 'neutral', 'wastable', 'money', 10, 1, 'consonant'),
(133, 'time', 'common', 'singular', 'third', 'neutral', 'wastable', 'time', 10, 1, 'consonant'),
(134, 'water', 'common', 'singular', 'third', 'neutral', 'wastable', 'water', 10, 1, 'consonant'),
(135, 'morning', 'common', 'singular', 'third', 'neutral', 'time', 'mornings', 1, 1, 'consonant'),
(136, 'afternoon', 'common', 'singular', 'third', 'neutral', 'time', 'afternoons', 1, 0, 'vowel'),
(137, 'evening', 'common', 'singular', 'third', 'neutral', 'time', 'evenings', 1, 1, 'vowel'),
(138, 'night', 'common', 'singular', 'third', 'neutral', 'time', 'nights', 1, 1, 'consonant'),
(139, 'today', 'common', 'singular', 'third', 'neutral', 'time', 'today', 10, 1, 'consonant'),
(140, 'tomorrow', 'common', 'singular', 'third', 'neutral', 'time', 'tomorrow', 10, 1, 'consonant'),
(141, 'income', 'common', 'singular', 'third', 'neutral', 'contributed', 'income', 10, 1, 'vowel'),
(142, 'trust', 'common', 'singular', 'third', 'neutral', 'contributed', 'trust', 10, 1, 'consonant'),
(143, 'project', 'common', 'singular', 'third', 'neutral', 'contributed', 'projects', 1, 1, 'consonant'),
(144, 'blind', 'common', 'singular', 'third', 'neutral', 'contributed', 'blind', 10, 1, 'consonant'),
(145, 'society', 'common', 'singular', 'third', 'neutral', 'contributed', 'societies', 1, 1, 'consonant'),
(147, 'nation', 'common', 'singular', 'third', 'neutral', 'contributed', 'nations', 1, 1, 'consonant'),
(148, 'school', 'common', 'singular', 'third', 'neutral', 'contributed', 'schools', 1, 1, 'consonant'),
(150, 'youth', 'common', 'singular', 'third', 'neutral', 'action', 'youth', 10, 0, 'consonant'),
(151, 'poor', 'common', 'singular', 'third', 'neutral', 'action', 'poor', 10, 0, 'consonant'),
(152, 'uneducated', 'common', 'singular', 'third', 'neutral', 'action', 'uneducated', 10, 1, 'vowel'),
(153, 'award', 'common', 'singular', 'third', 'neutral', 'achievable', 'awards', 1, 1, 'vowel'),
(154, 'prize', 'common', 'singular', 'third', 'neutral', 'achievable', 'prizes', 1, 1, 'consonant'),
(155, 'match', 'common', 'singular', 'third', 'neutral', 'achievable', 'matches', 2, 1, 'consonant'),
(156, 'scholarship', 'common', 'singular', 'third', 'neutral', 'achievable', 'scholarships', 1, 1, 'consonant'),
(157, 'competition', 'common', 'singular', 'third', 'neutral', 'achievable', 'competitions', 1, 1, 'consonant'),
(158, 'test', 'common', 'singular', 'third', 'neutral', 'failed', 'tests', 1, 1, 'consonant'),
(159, 'exam', 'common', 'singular', 'third', 'neutral', 'failed', 'exams', 1, 1, 'vowel'),
(160, 'house', 'common', 'singular', 'third', 'neutral', 'lost', 'houses', 1, 1, 'consonant'),
(161, 'money', 'common', 'singular', 'third', 'neutral', 'lost', 'money', 10, 1, 'consonant'),
(162, 'car', 'common', 'singular', 'third', 'neutral', 'lost', 'cars', 1, 1, 'consonant'),
(163, 'contract', 'common', 'singular', 'third', 'neutral', 'lost', 'contracts', 1, 1, 'consonant'),
(164, 'song', 'common', 'singular', 'third', 'neutral', 'singable', 'songs', 1, 1, 'consonant'),
(165, 'carol', 'common', 'singular', 'third', 'neutral', 'singable', 'carols', 1, 1, 'consonant'),
(166, 'Michael', 'proper', 'singular', 'third', 'male', 'person', 'Michael', 9, 1, 'consonant'),
(167, 'Charles', 'proper', 'singular', 'third', 'male', 'person', 'Charles', 9, 1, 'consonant'),
(168, 'Richard', 'proper', 'singular', 'third', 'male', 'person', 'Richard', 9, 1, 'consonant'),
(169, 'Christopher', 'proper', 'singular', 'third', 'male', 'person', 'Christopher', 9, 1, 'consonant'),
(170, 'William', 'proper', 'singular', 'third', 'male', 'person', 'William', 9, 1, 'consonant'),
(171, 'George', 'proper', 'singular', 'third', 'male', 'person', 'George', 9, 1, 'consonant'),
(172, 'Daniel', 'proper', 'singular', 'third', 'male', 'person', 'Daniel', 9, 1, 'consonant'),
(173, 'Paul', 'proper', 'singular', 'third', 'male', 'person', 'Paul', 9, 1, 'consonant'),
(174, 'Joseph', 'proper', 'singular', 'third', 'male', 'person', 'Joseph', 9, 1, 'consonant'),
(175, 'Thomas', 'proper', 'singular', 'third', 'male', 'person', 'Thomas', 9, 1, 'consonant'),
(176, 'Ronald', 'proper', 'singular', 'third', 'male', 'person', 'Ronald', 9, 1, 'consonant'),
(177, 'Steven', 'proper', 'singular', 'third', 'male', 'person', 'Steve', 9, 1, 'consonant'),
(178, 'Mark', 'proper', 'singular', 'third', 'male', 'person', 'Mark', 9, 1, 'consonant'),
(179, 'Donald', 'proper', 'singular', 'third', 'male', 'person', 'Donald', 9, 1, 'consonant'),
(180, 'Anthony', 'proper', 'singular', 'third', 'male', 'person', 'Anthony', 9, 1, 'consonant'),
(181, 'Kevin', 'proper', 'singular', 'third', 'male', 'person', 'Kevin', 9, 1, 'consonant'),
(182, 'Edward', 'proper', 'singular', 'third', 'male', 'person', 'Edward', 9, 1, 'consonant'),
(183, 'Jason', 'proper', 'singular', 'third', 'male', 'person', 'Jason', 9, 1, 'consonant'),
(184, 'Jennifer', 'proper', 'singular', 'third', 'female', 'person', 'Jennifer', 9, 1, 'consonant'),
(185, 'Maria', 'proper', 'singular', 'third', 'female', 'person', 'Maria', 9, 1, 'consonant'),
(186, 'Linda', 'proper', 'singular', 'third', 'female', 'person', 'Linda', 9, 1, 'consonant'),
(187, 'Barbara', 'proper', 'singular', 'third', 'female', 'person', 'Barbara', 9, 1, 'consonant'),
(188, 'Elizabeth', 'proper', 'singular', 'third', 'female', 'person', 'Elizabeth', 9, 1, 'consonant'),
(189, 'Lisa', 'proper', 'singular', 'third', 'female', 'person', 'Lisa', 9, 1, 'consonant'),
(190, 'Nancy', 'proper', 'singular', 'third', 'female', 'person', 'Nancy', 9, 1, 'consonant'),
(191, 'Susan', 'proper', 'singular', 'third', 'female', 'person', 'Susan', 9, 1, 'consonant'),
(192, 'Margaret', 'proper', 'singular', 'third', 'female', 'person', 'Margaret', 9, 1, 'consonant'),
(193, 'Helen', 'proper', 'singular', 'third', 'female', 'person', 'Helen', 9, 1, 'consonant'),
(194, 'Sandra', 'proper', 'singular', 'third', 'female', 'person', 'Sandra', 9, 1, 'consonant'),
(195, 'Donna', 'proper', 'singular', 'third', 'female', 'person', 'Donna', 9, 1, 'consonant'),
(196, 'Carol', 'proper', 'singular', 'third', 'female', 'person', 'Carol', 9, 1, 'consonant'),
(197, 'Betty', 'proper', 'singular', 'third', 'female', 'person', 'Betty', 9, 1, 'consonant'),
(198, 'Sharon', 'proper', 'singular', 'third', 'female', 'person', 'Sharon', 9, 1, 'consonant'),
(199, 'Michelle', 'proper', 'singular', 'third', 'female', 'person', 'Michelle', 9, 1, 'consonant'),
(200, 'Laura', 'proper', 'singular', 'third', 'female', 'person', 'Laura', 9, 1, 'consonant'),
(201, 'Sarah', 'proper', 'singular', 'third', 'female', 'person', 'Sarah', 9, 1, 'consonant'),
(202, 'Kimberly', 'proper', 'singular', 'third', 'female', 'person', 'Kimberly', 9, 1, 'consonant');

-- --------------------------------------------------------

--
-- Table structure for table `noun_adjective`
--

CREATE TABLE IF NOT EXISTS `noun_adjective` (
  `id` int(11) NOT NULL,
  `noun_id` int(11) NOT NULL,
  `adjective_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noun_adjective`
--

INSERT INTO `noun_adjective` (`id`, `noun_id`, `adjective_id`) VALUES
(1, 4, 197),
(2, 4, 199),
(3, 4, 208),
(4, 2, 199),
(5, 5, 1),
(6, 5, 2),
(7, 5, 3),
(8, 5, 4),
(9, 5, 5),
(10, 5, 6),
(11, 5, 7),
(12, 5, 8),
(13, 5, 10),
(14, 6, 1),
(15, 6, 185),
(16, 6, 213),
(17, 18, 197),
(18, 19, 197),
(19, 19, 198),
(20, 19, 208),
(21, 21, 208),
(22, 22, 198),
(23, 40, 199),
(24, 40, 204),
(25, 40, 208),
(26, 36, 190),
(27, 36, 2),
(28, 36, 93),
(29, 36, 67),
(30, 6, 4),
(31, 6, 10),
(32, 6, 184),
(33, 37, 190),
(34, 37, 93),
(35, 37, 67),
(36, 38, 67),
(37, 38, 190),
(38, 38, 93),
(39, 34, 184),
(40, 35, 190),
(41, 35, 184),
(42, 8, 190),
(43, 8, 4),
(44, 8, 10),
(45, 13, 6),
(46, 13, 149),
(47, 13, 99),
(48, 13, 20),
(49, 27, 184),
(50, 27, 190),
(51, 27, 4),
(52, 31, 190),
(53, 104, 1),
(55, 106, 184),
(57, 34, 190),
(58, 23, 197),
(59, 23, 208),
(60, 23, 154),
(61, 24, 197),
(62, 24, 198),
(63, 54, 237),
(64, 54, 3),
(65, 55, 6),
(66, 55, 237),
(67, 126, 10),
(68, 126, 194),
(69, 126, 190),
(70, 109, 35),
(71, 109, 38),
(72, 109, 45),
(73, 109, 59),
(75, 109, 61),
(76, 109, 76),
(77, 109, 92),
(78, 109, 100),
(79, 109, 102),
(80, 109, 112),
(81, 109, 113),
(82, 109, 121),
(83, 109, 120),
(84, 109, 124),
(85, 109, 190),
(86, 109, 193),
(87, 109, 194),
(88, 112, 35),
(89, 112, 38),
(90, 112, 45),
(91, 112, 59),
(92, 112, 61),
(93, 112, 76),
(94, 112, 92),
(95, 112, 100),
(96, 112, 102),
(97, 112, 112),
(98, 112, 113),
(99, 112, 121),
(100, 112, 120),
(101, 112, 124),
(102, 112, 190),
(103, 112, 193),
(104, 112, 194),
(105, 113, 35),
(106, 113, 38),
(107, 113, 45),
(108, 113, 59),
(109, 113, 61),
(110, 113, 76),
(111, 113, 92),
(112, 113, 100),
(113, 113, 102),
(114, 113, 112),
(115, 113, 113),
(116, 113, 121),
(117, 113, 120),
(118, 113, 124),
(119, 113, 194),
(120, 114, 35),
(121, 114, 38),
(122, 114, 45),
(123, 114, 59),
(124, 114, 61),
(125, 114, 76),
(126, 114, 92),
(127, 114, 100),
(128, 114, 102),
(129, 114, 112),
(130, 114, 113),
(131, 114, 121),
(132, 114, 120),
(133, 114, 124),
(134, 114, 194),
(135, 118, 35),
(136, 118, 38),
(137, 118, 45),
(138, 118, 59),
(139, 118, 61),
(140, 118, 76),
(141, 118, 92),
(142, 118, 100),
(143, 118, 102),
(144, 118, 112),
(145, 118, 113),
(146, 118, 121),
(147, 118, 120),
(148, 118, 124),
(149, 118, 194),
(150, 119, 35),
(151, 119, 38),
(152, 119, 45),
(153, 119, 59),
(154, 119, 61),
(155, 119, 76),
(156, 119, 92),
(157, 119, 100),
(158, 119, 102),
(159, 119, 112),
(160, 119, 113),
(161, 119, 121),
(162, 119, 120),
(163, 119, 124),
(164, 119, 194),
(165, 119, 35),
(166, 119, 38),
(167, 119, 45),
(168, 119, 59),
(169, 119, 61),
(170, 119, 76),
(171, 119, 92),
(172, 119, 100),
(173, 119, 102),
(174, 119, 112),
(175, 119, 113),
(176, 119, 121),
(177, 119, 120),
(178, 119, 124),
(179, 119, 194),
(180, 117, 35),
(181, 117, 38),
(182, 117, 45),
(183, 117, 59),
(184, 117, 61),
(185, 117, 76),
(186, 117, 92),
(187, 117, 100),
(188, 117, 102),
(189, 117, 112),
(190, 117, 113),
(191, 117, 121),
(192, 117, 120),
(193, 117, 124),
(194, 117, 193),
(195, 117, 190),
(196, 117, 194),
(197, 9, 190),
(198, 9, 28),
(199, 9, 29),
(200, 9, 30),
(201, 9, 31),
(202, 11, 190),
(203, 32, 10),
(204, 33, 21),
(205, 70, 25),
(206, 70, 10),
(207, 71, 10),
(208, 70, 75),
(209, 98, 10),
(210, 131, 197),
(211, 131, 199),
(212, 131, 205),
(213, 154, 10),
(214, 155, 10),
(215, 158, 10);

-- --------------------------------------------------------

--
-- Table structure for table `noun_verb`
--

CREATE TABLE IF NOT EXISTS `noun_verb` (
  `Noun_verb_id` int(11) NOT NULL AUTO_INCREMENT,
  `Noun_verb_nounid` int(11) NOT NULL,
  `Noun_verb_verbid` int(11) NOT NULL,
  PRIMARY KEY (`Noun_verb_id`),
  KEY `Noun_verb_verbid` (`Noun_verb_verbid`),
  KEY `Noun_verb_nounid` (`Noun_verb_nounid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `noun_verb`
--

INSERT INTO `noun_verb` (`Noun_verb_id`, `Noun_verb_nounid`, `Noun_verb_verbid`) VALUES
(1, 4, 5),
(2, 5, 431),
(3, 2, 5),
(4, 6, 1),
(5, 18, 680),
(6, 19, 680),
(7, 20, 4),
(8, 21, 4),
(9, 22, 4),
(10, 40, 4),
(11, 36, 3),
(12, 37, 3),
(13, 38, 3),
(14, 34, 692),
(15, 35, 692),
(16, 25, 808),
(17, 26, 808),
(18, 27, 808),
(19, 28, 808),
(20, 29, 808),
(21, 30, 808),
(22, 31, 808),
(23, 8, 431),
(24, 18, 431),
(29, 27, 808),
(34, 132, 2),
(35, 134, 4),
(36, 19, 5),
(37, 23, 5),
(38, 24, 5),
(39, 13, 6),
(40, 54, 6),
(41, 55, 6),
(42, 56, 6),
(43, 57, 6),
(44, 58, 6),
(45, 126, 6),
(46, 109, 7),
(47, 113, 7),
(48, 114, 7),
(49, 119, 7),
(50, 4, 8),
(51, 132, 8),
(52, 131, 8),
(53, 106, 8),
(54, 106, 8),
(55, 120, 8),
(56, 104, 10),
(57, 106, 10),
(58, 106, 10),
(59, 6, 10),
(60, 11, 10),
(61, 13, 10),
(62, 5, 11),
(63, 6, 11),
(64, 7, 11),
(65, 8, 11),
(66, 9, 11),
(67, 16, 11),
(68, 131, 11),
(69, 164, 12),
(70, 132, 13),
(71, 118, 14),
(72, 114, 14),
(73, 113, 14),
(74, 112, 14),
(75, 132, 15),
(76, 155, 15),
(77, 154, 15),
(78, 158, 16),
(79, 159, 16),
(80, 120, 16),
(81, 122, 16),
(82, 32, 17),
(83, 33, 17),
(84, 98, 17),
(85, 131, 18),
(86, 13, 20),
(87, 113, 20),
(88, 2, 21),
(89, 4, 21),
(90, 5, 21),
(91, 6, 21),
(92, 7, 21),
(93, 8, 21),
(94, 9, 21),
(95, 16, 21),
(96, 119, 24),
(97, 117, 24),
(98, 113, 24),
(99, 114, 24),
(100, 109, 24),
(101, 70, 16),
(102, 71, 16),
(103, 82, 23),
(104, 83, 23),
(105, 84, 23),
(106, 85, 23),
(107, 86, 23),
(108, 87, 23);

-- --------------------------------------------------------

--
-- Table structure for table `picture_configuration`
--

CREATE TABLE IF NOT EXISTS `picture_configuration` (
  `configuration_id` int(5) NOT NULL AUTO_INCREMENT,
  `x1` int(5) NOT NULL,
  `y1` int(5) NOT NULL,
  `x2` int(5) NOT NULL,
  `y2` int(5) NOT NULL,
  `configuration_desc` text,
  `exercise_id` int(5) NOT NULL,
  `subject_id` int(5) NOT NULL,
  `object_id` int(5) NOT NULL,
  `question_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`configuration_id`),
  KEY `exercise_id` (`exercise_id`),
  KEY `subject_id` (`subject_id`),
  KEY `object_id` (`object_id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `picture_configuration`
--

INSERT INTO `picture_configuration` (`configuration_id`, `x1`, `y1`, `x2`, `y2`, `configuration_desc`, `exercise_id`, `subject_id`, `object_id`, `question_id`) VALUES
(28, 290, 325, 577, 380, 'the ball is on the table', 17, 6, 15, 28),
(29, 640, 335, 760, 421, 'the ball is on the chair', 17, 6, 5, 29),
(30, 73, 315, 240, 425, 'the ball is on the sofa', 17, 6, 8, 30),
(31, 370, 445, 507, 570, 'the Ball is below  the table', 17, 6, 15, 31),
(32, 220, -3, 394, 165, 'the ball is between the wall painting and the clock', 17, 6, 16, 33),
(33, 420, 2, 591, 181, 'the ball is between the family portrait and the clock', 17, 6, 17, 34);

-- --------------------------------------------------------

--
-- Table structure for table `preposition`
--

CREATE TABLE IF NOT EXISTS `preposition` (
  `preposition_id` int(5) NOT NULL AUTO_INCREMENT,
  `preposition_word` varchar(2000) NOT NULL,
  `preposition_desc` text,
  `preposition_image_id` int(5) DEFAULT NULL,
  `preposition_category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`preposition_id`),
  KEY `preposition_image_id` (`preposition_image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `preposition`
--

INSERT INTO `preposition` (`preposition_id`, `preposition_word`, `preposition_desc`, `preposition_image_id`, `preposition_category`) VALUES
(1, 'on', 'Used to express a surface of something.', 44, NULL),
(2, 'at', 'Used to indicate a place.\r\nUsed to indicate an activity.', NULL, NULL),
(3, 'in', 'Used to indicate a location or place:', NULL, NULL),
(4, 'above', ' If A is above B, A is higher than or before B, but not touching B.', 41, NULL),
(5, 'across', 'from one side to the other side', NULL, NULL),
(6, 'after', 'one follows the other', NULL, NULL),
(7, 'against', 'directed towards sth.', NULL, NULL),
(8, 'along', 'in a line; from one point to another', NULL, NULL),
(9, 'among', 'in a group', NULL, NULL),
(10, 'around', 'in a circular way', NULL, NULL),
(11, 'behind', 'at the back of', NULL, NULL),
(12, 'below', 'Lower than any object.', 42, NULL),
(13, 'beside', 'next to', NULL, NULL),
(14, 'between', 'If x is between y and z, y is on one side of x and z is on the other side.', 43, NULL),
(15, 'by', 'near', NULL, NULL),
(16, 'close to', 'When two things are close, they are near each other', NULL, NULL),
(17, 'down', 'from high to low', NULL, NULL),
(18, 'from', 'the place where it starts', NULL, NULL),
(19, 'in front of', 'the part that is in the direction it faces', NULL, NULL),
(20, 'inside', 'opposite of outside', NULL, NULL),
(21, 'into', 'entering sth.', NULL, NULL),
(22, 'near', 'close to', NULL, NULL),
(23, 'next to', 'beside', NULL, NULL),
(24, 'off', 'away from sth.', NULL, NULL),
(25, 'onto', 'moving to a place', NULL, NULL),
(26, 'opposite', 'on the other side', NULL, NULL),
(27, 'out of', 'leaving sth.', NULL, NULL),
(28, 'outside', 'opposite of inside', NULL, NULL),
(29, 'over', 'above sth./sb.', NULL, NULL),
(30, 'past', 'going near sth./sb.', NULL, NULL),
(32, 'round', 'in a circle', NULL, NULL),
(33, 'through', 'going from one point to the other point', NULL, NULL),
(34, 'to', 'towards sth./sb.', NULL, NULL),
(35, 'towards', 'in the direction of sth.', NULL, NULL),
(37, 'up', 'from low to high', NULL, NULL),
(38, 'under', 'In the same place as another thing, but lower.', 45, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preposition_config_assoc`
--

CREATE TABLE IF NOT EXISTS `preposition_config_assoc` (
  `preposition_config_assoc_id` int(10) NOT NULL AUTO_INCREMENT,
  `preposition_id` int(10) NOT NULL,
  `configuration_id` int(10) NOT NULL,
  PRIMARY KEY (`preposition_config_assoc_id`),
  KEY `preposition_id` (`preposition_id`),
  KEY `configuration_id` (`configuration_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `preposition_config_assoc`
--

INSERT INTO `preposition_config_assoc` (`preposition_config_assoc_id`, `preposition_id`, `configuration_id`) VALUES
(1, 1, 28),
(2, 1, 29),
(3, 1, 30),
(4, 12, 31),
(5, 14, 32),
(6, 14, 33);

-- --------------------------------------------------------

--
-- Table structure for table `preposition_noun`
--

CREATE TABLE IF NOT EXISTS `preposition_noun` (
  `id` int(11) NOT NULL,
  `preposition_id` int(11) NOT NULL,
  `noun_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preposition_noun`
--

INSERT INTO `preposition_noun` (`id`, `preposition_id`, `noun_id`) VALUES
(1, 3, 77),
(2, 3, 78),
(3, 3, 79),
(4, 3, 80),
(5, 3, 81),
(6, 22, 77),
(7, 22, 78),
(8, 22, 79),
(9, 22, 80),
(10, 22, 81);

-- --------------------------------------------------------

--
-- Table structure for table `pronoun`
--

CREATE TABLE IF NOT EXISTS `pronoun` (
  `pronoun_id` int(10) NOT NULL AUTO_INCREMENT,
  `pronoun_name` varchar(50) NOT NULL,
  `pronoun_object` varchar(50) NOT NULL,
  `possesive_pronoun` varchar(50) DEFAULT NULL,
  `reflexive_pronoun` varchar(50) DEFAULT NULL,
  `adjective_possesive_pronoun` varchar(50) DEFAULT NULL,
  `pronoun_person` varchar(50) NOT NULL,
  `pronoun_gender` varchar(50) NOT NULL,
  `pronoun_number` varchar(50) NOT NULL,
  PRIMARY KEY (`pronoun_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `pronoun`
--

INSERT INTO `pronoun` (`pronoun_id`, `pronoun_name`, `pronoun_object`, `possesive_pronoun`, `reflexive_pronoun`, `adjective_possesive_pronoun`, `pronoun_person`, `pronoun_gender`, `pronoun_number`) VALUES
(1, 'I', 'me', 'mine', 'myself', 'my', 'first', 'female', 'singular'),
(2, 'I', 'me', 'mine', 'myself', 'my', 'first', 'male', 'singular'),
(3, 'you', 'you', 'yours', 'yourself', 'your', 'second', 'female', 'singular'),
(4, 'you', 'you', 'yours', 'yourself', 'your', 'second', 'male', 'singular'),
(5, 'he', 'him', 'his', 'himself', 'his', 'third', 'male', 'singular'),
(6, 'she', 'her', 'hers', 'herself', 'her', 'third', 'female', 'singular'),
(7, 'it', 'it', 'its', 'itself', 'its', 'third', 'neutral', 'singular'),
(8, 'we', 'us', 'ours', 'ourself', 'our', 'second', 'neutral', 'pural'),
(9, 'they', 'them', 'theirs', 'themselves', 'their', 'third', 'neutral', 'pural');

-- --------------------------------------------------------

--
-- Table structure for table `punctuation`
--

CREATE TABLE IF NOT EXISTS `punctuation` (
  `punctuation_id` int(10) NOT NULL AUTO_INCREMENT,
  `punctuation_symbol` varchar(5) NOT NULL,
  `punctuation_type` varchar(50) DEFAULT NULL,
  `punctuation_desc` varchar(200) DEFAULT NULL,
  `sentence_type_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`punctuation_id`),
  KEY `sentence_type_id` (`sentence_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `punctuation`
--

INSERT INTO `punctuation` (`punctuation_id`, `punctuation_symbol`, `punctuation_type`, `punctuation_desc`, `sentence_type_id`) VALUES
(1, '.', 'period', 'use to end sentence', 2),
(2, ',', 'comma', 'used as seperator among the two continuous sentenc', NULL),
(3, ';', 'semicolon', 'used to narrow gap between two closely linked sent', NULL),
(4, ':', 'colon', 'used to introduce new title, example, list,or to s...	', NULL),
(5, '"', 'Quotation', 'used in pair to set quotation	', NULL),
(6, '''', 'Apostrophe', 'Used to show possession	', NULL),
(8, '!', 'Exclamation', 'Used to show emotion, emphasis, or surprise	', 1),
(9, '-', 'dashes', 'Used toindicate added emphasis, an interruption.', NULL),
(10, '...', 'Ellipses', 'Used to express hesitation, changes of mood, susp...	', NULL),
(11, '?', 'QuestionMark', 'use to ask question', 4),
(12, '!', 'Exclamation', 'Used to show emotion, emphasis, or surprise	', 3);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(5) NOT NULL AUTO_INCREMENT,
  `question_title` varchar(2000) DEFAULT NULL,
  `exercise_id` int(5) DEFAULT NULL,
  `question_type_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `exercise_id` (`exercise_id`),
  KEY `question_type_id` (`question_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `question_title`, `exercise_id`, `question_type_id`) VALUES
(22, NULL, 8, 1),
(25, NULL, 8, 3),
(28, 'Put the ball on the table.', 17, NULL),
(29, 'Put the ball on the chair.', 17, NULL),
(30, 'Put the ball on the sofa.', 17, NULL),
(31, 'Put the ball below the table.', 17, NULL),
(33, 'Place the ball between the wall painting and the clock.', 17, NULL),
(34, 'Place the ball between the family portrait and the clock.', 17, NULL),
(41, 'Crossword - Characteristics of the Nightingale', 20, 7),
(42, 'The frog croaked', 20, 8),
(43, 'The animals reacted to the frog''s song with', 20, 8),
(44, 'Lionel could not be saved as', 18, 8),
(45, 'One elderly gentleman was especially heart-broken because', 18, 8),
(46, 'The midnight visitor', 24, 7),
(47, 'The recent change in the attitude of Indians is that', 25, 3),
(48, 'This change is due to the fact that', 25, 3),
(49, 'The people interested in these sports are', 25, 3),
(50, 'To lie safe means', 25, 3),
(51, 'The phrase ''full throttle'' means', 25, 3);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE IF NOT EXISTS `question_type` (
  `question_type_id` int(5) NOT NULL AUTO_INCREMENT,
  `question_type_name` varchar(2000) NOT NULL,
  `question_type_instruction` text,
  PRIMARY KEY (`question_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type_name`, `question_type_instruction`) VALUES
(1, 'q_normal_sentence_ordering', 'Arrange the given jumbled sentences in order as per the passage.'),
(3, 'q_truefalse', 'For each sentence, check if the sentence is True.'),
(4, 'q_image_sentence_ordering', 'Look at the images and arrange sentences given below in order accordingly.'),
(5, 'q_simple_question', NULL),
(6, 'q_complex_question', NULL),
(7, 'q_crossword', 'Read the passage carefully. Complete the crossword with the help of given clues.'),
(8, 'q_mcq', 'Complete the sentences choosing an appropriate option.');

-- --------------------------------------------------------

--
-- Table structure for table `reporting_verb`
--

CREATE TABLE IF NOT EXISTS `reporting_verb` (
  `reporting_verb_id` int(10) NOT NULL AUTO_INCREMENT,
  `verb_id` int(10) NOT NULL,
  `sentence_mood` varchar(50) DEFAULT NULL,
  `sentence_type_id` int(10) NOT NULL,
  PRIMARY KEY (`reporting_verb_id`),
  KEY `verb_id` (`verb_id`),
  KEY `sentence_type_id` (`sentence_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `reporting_verb`
--

INSERT INTO `reporting_verb` (`reporting_verb_id`, `verb_id`, `sentence_mood`, `sentence_type_id`) VALUES
(1, 795, NULL, 3),
(2, 511, NULL, 2),
(3, 511, NULL, 3),
(4, 511, NULL, 4),
(5, 678, NULL, 4),
(6, 678, NULL, 3),
(7, 564, NULL, 2),
(8, 879, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `rule_id` int(5) NOT NULL AUTO_INCREMENT,
  `rule_data` text NOT NULL,
  `rule_explanation` text,
  `rule_example` text,
  `target_tense_id` int(5) DEFAULT NULL,
  `target_voice_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `target_voice_id` (`target_voice_id`),
  KEY `target_tense_id` (`target_tense_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`rule_id`, `rule_data`, `rule_explanation`, `rule_example`, `target_tense_id`, `target_voice_id`) VALUES
(1, 'Subject + infinitive + object', NULL, 'John sings a song.', 1, 1),
(2, 'Subject + to be (is, am, are) + present participle + object', NULL, 'Sheena is writing a letter', 2, 1),
(3, 'Subject + have/has been + present participle + object', NULL, 'She has finished the work', 3, 1),
(4, 'Subject + past participle + object', NULL, 'John played football.', 5, 1),
(5, 'Subject + was/were + present participle + object', NULL, 'He was driving a car.', 6, 1),
(6, 'Subject + had + past participle + object', NULL, 'They had completed the assignment.', 7, 1),
(7, 'Subject + will + infinitive + object', NULL, 'She will buy a car.', 9, 1),
(8, 'Subject + will + have + infinitive + object', NULL, 'You will have started the job.', 11, 1),
(9, 'Subject + am/is/are + past participle + by + object', NULL, 'A song is sung by John.', 1, 2),
(10, 'Subject + am/is/are being + past participle + by + object', NULL, 'A letter is being written by Sheena.', 2, 2),
(11, 'Subject + has been/have been + past participle + by + object', NULL, 'The work has been finished by her', 3, 2),
(12, 'Subject + was/were + past participle + by + object', NULL, 'Football was played by me', 5, 2),
(13, 'Subject + was/were being + past participle + by + object', NULL, 'A car was being driven by him.', 6, 2),
(14, 'Subject + had been + past participle + by + object', NULL, 'The assignment had been completed by them.', 7, 2),
(15, 'Subject + will be + past participle + by + object', NULL, 'A car will be bought by her.', 9, 2),
(16, 'Subject + will have been + past participle + by + object', NULL, 'The job will have been started by you.', 11, 2),
(17, 'Subject +always + verb + ext.', 'If there is always in an affirmative sentence, never will be used for ever/always in negative sentence and verb /adjective/adverb will be opposite meaning.', 'Affirmative:-He was always punctual.\r\nNegative:- He was never late.\r\n', NULL, NULL),
(18, 'Subject + auxiliary verb + always + verb/ adjective/ adverb + ext. Subject + auxiliary verb + never + opposite verb/ adjective/ adverb + ext.', 'If there is always in an affirmative sentence, never will be used for ever/always in negative sentence and verb /adjective/adverb will be opposite meaning.', 'Affirmative:-He was always punctual.\r\nNegative:- He was never late.\r\n', NULL, NULL),
(19, 'Subject + verb + too + adjective + to + verb + ext. Subject + verb + so + adjective + that + subject + can/ could + not + verb + ext.', 'If there is present tense before too, ‘can’ will be used after that and if there is past tense before too, ‘could’ will be used after that. Again when there is for + noun/ pronoun after too+ adjective, the noun/ pronoun after for will be the subject after that.', 'Affirmative:-He is too weak to walk.\r\nNegative:- He is so weak that he cannot walk.\r\n', NULL, NULL),
(20, 'Subject + verb + as + adjective + as + noun/ pronoun. Subject + auxiliary verb + not + verb + less + adjective + than + noun/ pronoun.', 'In order to change an affirmative sentence having an auxiliary verb with a verb/ adjective/ adverb into a negative sentence, we should add not after the auxiliary verb and use the opposite meaning of verb/ adjective/ adverb in negative sentence.', 'Affirmative:- I shall remember you.\r\nNegative:-I shall not forget you.', NULL, NULL),
(21, 'Subject + verb + ext. Subject + auxiliary verb to do + not + opposite verb + ext.', 'If there is no auxiliary verb in an affirmative sentence, to do verb will be used as auxiliary verb to make it a negative sentence. After to do verb not will be added and the opposite meaning of verb will used there. This to do verb will be according to the tense of the verb of affirmative sentence.', 'Affirmative:-She remembered me.\r\nNegative:-She did not forget me', NULL, NULL),
(22, 'Subject + must + verb + ext.Subject + cannot but + verb + ext. Subject + cannot help + verb-ing + ext\r\n', 'For making a negative sentence from an affirmative sentence having must, we have to use cannot but/cannot help for must. In this case, basic form of verb will be used after cannot but and present participle (verb-ing) will be used after cannot help.', 'Affirmative:- We must read attentively.\r\nNegative:-We cannot but read attentively.\r\nWe cannot help reading attentively.\r\n', NULL, NULL),
(23, 'Every + noun/ body/ one + verb + ext. There is no + noun/ body/ one + but + verb + ext.', 'To change an affirmative sentence having every + noun/ body/ one into a negative sentence, we can use there is no for every, then we have to put the word after every and next we should use but before verb+ ext.', 'Affirmative:-Everybody hates a liar.\r\nNegative:-There is no body but hates a liar.\r\n', NULL, NULL),
(24, 'As soon as + subject + verb (past), subject + verb(past) + ext. No sooner had + subject + verb(past participle) + than + subject + verb(past) + ext.', 'To change an affirmative sentence having as soon as with two clauses, no sooner had will be used for as soon as in negative sentence. than must be used between the two clauses.', 'Affirmative:-As soon as he came, the rain started.\r\nNegative:- No sooner had he come than the rain started.\r\n', NULL, NULL),
(25, 'Only + subject + verb + ext. None but + subject + verb + ext.', 'Here only is used before a person, but alone is used after the person word and auxiliary verb. For changing an affirmative sentence into a negative sentence where only is before a person or alone is after the person and auxiliary verb, we have to start the negative sentence with none but for only/alone.', 'Affirmative:- Only Allah can help us.\r\nNegative:-    None but Allah can help us.\r\n', NULL, NULL),
(26, 'Subject + auxiliary verb + alone + ext.\r\nNone but + subject + auxiliary verb + ext.', 'It will be applied when the subjective word is a person word i.e he/ she/ I/ you/ they/ we/ any proper noun.', 'Affirmative:- He was alone alive in the house.\r\nNegative:-None but he was alive in the house.\r\n', NULL, NULL),
(27, 'Only + subject + verb + ext. Nothing but + subject + verb + ext.', 'when only is used before an object/thing, nothing but will be put there to make a negative sentence from an affirmative sentence .', 'Affirmative:- Only the monsoon causes rain in our country. Negative:-    Nothing but the monsoon causes rain in our country.\r\n', NULL, NULL),
(28, 'Subject + verb + only + object + ext. Subject + verb + nothing but + object + ext.', 'nothing but is used in negative sentence for only when there is an object/thing after only in  affirmative sentence.', NULL, NULL, NULL),
(29, 'Subject + verb + only + number/age + ext. Subject + verb + not more / less than + number/age + ext.', 'when only is used before number/ age ,not more/less than will be used  in negative sentence for only in affirmative sentence.', 'Affirmative:- I am only 20.\r\nNegative:- I am not more/less than 20.\r\n', NULL, NULL),
(30, 'Subject + auxiliary verb + ext. auxiliary verb + n''t + subject + ext.?', 'If there is an auxiliary verb in the assertive sentence, n''t added with the auxiliary verb and be placed before the subject in the interrogative sentence', 'Assertive:-We shall play.\r\nInterrogative:-Shan''t we play?\r\n', NULL, NULL),
(31, 'Subject + auxiliary verb + not + ext. auxiliary verb + subject + ext?', 'If the assertive sentence is a negative sentence, the negative word will be deleted in interrogative sentence and then it will be started with only auxiliary verb.', 'Assertive:- We can not study attentively. Interrogative:-Cant we study attentively?', NULL, NULL),
(32, 'Subject + verb + ext. to do + nt + subject + verb + ext?', 'if there is no auxiliary verb in the assertive sentence/affirmative sentence, to make it an interrogative sentence to do verb will be used as an auxiliary verb there and nt will have to add after the to do verb and to do with nt will be placed before the subject in the interrogative sentence.', 'Assertive:- He reads a book. Interrogative:-Doesnt he read a book?', NULL, NULL),
(33, 'Subject + never + verb + ext. to do verb + subject + ever + verb + ext.?', '', 'Assertive:- I never drink tea. Interrogative:-Do I ever drink tea?\r\n', NULL, NULL),
(34, 'subject + auxiliary verb + verb + nothing + ext. auxiliary verb + subject + verb + anything + ext.?', '', 'Assertive:- There was nothing to do. Interrogative:-Was there anything to do?', NULL, NULL),
(35, 'everybody/ all/everyone + verb + ext. Who + to do verb + nt + verb + ext.?', '', 'Assertive:- Everybody hates a liar. Interrogative:-Who doesnt hate a liar? ', NULL, NULL),
(36, 'none/no one + auxiliary verb + ext. who + auxiliary verb + ext?. auxiliary verb + anyone + ext?.\r\n', NULL, 'Assertive:- None/No one can do this.\r\nInterrogative:-Who can do this? Can any one do this?\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sentence_ordering_configuration`
--

CREATE TABLE IF NOT EXISTS `sentence_ordering_configuration` (
  `sentence_order_configuration_id` int(10) NOT NULL AUTO_INCREMENT,
  `sentence_id` int(10) NOT NULL,
  `question_id` int(10) NOT NULL,
  `sequence_no` int(5) NOT NULL,
  PRIMARY KEY (`sentence_order_configuration_id`),
  KEY `question_id` (`question_id`),
  KEY `sentence_id` (`sentence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sentence_ordering_configuration`
--

INSERT INTO `sentence_ordering_configuration` (`sentence_order_configuration_id`, `sentence_id`, `question_id`, `sequence_no`) VALUES
(1, 34, 22, 1),
(2, 35, 22, 2),
(3, 36, 22, 3),
(4, 37, 22, 4),
(5, 38, 22, 5),
(6, 39, 22, 6),
(7, 40, 22, 7),
(8, 41, 22, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sentence_repository`
--

CREATE TABLE IF NOT EXISTS `sentence_repository` (
  `sentence_id` int(5) NOT NULL AUTO_INCREMENT,
  `sentence_data` text NOT NULL,
  `sentence_type_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`sentence_id`),
  KEY `sentence_type_id` (`sentence_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `sentence_repository`
--

INSERT INTO `sentence_repository` (`sentence_id`, `sentence_data`, `sentence_type_id`) VALUES
(34, 'Scientists were working for 12-18 hours at Thumba.', NULL),
(35, 'Scientists had heavy work pressure but they were loyal.', NULL),
(36, 'A scientist approached the boss for permission to leave at 5.30 pm to take\nhis children to the exhibition.', NULL),
(37, 'The boss consented.', NULL),
(38, 'The scientist became so engrossed in his work that he continued working\ntill 8.15 pm.', NULL),
(39, 'Suddenly, he remembered his promise to his children.', NULL),
(40, 'The scientist rushed home anticipating the disappointment of his children.', NULL),
(41, 'To his surprise, he learnt that his boss had kept his appointment for him.', NULL),
(42, 'Scientist were working 12-18 hrs a day.', NULL),
(43, 'The scientist took children to exhibition.', NULL),
(44, 'Boss did not grant him permission.', NULL),
(45, 'Boss was APJ Abdul Kalam', NULL),
(56, 'Lionel could not be saved as he had lost too much blood . ', NULL),
(57, 'One elderly gentleman was especially heart-broken because  he could no longer enjoy Lionel''s company. ', NULL),
(58, 'The school children were devastated because Lionel waited for the bus along with them.', NULL),
(59, 'Nola received many condolences from friends and strangers. She felt touched. ', NULL),
(60, 'The word closest in meaning to condolence is sympathy .', NULL),
(61, 'The school master ran his school in a garden . ', NULL),
(62, 'The school master can be best described as  knowledgeable and funny. ', NULL),
(63, '"The day''s disaster" refers to  a natural calamity. ', NULL),
(64, 'The only skill where he could be defeated was arguing .', NULL),
(65, '"...they gazed,and still the wonder grew.",this line suggests that the schoolmaster was respected.', NULL),
(66, 'A frog croaked all night in a bog, in an unpleasant voice.', NULL),
(67, 'One night a nightingale began to sing in a melodious voice.', NULL),
(68, 'All the creatures in the bog cheered and clapped at her beautiful song. So the frog could sing unrivalled in the bog once more.', NULL),
(69, 'Soon the nightingale became famous, and creatures from miles around came to \r\nhear her sing.', NULL),
(70, 'The next night the frog introduced himself.', NULL),
(71, 'He offered to train the nightingale, so that she could sing even more beautifully.', NULL),
(72, 'The frog charged an admission fee, and earned a lot of money from these \r\nconcerts.', NULL),
(73, 'But the frog made the nightingale rehearse continuously in the rain.', NULL),
(74, 'As a result, her voice lost its beauty, and the other creatures stopped coming to \r\nhear her sing.', NULL),
(75, 'Finally the nightingale burst a vein and died.', NULL),
(76, 'So the frog could sing unrivalled in the bog once more.', NULL),
(77, 'The frog croaked on the Sumac tree.', NULL),
(78, 'The animals reacted to the frog''s song with hatred.', NULL),
(79, 'The frog claimed to be the king of the Bog.', NULL),
(80, '''I don''t think the song''s divine, But - oh - well - at least it''s mine.'' These lines by the nightingale show that she is haughty.', NULL),
(81, '''So the frog and the nightingale journeyed up and down the scale''. This line refers to the high and low notes of a musical scale.', NULL),
(82, 'The frog says that the nightingale was ''far too prone to influence''. This statement is \r\nironical because it was the frog who was prone to influence ', NULL),
(83, 'The nightingale became morose because the ticket office had crashed.', NULL),
(84, 'In the line ''You must aim for better billing'', billing refers to clearing the debts of the nightingale.', NULL),
(85, 'The ''joy was both sweet and bitter''. It was sweet for the frog because he was earning a lot of money.', NULL),
(86, 'The ''joy was both sweet and bitter''. It was bitter for the frog because  he was jealous of the nightingale.', NULL),
(87, 'in Bingle bog.', NULL),
(88, 'on the Sumac tree.', NULL),
(89, 'at the foot of the Sumac tree.', NULL),
(90, 'at the foot of Bingle bog.', NULL),
(91, 'hatred', NULL),
(92, 'adoration', NULL),
(93, 'indifference', NULL),
(94, 'suggestions for improvement.', NULL),
(95, 'he was too weak to haul his poor broken body inside', NULL),
(96, 'he was bloodied and beaten', NULL),
(97, 'he had lost too much blood', NULL),
(98, 'he was in bad shape', NULL),
(99, 'he could no longer enjoy Lionel''s company', NULL),
(100, 'he could no longer feed Lionel''s a slice of bread or a biscuit', NULL),
(101, 'he could not longer spend an hour every week with him', NULL),
(102, 'two weeks later he was dead', NULL),
(105, 'they are showing an inclination towards adventure tourism', NULL),
(106, 'schools have realized the importance of adventure sports', NULL),
(107, 'corporates are using adventure sports for team building', NULL),
(108, 'they enjoy mountain biking, kayaking, hot air, camel safari', NULL),
(109, 'they have more free time', NULL),
(110, 'they have a higher disposable income', NULL),
(111, 'satellite television has exposed the people to adventure sports', NULL),
(112, 'they are looking for glamour', NULL),
(113, 'tourists', NULL),
(114, 'students', NULL),
(115, 'adventure seekers', NULL),
(116, 'everyone', NULL),
(117, 'to lie in a safe place', NULL),
(118, 'to safely tell a lie', NULL),
(119, 'to be cautious', NULL),
(120, 'to remain safe', NULL),
(121, 'in a big way', NULL),
(122, 'with complete power', NULL),
(123, 'in full gear', NULL),
(124, 'whole-heartedly', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sentence_template`
--

CREATE TABLE IF NOT EXISTS `sentence_template` (
  `sentence_template_id` int(5) NOT NULL AUTO_INCREMENT,
  `sentence_template_path` varchar(2000) NOT NULL,
  `sentence_type_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`sentence_template_id`),
  KEY `sentence_type_id` (`sentence_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sentence_template`
--

INSERT INTO `sentence_template` (`sentence_template_id`, `sentence_template_path`, `sentence_type_id`) VALUES
(1, '/activitydata/voiceActivityData/xmlsources/SentenceTemplate.xml', NULL),
(2, '/xmlsources/transformationofsentences.xml', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sentence_type`
--

CREATE TABLE IF NOT EXISTS `sentence_type` (
  `sentence_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `sentence_type_name` varchar(50) NOT NULL,
  `sentence_type_desc` varchar(2000) DEFAULT NULL,
  `sentence_type_example` varchar(2000) DEFAULT NULL,
  `sentence_structure` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`sentence_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sentence_type`
--

INSERT INTO `sentence_type` (`sentence_type_id`, `sentence_type_name`, `sentence_type_desc`, `sentence_type_example`, `sentence_structure`) VALUES
(1, 'Exclamation ', '', 'Apple! How nice!', ''),
(2, 'declarative', NULL, 'My friends are here', NULL),
(3, 'imperative', NULL, 'Can you handle this?', NULL),
(4, 'interrogative', NULL, 'Where are you going?', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `singularplural_rule`
--

CREATE TABLE IF NOT EXISTS `singularplural_rule` (
  `rule_id` int(11) NOT NULL,
  `rule_data` varchar(700) NOT NULL,
  `rule_example` varchar(700) NOT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `singularplural_rule`
--

INSERT INTO `singularplural_rule` (`rule_id`, `rule_data`, `rule_example`) VALUES
(1, 'The Plural of nouns is generally formed by adding -s to the singular', 'boy - boys'),
(2, 'Nouns ending in -s, -sh, -ch,-o or -x form the plural by adding -es to the singular', 'class - classes'),
(3, 'Nouns ending in -y, preceded by a consonant,form their plural by changing -y into -i and adding -es', 'baby - babies'),
(4, 'The following nouns ending in -f or -fe form their plural by changing -for -fe into v and adding -es,', 'thief - thieves'),
(5, 'There are a few nouns that form their plural by adding -en to the singular', 'ox - oxen'),
(6, 'Some nouns have the singular and the plural alike', 'sheep - sheep'),
(7, 'A few nouns form their plural by changing the inside vowel of the singular', 'man - men'),
(8, 'A Compound Noun generally forms its plural by adding -s to the principal word', 'Commander-in-chief : Commanders-in-chief\r\n'),
(9, 'Proper nouns do not have plurals', 'Hyderabad'),
(10, 'Uncountable nouns do not have a plural form', 'milk');

-- --------------------------------------------------------

--
-- Table structure for table `tense`
--

CREATE TABLE IF NOT EXISTS `tense` (
  `tense_id` int(5) NOT NULL AUTO_INCREMENT,
  `tense_name` varchar(2000) NOT NULL,
  `tense_definition` text,
  `tense_example` text,
  PRIMARY KEY (`tense_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tense`
--

INSERT INTO `tense` (`tense_id`, `tense_name`, `tense_definition`, `tense_example`) VALUES
(1, 'Simple Present Tense', 'In Simple Present, the action is simply mentioned and there is nothing being said about its completeness.\r\nIt is used to talk about an action which happens on a regular basis.', 'John plays football'),
(2, 'Present Continuous Tense', 'In the Present Continuous tense, the action is on-going/ still going on and hence continuous. \r\nThe present continuous tense is used to talk about actions that are happening at this current moment.', 'John is playing football'),
(3, 'Present Perfect Tense', 'In the Present Perfect tense, the action is complete or has ended and hence termed Perfect. \r\nThe exact time when the action happened is not important and hence, it is not mentioned in this tense.', 'John has played football'),
(4, 'Present Perfect Continuous Tense', 'In the Present Perfect Continuous tense, the action has been taking place for some time and is still ongoing.\r\nThe duration for which the action has been going on is usually mentioned in the present perfect continuous tense.', 'John has been playing football'),
(5, 'Simple Past Tense', 'In the Simple Past tense, the action is simply mentioned and understood to have taken place in the past. \r\nThe action started and ended sometime in the past but the time may or may not be mentioned.', 'John played football'),
(6, 'Past Continuous Tense', 'In the Past Continuous tense, the action was ongoing till a certain time in the past. \r\nThis tense is used to talk about an action at a particular time in the past.', 'John was playing football'),
(7, 'Past Perfect Tense', 'The Past Perfect tense is used to express something that happened before another action in the past.', 'John had played football'),
(8, 'Past Perfect Continuous Tense', 'The Past Perfect Continuous tense is used to express something that started in the past and continued until another time in the past.', 'John had been playing football'),
(9, 'Simple Future Tense', 'The Simple Future tense is used when we plan or make a decision to do something. Nothing is said about the time in the future.', 'John will play football'),
(10, 'Future Continuous Tense', 'The future continuous tense is used to express action at a particular moment in the future. \r\nHowever, the action will not have finished at the moment.', 'John will be playing football'),
(11, 'Future Perfect Tense', 'The Future Perfect tense expresses an action that will occur in the future before another action or time in the future.', 'John will have played football'),
(12, 'Future Perfect Continuous Tense', 'Future Perfect Continuous is used to talk about an on-going action before some point in the future.', 'John will have been playing football');

-- --------------------------------------------------------

--
-- Table structure for table `truefalse_configuration`
--

CREATE TABLE IF NOT EXISTS `truefalse_configuration` (
  `truefalse_configuration_id` int(10) NOT NULL AUTO_INCREMENT,
  `answer` tinyint(1) NOT NULL,
  `question_id` int(10) NOT NULL,
  `sentence_id` int(10) NOT NULL,
  PRIMARY KEY (`truefalse_configuration_id`),
  KEY `question_id` (`question_id`),
  KEY `sentence_id` (`sentence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `truefalse_configuration`
--

INSERT INTO `truefalse_configuration` (`truefalse_configuration_id`, `answer`, `question_id`, `sentence_id`) VALUES
(1, 1, 25, 42),
(2, 0, 25, 43),
(3, 0, 25, 44),
(4, 1, 25, 45),
(5, 1, 47, 105),
(6, 0, 47, 106),
(7, 0, 47, 107),
(8, 0, 47, 108),
(9, 0, 48, 109),
(10, 0, 48, 110),
(11, 1, 48, 111),
(12, 0, 48, 112),
(13, 0, 49, 113),
(14, 0, 49, 114),
(15, 1, 49, 115),
(16, 0, 49, 116),
(17, 0, 50, 117),
(18, 0, 50, 118),
(19, 1, 50, 119),
(20, 0, 50, 120),
(21, 1, 51, 121),
(22, 0, 51, 122),
(23, 0, 51, 123),
(24, 0, 51, 124);

-- --------------------------------------------------------

--
-- Table structure for table `verb`
--

CREATE TABLE IF NOT EXISTS `verb` (
  `verb_id` int(20) NOT NULL AUTO_INCREMENT,
  `verb_type` varchar(50) DEFAULT NULL,
  `verb_base_form` varchar(50) DEFAULT NULL,
  `verb_present_participle` varchar(50) DEFAULT NULL,
  `verb_past_participle` varchar(50) DEFAULT NULL,
  `verb_past_tense` varchar(50) DEFAULT NULL,
  `verb_category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`verb_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=880 ;

--
-- Dumping data for table `verb`
--

INSERT INTO `verb` (`verb_id`, `verb_type`, `verb_base_form`, `verb_present_participle`, `verb_past_participle`, `verb_past_tense`, `verb_category`) VALUES
(1, 'irregular', 'catch', NULL, 'caught', 'caught', NULL),
(2, 'irregular', 'cost', NULL, 'cost', 'cost', NULL),
(3, 'irregular', 'drive', NULL, 'driven', 'drove', NULL),
(4, 'irregular', 'drink', NULL, 'drunk', 'drank', NULL),
(5, 'irregular', 'eat', NULL, 'eaten', 'ate', NULL),
(6, 'irregular', 'feed', NULL, 'fed', 'fed', NULL),
(7, 'irregular', 'forgive', NULL, 'forgiven', 'forgave', NULL),
(8, 'irregular', 'give', NULL, 'given', 'gave', NULL),
(9, 'irregular', 'grow', NULL, 'grown', 'grew', NULL),
(10, 'irregular', 'hold', NULL, 'held', 'held', NULL),
(11, 'irregular', 'sell', NULL, 'sold', 'sold', NULL),
(12, 'irregular', 'sing', NULL, 'sung', 'sang', NULL),
(13, 'irregular', 'spend', NULL, 'spent', 'spent', NULL),
(14, 'irregular', 'teach', NULL, 'taught', 'taught', NULL),
(15, 'irregular', 'win', NULL, 'won', 'won', NULL),
(16, 'irregular', 'write', NULL, 'written', 'wrote', NULL),
(17, 'regular', 'climb', NULL, 'climbed', 'climbed', NULL),
(18, 'regular', 'cook', NULL, 'cooked', 'cooked', NULL),
(19, 'regular', 'die', NULL, 'died', 'died', NULL),
(20, 'regular', 'protect', NULL, 'protected', 'protected', NULL),
(21, 'regular', 'purchase', NULL, 'purchased', 'purchased', NULL),
(22, 'irregular', 'run', NULL, 'run', 'ran', NULL),
(23, 'regular', 'talk', NULL, 'talked', 'talked', NULL),
(24, 'regular', 'fail', NULL, 'failed', 'failed', NULL),
(410, 'irregular', 'awake', NULL, 'awoken', 'awoke', NULL),
(411, 'irregular', 'be', NULL, 'been', 'was, were', NULL),
(412, 'irregular', 'bear', NULL, 'born', 'bore', NULL),
(413, 'irregular', 'beat', NULL, 'beat', 'beat', NULL),
(414, 'irregular', 'become', NULL, 'become', 'became', NULL),
(415, 'irregular', 'begin', NULL, 'begun', 'began', NULL),
(416, 'irregular', 'bend', NULL, 'bent', 'bent', NULL),
(417, 'irregular', 'beset', NULL, 'beset', 'beset', NULL),
(418, 'irregular', 'bet', NULL, 'bet', 'bet', NULL),
(419, 'irregular', 'bid', NULL, 'bid / bidden', 'bid / bade', NULL),
(420, 'irregular', 'bind', NULL, 'bound', 'bound', NULL),
(421, 'irregular', 'bite', NULL, 'bitten', 'bit', NULL),
(422, 'irregular', 'bleed', NULL, 'bled', 'bled', NULL),
(423, 'irregular', 'blow', NULL, 'blown', 'blew', NULL),
(424, 'irregular', 'break', NULL, 'broken', 'broke', NULL),
(425, 'irregular', 'breed', NULL, 'bred', 'bred', NULL),
(426, 'irregular', 'bring', NULL, 'brought', 'brought', NULL),
(427, 'irregular', 'broadcast', NULL, 'broadcast', 'broadcast', NULL),
(428, 'irregular', 'build', NULL, 'built', 'built', NULL),
(429, 'irregular', 'burn', NULL, 'burned / burnt', 'burned / burnt', NULL),
(430, 'irregular', 'burst', NULL, 'burst', 'burst', NULL),
(431, 'irregular', 'buy', NULL, 'bought', 'bought', NULL),
(432, 'irregular', 'cast', NULL, 'cast', 'cast', NULL),
(434, 'irregular', 'choose', NULL, 'chosen', 'chose', NULL),
(435, 'irregular', 'cling', NULL, 'clung', 'clung', NULL),
(436, 'irregular', 'come', NULL, 'come', 'came', NULL),
(438, 'irregular', 'creep', NULL, 'crept', 'crept', NULL),
(439, 'irregular', 'cut', NULL, 'cut', 'cut', NULL),
(440, 'irregular', 'deal', NULL, 'dealt', 'dealt', NULL),
(441, 'irregular', 'dig', NULL, 'dug', 'dug', NULL),
(442, 'irregular', 'dive', NULL, 'dived', 'dived / dove', NULL),
(443, 'irregular', 'do', NULL, 'done', 'did', NULL),
(444, 'irregular', 'draw', NULL, 'drawn', 'drew', NULL),
(445, 'irregular', 'dream', NULL, 'dreamed / dreamt', 'dreamed / dreamt', NULL),
(449, 'irregular', 'fall', NULL, 'fallen', 'fell', NULL),
(451, 'irregular', 'feel', NULL, 'felt', 'felt', NULL),
(452, 'irregular', 'fight', NULL, 'fought', 'fought', NULL),
(453, 'irregular', 'find', NULL, 'found', 'found', NULL),
(454, 'irregular', 'fit', NULL, 'fit', 'fit', NULL),
(455, 'irregular', 'flee', NULL, 'fled', 'fled', NULL),
(456, 'irregular', 'fling', NULL, 'flung', 'flung', NULL),
(457, 'irregular', 'fly', NULL, 'flown', 'flew', NULL),
(458, 'irregular', 'forbid', NULL, 'forbidden', 'forbade', NULL),
(459, 'irregular', 'forget', NULL, 'forgotten', 'forgot', NULL),
(460, 'irregular', 'forego (forgo)', NULL, 'foregone', 'forewent', NULL),
(462, 'irregular', 'forsake', NULL, 'forsaken', 'forsook', NULL),
(463, 'irregular', 'freeze', NULL, 'frozen', 'froze', NULL),
(464, 'irregular', 'get', NULL, 'gotten', 'got', NULL),
(466, 'irregular', 'go', NULL, 'gone', 'went', NULL),
(467, 'irregular', 'grind', NULL, 'ground', 'ground', NULL),
(469, 'irregular', 'hang', NULL, 'hung', 'hung', NULL),
(470, 'irregular', 'hear', NULL, 'heard', 'heard', NULL),
(471, 'irregular', 'hide', NULL, 'hidden', 'hid', NULL),
(472, 'irregular', 'hit', NULL, 'hit', 'hit', NULL),
(474, 'irregular', 'hurt', NULL, 'hurt', 'hurt', NULL),
(475, 'irregular', 'keep', NULL, 'kept', 'kept', NULL),
(476, 'irregular', 'kneel', NULL, 'knelt', 'knelt', NULL),
(477, 'irregular', 'knit', NULL, 'knit', 'knit', NULL),
(478, 'irregular', 'know', NULL, 'know', 'knew', NULL),
(479, 'irregular', 'lay', NULL, 'laid', 'laid', NULL),
(480, 'irregular', 'lead', NULL, 'led', 'led', NULL),
(481, 'irregular', 'leap', NULL, 'leaped / leapt', 'leaped / leapt', NULL),
(482, 'irregular', 'learn', NULL, 'learned / learnt', 'learned / learnt', NULL),
(483, 'irregular', 'leave', NULL, 'left', 'left', NULL),
(484, 'irregular', 'lend', NULL, 'lent', 'lent', NULL),
(485, 'irregular', 'let', NULL, 'let', 'let', NULL),
(486, 'irregular', 'lie', NULL, 'lain', 'lay', NULL),
(487, 'irregular', 'light', NULL, 'lighted', 'lighted/lit', NULL),
(488, 'irregular', 'lose', NULL, 'lost', 'lost', NULL),
(489, 'irregular', 'make', NULL, 'made', 'made', NULL),
(490, 'irregular', 'mean', NULL, 'meant', 'meant', NULL),
(491, 'irregular', 'meet', NULL, 'met', 'met', NULL),
(492, 'irregular', 'misspell', NULL, 'misspelled / misspelt', 'misspelled / misspelt', NULL),
(493, 'irregular', 'mistake', NULL, 'mistaken', 'mistook', NULL),
(494, 'irregular', 'mow', NULL, 'mowed / mown', 'mowed', NULL),
(495, 'irregular', 'overcome', NULL, 'overcome', 'overcame', NULL),
(496, 'irregular', 'overdo', NULL, 'overdone', 'overdid', NULL),
(497, 'irregular', 'overtake', NULL, 'overtaken', 'overtook', NULL),
(498, 'irregular', 'overthrow', NULL, 'overthrown', 'overthrew', NULL),
(499, 'irregular', 'pay', NULL, 'paid', 'paid', NULL),
(500, 'irregular', 'plead', NULL, 'pleaded / pled', 'pleaded / pled', NULL),
(501, 'irregular', 'prove', NULL, 'proved / proven', 'proved', NULL),
(502, 'irregular', 'put', NULL, 'put', 'put', NULL),
(503, 'irregular', 'quit', NULL, 'quit', 'quit', NULL),
(504, 'irregular', 'read', NULL, 'read', 'read', NULL),
(505, 'irregular', 'rid', NULL, 'rid', 'rid', NULL),
(506, 'irregular', 'ride', NULL, 'ridden', 'rode', NULL),
(507, 'irregular', 'ring', NULL, 'rung', 'rang', NULL),
(508, 'irregular', 'rise', NULL, 'risen', 'rose', NULL),
(510, 'irregular', 'saw', NULL, 'sawed / sawn', 'sawed', NULL),
(511, 'irregular', 'say', NULL, 'said', 'said', NULL),
(512, 'irregular', 'see', NULL, 'seen', 'saw', NULL),
(513, 'irregular', 'seek', NULL, 'sought', 'sought', NULL),
(515, 'irregular', 'send', NULL, 'sent', 'sent', NULL),
(516, 'irregular', 'set', NULL, 'set', 'set', NULL),
(517, 'irregular', 'sew', NULL, 'sewed / sewn', 'sewed', NULL),
(518, 'irregular', 'shake', NULL, 'shaken', 'shook', NULL),
(519, 'irregular', 'shave', NULL, 'shaved / shaven', 'shaved', NULL),
(520, 'irregular', 'shear', NULL, 'sheared / shorn', 'sheared / shore', NULL),
(521, 'irregular', 'shed', NULL, 'shed', 'shed', NULL),
(522, 'irregular', 'shine', NULL, 'shone', 'shone', NULL),
(523, 'irregular', 'shoe', NULL, 'shod', 'shod', NULL),
(524, 'irregular', 'shoot', NULL, 'shot', 'shot', NULL),
(525, 'irregular', 'show', NULL, 'showed / shown', 'showed', NULL),
(526, 'irregular', 'shrink', NULL, 'shrunk', 'shrank', NULL),
(527, 'irregular', 'shut', NULL, 'shut', 'shut', NULL),
(529, 'irregular', 'sink', NULL, 'sunk', 'sank', NULL),
(530, 'irregular', 'sit', NULL, 'sat', 'sat', NULL),
(531, 'irregular', 'sleep', NULL, 'slept', 'slept', NULL),
(532, 'irregular', 'slay', NULL, 'slain', 'slew', NULL),
(533, 'irregular', 'slide', NULL, 'slid', 'slid', NULL),
(534, 'irregular', 'sling', NULL, 'slung', 'slung', NULL),
(535, 'irregular', 'slit', NULL, 'slit', 'slit', NULL),
(536, 'irregular', 'smite', NULL, 'smitten', 'smote', NULL),
(537, 'irregular', 'sow', NULL, 'sowed / sown', 'sowed', NULL),
(538, 'irregular', 'speak', NULL, 'spoken', 'spoke', NULL),
(539, 'irregular', 'speed', NULL, 'sped', 'sped', NULL),
(541, 'irregular', 'spill', NULL, 'spilled / spilt', 'spilled / spilt', NULL),
(542, 'irregular', 'spin', NULL, 'spun', 'spun', NULL),
(543, 'irregular', 'spit', NULL, 'spit', 'spit / spat', NULL),
(544, 'irregular', 'split', NULL, 'split', 'split', NULL),
(545, 'irregular', 'spread', NULL, 'spread', 'spread', NULL),
(546, 'irregular', 'spring', NULL, 'sprung', 'sprang / sprung', NULL),
(547, 'irregular', 'stand', NULL, 'stood', 'stood', NULL),
(548, 'irregular', 'steal', NULL, 'stolen', 'stole', NULL),
(549, 'irregular', 'stick', NULL, 'stuck', 'stuck', NULL),
(550, 'irregular', 'sting', NULL, 'stung', 'stung', NULL),
(551, 'irregular', 'stink', NULL, 'stunk', 'stank', NULL),
(552, 'irregular', 'stride', NULL, 'stridden', 'strode', NULL),
(553, 'irregular', 'strike', NULL, 'struck', 'struck', NULL),
(554, 'irregular', 'string', NULL, 'strung', 'strung', NULL),
(555, 'irregular', 'strive', NULL, 'striven', 'strove', NULL),
(556, 'irregular', 'swear', NULL, 'sworn', 'swore', NULL),
(557, 'irregular', 'sweep', NULL, 'swept', 'swept', NULL),
(558, 'irregular', 'swell', NULL, 'swelled / swollen ', 'swelled', NULL),
(559, 'irregular', 'swim', NULL, 'swum', 'swam', NULL),
(560, 'irregular', 'swing', NULL, 'swung', 'swung', NULL),
(561, 'irregular', 'take', NULL, 'taken', 'took', NULL),
(563, 'irregular', 'tear', NULL, 'torn', 'tore', NULL),
(564, 'irregular', 'tell', NULL, 'told', 'told', NULL),
(565, 'irregular', 'think', NULL, 'thought', 'thought', NULL),
(566, 'irregular', 'thrive', NULL, 'thrived', 'thrived / throve', NULL),
(567, 'irregular', 'throw', NULL, 'thrown', 'threw', NULL),
(568, 'irregular', 'thrust', NULL, 'thrust', 'thrust', NULL),
(569, 'irregular', 'tread', NULL, 'trodden', 'trod', NULL),
(570, 'irregular', 'understand', NULL, 'understood', 'understood', NULL),
(571, 'irregular', 'uphold', NULL, 'upheld', 'upheld', NULL),
(572, 'irregular', 'upset', NULL, 'upset', 'upset', NULL),
(573, 'irregular', 'wake', NULL, 'woken', 'woke', NULL),
(574, 'irregular', 'wear', NULL, 'worn', 'wore', NULL),
(575, 'irregular', 'weave', NULL, 'weaved / woven', 'weaved / wove', NULL),
(576, 'irregular', 'wed', NULL, 'wed', 'wed', NULL),
(577, 'irregular', 'weep', NULL, 'wept', 'wept', NULL),
(578, 'irregular', 'wind', NULL, 'wound', 'wound', NULL),
(580, 'irregular', 'withhold', NULL, 'withheld', 'withheld', NULL),
(581, 'irregular', 'withstand', NULL, 'withstood', 'withstood', NULL),
(582, 'irregular', 'wring', NULL, 'wrung', 'wrung', NULL),
(665, 'regular', 'accept', NULL, 'accepted', 'accepted', NULL),
(666, 'regular', 'act', NULL, 'acted', 'acted', NULL),
(667, 'regular', 'achieve', NULL, 'achieved', 'achieved', NULL),
(668, 'regular', 'admire', NULL, 'admired', 'admired', NULL),
(669, 'regular', 'advise', NULL, 'advised', 'advised', NULL),
(670, 'regular', 'affect', NULL, 'affected', 'affected', NULL),
(671, 'regular', 'agree', NULL, 'agreed', 'agreed', NULL),
(672, 'regular', 'amaze', NULL, 'amazed', 'amazed', NULL),
(673, 'regular', 'amuse', NULL, 'amused', 'amused', NULL),
(674, 'regular', 'answer', NULL, 'answered', 'answered', NULL),
(675, 'regular', 'appear', NULL, 'appeared', 'appeared', NULL),
(676, 'regular', 'arrange', NULL, 'arranged', 'arranged', NULL),
(677, 'regular', 'arrive', NULL, 'arrived', 'arrived', NULL),
(678, 'regular', 'ask', NULL, 'asked', 'asked', NULL),
(679, 'regular', 'attack', NULL, 'attacked', 'attacked', NULL),
(680, 'regular', 'bake', NULL, 'baked', 'baked', NULL),
(681, 'regular', 'behave', NULL, 'behaved', 'behaved', NULL),
(682, 'regular', 'believe', NULL, 'believed', 'believed', NULL),
(683, 'regular', 'belong', NULL, 'belonged', 'belonged', NULL),
(684, 'regular', 'blame', NULL, 'blamed', 'blamed', NULL),
(685, 'regular', 'borrow', NULL, 'borrowed', 'borrowed', NULL),
(686, 'regular', 'bother', NULL, 'bothered', 'bothered', NULL),
(687, 'regular', 'call', NULL, 'called', 'called', NULL),
(688, 'regular', 'cancel', NULL, 'canceled', 'canceled', NULL),
(689, 'regular', 'carry', NULL, 'carried', 'carried', NULL),
(690, 'regular', 'cause', NULL, 'caused', 'caused', NULL),
(691, 'regular', 'celebrate', NULL, 'celebrated', 'celebrated', NULL),
(692, 'regular', 'clean', NULL, 'cleaned', 'cleaned', NULL),
(693, 'regular', 'clear', NULL, 'cleared', 'cleared', NULL),
(695, 'regular', 'close', NULL, 'closed', 'closed', NULL),
(696, 'regular', 'compare', NULL, 'compared', 'compared', NULL),
(697, 'regular', 'compete', NULL, 'competed', 'competed', NULL),
(698, 'regular', 'complete', NULL, 'completed', 'completed', NULL),
(699, 'regular', 'contain', NULL, 'contained', 'contained', NULL),
(700, 'regular', 'continue', NULL, 'continued', 'continued', NULL),
(702, 'regular', 'correct', NULL, 'corrected', 'corrected', NULL),
(703, 'regular', 'cough', NULL, 'coughed', 'coughed', NULL),
(704, 'regular', 'count', NULL, 'counted', 'counted', NULL),
(705, 'regular', 'crash', NULL, 'crashed', 'crashed', NULL),
(706, 'regular', 'create', NULL, 'created', 'created', NULL),
(707, 'regular', 'cross', NULL, 'crossed', 'crossed', NULL),
(708, 'regular', 'curse', NULL, 'cursed', 'cursed', NULL),
(709, 'regular', 'change', NULL, 'changed', 'changed', NULL),
(710, 'regular', 'chase', NULL, 'chased', 'chased', NULL),
(711, 'regular', 'chat', NULL, 'chatted', 'chatted', NULL),
(712, 'regular', 'check', NULL, 'checked', 'checked', NULL),
(713, 'regular', 'damage', NULL, 'damaged', 'damaged', NULL),
(714, 'regular', 'dance', NULL, 'danced', 'danced', NULL),
(715, 'regular', 'date', NULL, 'dated', 'dated', NULL),
(716, 'regular', 'decide', NULL, 'decided', 'decided', NULL),
(717, 'regular', 'deliver', NULL, 'delivered', 'delivered', NULL),
(718, 'regular', 'depend', NULL, 'depended', 'depended', NULL),
(719, 'regular', 'describe', NULL, 'described', 'described', NULL),
(720, 'regular', 'design', NULL, 'designed', 'designed', NULL),
(721, 'regular', 'destroy', NULL, 'destroyed', 'destroyed', NULL),
(722, 'regular', 'dicrease', NULL, 'dicreased', 'dicreased', NULL),
(724, 'regular', 'disagree', NULL, 'disagreed', 'disagreed', NULL),
(725, 'regular', 'discover', NULL, 'discovered', 'discovered', NULL),
(726, 'regular', 'discuss', NULL, 'discussed', 'discussed', NULL),
(727, 'regular', 'disturb', NULL, 'disturbed', 'disturbed', NULL),
(728, 'regular', 'dress', NULL, 'dressed', 'dressed', NULL),
(729, 'regular', 'dry', NULL, 'dried', 'dried', NULL),
(730, 'regular', 'eliminate', NULL, 'eliminated', 'eliminated', NULL),
(731, 'regular', 'end', NULL, 'ended', 'ended', NULL),
(732, 'regular', 'enjoy', NULL, 'enjoyed', 'enjoyed', NULL),
(733, 'regular', 'entertain', NULL, 'entertained', 'entertained', NULL),
(734, 'regular', 'excuse', NULL, 'excused', 'excused', NULL),
(735, 'regular', 'exercise', NULL, 'exercised', 'exercised', NULL),
(736, 'regular', 'exhibit', NULL, 'exhibited', 'exhibited', NULL),
(737, 'regular', 'expect', NULL, 'expected', 'expected', NULL),
(738, 'regular', 'express', NULL, 'expressed', 'expressed', NULL),
(739, 'regular', 'film', NULL, 'filmed', 'filmed', NULL),
(740, 'regular', 'fill', NULL, 'filled', 'filled', NULL),
(741, 'regular', 'fish', NULL, 'fished', 'fished', NULL),
(742, 'regular', 'fix', NULL, 'fixed', 'fixed', NULL),
(743, 'regular', 'follow', NULL, 'followed', 'followed', NULL),
(744, 'regular', 'freeze', NULL, 'freezed', 'freezed', NULL),
(745, 'regular', 'fry', NULL, 'fried', 'fried', NULL),
(746, 'regular', 'greet', NULL, 'greeted', 'greeted', NULL),
(747, 'regular', 'guess', NULL, 'guessed', 'guessed', NULL),
(748, 'regular', 'hail', NULL, 'hailed', 'hailed', NULL),
(749, 'regular', 'handle', NULL, 'handled', 'handled', NULL),
(750, 'regular', 'happen', NULL, 'happened', 'happened', NULL),
(751, 'regular', 'hate', NULL, 'hated', 'hated', NULL),
(752, 'regular', 'help', NULL, 'helped', 'helped', NULL),
(753, 'regular', 'hope', NULL, 'hoped', 'hoped', NULL),
(754, 'regular', 'hunt', NULL, 'hunted', 'hunted', NULL),
(755, 'regular', 'identify', NULL, 'identified', 'identified', NULL),
(756, 'regular', 'ignore', NULL, 'ignored', 'ignored', NULL),
(757, 'regular', 'imagine', NULL, 'imagined', 'imagined', NULL),
(758, 'regular', 'impress', NULL, 'impressed', 'impressed', NULL),
(759, 'regular', 'improve', NULL, 'improved', 'improved', NULL),
(760, 'regular', 'include', NULL, 'included', 'included', NULL),
(761, 'regular', 'increase', NULL, 'increased', 'increased', NULL),
(762, 'regular', 'interview', NULL, 'interviewed', 'interviewed', NULL),
(763, 'regular', 'introduce', NULL, 'introduced', 'introduced', NULL),
(764, 'regular', 'invite', NULL, 'invited', 'invited', NULL),
(765, 'regular', 'jog', NULL, 'jogged', 'jogged', NULL),
(766, 'regular', 'join', NULL, 'joined', 'joined', NULL),
(767, 'regular', 'jump', NULL, 'jumped', 'jumped', NULL),
(768, 'regular', 'knock', NULL, 'knocked', 'knocked', NULL),
(769, 'regular', 'label', NULL, 'labeled', 'labeled', NULL),
(770, 'regular', 'land', NULL, 'landed', 'landed', NULL),
(771, 'regular', 'last', NULL, 'lasted', 'lasted', NULL),
(772, 'regular', 'learn', NULL, 'learned', 'learned', NULL),
(773, 'regular', 'like', NULL, 'liked', 'liked', NULL),
(774, 'regular', 'link', NULL, 'linked', 'linked', NULL),
(775, 'regular', 'list', NULL, 'listed', 'listed', NULL),
(776, 'regular', 'listen', NULL, 'listened', 'listened', NULL),
(777, 'regular', 'live', NULL, 'lived', 'lived', NULL),
(778, 'regular', 'locate', NULL, 'located', 'located', NULL),
(779, 'regular', 'look', NULL, 'looked', 'looked', NULL),
(780, 'regular', 'love', NULL, 'loved', 'loved', NULL),
(781, 'regular', 'manage', NULL, 'managed', 'managed', NULL),
(782, 'regular', 'mark', NULL, 'marked', 'marked', NULL),
(783, 'regular', 'match', NULL, 'matched', 'matched', NULL),
(784, 'regular', 'measure', NULL, 'measured', 'measured', NULL),
(785, 'regular', 'mention', NULL, 'mentioned', 'mentioned', NULL),
(786, 'regular', 'miss', NULL, 'missed', 'missed', NULL),
(787, 'regular', 'move', NULL, 'moved', 'moved', NULL),
(788, 'regular', 'name', NULL, 'named', 'named', NULL),
(789, 'regular', 'need', NULL, 'needed', 'needed', NULL),
(790, 'regular', 'note', NULL, 'noted', 'noted', NULL),
(791, 'regular', 'notice', NULL, 'noticed', 'noticed', NULL),
(792, 'regular', 'number', NULL, 'numbered', 'numbered', NULL),
(793, 'regular', 'offer', NULL, 'offered', 'offered', NULL),
(794, 'regular', 'open', NULL, 'opened', 'opened', NULL),
(795, 'regular', 'order', NULL, 'ordered', 'ordered', NULL),
(796, 'regular', 'organize', NULL, 'organized', 'organized', NULL),
(797, 'regular', 'pack', NULL, 'packed', 'packed', NULL),
(798, 'regular', 'paint', NULL, 'painted', 'painted', NULL),
(799, 'regular', 'pamper', NULL, 'pampered', 'pampered', NULL),
(800, 'regular', 'pardon', NULL, 'pardoned', 'pardoned', NULL),
(801, 'regular', 'park', NULL, 'parked', 'parked', NULL),
(802, 'regular', 'participate', NULL, 'participated', 'participated', NULL),
(803, 'regular', 'pass', NULL, 'passed', 'passed', NULL),
(804, 'regular', 'perform', NULL, 'performed', 'performed', NULL),
(805, 'regular', 'persuade', NULL, 'persuaded', 'persuaded', NULL),
(806, 'regular', 'pick', NULL, 'picked', 'picked', NULL),
(807, 'regular', 'plan', NULL, 'planned', 'planned', NULL),
(808, 'regular', 'play', NULL, 'played', 'played', NULL),
(809, 'regular', 'please', NULL, 'pleased', 'pleased', NULL),
(810, 'regular', 'practice', NULL, 'practiced', 'practiced', NULL),
(811, 'regular', 'predict', NULL, 'predicted', 'predicted', NULL),
(812, 'regular', 'prefer', NULL, 'preferred', 'preferred', NULL),
(813, 'regular', 'present', NULL, 'presented', 'presented', NULL),
(814, 'regular', 'program', NULL, 'programmed', 'programmed', NULL),
(816, 'regular', 'provide', NULL, 'provided', 'provided', NULL),
(818, 'regular', 'push', NULL, 'pushed', 'pushed', NULL),
(819, 'regular', 'rain', NULL, 'rain', 'rain', NULL),
(820, 'regular', 'receive', NULL, 'received', 'received', NULL),
(821, 'regular', 'recommend', NULL, 'recommended', 'recommended', NULL),
(822, 'regular', 'relate', NULL, 'related', 'related', NULL),
(823, 'regular', 'relax', NULL, 'relaxed', 'relaxed', NULL),
(824, 'regular', 'release', NULL, 'released', 'released', NULL),
(825, 'regular', 'remember', NULL, 'remembered', 'remembered', NULL),
(826, 'regular', 'repair', NULL, 'repaired', 'repaired', NULL),
(827, 'regular', 'repeat', NULL, 'repeated', 'repeated', NULL),
(828, 'regular', 'resist', NULL, 'resisted', 'resisted', NULL),
(829, 'regular', 'rest', NULL, 'rested', 'rested', NULL),
(830, 'regular', 'return', NULL, 'returned', 'returned', NULL),
(831, 'regular', 'review', NULL, 'reviewed', 'reviewed', NULL),
(832, 'regular', 'sail', NULL, 'sailed', 'sailed', NULL),
(833, 'regular', 'save', NULL, 'saved', 'saved', NULL),
(834, 'regular', 'scan', NULL, 'scanned', 'scanned', NULL),
(835, 'regular', 'scare', NULL, 'scared', 'scared', NULL),
(836, 'regular', 'share', NULL, 'shared', 'shared', NULL),
(837, 'regular', 'shop', NULL, 'shopped', 'shopped', NULL),
(838, 'regular', 'shout', NULL, 'shouted', 'shouted', NULL),
(839, 'regular', 'skate', NULL, 'skated', 'skated', NULL),
(840, 'regular', 'ski', NULL, 'skied', 'skied', NULL),
(841, 'regular', 'slow', NULL, 'slowed', 'slowed', NULL),
(842, 'regular', 'sneeze', NULL, 'sneezed', 'sneezed', NULL),
(843, 'regular', 'snow', NULL, 'snowed', 'snowed', NULL),
(844, 'regular', 'solve', NULL, 'solved', 'solved', NULL),
(845, 'regular', 'spell', NULL, 'spelled', 'spelled', NULL),
(846, 'regular', 'start', NULL, 'started', 'started', NULL),
(847, 'regular', 'step', NULL, 'stepped', 'stepped', NULL),
(848, 'regular', 'stop', NULL, 'stopped', 'stopped', NULL),
(849, 'regular', 'stress', NULL, 'stressed', 'stressed', NULL),
(850, 'regular', 'study', NULL, 'studied', 'studied', NULL),
(851, 'regular', 'substitute', NULL, 'substituted', 'substituted', NULL),
(852, 'regular', 'suggest', NULL, 'suggested', 'suggested', NULL),
(853, 'regular', 'surprise', NULL, 'surprised', 'surprised', NULL),
(855, 'regular', 'taste', NULL, 'tasted', 'tasted', NULL),
(856, 'regular', 'terrorize', NULL, 'terrorized', 'terrorized', NULL),
(857, 'regular', 'thank', NULL, 'thanked', 'thanked', NULL),
(858, 'regular', 'touch', NULL, 'touched', 'touched', NULL),
(859, 'regular', 'travel', NULL, 'traveled', 'traveled', NULL),
(860, 'regular', 'try', NULL, 'tried', 'tried', NULL),
(861, 'regular', 'tune', NULL, 'tuned', 'tuned', NULL),
(862, 'regular', 'turn', NULL, 'turned', 'turned', NULL),
(863, 'regular', 'underline', NULL, 'underlined', 'underlined', NULL),
(864, 'regular', 'use', NULL, 'used', 'used', NULL),
(865, 'regular', 'vary', NULL, 'varied', 'varied', NULL),
(866, 'regular', 'wait', NULL, 'waited', 'waited', NULL),
(867, 'regular', 'walk', NULL, 'walked', 'walked', NULL),
(868, 'regular', 'want', NULL, 'wanted', 'wanted', NULL),
(869, 'regular', 'warn', NULL, 'warned', 'warned', NULL),
(870, 'regular', 'wash', NULL, 'washed', 'washed', NULL),
(871, 'regular', 'watch', NULL, 'watched', 'watched', NULL),
(872, 'regular', 'water', NULL, 'watered', 'watered', NULL),
(873, 'regular', 'welcome', NULL, 'welcomed', 'welcomed', NULL),
(874, 'regular', 'wish', NULL, 'wished', 'wished', NULL),
(875, 'regular', 'witness', NULL, 'witnessed', 'witnessed', NULL),
(876, 'regular', 'work', NULL, 'worked', 'worked', NULL),
(877, 'regular', 'worry', NULL, 'worried', 'worried', NULL),
(878, 'regular', 'wrestle', NULL, 'wrestled', 'wrestled', NULL),
(879, 'regular', 'inform', NULL, 'informed', 'informed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `voice`
--

CREATE TABLE IF NOT EXISTS `voice` (
  `voice_id` int(5) NOT NULL AUTO_INCREMENT,
  `voice_name` varchar(2000) NOT NULL,
  `voice_definition` text,
  `voice_example` text,
  `voice_explanation` text,
  PRIMARY KEY (`voice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `voice`
--

INSERT INTO `voice` (`voice_id`, `voice_name`, `voice_definition`, `voice_example`, `voice_explanation`) VALUES
(1, 'Active voice', 'The voice used to indicate that the grammatical subject of the verb is performing the action or causing the happening denoted by the verb.', 'The boy threw the ball.', 'subject : the boy<br/>\r\nverb : threw<br/>\r\nobject : the ball'),
(2, 'Passive voice', 'The voice used to indicate that the grammatical subject of the verb is the recipient (not the source) of the action denoted by the verb.', 'The ball was thrown by the boy.', 'subject	: the ball<br/>\r\nverb	: was thrown<br/>\r\nobject	: the boy');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comprehension`
--
ALTER TABLE `comprehension`
  ADD CONSTRAINT `Comprehension_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`exercise_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `crossword_configuration`
--
ALTER TABLE `crossword_configuration`
  ADD CONSTRAINT `Crossword_config_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exercise`
--
ALTER TABLE `exercise`
  ADD CONSTRAINT `Exercise_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`activity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ex_sent_temp_assoc`
--
ALTER TABLE `ex_sent_temp_assoc`
  ADD CONSTRAINT `Ex_Sent_Temp_Assoc_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`exercise_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Ex_Sent_Temp_Assoc_ibfk_2` FOREIGN KEY (`sentence_template_id`) REFERENCES `sentence_template` (`sentence_template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hint`
--
ALTER TABLE `hint`
  ADD CONSTRAINT `Hint_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rule` (`rule_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `Hint_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`exercise_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `images_exercise`
--
ALTER TABLE `images_exercise`
  ADD CONSTRAINT `Images_Exercise_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images_repository` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Images_Exercise_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`exercise_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mcq_configuration`
--
ALTER TABLE `mcq_configuration`
  ADD CONSTRAINT `MCQ_config_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MCQ_config_ibfk_2` FOREIGN KEY (`sentence_id`) REFERENCES `sentence_repository` (`sentence_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `multimedia_exercise`
--
ALTER TABLE `multimedia_exercise`
  ADD CONSTRAINT `Multimedia_Exercise_ibfk_1` FOREIGN KEY (`multimedia_id`) REFERENCES `multimedia_repository` (`multimedia_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Multimedia_Exercise_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`exercise_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noun_verb`
--
ALTER TABLE `noun_verb`
  ADD CONSTRAINT `Noun_Verb_ibfk_1` FOREIGN KEY (`Noun_verb_nounid`) REFERENCES `noun` (`noun_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Noun_Verb_ibfk_2` FOREIGN KEY (`Noun_verb_verbid`) REFERENCES `verb` (`verb_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `picture_configuration`
--
ALTER TABLE `picture_configuration`
  ADD CONSTRAINT `Picture_Configuration_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`exercise_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Picture_Configuration_ibfk_4` FOREIGN KEY (`subject_id`) REFERENCES `noun` (`noun_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Picture_Configuration_ibfk_5` FOREIGN KEY (`object_id`) REFERENCES `noun` (`noun_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preposition`
--
ALTER TABLE `preposition`
  ADD CONSTRAINT `Preposition_ibfk_1` FOREIGN KEY (`preposition_image_id`) REFERENCES `images_repository` (`image_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `preposition_config_assoc`
--
ALTER TABLE `preposition_config_assoc`
  ADD CONSTRAINT `Preposition_config_assoc_ibfk_1` FOREIGN KEY (`preposition_id`) REFERENCES `preposition` (`preposition_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Preposition_config_assoc_ibfk_2` FOREIGN KEY (`configuration_id`) REFERENCES `picture_configuration` (`configuration_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `punctuation`
--
ALTER TABLE `punctuation`
  ADD CONSTRAINT `Punctuation_ibfk_1` FOREIGN KEY (`sentence_type_id`) REFERENCES `sentence_type` (`sentence_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `Question_ibfk_2` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`exercise_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Question_ibfk_3` FOREIGN KEY (`question_type_id`) REFERENCES `question_type` (`question_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reporting_verb`
--
ALTER TABLE `reporting_verb`
  ADD CONSTRAINT `Reporting_verb_ibfk_1` FOREIGN KEY (`verb_id`) REFERENCES `verb` (`verb_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Reporting_verb_ibfk_2` FOREIGN KEY (`sentence_type_id`) REFERENCES `sentence_type` (`sentence_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rule`
--
ALTER TABLE `rule`
  ADD CONSTRAINT `Rule_ibfk_1` FOREIGN KEY (`target_tense_id`) REFERENCES `tense` (`tense_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Rule_ibfk_2` FOREIGN KEY (`target_voice_id`) REFERENCES `voice` (`voice_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sentence_ordering_configuration`
--
ALTER TABLE `sentence_ordering_configuration`
  ADD CONSTRAINT `Sentence_Ordering_Config_ibfk_1` FOREIGN KEY (`sentence_id`) REFERENCES `sentence_repository` (`sentence_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Sentence_Ordering_Config_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sentence_repository`
--
ALTER TABLE `sentence_repository`
  ADD CONSTRAINT `Sentence_repository_ibfk_2` FOREIGN KEY (`sentence_type_id`) REFERENCES `sentence_type` (`sentence_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sentence_template`
--
ALTER TABLE `sentence_template`
  ADD CONSTRAINT `Sentence_Template_ibfk_1` FOREIGN KEY (`sentence_type_id`) REFERENCES `sentence_type` (`sentence_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `truefalse_configuration`
--
ALTER TABLE `truefalse_configuration`
  ADD CONSTRAINT `TrueFalse_config_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TrueFalse_config_ibfk_2` FOREIGN KEY (`sentence_id`) REFERENCES `sentence_repository` (`sentence_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
