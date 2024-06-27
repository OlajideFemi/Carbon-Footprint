-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 01, 2011 at 05:24 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `plaincart`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pd_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ct_qty` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `ct_session_id` char(32) NOT NULL DEFAULT '',
  `ct_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ct_id`),
  KEY `pd_id` (`pd_id`),
  KEY `ct_session_id` (`ct_session_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`ct_id`, `pd_id`, `ct_qty`, `ct_session_id`, `ct_date`) VALUES
(114, 156, 1, 'gbocjhedao8n6jfsgsmnglsbb5', '2011-07-27 16:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_name` varchar(50) NOT NULL DEFAULT '',
  `cat_description` varchar(200) NOT NULL DEFAULT '',
  `cat_image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat_id`),
  KEY `cat_parent_id` (`cat_parent_id`),
  KEY `cat_name` (`cat_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_parent_id`, `cat_name`, `cat_description`, `cat_image`) VALUES
(50, 28, 'Laufen', 'Laufen', 'e62220785f32a8ae1cd3f250d0c4c6d2.jpg'),
(12, 0, 'Washbasins', 'Washbasins', 'a8a4d3109c37c47d134ca038426ce977.jpg'),
(13, 0, 'Bidet', 'It''s all about Bidet, product...', '2212af19d3b904efe7563f8f82e6dfec.jpg'),
(14, 12, 'Laufen', 'Laufen', '470ff2c5f86933a0deb444bf329fedcf.jpg'),
(47, 13, 'Duravit', 'Duravit', '4bcfba40d5d7c5fe0a12a964306f19e4.jpg'),
(60, 59, 'Disney world', 'new color', '09d0ecac82e4792048e77ebb2cdac8f9.jpg'),
(18, 0, 'Water Closets', 'Water Closets', '0b70672ecab8e27e1bfa3fe22527c212.jpg'),
(49, 13, 'Laufen', 'Laufen', 'b0d5f5ff9eb979ab7a67bb3a0d5dd5fd.jpg'),
(22, 0, 'Bathtubs & Trays', 'Bathroom and Trays', '7f479dab471334d18e26feff2413f51b.jpg'),
(23, 0, 'Bathroom Furnitures', 'Bathroom Furnitures', '4ff2a196bdabd6cd0ad73904636b6a18.jpg'),
(24, 0, 'Showers', 'Showers', '005b71df58e66d17c08f5e48ab22997d.jpg'),
(25, 0, 'Accessories', 'Accessories', '39c99c64a00f2bea10f3ad0be533ce45.jpg'),
(26, 0, 'Mixers', 'Mixers', '2d79c9d8bd63c446f2003bf26c375a58.jpg'),
(27, 0, 'Wellness', 'wellness', 'e5dd0761638732be5c63b0e279ac4eed.jpg'),
(28, 0, 'Urinals', 'urinals', '424d2d572864840e363d6484d1673751.jpg'),
(33, 24, 'Bossini', 'Bossini', '14bab2949c4ecec9a2bfc6bd49b8e915.jpg'),
(59, 0, 'Bathtub Accessories', 'toys', '4829bd7459af55218e86b57e812654ed.jpg'),
(53, 24, 'Hansgrohe', 'Hansgrohe', '8cfc0d24b757fc5cc8b07587e0c9f6fc.jpg'),
(54, 26, 'Mixer-Kitchen', 'Mixer-Kitchen', 'a0c3b2a72376eede34c4bf5c458f811f.jpg'),
(58, 57, 'Phillps', 'Phillps Lightening Facility', '01b4eb420c73d8bde32294d10796c9b3.png'),
(36, 26, 'Mixer-Basin', 'Mixer-Basin', '6ce85b3295edaa604556df6ede7aa5b6.jpg'),
(37, 26, 'Mixer-Bath', 'Mixer-Bath', '369c673c13b1aeb52788ed2d5af3f345.jpg'),
(38, 26, 'Mixer-Bidet', 'Mixer-Bidet', 'b085ae5b3630e5f1886f6ba61c49c9f4.jpg'),
(39, 26, 'Mixer-Shower', 'Mixer-Shower', 'beeb8295ad1aba69509f425e4e9219c7.jpg'),
(57, 0, 'lightenings', 'Bathroom Lightenings', ''),
(52, 27, 'Duravit', 'Duravit', 'efbbc4e401d67e9fa3b8a8f9ffddacca.jpg'),
(51, 28, 'Duravit', 'Duravit', 'eca487000395ab277bbffba2cacbff09.jpg'),
(44, 12, 'Duravit', 'Duravit', '8e4a63bc5da26f922b8025f5e5a6ebd5.jpg'),
(45, 18, 'Duravit', 'Duravit', ''),
(46, 18, 'Laufen', 'Laufen', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE IF NOT EXISTS `tbl_currency` (
  `cy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cy_code` char(3) NOT NULL DEFAULT '',
  `cy_symbol` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`cy_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`cy_id`, `cy_code`, `cy_symbol`) VALUES
(1, 'EUR', '&#8364;'),
(2, 'GBP', '&pound;'),
(3, 'JPY', '&yen;'),
(4, 'USD', '$');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `od_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `od_date` datetime DEFAULT NULL,
  `od_last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_status` enum('New','Paid','Shipped','Completed','Cancelled') NOT NULL DEFAULT 'New',
  `od_memo` varchar(255) NOT NULL DEFAULT '',
  `od_shipping_first_name` varchar(50) NOT NULL DEFAULT '',
  `od_shipping_last_name` varchar(50) NOT NULL DEFAULT '',
  `od_shipping_address1` varchar(100) NOT NULL DEFAULT '',
  `od_shipping_address2` varchar(100) NOT NULL DEFAULT '',
  `od_shipping_phone` varchar(32) NOT NULL DEFAULT '',
  `od_shipping_city` varchar(100) NOT NULL DEFAULT '',
  `od_shipping_state` varchar(32) NOT NULL DEFAULT '',
  `od_shipping_postal_code` varchar(10) NOT NULL DEFAULT '',
  `od_shipping_cost` decimal(5,2) DEFAULT '0.00',
  `od_payment_first_name` varchar(50) NOT NULL DEFAULT '',
  `od_payment_last_name` varchar(50) NOT NULL DEFAULT '',
  `od_payment_address1` varchar(100) NOT NULL DEFAULT '',
  `od_payment_address2` varchar(100) NOT NULL DEFAULT '',
  `od_payment_phone` varchar(32) NOT NULL DEFAULT '',
  `od_payment_city` varchar(100) NOT NULL DEFAULT '',
  `od_payment_state` varchar(32) NOT NULL DEFAULT '',
  `od_payment_postal_code` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`od_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1011 ;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`od_id`, `od_date`, `od_last_update`, `od_status`, `od_memo`, `od_shipping_first_name`, `od_shipping_last_name`, `od_shipping_address1`, `od_shipping_address2`, `od_shipping_phone`, `od_shipping_city`, `od_shipping_state`, `od_shipping_postal_code`, `od_shipping_cost`, `od_payment_first_name`, `od_payment_last_name`, `od_payment_address1`, `od_payment_address2`, `od_payment_phone`, `od_payment_city`, `od_payment_state`, `od_payment_postal_code`) VALUES
(1001, '2010-06-24 06:45:45', '2010-06-24 06:45:45', 'New', '', 'Owolabi', 'Owolabi', 'owolabi', 'owolabi', '2354365465', 'Lagos', 'lagos', '23401', 5.00, 'Owolabi', 'Owolabi', 'owolabi', 'owolabi', '2354365465', 'Lagos', 'lagos', '23401'),
(1002, '2010-06-24 08:28:37', '2010-06-24 08:28:37', 'New', '', 'Sesan', 'Sesan', 'sesan', 'sesan', '2343232543', 'Sesan', 'sesan', '23401', 5.00, 'Sesan', 'Sesan', 'sesan', 'sesan', '2343232543', 'Sesan', 'sesan', '23401'),
(1003, '2010-06-25 13:07:07', '2010-06-25 13:07:07', 'New', '', 'Test', 'Test', 'test', 'test', '4567887654', 'Test', 'test', 'test', 5.00, 'Test', 'Test', 'test', 'test', '4567887654', 'Test', 'test', 'test'),
(1004, '2010-06-25 13:26:42', '2010-06-25 13:26:42', 'New', '', 'Test', 'Test', 'test', 'test', '345678987654', 'Test', 'test', 'test', 5.00, 'Test', 'Test', 'test', 'test', '345678987654', 'Test', 'test', 'test'),
(1005, '2010-06-28 12:06:16', '2010-06-28 12:06:16', 'New', '', 'Test', 'Test', 'test', 'test', '34567876544', 'Test', 'test', '6543245', 5.00, 'Test', 'Test', 'test', 'test', '34567876544', 'Test', 'test', '6543245'),
(1006, '2010-07-01 15:10:09', '2010-07-01 15:10:09', 'New', '', 'Test', 'Test', 'test', 'test', '234567865', 'Test', 'test', 'test', 5.00, 'Test', 'Test', 'test', 'test', '234567865', 'Test', 'test', 'test'),
(1007, '2010-07-01 15:19:57', '2010-07-01 15:19:57', 'New', '', 'Test', 'Test', 'test', 'test', '2345678988676', 'Test', 'test', 'test', 5.00, 'Test', 'Test', 'test', 'test', '2345678988676', 'Test', 'test', 'test'),
(1008, '2010-11-03 15:12:31', '2010-11-03 15:12:31', 'New', '', 'Oladipo', 'Olajide', '51, mustapha street, ikorodu, lagos', '51, mustapha street, ikorodu, lagos', '08051055544', 'Lagos', 'lagos', '01234', 5.00, 'Oladipo', 'Olajide', '51, mustapha street, ikorodu, lagos', '51, mustapha street, ikorodu, lagos', '08051055544', 'Lagos', 'lagos', '01234'),
(1009, '2010-11-03 15:13:26', '2010-11-03 15:13:26', 'New', '', 'Dj', 'Dj', 'djd', 'djg', 'jgj', 'Jdghd', 'jdhg', 'hgjg', 5.00, 'Dj', 'Dj', 'djd', 'djg', 'jgj', 'Jdghd', 'jdhg', 'hgjg'),
(1010, '2011-07-27 16:51:57', '2011-07-27 16:51:57', 'New', '', 'Olajide', 'OLUFEMI', 'IOBIOBIIIB', 'IBIBIBII', 'IIIHUIYGUYG', 'UGUYYUBHBBJ', 'UGUGUGUGU', 'UUBUBUB', 5.00, 'Olajide', 'OLUFEMI', 'IOBIOBIIIB', 'IBIBIBII', 'IIIHUIYGUYG', 'UGUYYUBHBBJ', 'UGUGUGUGU', 'UUBUBUB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE IF NOT EXISTS `tbl_order_item` (
  `od_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pd_id` int(10) unsigned NOT NULL DEFAULT '0',
  `od_qty` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`od_id`,`pd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`od_id`, `pd_id`, `od_qty`) VALUES
(1005, 75, 1),
(1004, 28, 1),
(1005, 50, 1),
(1003, 58, 1),
(1005, 51, 4),
(1006, 36, 1),
(1008, 137, 1),
(1008, 89, 1),
(1009, 89, 1),
(1010, 137, 1),
(1010, 58, 3),
(1010, 75, 1),
(1010, 155, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `pd_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pd_name` varchar(100) NOT NULL DEFAULT '',
  `pd_description` text NOT NULL,
  `pd_price` decimal(9,2) NOT NULL DEFAULT '0.00',
  `pd_qty` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pd_image` varchar(200) DEFAULT NULL,
  `pd_image2` varchar(200) DEFAULT NULL,
  `pd_thumbnail` varchar(200) DEFAULT NULL,
  `pd_thumbnail2` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `pd_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pd_last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pd_id`),
  KEY `cat_id` (`cat_id`),
  KEY `pd_name` (`pd_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=207 ;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pd_id`, `cat_id`, `pd_name`, `pd_description`, `pd_price`, `pd_qty`, `pd_image`, `pd_image2`, `pd_thumbnail`, `pd_thumbnail2`, `url`, `pd_date`, `pd_last_update`) VALUES
(37, 46, 'Mimo Floor Standing WC', 'Mimo Series/Toilet Floor Standing/Vario Outlet', 100.00, 65535, 'db232487c980dd1d7695c6e802a2e902.jpg', '0ed7d01ed8374fac54f6276f7142fe30.jpg', '81a83d2b473ab307a75809a259013696.jpg', '74b398bdcc9e17723fd387242582592e.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M821551#tabAnchor', '2010-06-24 14:46:24', '0000-00-00 00:00:00'),
(36, 46, 'Living Floor Standing WC', 'Living Series/Toilet Floor Standing/Vario Outlet', 300.00, 65535, '883dd78c2418585f15e580aff3712b3f.jpg', '15a27f819f22b5a39ed33517e8a3f0a1.jpg', 'f91619e7407a1f961df14a934abc7c10.jpg', '8a74fcddbca45c019a43e066256efd18.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M821436#tabAnchor', '2010-06-24 14:45:20', '0000-00-00 00:00:00'),
(27, 45, '2nd Floor Monobloc WC', '2nd Floor Series/Toilet Close-Coupled/Horizontal Outlet', 200.00, 65535, 'd5b2ba4cc8d8f46dd260ec99b4af6d12.jpg', 'd214068b59cbe1160e15b559ab190dfe.jpg', 'c594a1a0fa8c59ea6493745cffb7e9de.jpg', '1bc240f451ca4d8157a508597fede7c5.jpg', 'http://www.duravit.com/products/series/2nd-floor/toilets/toilet-close-coupled--210609_toilets_91476_useo6qcjj2.html', '2010-06-24 11:20:28', '0000-00-00 00:00:00'),
(28, 45, 'D-Code Monobloc WC', 'D-Code Series/Toilet Close-Coupled/Horizontal Outlet', 0.00, 65535, 'bfd78fbcf2577ea9dbe25d6a57d27bea.jpg', 'cbd71211810018d225d8c0e6e1c152fc.jpg', '082d842d9596d9244b3955e9dde4774f.jpg', '1e98073dba00193789651a8b1d7ec914.jpg', 'http://www.duravit.com/products/series/d-code/toilets/toilet-close-coupled--211109_toilets_94720_lfli6y5hby.html', '2010-06-24 11:34:13', '0000-00-00 00:00:00'),
(29, 46, 'Pro Monobloc WC', 'Pro Series/Toilet Close-Coupled/Horizontal Outlet', 1000.00, 65535, '178280b554f4b5e7f49a333127e6007e.jpg', '2854c7f2a3c476b7c0d90b6811f0fe1b.jpg', 'b30632c1311a1af5f74f1d43b51b93c8.jpg', 'fa184713343eb342c31b646552cc2461.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M823906#tabAnchor', '2010-06-24 11:36:50', '0000-00-00 00:00:00'),
(32, 46, 'Alessi Dot Monobloc WC', 'Alessi Dot Series/Toilet Close-Coupled/Horizontal Outlet', 100.00, 65535, '51a4c88963e21a5af3fca14b030693e9.jpg', '94d6ec303b44fffddc4a7531b08d4df5.jpg', '0ef2cc7ce3c28603677e8e37ecbbab11.jpg', '5620eb082f9305f2d269508772913d8d.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M823906#tabAnchor', '2010-06-24 12:04:48', '0000-00-00 00:00:00'),
(34, 45, 'Starck 2 Floor Standing WC', 'Starck 2 Series/Toilet Floor Standing/Horizontal Outlet', 0.00, 65535, '544015c7ae7cf5061ae3781b00b63781.jpg', 'eec1d58b18a27fb6ab9c5ec3f71a4a58.jpg', 'fe2c81da72a47e0938ed050b824fd893.jpg', '389304623bda44697f3f48d3ceed47a4.jpg', 'http://www.duravit.com/products/series/starck-2/toilets/toilet-floor-standing--016209_toilets_93457_useo6q3rta.html', '2010-06-24 12:40:43', '0000-00-00 00:00:00'),
(35, 45, 'Bathroom_Foster Floor Standing WC', 'Bathroom_Foster Series/Toilet Floor Standing/Horizontal Outlet', 400.00, 65535, 'e54ba6fbbc905e9e96ec44b81217e8ea.jpg', '1cbaeb7b43de3bb74120d382db801ace.jpg', 'a8586dc1e37f95db0b90a12674eccd7b.jpg', '31d6efd4975b87498ae6501111138248.jpg', 'http://www.duravit.com/products/series/bathroom_foster/toilets/toilet-floor-standing--017709_toilets_92618_useo6q3rpp.html', '2010-06-24 12:41:48', '0000-00-00 00:00:00'),
(39, 45, 'Caro Wall Mounted WC', 'Caro Series/Toilet Wall Mounted/Horizontal Outlet', 300.00, 65535, '8c31b6954b66226e1b05bbc11089135d.jpg', '109e2ed9557b4038728192535f8844da.jpg', 'd82e8e97ad4ce97c953209b58b2521d3.jpg', 'e1105f674fbfcd3cb9149ada91cf1165.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rlj.com.html?category=toilets&product=019809&nodeId=90796', '2010-06-24 14:49:50', '0000-00-00 00:00:00'),
(40, 45, 'Architec Wall Mounted WC', 'Architec Series/Toilet Wall Mounted/Horizontal Outlet', 200.00, 65535, 'ae62e28b306d70b2ff291acb0faf9993.jpg', '6a99c6ed8ae74a25cfeb1d2b1a05a944.jpg', 'ec726f611f2037e04ad8188fd47cbb2b.jpg', '07d0e6d94431b2c8d324a216031a34cf.jpg', 'http://www.duravit.com/duravit/html/default/useo-6ptmab.com.html?category=toilets&product=254609&nodeId=92353', '2010-06-24 14:50:28', '0000-00-00 00:00:00'),
(42, 46, 'Palomba Wall Mounted WC', 'Palomba Series/Toilet Wall Mounted/Horizontal Outlet', 0.00, 65535, 'd0f9a1dc7b9b04dd12dd55f383134bf1.jpg', 'bc3b039e07175c46a4c0bf033b305304.jpg', '4b6ba57d08a5d68745989f33564afe99.jpg', '99c5c2b0d7560fbb858c40121517c5b6.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M820801#tabAnchor', '2010-06-24 15:20:51', '0000-00-00 00:00:00'),
(43, 46, 'MyLife Wall Mounted WC', 'Mylife Series/Toilet Wall Mounted/Horizontal Outlet', 450.00, 65535, '3114f3247a0ae22b1988338a84429c56.jpg', '993862cc404bc5cc75a1409baa0cdd0e.jpg', '340e5a5bce94306a2084e351830278a0.jpg', '1a90658836d94ae4a784627382303537.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M820801#tabAnchor', '2010-06-24 15:22:01', '0000-00-00 00:00:00'),
(44, 46, 'Alessi One Wall Mounted WC', 'Alessi One Series/Toilet Wall Mounted/Horizontal Outlet', 400.00, 65535, 'c07e0e4e67a1a4efaf20602b595fc7b4.jpg', '50d64156e7253305b23b0e2aa46d5984.jpg', '15e803668605a0646fdb8c0191d5c681.jpg', '773decf4336de4133432084f7251926b.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M820976#tabAnchor', '2010-06-24 15:22:37', '0000-00-00 00:00:00'),
(58, 44, 'Ciottolo Washbowl', 'Ciottolo Series/Washbowl/46cm', 500.00, 65532, 'd2060b294bf55ff52a5cd6074fadc7e6.jpg', '10f74fc03b957f21addfe0799c271e74.jpg', 'f6f8a97a1118bcf186f69eb342df4ab3.jpg', '71773cd8e7b89cd209d29b80a8eb186e.jpg', 'http://www.duravit.com/products/series/ciottolo/washbasins/wash-bowl--032347_washbasins_94492_useo6q3rlx.html', '2010-06-25 09:17:07', '0000-00-00 00:00:00'),
(57, 44, 'Starck 1 Furniture Basin', 'Starck 1 Series/Furniture Basin/58cm', 300.00, 65535, '3b5edb56a0d27018f807859d80937f6d.jpg', '97e77f617c03f58eb85fb54a888be3ce.jpg', '8925483d459f2ff6ac44cf38482497ec.jpg', '4f66a9e6ea3c402b8c671e5a5f71331a.jpg', 'http://www.duravit.com/products/series/starck-1/washbasins/furniture-washbasin--040658_washbasins_93142_useo6q3rt3.html', '2010-06-25 09:11:09', '0000-00-00 00:00:00'),
(163, 53, 'Raindance E 360 AIR Overhead Shower', 'Raindance E 360 AIR 1jet Showerhead with Arm\r\n', 0.00, 65535, '000d1c438a92d9cb0a163e8956de30a9.jpg', '87c5dc70ad7a52e300bf3380b35a46d0.jpg', '9f161df43c0e0bd82e68e8fcf7e5d508.jpg', '6271829133a6f16b61b3965274b530f0.jpg', 'images/tech_draw/Raindance_E360.pdf', '2010-07-18 06:23:20', '0000-00-00 00:00:00'),
(161, 53, 'Raindance E 150 Hand Shower', 'Raindance E 150 Hand Shower 150mm', 0.00, 65535, '134d03e8812d391476f03b30aaa8a6ab.jpg', '41cb0759c71980f3c0136f75f58c5838.jpg', '2fdf1efa08acd96f4bffebf8ab049f47.jpg', '30cb85f30ed7e73103864465e6ee4fc8.jpg', 'images/tech_draw/Raindance_E_150_AIR_3jet_Hand_Shower_DN15.pdf', '2010-07-18 06:01:49', '0000-00-00 00:00:00'),
(162, 53, 'Radiance Air Allrounder', 'Radiance Air Allrounder Set for exposed fitting', 0.00, 65535, '9d5a0882c3070e4099893552fb00e09f.jpg', '83ad1d795d8ccac3b3a092d52016f318.jpg', '0e688d6bd9736557b7cc327005933a01.jpg', '55f38d90e19100bceea3fa7639b0295b.jpg', 'images/tech_draw/Raindance_AIR_Allrounder.pdf', '2010-07-18 06:12:00', '0000-00-00 00:00:00'),
(173, 53, 'Raindance Classic AIR Plate Overhead Shower', 'Raindance Classic AIR Plate Overhead Shower with Shower Arm', 0.00, 65535, 'dc25b8861473367d94b8603d1fff75a5.jpg', 'f009cfa3fc453db284031418404c6450.jpg', '26691d914e6d5b0aff790fccb49e7005.jpg', '33c1ecd51ca6d149735d75bcbc8a1842.jpg', 'images/tech_draw/Raindance_Classic_AIR_Plate.pdf', '2010-07-18 10:13:47', '0000-00-00 00:00:00'),
(174, 53, 'Axor Starck Waterwall', 'Axor Starck Waterwall', 0.00, 65535, 'bed15afd293ba90ae875ab02ac00775e.jpg', '1475d8a6f90b8063e358c6710eac931c.jpg', '5953dc0fabb8afa952525470846c7f37.jpg', '97ba7bf33f63e68f78e263ae4c04a31d.jpg', 'images/tech_draw/Axor_Starck_X.pdf', '2010-07-18 10:19:14', '0000-00-00 00:00:00'),
(131, 44, 'D-Code Vanity Basin', 'D-Code Series/Vanity Basin/54.5x43.5cm', 0.00, 65535, 'e1d2c736eb5e4413cebf15f19ffd4125.jpg', '15f83c109f9ef6bab62f73404feebc9f.jpg', '90b04846d43daff794b8068c4a5b8cb1.jpg', '8e8bf557de742ec261e6fcf479d3088e.jpg', 'http://www.duravit.com/duravit/html/default/lfli-6y5hby.com.html?category=washbasins&product=033754&nodeId=94884', '2010-07-06 17:39:19', '0000-00-00 00:00:00'),
(62, 44, '2nd Floor Semi-Ped Basin', '2nd Floor/Series/Semi-Ped Basin/60x43cm', 200.00, 65535, '1ac88f79abf71d844008bf066a2d5464.jpg', '', '0f6312f7ad4470ce5409257cdb7b3a2b.jpg', '', '', '2010-06-25 10:11:54', '0000-00-00 00:00:00'),
(170, 53, 'Raindance Rainmaker 680mm', 'Raindance Rainmaker Overhead Shower with Outlets and lighting 680mm', 0.00, 65535, '6ef2ae5c9ba22d3ab82b4df308f610bb.jpg', '172060d22fd737e3e18f746adae57664.jpg', '1b257e235333c6b358f4d8d2f831bc27.jpg', '16525a5188b99436bd013d85850c4b46.jpg', 'images/tech_draw/Raindance_Rainmaker_680mm.pdf', '2010-07-18 09:58:00', '0000-00-00 00:00:00'),
(171, 53, 'Raindance Connect 240 Showerpipe', 'Raindance Connect 240 Showerpipe', 0.00, 65535, '10106ac730091a53e11c36d484500917.jpg', '67300703e9a0fcbfdf429c68791a2e4b.jpg', '231bbf591d2d60d5280a7e8c4ddab4de.jpg', 'ad3824ae915175223d8c0c8192b14c3d.jpg', 'images/tech_draw/Raindance_connect_240.pdf', '2010-07-18 10:01:39', '0000-00-00 00:00:00'),
(172, 53, 'Raindance Shower Panel', 'Raindance Shower Panel for Concealed Installation', 0.00, 65535, '542541e6b65d38677c2eab769d046fa3.jpg', 'b9a3ea7d0645459005e26fa52890e409.jpg', '569bb9bc01615f9f48f1abb16c4df39a.jpg', 'b9e5a766caf8ceeb901cb65fa4c0d11c.jpg', 'images/tech_draw/Raindance_Shower_Panel.pdf', '2010-07-18 10:07:46', '0000-00-00 00:00:00'),
(167, 53, 'Raindance S Air Plate Overhead Shower', 'Raindance S Air Plate Overhead Shower 300mm', 0.00, 65535, 'f44ac6a58e7613e2126897fdc9dc99dd.jpg', '7537e3d00b7a3f576437b7218b40032c.jpg', 'bad8b87b93bcdf356ca52d01f31b2a71.jpg', 'dc6bf99227ed17a3b975587c441948fe.jpg', 'images/tech_draw/Raindance_S_Air.pdf', '2010-07-18 09:35:03', '0000-00-00 00:00:00'),
(141, 44, 'Starck 1 Wash Table Set', 'Starck 1 Series/Wash Table Set/73x58cm', 0.00, 65535, '5e6ceacf3276800145efe292662e17e1.jpg', '8bd2bc061f8fc164601a60ab0aa6590f.jpg', '1665ce825ef8472acb2c1ba71896a77e.jpg', '50e02fa3fa75f145d70b05fdfc3b2f45.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rt3.com.html?category=washbasins&product=036300&nodeId=93283', '2010-07-07 16:56:07', '0000-00-00 00:00:00'),
(77, 14, 'Form Countertop Basin', 'Form Series/Countertop Basin/120x48cm', 450.00, 65535, '02fc5ad3acfe773c2966c73ac158b314.jpg', '8784151a4c9ecf458f3af49b82296189.jpg', 'eaa1bbce2f456a236bed4e10953cefbf.jpg', 'c9192caebb7a506553284256ec96ec63.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M813673#tabAnchor', '2010-06-28 15:30:49', '0000-00-00 00:00:00'),
(195, 36, 'Axor Carlton 2 Handle Hole Basin Mixer', 'Axor Carlton 2 Handle Hole Basin Mixer with Pop Up Waste', 0.00, 65535, 'ffc70431b552a39f2e2761ab19e155cf.jpg', '3d5e3083a444928ac2bf768c82be8ad9.jpg', '55fcddc7af52285343dca98d92c981fc.jpg', '6ac1e19f531384930e00e717224652d3.jpg', 'images.tech_draw/axor_carlton_2_Handle.pdf', '2010-07-18 18:22:11', '0000-00-00 00:00:00'),
(69, 14, 'Mimo Double Countertop Basin', 'Mimo Series/Double Countertop Basin/100x44cm', 400.00, 65535, '7bbc9d057762feee50982d096f12d0fc.jpg', '95475dce4ab7cffe65f63378b5146cab.jpg', '00866038323fefd08db9c97339b32975.jpg', '71dcb2851d7464ddf2434522919e405d.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M818557#tabAnchor', '2010-06-25 10:36:50', '0000-00-00 00:00:00'),
(149, 49, 'Alessi One Wall Mounted Bidet', 'Alessi One Series/Bidet Wall Mounted with Overflow', 0.00, 65535, '0435fd27b600708c38ac74658104e2e2.jpg', 'f1f5fe7f26d1cc1d5ca661dd2d275a48.jpg', '6e6e47dd0150fafb04543940aa41e538.jpg', '4bd9cd80eed4a1857bdea01ad46f0164.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?&view=t&MD=CT_M830971', '2010-07-16 17:04:03', '0000-00-00 00:00:00'),
(148, 47, 'Starck 3 Floor Bidet', 'Starck 3 Series/Bidet Floor Standing with overflow', 0.00, 65535, '145afc6e2802310170bbbec19c1eecf8.jpg', 'fcc644d3052ef28722385195c0c41d3f.jpg', '806a8d97cd2b0e7a3419b968fb832d08.jpg', '9b3e565e976926417eee5f0779249fcf.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rtg.com.html?category=bidets&product=223010&nodeId=93550', '2010-07-16 16:37:05', '0000-00-00 00:00:00'),
(75, 49, 'Alessi Dot Floor Bidet', 'Alessi Dot Series/Bidet Floor Standing with Overflow', 0.00, 65534, 'a7fb071e71b0482656599fdeefaf4882.jpg', '2bf29dc20eb87dad0da46fe10aad702f.jpg', '6e795b9b9e5045a091418a5618ab287e.jpg', 'd94b05c586febb0206b76503c5652872.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M832901#tabAnchor', '2010-06-25 11:14:43', '0000-00-00 00:00:00'),
(169, 53, 'Raindance Rainmaker 600mm', 'Raindance Rainmaker Overhead Showers with 3 Outlets 600mm', 0.00, 65535, '8e3f453d418493c8224974f22f9b01bb.jpg', 'a3bd748404e26497d137d682202b98e1.jpg', 'cd05230a4cc9b521fb27db569f350ceb.jpg', 'a67cd04cc20cfbde29aca15142718962.jpg', 'images/tech_draw/Raindance_Rainmaker_600mm.pdf', '2010-07-18 09:49:06', '0000-00-00 00:00:00'),
(166, 53, 'Raindance E Showerpipe', 'Raindance E Showerpipe 420mm with 400mm Shower Arm', 0.00, 65535, '00acca55f6edf9d73981b936b325343f.jpg', 'd98dbdc6d6c280e34092ffeba3d63156.jpg', '0c431a3bc64de417a5cd9b73373656ec.jpg', '6ea6c9db7352ad24e4fc6df924c05c83.jpg', 'images/tech_draw/Raindance_E_Showerpipe_420.pdf', '2010-07-18 06:36:49', '0000-00-00 00:00:00'),
(89, 46, 'Form Monobloc WC', 'Form Series/Toilet Close-Coupled/Horizontal Outlet', 500.00, 65533, 'c803b7bb21db6b09ba53b01733ba7c55.jpg', 'c651473eb0c93088977f1175d4ca481e.jpg', 'b7e695807142e28dd5b3e83ae8f4d325.jpg', '80f63327432132488c397a0340967ec5.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M823676#tabAnchor', '2010-06-29 12:49:12', '0000-00-00 00:00:00'),
(128, 45, 'Vero Floor Standing WC', 'Vero Series/Toilet Floor Standing/Horizontal Outlet', 0.00, 1, '9baed6fff2bbeaa585cee5441f2e208c.jpg', '67a6f8c8d2bf5241307c0a0e51454681.jpg', 'a58badd17ff64e5caa3d259227b251c7.jpg', '06c6a326f6231550b97fc77e2e2e9cf3.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3ruf.com.html?category=toilets&product=211709&nodeId=94193', '2010-07-06 16:52:31', '0000-00-00 00:00:00'),
(168, 53, 'Raindance Rainfall Overhead Shower', 'Raindance Rainfall Overhead Shower with 3 Spray Modes', 0.00, 65535, '82d0eea355311de60482a7d2296f4308.jpg', '0c8acdcb44959605d85a2099c179e853.jpg', '5799116cd31359a2e052a9d671f64d41.jpg', 'c4b91db0f95ac948d2328bedba7f9055.jpg', 'images/tech_draw/Raindance_Rainfall_240.pdf', '2010-07-18 09:44:14', '0000-00-00 00:00:00'),
(150, 14, 'Mimo Semi-Ped Basin', 'Mimo Series/Semi-Ped Basin/55x44cm', 0.00, 65535, '8d035559b599c1816869f7dc90c482a7.jpg', '0446d019a5f9fb139270ecb3867703e5.jpg', '84fe4cdfed206bc4aa3550ac71a2be6e.jpg', '3d78ebad2f63dad447d77c3220d0b205.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M810552#tabAnchor', '2010-07-16 18:02:40', '0000-00-00 00:00:00'),
(151, 14, 'Pro A Washbasin Bowl', 'Pro Series/Washbasin Bowl/60x40cm', 0.00, 65535, 'be1f3677689db356b05ef387600fcd21.jpg', 'd5dd35bc6b4641c50dc3e7ec3256bacd.jpg', '4fa6dbb269ee706d7ead47eccc8e9fc4.jpg', 'dd351663ed870c896da34b2e47783ff3.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M811951#tabAnchor', '2010-07-16 18:33:58', '0000-00-00 00:00:00'),
(152, 50, 'Alessi One Urinal', 'Alessi One Series/Urinal with Concealed Inlet and Outlet', 0.00, 65535, '3eb19bb1e02f88154221675e6f976597.jpg', 'f410df0daf68b1fbfe89b2b22767c20c.jpg', 'dcbe86a845b8527a64d24ee6dd69503a.jpg', '68406518fe9b9fa1cb4d2d4e2d7a86e8.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M840971#tabAnchor', '2010-07-16 18:46:08', '0000-00-00 00:00:00'),
(155, 51, 'Mcdry Waterless Urinal', 'Mcdry Series/Waterless Urinal with Concealed inlet and Outlet', 0.00, 65534, 'b2b6a4d4a55fd258729b6687d7c7c4a8.jpg', '6ac52af23606391e58b38e63e234cbd8.jpg', '5930287cddfab87be4dc09fa085e91b3.jpg', 'acd3e9128324daf2ff35438463d80918.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rty.com.html?category=urinals&product=084436&nodeId=93992', '2010-07-16 19:00:12', '0000-00-00 00:00:00'),
(132, 44, 'Starck 3 Furniture Basin', 'Starck 3 Series/Furniture Basin/43X46.5cm', 0.00, 65535, 'eb397397c1be1934772119174fac9ef2.jpg', 'c0c28021a3d3e0defc38229437fb4674.jpg', '44ea023fc3df4ec3721d81376af9a2a3.jpg', '3db2cd7627e2e6f3770fdd62fc00846f.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rtg.com.html?category=washbasins&product=030348&nodeId=93569', '2010-07-07 15:16:54', '0000-00-00 00:00:00'),
(199, 33, 'Top-Rain Shower Head with Arm', 'Top-Rain Shower Head with Arm', 0.00, 65535, 'f9adf0d5cc2233b2dfbb8722b20630ea.jpg', 'dd6cb0016acd03be67267c69e5f2458d.jpg', 'b77fffea4c0e4cf0c0d88abe8b96036c.jpg', '4da3b27ff291b72277f1efbc5371e763.jpg', 'images/tech_draw/top_rain.pdf', '2010-07-19 17:44:15', '0000-00-00 00:00:00'),
(130, 44, 'D-Code Semi-Ped Washbasin', 'D-Code Series/Semi-Ped Basin/65x50cm', 0.00, 65535, 'eeaf1ab06caeea3a608542f30e339576.jpg', '50498475952f6da065df94162fb74b71.jpg', '08da0c4205da74a7209cd6b7958ae637.jpg', 'de987601daad950d7f7c125439738b77.jpg', 'http://www.duravit.com/duravit/html/default/lfli-6y5hby.com.html?category=washbasins&product=231065&nodeId=94872', '2010-07-06 17:31:57', '0000-00-00 00:00:00'),
(197, 33, 'Aquavolo Stainless Steel Shower', 'Aquavolo Stainless Steel Rotating Overhead Shower', 0.00, 65535, 'a131dbde6f7c8cb91490e1117d70641f.jpg', '', 'cecd12d65027f213236d1728909842fa.jpg', '', 'images/tech_draw/aquavolo.pdf', '2010-07-19 17:03:01', '0000-00-00 00:00:00'),
(178, 36, 'Axor Citterio Wall Mounted Basin Mixer', 'Axor Citterio Wall Mounted Basin Mixer with Cross Handle and Long Spout', 0.00, 65535, 'c61f99b570b5744b80042e50de4a6170.jpg', 'b1063a57f1d961ce006b0e7d9f4214ea.jpg', '17b202682b3eb5ae21f3e69b77038ca7.jpg', 'b52e9d905865474da88d5350d74555ca.jpg', '', '2010-07-18 13:28:06', '0000-00-00 00:00:00'),
(176, 36, 'Axor Starck Dual Lever Basin Mixer', 'Axor Starck Dual Lever Basin Mixer with Pop Up Waste', 0.00, 65535, '86e30fa2ca3a1eaedb0e8dbe8d80ec34.jpg', '0aa41aa5714d9d591cafee9a1ef95c06.jpg', '7d6c9153a383ae705a956358ab5578b9.jpg', '7b8d76d4350395e98587eb25a9c525dc.jpg', 'images/tech_draw/Axor_Starck_2Handle_Basin_Mixer.pdf', '2010-07-18 13:18:26', '0000-00-00 00:00:00'),
(177, 36, 'Axor Starck Single Lever Basin Mixer', 'Axor Starck Single Lever Basin Mixer with Pop Up Waste', 0.00, 65535, '8288bef0d085fa16c0725628c07f1d1e.jpg', '469c30a545bb58fbaed82914f8bbbf1f.jpg', '7b449b619da6f6d8af7e0126372c3064.jpg', '43e9faa854ba1a7af6fb220a60913f9b.jpg', 'Axor_Starck_Single_Lever', '2010-07-18 13:20:07', '0000-00-00 00:00:00'),
(198, 33, 'Retro-Arc Shower Head', 'Retro-Arc Shower Head 300mm', 0.00, 65535, 'e0651b51c733b94efbfc7ba28291957b.jpg', 'f3e5b7b1e03aa35b1d5774a312585d41.jpg', '2781902d2c8f76c4f340fb9a73bc6cec.jpg', '062ddce886dc0f12e8eaee449bbc1303.jpg', 'images/tech_draw/retro_arc.pdf', '2010-07-19 17:38:25', '0000-00-00 00:00:00'),
(196, 33, 'Lumiere Quadro Shower Head', 'Lumiere Quadro Overhead Shower with Lighting', 0.00, 65535, 'a09ac6c6dc7970989a4257b279dbd25a.jpg', '2af4a60bc5ab954fe4f93e3b94e32301.jpg', 'b392f25a9da39f507b5eac70c2ad1a33.jpg', '73a6a2113238a9930d04c92f2937ba29.jpg', 'images/tech_draw/lumiere.pdf', '2010-07-19 16:57:32', '0000-00-00 00:00:00'),
(179, 36, 'Axor Urquiola Basin Mixer for Washbowls', 'Axor Urquiola Basin Mixer for Washbowls with Soapdish/Toothbrush Holder', 0.00, 65535, 'baf45da047ed1b7d680c5138dfdc5dc4.jpg', '321af954f84867581a4a32ba9ecc4480.png', 'ee891ec6e4011b42995ccdefe58b8f0d.jpg', 'b8d0f3df01ef5c12e2b9a68b46a93967.png', 'images/tech_draw/Axor_Urquiola_Basin_Mixer.pdf', '2010-07-18 13:40:16', '0000-00-00 00:00:00'),
(183, 39, 'Focus E Exposed Shower Mixer', 'Focus E Exposed Shower Mixer', 0.00, 65535, 'dcb88b999d2d437b9bea92f3571c4402.jpg', '092b5369e170d8576cd0f55063172e5b.jpg', 'cddaa9666fb2ba3dbe03482df9c04021.jpg', '6bf5b9915b7fc931a1ce6c970e7d3085.jpg', '', '2010-07-18 14:42:42', '0000-00-00 00:00:00'),
(184, 54, 'Axor Starck Semi-Pro Kitchen Mixer', 'Axor Starck Semi-Pro Kitchen Mixer', 0.00, 65535, 'b8460e07ad4278110dd7ad26d13a451d.jpg', '418715e12f7cbcc83e4fd65a39377063.jpg', '5ce47a69ee4a9c10ef22b04bbd7e5f56.jpg', '9b35463db84e73a016ba13c4520a353b.jpg', 'images/tech_draw/Axor_Starck_Semi-Pro Kitchen.pdf', '2010-07-18 15:18:52', '0000-00-00 00:00:00'),
(187, 37, 'Metropol E Bath Mixer', 'Metropol E Bath Mixer', 0.00, 65535, '1bbc036804882a739de6ed33b7337294.jpg', '97296729dd0fd740b57631b8abdd0ace.jpg', '409d999a27db710e4f305bc8f3775ba2.jpg', '4c7ad7b9792706598d32262f830f4082.jpg', 'images/tech_draw/Metropol_E_Bath_Mixer.pdf', '2010-07-18 15:42:35', '0000-00-00 00:00:00'),
(206, 33, 'Oki Renovation Shower', 'Oki Renovation Shower Head with Handshower', 0.00, 65535, '6953d1da8b4ed0f8fc4aca83c1df00e7.jpg', '8f42cc325d3e98abb39e71a4ed2a3538.jpg', '41eb68d0f618c70cb780ad7baa3c3c73.jpg', '3150b516f66268a24e71c9d14aede88d.jpg', 'images/tech_draw/oki_renovation.pdf', '2010-07-19 18:15:11', '0000-00-00 00:00:00'),
(193, 36, 'Axor Terrano Basin Mixer', 'Axor Terrano Basin Mixer with Zero Handle', 0.00, 65535, 'db860eb89523e218cd5e81fabcec8c59.jpg', '805323bb3fb54251c830890339c945d2.jpg', 'bbbbf444cc4aa89baf1cbe03ace96413.jpg', '15e9daccf52e79b3398c922be372063b.jpg', 'images/tech_draw/axor_terrano.pdf', '2010-07-18 18:17:55', '0000-00-00 00:00:00'),
(204, 33, 'Cube Shower Head', 'Cube Shower Head 210x210mm', 0.00, 65535, 'ec7ca7017561405d049a089a0c80e787.jpg', '6d13a0877bbff08c91117f0974811948.jpg', 'a3cdd36016e4c60d111307a42e4240c9.jpg', '44cbb7f557d9fe3c7c55ec944b72731e.jpg', 'images/tech_draw/Cube_Shower.pdf', '2010-07-19 18:04:30', '0000-00-00 00:00:00'),
(205, 33, 'Oki Shower Head', 'Oki Shower Head 200mm', 0.00, 65535, '304e722ad46e483e868d507353cd8af7.jpg', '291a326bd7383c5b43bbe9d2d2a6bf53.jpg', 'a438234bbe4ec01f3288ef5e1ff83739.jpg', '5975a6227576d63ba13fcef9826ab9bf.jpg', 'images/tech_draw/Oki.pdf', '2010-07-19 18:08:57', '0000-00-00 00:00:00'),
(203, 33, 'York Shower Head', 'York Shower Head', 0.00, 65535, '3751bcd7badcf4dc7b55f10b499a5a82.jpg', '4b64dad8f8b83b040a89f2ae1eb7e367.jpg', 'f3170b94528dda9ce44247907514ac14.jpg', 'e55983e4ab270d57f419a9d2fdea760a.jpg', 'images/tech_draw/york.pdf', '2010-07-19 18:02:42', '0000-00-00 00:00:00'),
(202, 33, 'Cubic-Gom Body Jet', 'Cubic-Gom Orientable Body Jet', 0.00, 65535, '66415ca53173117e96744b97acb070e7.jpg', '9e40be9ff223c131cd939509898af64a.jpg', '2c15b375b74ecbc4f0c87e68d8ff7ec5.jpg', 'b8986977e75bd5dbb7bd5ee4e339d08e.jpg', 'images/tech_draw/Cubic_Gom.pdf', '2010-07-19 17:55:38', '0000-00-00 00:00:00'),
(201, 33, 'Oval-Gom Body jet', 'Oval-Gom Orientabel Body jet', 0.00, 65535, 'eedefe75f1aa597f8ce5dbbe4c246d02.jpg', '3e14d0bc25751e8d19250bc44e239a57.jpg', '5a46657add1868bb578856710121e756.jpg', '39f8be1ff21e80820c4bf4f9b5e2983e.jpg', 'images/tech_draw/oval_gom.pdf', '2010-07-19 17:50:42', '0000-00-00 00:00:00'),
(186, 54, 'Axor Steel Kitchen Mixer', 'Axor Steel Kitchen Mixer', 0.00, 65535, '34b216e034161252aa47b942fcb7b70a.jpg', '7144344ef86ddb9a01ecc69b635cbab6.jpg', '146c076b1a1a3f3bae2830098a519a24.jpg', 'bc94a58c06e5b9dd68201b550f7adea6.jpg', 'images/tech_draw/Axor_Steel_Kitchen_Mixer.pdf', '2010-07-18 15:32:17', '0000-00-00 00:00:00'),
(185, 54, 'Axor Starck Classic Kitchen Mixer', 'Axor Starck Classic Kitchen Mixer', 0.00, 65535, '7e4a23cbe7806093d39d21b393febecd.jpg', '420268bd74ec1fddf7af9dcf05af97c6.jpg', '70a89e006afac77bf14106f170190bbb.jpg', 'fd3a58e01d57c7d4d42a0b0d6ce75361.jpg', 'images/tech_draw/Axor_Starck_Classic_Kitchen.pdf', '2010-07-18 15:25:17', '0000-00-00 00:00:00'),
(191, 36, 'Axor Uno Basin Mixer', 'Axor Uno Basin Mixer with Zero Handle', 0.00, 65535, 'a8f3cefe81de0b3491b965a365bbf8f1.jpg', '1ecb143c1d9ba043a8119ce3d7eca3b3.jpg', '18dc7b86cd5d5837c4897172c80b4a87.jpg', '1255a06b8115fda66aad95ba59448954.jpg', 'images/tech_draw/Axor_Uno_Basin_Mixer.pdf', '2010-07-18 17:24:02', '0000-00-00 00:00:00'),
(113, 37, 'Talis s Bath Mixer', 'Talis s Bath Mixer', 0.00, 65535, 'b3aa323c3eaba1f6e54c9271dc6751e2.jpg', 'c99ee173a5affe5086c0fafaa4dd2630.jpg', '09cb3fa7f637126c6c8698dd5ccdd451.jpg', '57eed72798405fee7289de358ef3621f.jpg', 'images/tech_draw/Talis_s_Bath_Mixer.pdf', '2010-06-29 16:51:43', '0000-00-00 00:00:00'),
(192, 36, 'Axor Steel Wall Mounted Basin Mixer', 'Axor Steel Wall Mounted Basin Mixer for Concealed Installations', 0.00, 65535, '64d45bd94193660b94efa61c0d743404.jpg', '96bed14e906af8f8bece42a8c2784ca8.jpg', '1ceae02205103f6fdad732f02176f11d.jpg', '5543919a914d1b0ec1f553c43091ae51.jpg', 'images/tech_draw/axor_steel_wallmonuted_basin_mixer.pdf', '2010-07-18 17:29:38', '0000-00-00 00:00:00'),
(188, 37, 'Metris S Bath Mixer', 'Metris S Bath Mixer', 0.00, 65535, '8769f810e09b84797af13bf2bc9583e0.jpg', '4fad0b013213405e0e6d3a1055f3b926.jpg', 'af019fdb651254258bab8db1a6093446.jpg', '13c4f163514b067c68a1d9e8af3e2652.jpg', 'images/tech_draw/Metris_S_Bath_Mixer.pdf', '2010-07-18 15:51:14', '0000-00-00 00:00:00'),
(189, 37, 'Focus E Bath Mixer', 'Focus E Bath Mixer', 0.00, 65535, 'e00c09ef9db6e4daaa3b3d7bde2e5d87.jpg', 'd0e00096911e8ffdbe264e5e70544c48.jpg', '645f6cdf43d1d0675dc0e055e08c4505.jpg', '7419cb78b8509584a3d8022cf95a241c.jpg', 'images/tech_draw/Focus_E_Bath_Mixer.pdf', '2010-07-18 16:26:07', '0000-00-00 00:00:00'),
(182, 39, 'Metris S Shower Mixer', 'Metris S Shower Mixer for Concealed Installation', 0.00, 65535, '15f297f121844dbfc79507f3a147f463.jpg', '2ea634ae0db121eec7b53bb5a3529bd2.png', '34b4182dffaa183822391f00e263eb3e.jpg', 'c14045f3579ccf7db953d5e48fd79406.png', '', '2010-07-18 14:33:07', '0000-00-00 00:00:00'),
(116, 38, 'Axor Massaud Bidet Mixer', 'Axor Massaud Bidet Mixer', 0.00, 65535, '4da71cb012a5b164f6a465b7d0913011.jpg', '0bf8a3ba044fdbe95a780ac750197412.jpg', '7e9aeb68bd4cf54f4ded71b293cf9878.jpg', '98b63ab62052c54dc76aea0107f135ac.jpg', 'images/tech_draw/Axor_Massaud_Bidet_Mixer.pdf', '2010-06-29 17:23:38', '0000-00-00 00:00:00'),
(180, 38, 'Axor Montreux Bidet Mixer', 'Axor Montreux Bidet Mixer', 0.00, 65535, '25316bf095284fa9c129aa8c20689524.jpg', '5b9617b4e0af1d1c49480b933719f5a8.jpg', '89c94cc77761c6afc23cf6cf0a169162.jpg', 'e7addac017e08d6b5935b5d878bd11ed.jpg', 'images/tech_draw/Axor_Montreux_Bidet_Mixer.pdf', '2010-07-18 14:09:16', '0000-00-00 00:00:00'),
(181, 39, 'Focus E Bath Mixer', 'Focus E Bath Mixer', 0.00, 65535, '6082a6e66f3624935589c516a384044d.jpg', '52f3a90b56c8c7ff91b7a75256bf9d3c.jpg', '43392e908ae74cfb4e5d2fc767db2476.jpg', '6883298d19d329eb52a5f79773ced0c6.jpg', 'images/tech_draw/Focus_E_Single_Lever.pdf', '2010-07-18 14:28:00', '0000-00-00 00:00:00'),
(118, 39, 'Axor starck x shower mixer (hansgrohe)', 'Axor starck x shower mixer', 350.00, 65535, '90d430387ac5c9362a96a167ab6e7e75.jpg', '11c6d3b68cb0f558852ca977f25080c4.jpg', '7f1d32675cf61a89d58c252614db6a08.jpg', '1235c488276e0a47d9892bbc5225b627.jpg', 'http://www.hansgrohe-int.com/int_en/107145_393933325F31385F3339313332.htm', '2010-06-29 17:27:26', '0000-00-00 00:00:00'),
(119, 39, 'Metris s wall mounted shower mixer (hansgrohe)', 'Metris s wall mounted shower mixer', 450.00, 65535, '1dca78fa9be8c9825f4cbc83563fea4e.jpg', 'd13b8722c6b32a5bbcbdb95784d7049c.jpg', 'b2556e4111fa7e32d70190989b8d3444.jpg', '79f6d4f70929012a6a6450d9cda68c82.jpg', 'http://www.hansgrohe-int.com/int_en/107145_393933325F31385F3339343131.htm', '2010-06-29 17:29:29', '0000-00-00 00:00:00'),
(120, 39, 'Axor terrano shower mixer with diverter (hansgrohe)', 'Axor terrano shower mixer with diverter', 500.00, 65535, '3a36a9a3090902b5517c646457209deb.jpg', '6659ed95349e668d755186fe57cdd75f.jpg', '9587765848df26fa4b7d3925a8db29c1.jpg', '6c4cbd2d37235d459e03196b9994e3f4.jpg', 'http://www.hansgrohe-int.com/int_en/107145_393933325F31385F3339343131.htm', '2010-06-29 17:31:53', '0000-00-00 00:00:00'),
(200, 33, 'Fresh Shower Head with Arm', 'Fresh Shower Head with Arm', 0.00, 65535, '4ca11d300a6eb98112527489a874bc83.jpg', '11c765d815a6e326363473ea85b49d3c.jpg', '8b6a567d3d401363fcc41039a7c2e366.jpg', 'c6d2c8bcb8cd114a023c0e72de4f22e9.jpg', 'images/tech_draw/fresh_shower.pdf', '2010-07-19 17:46:47', '0000-00-00 00:00:00'),
(158, 53, 'Raindance E240 AIR Overhead Shower', 'Raindance E240 AIR 1jet Overhead Shower with Ceiling Connection ', 0.00, 65535, 'bf249b88642f55ae8fdd16d4dc2a26db.jpg', 'bf2df9798d2239a285878b2034704f14.jpg', '58aaf64afedb49215938825733936d96.jpg', '8ed5e5e195306ce7b92a775d527f5811.jpg', 'images/tech_draw/radiance_e240_air_overhead.pdf', '2010-07-17 05:42:07', '0000-00-00 00:00:00'),
(157, 14, 'Pro A Washbasin Bowl', 'Pro Series/Washbasin Bowl/60x40cm', 0.00, 65535, '774b8063d2aeea8a7ca3f6fe0ddfa1b2.jpg', 'a1d1b036a58123d90664ef7156d0fe26.jpg', '8d05c9586ec56341763a6517e7e59b07.jpg', '36d8325fa0b80eaae0107c902b317185.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M816952#tabAnchor', '2010-07-17 05:20:16', '0000-00-00 00:00:00'),
(156, 52, 'Multi-Functional Shower', 'Multi-Functional Shower 180x110cm with Coloured Lights/Speakers', 0.00, 65535, '40ac70c282e91a0f93cb8ba8260dfd04.jpg', '286b38802f8af532467b703ef512ae15.jpg', 'd7b0445cd62742aee654ef24495c178e.jpg', 'a4ddcd23cc5b3b2a0d28add81718de52.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rrg.com.html?category=mfd&product=730001&nodeId=97902', '2010-07-17 04:44:53', '0000-00-00 00:00:00'),
(153, 51, 'Starck 1 Urinal with Fly', 'Starck 1 Sereis/Urinal with Concealed Inlet and Outlet', 0.00, 65535, '1e28bb447c45434b6685e0b581205d1c.jpg', '5df2dc76e9c001fac3290a3506731ca0.jpg', 'b3c23117ae183bd045454b6945e3a186.jpg', '8afb9f515750102ffc23bb8621d8ab1f.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rt3.com.html?category=urinals&product=083432&nodeId=93207', '2010-07-16 18:52:55', '0000-00-00 00:00:00'),
(154, 51, 'Starck 3 Urinal', 'Starck 3 Series/Urinal with COncealed Inlet and Outlet', 0.00, 65535, '91549a07c2cee5ab19b5d646ad8fcf90.jpg', '4ab6a1817dee0d67394e76abe87bb83a.jpg', '388a24e32c92da52c96ec74d393b981f.jpg', '29d84773f77a51b04959e05163ed7410.jpg', 'http://www.duravit.com/products/series/starck-3/urinals/urinal--082625_urinals_93710_useo6q3rtg.html', '2010-07-16 18:56:10', '0000-00-00 00:00:00'),
(190, 36, 'Axor Uno2 basin Mixer', 'Axor Uno2 basin Mixer with High Swivel Spout', 0.00, 65535, '3f4d23abea6feeafb6a69b730b03fa23.jpg', '3ba18699d07207b2542fdd4364d3dbf7.jpg', 'dfb81c3c08b2c8eb6d0e770cde7540e2.jpg', '5dbb852ef54028290aa9eff47b252220.jpg', 'images/tech_draw/Axor_Uno2_Basin_Mixer.pdf', '2010-07-18 17:21:18', '0000-00-00 00:00:00'),
(147, 47, '2nd Floor Wall Mounted Bidet', '2nd Floor Series /Bidet Wall mounted with overflow', 0.00, 65535, '64da27f519f539da79f6ebb7368a8d49.jpg', '66b95d36f2b75e935f4e6f2afe5cee4c.jpg', '436ad274ba49b8e2893246c808e2302e.jpg', 'd42762d3b615fef632ca71d47f73dca8.jpg', 'http://www.duravit.com/duravit/html/default/useo-6qcjj2.com.html?category=bidets&product=223515&nodeId=91338', '2010-07-16 16:28:32', '0000-00-00 00:00:00'),
(127, 45, 'Starck X Monobloc WC', 'Starck X Series/ Toilet Close-Coupled/ Vario Outlet', 0.00, 65535, 'ac0064fb1e7d77ccad3d17aa57b999a1.jpg', 'e1d4a7662fa79343792b0317164b0995.jpg', '203ddca09333e11d5557adc530c6534b.jpg', '8cc09fde151cafe6033f04dde8b0d44e.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rsu.com.html?category=toilets&product=210009&nodeId=94349', '2010-07-06 16:29:08', '0000-00-00 00:00:00'),
(129, 45, 'Starck 1 Wall Mounted WC', 'Starck 1 Series/Toilet Wall Mounted/Horizontal Outlet', 0.00, 65535, '8814ed5723177ba2907fa4ea565e0a93.jpg', 'eae9467390daded120c6e4b256b2fba3.jpg', 'd6341d8ebb1c68f3cbcf61dff52b285c.jpg', '6ea0c947a610191b2cb2f8c2d1dd7749.jpg', 'http://www.duravit.com/products/series/starck-1/toilets/toilet-wall-mounted--021009_toilets_93218_useo6q3rt3.html', '2010-07-06 17:16:59', '0000-00-00 00:00:00'),
(194, 36, 'Axor Carlton 3 Hole Basin Mixer', 'Axor Carlton 3 Hole Basin Mixer with Pop Up Waste', 0.00, 65535, '6979302892cef03c2b78ae279c5cd6be.jpg', '0ca633917bf12f7a13bd5c524810c73d.jpg', 'e44f53b217ffd284b28a5c31eeb11665.jpg', '88f9db3a74c0faeb8000154de0c40770.jpg', 'images/tech_draw/axor_calton_3_hole.pdf', '2010-07-18 18:19:52', '0000-00-00 00:00:00'),
(134, 44, 'Starck 1 Vanity Basin', 'Starck 1 Series/Vanity Basin/53.5cm', 0.00, 65535, 'a7409cff21d808fc5e82e652d545870f.jpg', '6729b847cb4a55771caa601a9e92a9fd.jpg', '501bc5ff10360bce999f9d41167d557e.jpg', '9022cc298c289f3161e20de7e5105d00.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rt3.com.html?category=washbasins&product=040753&nodeId=93175', '2010-07-07 15:26:42', '0000-00-00 00:00:00'),
(135, 44, 'Architec Handrinse Basin', 'Architec Series/Handrinse Basin/64.5x41cm', 0.00, 65535, 'b338a837e450dceb7b58d104d19e688b.jpg', '9f9701d391a8a876faeccee1ef6bde40.jpg', '9e1e4a42ea43bdc1af0cd13855194edd.jpg', 'c675aa99ef4349a1074cfe0e4d055bc6.jpg', 'http://www.duravit.com/duravit/html/default/useo-6ptmab.com.html?category=washbasins&product=076565&nodeId=90552', '2010-07-07 15:42:01', '0000-00-00 00:00:00'),
(136, 44, 'Vero Semi-Ped Basin', 'Vero /Series/Semi-Ped Basin/100x47cm', 0.00, 65535, 'c1a526ba008fba56dce2a1090ed3b559.jpg', 'c97b59ebc00354a9edda061a41d238b9.jpg', 'b36aa30b6cd93faaf93f1c6f39cc3788.jpg', 'ab5122edebcdef57c30521b0d5a1521f.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3ruf.com.html?category=washbasins&product=045410&nodeId=94130', '2010-07-07 15:46:31', '0000-00-00 00:00:00'),
(137, 44, '1930 Series Corner Basin', '1930 Series/Corner Basin/59.5x45cm', 0.00, 65533, 'd7df8a62181648b28b4ca27cba571ba2.jpg', '7d7bfc8924be63ed36fc1e758067158a.jpg', '56c1cf50a690abcde258e475962714ca.jpg', '7177a82a757850d817fd895dd8c24f1d.jpg', 'http://www.duravit.com/duravit/html/default/useo-6ptm9y.com.html?category=washbasins&product=079342&nodeId=90398', '2010-07-07 16:15:25', '0000-00-00 00:00:00'),
(138, 44, 'Starck 2 Semi-Ped Basin', 'Starck 2 Semi-Ped Basin', 0.00, 65535, '2e701d05a88c3b5e5ffb3c18e48f72f0.jpg', 'fbde1c149e400e8f3c8b0478b2b7d8bb.jpg', '9209d11bea418e5d7606131bdbf8cbf7.jpg', 'f5b2a701e82f2a41d70b3131312ade87.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rta.com.html?category=washbasins&product=041165&nodeId=93487', '2010-07-07 16:18:01', '0000-00-00 00:00:00'),
(139, 44, 'PuraVida Semi-Ped Basin', 'PuraVida Series/Semi-Ped Basin/70x50cm', 0.00, 65535, '12a3dd94b5cbe4031835e816f80a3332.jpg', 'c1c3f32380ed98fdd3480ccd29b32802.jpg', 'c597e06dc1f3d70987f5a346fb546655.jpg', '2cd3efcec56cffec19a8acee265e8538.jpg', 'http://www.duravit.com/duravit/html/default/sart-7pyazk.com.html?category=washbasins&product=270070&nodeId=246588', '2010-07-07 16:20:26', '0000-00-00 00:00:00'),
(140, 44, 'Bagnella Wash Bowl', 'Bagnella Series/Wash Bowl/48cm', 0.00, 65535, 'afc16a3039b6ecbb1ec5507e3aee4268.jpg', '385546dcb64acae3b84701dc2a7bd6ff.jpg', '0ba2c055e626a687d31b49f3c2645b44.jpg', '978b2146e7dacef75bf5c08c2b9bb60c.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q4nxa.com.html?category=washbasins&product=045148&nodeId=90585', '2010-07-07 16:27:05', '0000-00-00 00:00:00'),
(142, 44, 'Starck X Full-Ped Basin', 'Starck X Series/Full-Ped Basin/43.5x57.5cm', 0.00, 65535, 'a5de2d7cf3dd752891c9badb207e29c3.jpg', '450801ec623dbcc9208559a6bc86625a.jpg', '90cf126de37abcc2aabffbb7359f0136.jpg', '952eaac0a3d41e8673d7e3a66c02e8bd.jpg', 'http://www.duravit.com/duravit/html/default/useo-6q3rsu.com.html?category=washbasins&product=230140&nodeId=94416', '2010-07-07 17:00:15', '0000-00-00 00:00:00'),
(143, 14, 'Alessi Dot Double Basin', 'Alessi Dot Series/Double Countertop Basin/144x49cm', 0.00, 65535, 'a048bff1a4e13fee25dbc0fe43d07948.jpg', '', '1f47820ee18f5eb4362cfd06227647f7.jpg', '', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=t&MD=CT_M814905#tabAnchor', '2010-07-07 18:06:36', '0000-00-00 00:00:00'),
(144, 14, 'Alessi Dot Semi-Ped Basin', 'Alessi Dot Series/Semi-Ped Basin/74/49cm', 0.00, 65535, '8dfed0c8c9f709536b7027a43babc514.jpg', 'ecc9596e0c3ff48a734dc6bb7fe7dc47.jpg', '68f212b8b8bc195d17a186ce65971877.jpg', 'd3e1745af8a9f972e2b21845f10b87ed.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?view=d&MD=CT_M812905#tabAnchor', '2010-07-07 18:17:44', '0000-00-00 00:00:00'),
(145, 14, 'Alessi One Drop In Basin', 'Alessi One Series/Drop In Basin/50x50cm', 0.00, 65535, '9afd91ad3510c6c641822f60fe63240e.jpg', 'b9172af49a576bf5134bd9e9a7c26b6a.jpg', '0341bfcdd0fac17ff1279e85eeae73dc.jpg', 'b9380c7cd0be11cc1d6875fece0d62ca.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?&view=t&MD=CT_M813971', '2010-07-07 19:07:26', '0000-00-00 00:00:00'),
(146, 14, 'Alessi One Small Basin', 'Small washbasin with integrated siphon cover', 0.00, 65535, 'd9be2e2d46a9ca303da81ca367cf8803.jpg', 'bb5237932db2b448d64429b467d6b5a6.jpg', '67fa3f334f4b2554690860901b49eff8.jpg', '344acc8e0bccd7680c6393cca1f17434.jpg', 'http://www.export.laufen.com/wps/wcm/connect/LAUFEN_EXPORT/BASE/PRODUCTS/PRODUCT+CATALOGUE/model/?&view=t&MD=CT_M815970', '2010-07-07 19:18:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop_config`
--

CREATE TABLE IF NOT EXISTS `tbl_shop_config` (
  `sc_name` varchar(50) NOT NULL DEFAULT '',
  `sc_address` varchar(100) NOT NULL DEFAULT '',
  `sc_phone` varchar(30) NOT NULL DEFAULT '',
  `sc_email` varchar(30) NOT NULL DEFAULT '',
  `sc_shipping_cost` decimal(5,2) NOT NULL DEFAULT '0.00',
  `sc_currency` int(10) unsigned NOT NULL DEFAULT '1',
  `sc_order_email` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shop_config`
--

INSERT INTO `tbl_shop_config` (`sc_name`, `sc_address`, `sc_phone`, `sc_email`, `sc_shipping_cost`, `sc_currency`, `sc_order_email`) VALUES
('IL Bagno', '1a Goshen Estate, Lekki Lagos Nigeria', '08035341111', 'michael@ilbagnonigeria.com', 5.00, 4, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL DEFAULT '',
  `user_password` varchar(32) NOT NULL DEFAULT '',
  `user_regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_password`, `user_regdate`, `user_last_login`) VALUES
(1, 'admin', '2a4cbce0729af73b', '2005-02-20 17:35:44', '2011-01-06 12:47:14'),
(4, 'webmaster', '026cf3fc6e903caf', '2010-07-19 06:14:55', '0000-00-00 00:00:00');
