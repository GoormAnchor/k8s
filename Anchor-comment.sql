DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
	`comment_id` bigint NOT NULL,
	`created_at` datetime(6) NOT NULL,
	`content` varchar(512) NULL,
	`user_seq` bigint NOT NULL,
	`episode_seq` int NOT NULL,
	`book_id` int NOT NULL
);

ALTER TABLE `comment` ADD CONSTRAINT `PK_COMMENT` PRIMARY KEY (
	`comment_id`
);

ALTER TABLE `comment` ADD CONSTRAINT `FK_user_TO_comment_1` FOREIGN KEY (
	`user_seq`
) REFERENCES `user` (
	`user_seq`
);

ALTER TABLE `comment` ADD CONSTRAINT `FK_episode_TO_comment_1` FOREIGN KEY (
	`episode_seq`
) REFERENCES `episode` (
	`edisode_num`
);

ALTER TABLE `comment` ADD CONSTRAINT `FK_episode_TO_comment_2` FOREIGN KEY (
	`book_id`
) REFERENCES `episode` (
	`book_id`
);

DROP TABLE IF EXISTS `like`;

CREATE TABLE `like` (
	`user_seq` bigint NOT NULL,
	`comment_id` bigint NOT NULL,
	`created_at` datetime(6) NOT NULL
);

ALTER TABLE `like` ADD CONSTRAINT `PK_LIKE` PRIMARY KEY (
	`user_seq`,
	`comment_id`
);

ALTER TABLE `like` ADD CONSTRAINT `FK_user_TO_like_1` FOREIGN KEY (
	`user_seq`
) REFERENCES `user` (
	`user_seq`
);

ALTER TABLE `like` ADD CONSTRAINT `FK_comment_TO_like_1` FOREIGN KEY (
	`comment_id`
) REFERENCES `comment` (
	`comment_id`
);

