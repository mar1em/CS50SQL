CREATE TABLE `users`(
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32) NOT NULL,
    `username` VARCHAR(32) NOT NULL UNIQUE,
    `password` VARCHAR(32) NOT NULL UNIQUE,
    PRIMARY KEY(`id`)
);

CREATE TABLE `schools` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32),
    `type` VARCHAR(32),
    `location` VARCHAR(32),
    `year` INT UNSIGNED,
    PRIMARY KEY(`id`)
);

CREATE TABLE `companies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32),
    `industry` VARCHAR(32),
    `location` VARCHAR(32),
    PRIMARY KEY(`id`)
);

CREATE TABLE `people_connections` (
    `user_id` INT,
    `follow_id` INT,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`follow_id`) REFERENCES `users`(`id`)
);

CREATE TABLE `schools_connections` (
    `id` INT AUTO_INCREMENT,
    `user_id` INT,
    `school_id` INT,
    `start_affiliation` DATETIME,
    `end_affiliation` DATETIME,
    `type_degree` VARCHAR(32),
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`school_id`) REFERENCES `schools`(`id`),
);

CREATE TABLE `companies_connctions` (
    `id` INT AUTO_INCREMENT,
    `user_id` INT,
    `company_id` INT,
    `start_affiliation` DATETIME,
    `end_affiliation` DATETIME,
    `title` VARCHAR(32),
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`),
);
