CREATE TABLE `roles`
(
  `id`   BIGINT(20)  NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
);

CREATE TABLE `users`
(
  `id`        BIGINT(20) NOT NULL AUTO_INCREMENT,
  `createdAt` DATETIME   NOT NULL,
  `updatedAt` DATETIME   NOT NULL,
  `email`     VARCHAR(40)  DEFAULT NULL UNIQUE,
  `name`      VARCHAR(40)  DEFAULT NULL,
  `password`  VARCHAR(100) DEFAULT NULL,
  `username`  VARCHAR(15)  DEFAULT NULL UNIQUE,
  PRIMARY KEY (`id`)
);

CREATE TABLE `user_roles`
(
  `user_id` BIGINT(20) NOT NULL,
  `role_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`)
);

ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_fk1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

INSERT INTO roles(id, name)
VALUES (1, 'ROLE_USER');
INSERT INTO roles(id, name)
VALUES (2, 'ROLE_ADMIN');

INSERT INTO users(id, name, email, username, password, createdAt, updatedAt)
VALUES (10001, 'admin', 'admin@login.com', 'admin',
        '$2a$10$bNBNlTcB9866uE9U4hqhKOE23zm3L0M9axEBkpa8mewJ0fNQmWPhm', NOW(), NOW());
INSERT INTO users(id, name, email, username, password, createdAt, updatedAt)
VALUES (10002, 'user', 'user@login.com', 'user',
        '$2a$10$.k848WbaMRDSnvT39f4gzuXHYcIxAhUz.XEQaqlE/7DGj156g1V56', NOW(), NOW());
INSERT INTO users(id, name, email, username, password, createdAt, updatedAt)
VALUES (10003, 'test', 'test@login.com', 'test',
        '$2a$10$pWBEKe/8X.HFJ1KuxULG6uM838TMHosxFAVMLrBsDWM9IO1A6AbE.', NOW(), NOW());

INSERT INTO user_roles(user_id, role_id)
values (10001, 1);
INSERT INTO user_roles(user_id, role_id)
values (10001, 2);
INSERT INTO user_roles(user_id, role_id)
values (10002, 1);
