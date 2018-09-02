-- 主机: localhost
-- 生成日期: 2018 年 09 月 1 日 21:34
-- 服务器版本: CoSta.Web Server 2.76
-- PHP 版本: 5.2
-- 
-- 数据库: `qk_tourl`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `qk_url`
-- 

CREATE TABLE `qk_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(1000) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `iStatus` tinyint(4) NOT NULL DEFAULT '1',
  `s` tinyint(4) NOT NULL DEFAULT '1',
  `posttime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `qk_url`
-- 

INSERT INTO `qk_url` (`id`, `url`, `alias`, `iStatus`, `posttime`) VALUES (1, 'http://www.baidu.com', 'baidu', 1, 1, 1363716860),
(2, 'http://www.baidu.com/', 'MWYzZ', 1, 1, 1363716989),
(3, 'http://www.caiting.com/', 'ct', 1, 1, 1363717936);
