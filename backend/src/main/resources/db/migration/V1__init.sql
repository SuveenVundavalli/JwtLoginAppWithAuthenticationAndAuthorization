CREATE TABLE `Role`
(
  `id`          BIGINT       NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(127) NOT NULL,
  `description` VARCHAR(127) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `User`
(
  `id`       BIGINT       NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(127) NOT NULL UNIQUE,
  `password` VARCHAR(127) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `User_Roles`
(
  `id`      BIGINT NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT NOT NULL,
  `role_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
);
ALTER TABLE `User_Roles`
  ADD CONSTRAINT `User_Roles_fk0` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);

ALTER TABLE `User_Roles`
  ADD CONSTRAINT `User_Roles_fk1` FOREIGN KEY (`role_id`) REFERENCES `Role` (`id`);


INSERT INTO User (id, username, password)
VALUES (1, 'admin', '$2a$09$gCN6gm8FBW7qCp510yNURO/HT3cP3qZ5tqdZ9DBT3RveztK6o4Hzq');
INSERT INTO User (id, username, password)
VALUES (2, 'user', '$2a$09$9ZZaZRj/OlVzcpclWMAFAeR.2sgbUbUh88GSv9HfoX8U3EBTkq4Ae');
INSERT INTO User (id, username, password)
VALUES (3, 'test', '$2a$09$hqxwP6QG4xQkDDOkud.jFOi7DdlwV2p6PZ2T2zFqOiBphstt9Xx/6');

INSERT INTO Role (id, description, name)
VALUES (4, 'Admin role', 'ADMIN');
INSERT INTO Role (id, description, name)
VALUES (5, 'User role', 'USER');

INSERT INTO User_Roles (user_id, role_id)
VALUES (1, 4);
INSERT INTO User_Roles (user_id, role_id)
VALUES (2, 5);
