/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : recruit

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 13/07/2022 09:40:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for college_user
-- ----------------------------
DROP TABLE IF EXISTS `college_user`;
CREATE TABLE `college_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `staffName` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `salt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `collegeName` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '0--账号禁用；1--账号启用',
  `role` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college_user
-- ----------------------------
INSERT INTO `college_user` VALUES (1, 'renshi1', '张三', 'a448410bdcbb4d7cfb32830909f6aa08', NULL, '男', '人事处', '13111111111', '13111111111@qq.com', 0, 2);
INSERT INTO `college_user` VALUES (2, 'renshi2', '王女士', 'a448410bdcbb4d7cfb32830909f6aa08', NULL, '女', '人事处', '13122222222', '13122222222@qq.com', 1, 2);
INSERT INTO `college_user` VALUES (3, 'teacher1', '张先生', 'a448410bdcbb4d7cfb32830909f6aa08', NULL, '男', '人工智能与大数据学院', '13211111111', '13211111111@qq.com', 1, 3);
INSERT INTO `college_user` VALUES (4, 'teacher2', '王女士', 'a448410bdcbb4d7cfb32830909f6aa08', NULL, '女', '软件学院', '13222222222', '13222222222@qq.com', 1, 3);
INSERT INTO `college_user` VALUES (5, 'admin', 'admin', 'a448410bdcbb4d7cfb32830909f6aa08', NULL, '女', '财务部', '13653227092', '2634225724@qq.com', 1, 1);
INSERT INTO `college_user` VALUES (7, '18080902142', '赵欣', 'fc0cf7dfd458026bc599486002c8f639', '72b41', '女', '软件学院', '13653227090', '2694417425@qq.com', 1, 2);
INSERT INTO `college_user` VALUES (8, 'renshi3', '李四', '8e5fb4a2c535226de367d17d0f4ff91f', '16a71', '男', '人力资源部', '13111111111', '13111111111@qq.com', 1, 2);
INSERT INTO `college_user` VALUES (12, 'test', '测试', '1372497da186c795d3c1f159f6f5226f', '67da2', '男', '董事长办公室', '13000000000', '13000000000@qq.com', 1, 1);

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `jobName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `jobType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `collegeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jobInfo` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `number` int(11) NOT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '男；女；不限',
  `age` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '20-35；35-50；不限',
  `degree` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专科以下；专科；本科；研究生及以上',
  `experience` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '无工作经验；1-3年；3-5年；5年以上',
  `condition` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `staffName` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '0--结束状态；1--活跃状态；2--提交用人需求',
  `createTime` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (5, '寻找一个PHP Doveloper', 'PHP 开发人员', '专业技术岗', '软件学院', '我们正在寻找一个PHP Doveloper，他必须熟悉PHP基础知识和PHP框架。Laravel & mixs， Livewire的經驗\r\n\r\n具有构建或维护 CMS 的经验。\r\n\r\n了解MVC框架。\r\n\r\n详细了解数据库设计和管理。\r\n\r\n将各种数据源和数据库集成到单个系统中的能力。', '最低薪资：$20，000\r\n\r\n最高薪资：$30，000\r\n\r\n五险一金', 2, '不限', '不限', '不限', '不限', '熟悉SQL和相关数据库，优先于具有MySQL经验的人。\r\n\r\n对基本的PHP 7或Web服务器漏洞及其解决方案有很好的了解。\r\n\r\n具有构建或维护 CMS 的经验。\r\n\r\n了解MVC框架。\r\n\r\n详细了解数据库设计和管理。\r\n\r\n将各种数据源和数据库集成到单个系统中的能力。', '张三', '13112312312', '123123132@qq.com', 1, '2022-03-04 19:11:51');
