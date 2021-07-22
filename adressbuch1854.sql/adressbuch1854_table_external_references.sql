
CREATE TABLE `external_references` (
  `id` int(11) NOT NULL,
  `reference` varchar(128) DEFAULT NULL,
  `short_description` varchar(256) DEFAULT NULL,
  `link` varchar(512) DEFAULT NULL,
  `reference_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
