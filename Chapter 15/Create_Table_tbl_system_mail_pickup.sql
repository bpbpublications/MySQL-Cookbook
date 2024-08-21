CREATE TABLE `tbl_system_mail_pickup` (
 `id` int NOT NULL AUTO_INCREMENT,
 `mFrom` varchar(128) NOT NULL DEFAULT 'noreplyccms@YourDomain.com',
 `mTo` varchar(128) NOT NULL,
 `mCC` varchar(128) DEFAULT NULL,
  `mBCC` varchar(128) DEFAULT NULL,
  `mSubject` varchar(254) DEFAULT NULL,
  `mBody` longtext,
  `added_by` varchar(36) DEFAULT NULL,
  `updated_by` varchar(36) DEFAULT NULL,
  `added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email_sent` bit(1) DEFAULT b'0',
  `send_tried` int DEFAULT '0',
  `send_result` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;