INSERT INTO `job` VALUES (6, '急招会计高薪', '会计/会计师', '专业技术岗', '财务部', '1、审批财务收支，审阅财务专题报告和会计报表，对重大的财务收支计划、经济合同进行会签；\r\n2、编制预算和执行预算，参与拟订资金筹措和使用方案，确保资金的有效使用；\r\n3、审查公司对外提供的会计资料；\r\n4、负责审核公司本部和各下属单位上报的会计报表和集团公司会计报表，编制财务综合分析报告和专题分析报告，为公司领导决策提供可靠的依据；\r\n5、制订公司内部财务、会计制度和工作程序，经批准后组织实施并监督执行；\r\n6、组织编制与实现公司的财务收支计划、信贷计划与成本费用计划。', '3000-4000', 6, '不限', '20-35', '专科', '不限', '1、会计相关专业，大专以上学历；\r\n2、2年以上工作经验，有一般纳税人企业工作经验者优先；\r\n3、认真细致，爱岗敬业，吃苦耐劳，有良好的职业操守；\r\n4、思维敏捷，接受能力强，能独立思考，善于总结工作经验；\r\n5、熟练应用财务及Office办公软件，对金蝶、用友等财务系统有实际操作者优先；\r\n6、具有良好的沟通能力；\r\n7、有会计从业资格证书，同时具备会计初级资格证者优先考虑。', '张三', '13111111111', '13111111111@qq.com', 1, '2022-03-02 10:23:20');
INSERT INTO `job` VALUES (7, 'Java工程师', 'Java工程师', '专任教师', '人工智能与大数据学院', '1、协助、参与公司AI项目团队进行需求分析、数据处理、功能设计讨论等工作；\r\n2、完成人工智能项目的子系统/模块/功能的架构设计、模型开发、模型测试及技术文档的编写；\r\n3、完成智能模型的上线、监控、故障排查及计算方法调优。', '五险一金 \r\n全额社保 \r\n全额公积金 \r\n补充医疗保险 \r\n采暖补贴\r\n 高温补贴\r\n 定期体检\r\n\r\n', 5, '不限', '20-35', '本科', '1-3年', '1. 本科及以上计算机、人工智能、数学、统计学、等相关专业。\r\n2．对大数据技术、人工智能领域、互联网金融行业感兴趣，能够不断学习新技术并运用到工作中。\r\n3．JAVA基础扎实（最好熟悉Java/Scala/python中的一项或多项），理解数据结构及算法；有Web应用系统开发经验优先，有Spring MVC、Spring Boot、Mbatis等框架开发经验者优先。\r\n4．熟练掌握和使用SQL；使用过MySQL、Oracle等数据库、熟悉Redis缓存数据库者优先。\r\n5. 具有高度的责任感和工作热情，善于分析和解决问题，富有想象力和学习能力，良好的团队合作精神，较强的语言表达能力和分析判断能力', '张三', '13111111111', '13111111111@qq.com', 1, '2022-03-17 15:23:11');
INSERT INTO `job` VALUES (9, '招聘董事长助理', '董事长助理', '专业技术岗', '董事长办公室', '1.协助总经理推动公司销售业务，组织完成公司整体业务计划;\r\n\r\n2.总经理及公司重要客户及合作伙伴关系的建立与维系;\r\n\r\n3.完成公司领导安排的其他工作;\r\n\r\n4.协助总经理对部门工作予以督导、协调;\r\n\r\n5.与集团各部门沟通协调，确保工作计划的推进落实;', '五险一金、带薪年假、补充医疗保险、餐补', 1, '不限', '20-35', '专科', '1-3年', '1.本科学历，22-29岁，形象好气质佳，语言表达能力较强，熟练掌握沟通、谈判技巧;\r\n\r\n2. 擅长协调各类关系，有较强的理解、协调和应变能力;\r\n\r\n3.具有良好的人际交往能力、独立工作能力和较强的公关协调能力;\r\n\r\n5.具有敏锐的判断能力和出色的分析能力;\r\n\r\n6.熟悉政府有关政策条例、企业及公司各项规章制度', '张三', '13111111111', '13111111111@qq.com', 1, '2022-03-21 21:44:14');
INSERT INTO `job` VALUES (10, NULL, '厨师长', '工勤岗', '后勤工作部', '有学校食堂或学生营养餐行业管理经验两年以上，会独立核成本，踏实肯干，能管理好下属', NULL, 2, '男', '35-50', '不限', '1-3年', '1、有食堂厨师2年以上工作经验；\r\n2、拥有较高的烹饪技术，了解和熟悉食品材料的产地、规格、质量、一般进货价；\r\n3、有驾驶本，驾驶经验丰富者优先；', NULL, NULL, NULL, 2, '2022-03-24 19:37:27');
INSERT INTO `job` VALUES (11, '招聘专职辅导员', '专职辅导员', '专任教师', '艺术与传媒学院', '1.本次专职辅导员选聘工作按人事考试规则和保密、回避等规定组织实施，学校纪检部门全程参与监督，欢迎社会和广大教职工监督，监督电话：0559-2546599。\r\n\r\n2.应聘者应对照选聘条件要求投递简历，对不符合学校选聘条件要求的人员学校一律不予聘用。资格审查贯穿于选聘工作全过程，如在选聘过程中任何环节发现有违纪违规、材料不齐、提供虚假信息或应聘者条件不符合选聘岗位条件要求等情况的，随时取消应聘资格或解聘。由此造成的后果，由应聘者本人负责。', '5000/月；五险一金', 1, '不限', '不限', '研究生及以上', '不限', '（一）具有中华人民共和国国籍，遵守中华人民共和国宪法和法律。\r\n\r\n（二）遵纪守法，品行端正，团结协作，敬业乐群、廉洁奉公。\r\n\r\n（三）适应岗位要求的身体条件。\r\n\r\n（四）专任教师岗年龄要求：B01-B13岗位年龄不超过40周岁，即1982年1月1日之后出生；B14-B46岗位年龄不超过35周岁，即1987年1月1日之后出生。专职辅导员岗年龄要求：硕士研究生年龄不超过35周岁，即1987年1月1日之后出生；具有5年以上专职辅导员工作经历的，年龄放宽至40周岁，即1982年1月1日之后出生。岗位表中对年龄有特殊要求的从其要求。\r\n\r\n（五）报考专职辅导员岗位，须为中共党员（含预备党员），并具备下列条件之一：\r\n\r\n1.本科生或研究生阶段有主要学生干部工作经历1年及以上，担任过班长及以上职务，含班级（团支部）班长（书记），院系学生会（研究生会、团委）工作部门正职，校学生会（研究生会、团委）工作部门副职及以上，并提供能证明学生干部经历的学生干部聘书、聘任文件或院校出具的证明；\r\n\r\n2.有1年及以上高校辅导员工作经历；\r\n\r\n3.有1年及以上企事业单位专职从事思想政治工作经历。专职从事思想政治工作是指在党的基层委员会、总支部委员会、支部委员会担任专职书记、副书记，或在纪检和党办、组织（人事）、宣传、统战等党的工作部门中专职从事思想政治工作，或在工会、共青团、妇联专职从事思想政治工作，以及专职从事思想教育或职业道德建设工作。\r\n\r\n（六）具备报考岗位要求的专业、技能等资格条件（详见岗位表）。本次招聘的应届毕业生须于2022年12月31日前毕业并取得学历学位证书，且仍无工作单位。2020年和2021年普通高校毕业生，若仍未落实工作单位，其档案关系仍保留在原毕业学校，或保留在各级毕业生就业主管部门（毕业生就业指导服务中心）、人才交流服务机构和公共就业服务机构的，以及国（境）外同期毕业且已完成学历认证但仍未落实工作单位的人员，可应聘应届毕业生岗位。\r\n\r\n国（境）外教学科研机构学习同期毕业人员，指在国（境）外教学科研机构学习，与国内应届毕业生同期毕业的留学人员，同期毕业的时间要求与国内应届毕业生一致。\r\n\r\n计算工作经历的基准日期为招聘公告发布之日。\r\n\r\n（七）取得祖国大陆普通高校学历的台湾学生和取得祖国大陆承认学历的其他台湾居民应聘时按国家和我省有关规定执行。', '张三', '13111111111', '13111111111@qq.com', 1, '2022-04-23 23:51:31');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '0--结束；1--活跃',
  `createTime` timestamp(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '2021年河北工程技术学院毕业生就业质量年度报告', '为全面贯彻落实党中央、国务院关于做好高校毕业生就业工作的决策部署，学校以习近平新时代中国特色社会主义思想为指导，深入贯彻党的十九大精神，紧紧围绕立德树人根本任务，将毕业生就业创业工作贯穿于人才培养各个环节，努力实现更高质量和更充分就业。为全面反映2021届毕业生的就业状况，学校依据《教育部办公厅关于编制发布高校毕业生就业质量年度报告的通知》（教学厅函〔2013〕25号）文件精神，结合学校实际情况，编制和发布《河北工程技术学院2021届毕业生就业质量年度报告》，对招生具有一定的反馈作用，同时进一步推动就业和招生、人才培养的联动，完善学校预警机制，促进学校人才培养与经济社会发展紧密对接，助力培养更多高素质复合型人才。', 1, '2022-04-30 00:51:57');
