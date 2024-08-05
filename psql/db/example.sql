-- ------------------------
-- Create DATABASE
-- ------------------------
CREATE DATABASE IF NOT EXISTS ${PSQL_DATABASE};
USE ${PSQL_DATABASE};

-- -- ----------------------------
-- -- Table structure for students
-- -- ----------------------------
-- DROP TABLE IF EXISTS `students`;
-- CREATE TABLE `students` (
--    `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
--    `apellidos` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
--    `nombres` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
--    `fechaNacimiento` date NOT NULL,
--    `ciudad` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
--    `correo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
--    `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--    `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--    PRIMARY KEY (`id`) USING BTREE
-- ) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- -- ----------------------------
-- -- Table structure for schedule
-- -- ----------------------------
-- DROP TABLE IF EXISTS `schedule`;
-- CREATE TABLE `schedule` (
--    `id` int NOT NULL AUTO_INCREMENT,
--    `idStd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
--    `desiredCourse` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
--    `requiredCourse` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
--    `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--    `updateAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--    PRIMARY KEY (`id`) USING BTREE,
--    INDEX `fk_User`(`idStd`) USING BTREE,
--    CONSTRAINT `fk_User` FOREIGN KEY (`idStd`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
-- ) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- SET FOREIGN_KEY_CHECKS = 1;