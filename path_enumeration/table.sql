CREATE TABLE IF NOT EXISTS `path_enumeration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(1000),
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