INSERT INTO `notice` VALUES (2, 'test_title', 'test', 0, '2022-03-04 18:11:48');
INSERT INTO `notice` VALUES (6, '河北工程技术学院本科教学质量报告（2020-2021学年）发布', '按照《河北省教育厅关于继续开展本科教学质量问卷调查、教学基本状态数据公示和本科教学质量报告编制发布等工作的通知》（冀教高函〔2021〕64号）文件要求，现对我校2020-2021学年本科教学质量报告予以发布。\r\n\r\n本报告是根据国教督办[2021]62号文件中关于普通高校编制本科教学质量报告基本要求生成，报告中数据源于高等教育质量监测国家数据平台本科教学基本状态数据库，数据统计的时间与平台中本科教学基本状态数据库数据采集时间要求一致。', 1, '2022-04-23 11:55:04');
INSERT INTO `notice` VALUES (7, '我校启动实施2022年就业育人行动计划', '为贯彻落实河北省教育厅《关于实施高校就业育人行动计划的通知》（冀教学【2022】4号），建立健全我校就业育人支持体系，切实把就业教育、就业引导全面纳入大学生思想政治教育体系，推动课堂育人、活动育人、宣传育人、服务育人与榜样育人相结合，厚植家国情怀，促进学生全面成长，全力推动毕业生实现更加充分更高质量就业，我校启动实施了2022年就业育人行动计划。\r\n\r\n按照学校2022年就业育人行动计划实施方案，力争在 2022 年实现六个工作目标，一是建设1到3门就业创业指导精品课程；二是打造多项独具特色的就业创业实践和赛事活动；三是完善就业创业激励制度；四是开展形式多样的形势宣传解读、品牌讲座；五是选树一批就业创业服务工作典型案例；六是推介一批优秀毕业生就业、创业、应征入伍典型案例。以这六个工作目标为抓手不断提升就业创业指导能力和工作水平，增强就业育人功效，稳步提升学生职业素养和就业创业能力，教育引导毕业生自觉树立科学务实的求职择业观念，勇于自主创业，勇于到基层、到中小企业就业。\r\n\r\n我校历来重视毕业生就业工作，实施“一把手”工程。在今后的工作中学校会进一步构建就业创业工作部门谋划推动、各部门协同配合、校院共同负责、校友积极支持的就业育人工作机制；形成谋划部署及时、各单位合力推进的工作格局，确保就业育人行动计划深入开展、成效显著，全面助力2022届毕业生顺利就业、充分就业和高质量就业。', 1, '2022-04-23 11:55:34');

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `married` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bred` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `jobId` int(11) NOT NULL,
  `jobName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `collegeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `hobby` text CHARACTER SET utf8 COLLATE utf8_bin,
  `professionQualify` text CHARACTER SET utf8 COLLATE utf8_bin,
  `jobTitle` text CHARACTER SET utf8 COLLATE utf8_bin,
  `eduBackground` text CHARACTER SET utf8 COLLATE utf8_bin,
  `experiences` text CHARACTER SET utf8 COLLATE utf8_bin,
  `scientificResearch` text CHARACTER SET utf8 COLLATE utf8_bin,
  `awards` text CHARACTER SET utf8 COLLATE utf8_bin,
  `skillCertificate` text CHARACTER SET utf8 COLLATE utf8_bin,
  `resumeStatus` int(2) NOT NULL DEFAULT 0 COMMENT '0--未投递；1--已投递',
  `interviewStatus` int(2) NOT NULL DEFAULT 0 COMMENT '0--未开始；1--已发送面试通知',
  `status1` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'cs_1' COMMENT 'cs_0--初审不通过；cs_1--初审通过；jl_0--简历不通过；jl_1：简历通过；ms_0--面试不通过；ms_1--面试通过',
  `create_time` timestamp(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES (62, 117, '是', '是', 6, '会计/会计师', '财务部', NULL, '', '', '111', '111', '', '', '', 1, 0, 'jl_1', '2022-05-01 11:33:11');
INSERT INTO `resume` VALUES (63, 118, '否', '否', 7, 'Java工程师', '人工智能与大数据学院', NULL, '', '', '123', '123', '', '', '', 1, 0, 'jl_0', '2022-03-21 21:30:24');
INSERT INTO `resume` VALUES (72, 118, '是', '是', 5, 'PHP 开发人员', '软件学院', NULL, '', '', 'qqq', 'qqq', '', '', '', 1, 0, 'cs_1', '2022-03-18 00:12:10');
INSERT INTO `resume` VALUES (78, 117, '否', '否', 5, 'PHP 开发人员', '软件学院', NULL, 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 'bbb', 1, 0, 'jl_0', '2022-05-01 11:33:13');
INSERT INTO `resume` VALUES (103, 109, '否', '否', 11, '专职辅导员', '艺术与传媒学院', NULL, '', '', '111', '111', '', '', '', 1, 1, 'ms_1', '2022-05-01 11:42:42');
INSERT INTO `resume` VALUES (104, 109, '否', '否', 11, '专职辅导员', '艺术与传媒学院', NULL, '', '', '11', '11', '', '', '', 1, 0, 'cs_1', '2022-06-15 13:57:27');
INSERT INTO `resume` VALUES (105, 109, '否', '否', 5, 'PHP 开发人员', '软件学院', NULL, '111', '111', '河北工程技术学院', '无', '111', '111', '111', 1, 0, 'cs_1', '2022-06-16 11:12:30');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usercode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activationCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `headerUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '男；女',
  `age` int(5) DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `political` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `degree` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '专科以下；专科；本科；研究生及以上',
  `experience` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '无工作经验；1-3年；3-5年；5年以上',
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `unemployed` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(2) DEFAULT 0 COMMENT '0-未激活; 1-已激活;',
  `resumeStatus` int(2) DEFAULT 0 COMMENT '0-未投递; 1-已投递;',
  `role` int(11) DEFAULT 0 COMMENT '0-普通用户; 1-学院管理员; 2-人事处管理员;3-超级管理员',
  `create_time` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_username`(`username`(20)) USING BTREE,
  INDEX `index_email`(`email`(20)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (109, 'zhaoxin', '赵欣', '96fd3754156251378486ffed68e3f10e', 'a0494', '848200624e664383a0d949942f054fee', 'http://localhost:8080/PersonnelRecruitment/images/header_url/f15b61ccf334437aa6bfcce55ba110dc.jpg', '女', 18, '13653227092', '2634225724@qq.com', '汉', '群众', '研究生及以上', '无相关工作经验', '软件工程', '河北省保定市涞水县', '河北工程技术学院', '是', 1, 1, 0, '2022-01-20 13:14:24');
INSERT INTO `user` VALUES (117, '小王同学', '王博', '3a22ebec932237d95f6c5863d01255ab', '87e7f', '78fb861d7b90d78e8b1a6f886c704f39', 'http://localhost:8080/PersonnelRecruitment/images/header_url/374772f17f1f4beea857875b260e5913.jpg', '男', 20, '13111111111', '2694417425@qq.com', '汉', '团员', '本科', '1-3年', '机电一体化', '河北省保定市涞水县', '小清华', '否', 1, 1, 0, '2022-02-28 22:05:41');
INSERT INTO `user` VALUES (118, 'xiaoqiao', '天儿', 'e043077904a631450a456c00d21ad4d2', '2332b', 'cf95cbe83cf785c2f8a7e0f40c89aa1a', NULL, '女', 18, '13111111111', '1162745544@qq.com', '汉', '党员', '本科', '无工作经验', '软件工程', '河北', '河工', '是', 1, 0, 0, '2022-03-09 17:09:58');
INSERT INTO `user` VALUES (121, '小包子', '小包子', '6b3518158dab35f1e23f9549ee75fcec', '91775', '6f8a645b37d7a9b22c998c90ea03ed39', 'http://localhost:8080/PersonnelRecruitment/images/header_url/cd73bdf72fd24de8a7c1d45ad35f86f2.jpg', '女', 20, '13112312312', '1721055130@qq.com', '汉', '群众', '研究生及以上', '1-3年', '软件工程', '111111111', '河北电力', '是', 1, 1, 0, '2022-04-30 00:42:56');

SET FOREIGN_KEY_CHECKS = 1;
