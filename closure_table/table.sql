CREATE TABLE IF NOT EXISTS `closure_table` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tree_paths` (
  `ancestor` BIGINT(20) UNSIGNED NOT NULL,
  `descendant` BIGINT(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`ancestor`, `descendant`),
  FOREIGN KEY (`ancestor`) REFERENCES closure_table(`id`),
  FOREIGN KEY (`descendant`) REFERENCES closure_table(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
