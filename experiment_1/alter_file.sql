USE `student_220131`;

ALTER TABLE `S` ADD COLUMN `birth_date` DATE;
ALTER TABLE `S` ADD COLUMN `height` INT;

SHOW COLUMNS FROM `S`;

ALTER TABLE `S` DROP COLUMN `height`;

SHOW COLUMNS FROM `S`;


