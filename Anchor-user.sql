USE anchor;
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
	`user_seq` bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`created_at` datetime(6) NOT NULL,
	`email`	varchar(512) NULL,
	`email_verified_yn` varchar(1) NULL,
	`password` varchar(128) NULL,
	`user_id` varchar(100) NULL,
	`username` varchar(32) NULL,
	`profile_image_url` varchar(512) NULL,
	`role_type` varchar(20) NULL,
	`provider_type` varchar(20) NULL
);

DROP TABLE IF EXISTS `refresh_token`;

CREATE TABLE `refresh_token` (
	`refresh_token_seq` bigint NOT NULL,
	`refresh_token` varchar(256) NULL,
	`user_seq2` bigint NOT NULL
);

ALTER TABLE `refresh_token` ADD CONSTRAINT `PK_REFRESH_TOKEN` PRIMARY KEY (
	`refresh_token_seq`
);

ALTER TABLE `refresh_token` ADD CONSTRAINT `FK_user_TO_refresh_token_1` FOREIGN KEY (
	`user_seq2`
) REFERENCES `user` (
	`user_seq`
);