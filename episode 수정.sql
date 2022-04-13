drop table episode;

CREATE TABLE `episode` (
  `episode_num` bigint NOT NULL,
  `book_id` int NOT NULL,
  `episode_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`episode_num`,`book_id`),
  KEY `FK_book_TO_episode_1` (`book_id`),
  CONSTRAINT `FK_book_TO_episode_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci