/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80027 (8.0.27)
 Source Host           : localhost:3306
 Source Schema         : springboot-template

 Target Server Type    : MySQL
 Target Server Version : 80027 (8.0.27)
 File Encoding         : 65001

 Date: 22/04/2023 22:00:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `info` varchar(255) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3024, 'gutiealan@gmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3025, 'miyamotoyam@outlook.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3026, 'freemanj51@outlook.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3027, 'adeng@yahoo.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3028, 'domorgan821@outlook.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3029, 'miu227@yahoo.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3030, 'zhennansun10@yahoo.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3031, 'xz97@outlook.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3032, 'htro@icloud.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3033, 'yoshidaayano5@outlook.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3034, 'ehill94@outlook.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3035, 'tamura62@mail.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3036, 'lui2014@outlook.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3037, 'rikf@icloud.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3038, 'kwokwingyue@outlook.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3039, 'caixi@hotmail.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3040, 'fordjose1969@gmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3041, 'haroldmedina@yahoo.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3042, 'wingfatl2001@outlook.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3043, 'hui1003@yahoo.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3044, 'graham515@mail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3045, 'kasumit@mail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3046, 'jdenni@outlook.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3047, 'misakiikeda10@outlook.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3048, 'takuya3@gmail.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3049, 'momokaa@icloud.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3050, 'mukaming@gmail.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3051, 'mawm@yahoo.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3052, 'miarimu6@hotmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3053, 'griffjoanne@outlook.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3054, 'tinlomui@hotmail.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3055, 'yamazakiyuto@icloud.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3056, 'waedward@gmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3057, 'wilsonb@mail.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3058, 'castdanny@outlook.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3059, 'martinez4@yahoo.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3060, 'sylcooper@outlook.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3061, 'otodd@hotmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3062, 'sasakih@gmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3063, 'xc9@gmail.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3064, 'kaman00@mail.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3065, 'rpat@icloud.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3066, 'kwada@icloud.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3067, 'xielu@icloud.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3068, 'eherre4@outlook.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3069, 'wonlingling114@icloud.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3070, 'dz1017@gmail.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3071, 'tsut4@mail.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3072, 'sumwingh@mail.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3073, 'haraay13@hotmail.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3074, 'shino10@outlook.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3075, 'wu6@gmail.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3076, 'watanabe421@icloud.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3077, 'zhanganqi@icloud.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3078, 'guzmana@icloud.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3079, 'ajimenez@gmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3080, 'wendy64@yahoo.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3081, 'loufat@hotmail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3082, 'tinlokheung@yahoo.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3083, 'garyha@gmail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3084, 'shsiuwa@icloud.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3085, 'takedatsubasa@outlook.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3086, 'crystalthomas616@gmail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3087, 'sowingfat814@icloud.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3088, 'szeyumui@gmail.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3089, 'jeffrey5@icloud.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3090, 'lingling2011@gmail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3091, 'hsuanwingkuen@gmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3092, 'wilt7@outlook.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3093, 'marie2@gmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3094, 'anqishe1123@icloud.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3095, 'west8@gmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3096, 'daichisaito1@hotmail.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3097, 'swkwong54@gmail.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3098, 'yunxime15@outlook.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3099, 'li65@outlook.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3100, 'danielsleona@gmail.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3101, 'zhou1115@gmail.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3102, 'ruzheng7@icloud.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3103, 'gu7@gmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3104, 'fang228@outlook.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3105, 'endoeita@mail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3106, 'yuningq4@outlook.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3107, 'es9@icloud.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3108, 'robinson00@icloud.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3109, 'ichikawa2@hotmail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3110, 'sfor127@icloud.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3111, 'luismills@gmail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3112, 'sjudy@gmail.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3113, 'waihanf10@gmail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3114, 'mikewells7@hotmail.com', '小姐');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3115, 'jaste@icloud.com', '先生');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3116, 'murraybruce4@gmail.com', '女士');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3117, 'yunxi79@outlook.com', '太太');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3118, 'marshall521@mail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3119, 'tonkk06@yahoo.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3120, 'wml6@gmail.com', '教授');
INSERT INTO `user` (`id`, `email`, `info`) VALUES (3121, 'wrebecca630@icloud.com', '女士');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
