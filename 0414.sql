SELECT * FROM anchor.episode;

insert into episode(book_id, episode_name) values (1,"test");

alter table episode modify column episode_num INT NOT NULL AUTO_INCREMENT;

set foreign_key_checks = 0;
alter table user modify column user_seq BIGINT NOT NULL AUTO_INCREMENT;
set foreign_key_checks = 1;