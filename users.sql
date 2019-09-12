
CREATE TABLE `access_token` (
  `access_token_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `access_token` text,
  `device_type` varchar(45) DEFAULT NULL,
  `device_token` varchar(150) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `device_type` enum('ios','android','web') NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `device_token` varchar(255) NOT NULL,
  `device_identifier` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_verfied` tinyint(1) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone_extension` int(11) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `block_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `access_token`
  ADD PRIMARY KEY (`access_token_id`),
  ADD KEY `fk_access_token_1_idx` (`user_id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `access_token`
  MODIFY `access_token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `access_token`
  ADD CONSTRAINT `fk_access_token_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
