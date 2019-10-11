
-- Database: `mvctest`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `text`) VALUES
(1, 'test'),
(2, 'test2'),
(3, 'test3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(64) NOT NULL,
  `sessionId` varchar(64) NOT NULL,
  `level` enum('guest','admin') NOT NULL DEFAULT 'guest',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--
INSERT INTO mvctest.users (id, username, password, sessionId, level) VALUES (1, 'admin', '9F86D081884C7D659A2FEAA0C55AD015A3BF4F1B2B0B822CD15D6C15B0F00A08', 'admin', 'admin');-- 'test' as a password
INSERT INTO mvctest.users (id, username, password, sessionId, level) VALUES (2, 'test', '', 'guest', 'guest');
