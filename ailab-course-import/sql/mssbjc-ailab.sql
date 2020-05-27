REPLACE INTO `tb_course` VALUES ('998', '模式识别基础', '001010', '0', '本课程介绍模式识别的基本理论和方法，掌握各种分类器和模式识别系统的设计与实现。', '0', '/download/course/10_模式识别基础/模式识别基础.png', '/download/course/10_模式识别基础/模式识别基础_课程大纲_encrypt.pdf', '32', '2019-05-11 08:00:10', "-1", null, null, '0');

REPLACE INTO `tb_tag` VALUES ('1000', '人工智能', NULL, '2020-5-16 16:53:24', 1, NULL, NULL, 0, 1);
REPLACE INTO `tb_course_tag` VALUES ('998', '998', '1000', '2020-5-16 18:12:08', 1, NULL, NULL, 0);

REPLACE INTO `tb_course_chapter` VALUES ('99982', '概论', '', '1', '998', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/998/绪论_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99983', '统计决策方法', '', '2', '998', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/998/统计决策方法_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99984', '概率密度函数的估计', '', '998', '10', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/998/概率密度函数的估计_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99985', '线性分类器', '', '4', '998', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/998/线性分类器_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99986', '非线性分类器', '', '5', '998', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/998/非线性判别函数_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99987', '近邻法', '', '6', '998', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/998/近邻法_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99988', '特征选择', '', '7', '998', '2019-05-11 09:00:00', "-1", null, null, '0', null ,'/download/pdf/998/特征选择_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99989', '特征提取', '', '8', '998', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/998/特征提取_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99990', '非监督模式识别', '', '9', '998', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/998/非监督模式识别_encrypt.pdf');

REPLACE INTO `tb_course_chapter_note` VALUES ('99921', '模式与模式识别的基本概念', '', null, null, '1', '99982', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99922', '监督模式识别与非监督模式识别', '', null, null, '2', '99982', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99923', '模式识别系统举例', '', null, null, '3', '99982', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99924', '模式识别系统的典型构成', '', null, null, '4', '99982', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99925', '最小错误率贝叶斯决策', '', null, null, '1', '99983', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99926', '最小风险贝叶斯决策', '', null, null, '2', '99983', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99927', ' 两类错误率、Neyman-Pearson决策与ROC曲线', '', null, null, '3', '55', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99928', ' 正态分布时的统计决策', '', null, null, '4', '99983', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99929', ' 引言', '', null, null, '1', '99984', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99930', '最大似然估计', '', null, null, '2', '99984', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99931', '贝叶斯估计与贝叶斯学习', '', null, null, '3', '99984', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99932', '非参数估计方法', '', null, null, '4', '99984', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99933', '引言', '', null, null, '1', '99985', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99934', '线性判别函数的基本概念', '', null, null, '2', '99985', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99935', 'Fisher线性判别分析', '', null, null, '3', '99985', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99936', '感知器', '', null, null, '4', '99985', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99937', '最优分类超平面与线性支持向量机', '', null, null, '5', '99985', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99938', '多类线性分类器', '', null, null, '6', '99985', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99939', '分段线性判别函数', '', null, null, '1', '99986', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99940', '用交遇区的样本设计线性分类器', '', null, null, '2', '99986', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99941', '二次判别函数', '', null, null, '3', '99986', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99942', '最近邻法', '', null, null, '1', '99987', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99943', 'k-近邻法', '', null, null, '2', '99987', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99944', '改进的近邻法', '', null, null, '3', '99987', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99945', '引言', '', null, null, '1', '99988', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99946', '特征的评价准则', '', null, null, '2', '99988', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99947', '特征选择的最优算法', '', null, null, '3', '99988', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99948', '特征选择的次优算法', '', null, null, '4', '99988', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99949', '以分类性能为准则的特征选择方法', '', null, null, '5', '60', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99950', '引言', '', null, null, '1', '99989', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99951', '基于类别可分性判据的特征提取', '', null, null, '2', '99989', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99952', '主成分分析方法', '', null, null, '3', '99989', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99953', ' K-L变换', '', null, null, '4', '99989', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99954', '人脸识别应用举例', '', null, null, '5', '99989', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99955', '引言', '', null, null, '1', '99990', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99956', '基于模型的方法', '', null, null, '2', '99990', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99957', '动态聚类算法', '', null, null, '3', '99990', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99958', '分级聚类算法', '', null, null, '4', '99990', '2019-05-11 09:00:00', "-1", null, null, '0');


REPLACE INTO `tb_labconfig` (`labcfg_id`, `labcfg_name`, `labcfg_desc`, `labcfg_type`, `labcfg_value`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('997', '内置实验配置-容器', '内置实验配置-容器', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '2020-05-18 11:03:35', '0', NULL, NULL, '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('975', '最小错误率贝叶斯分类器', '最小错误率贝叶斯分类器', '997', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/975/最小错误率贝叶斯分类器.png', '1', '0', '/download/lab/975/guide/实验一.docx', '实验一.docx', '', '998', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '975', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('976', '最小风险贝叶斯分类器', '最小风险贝叶斯分类器', '997', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/976/最小风险贝叶斯分
类器.png', '1', '0', '/download/lab/976/guide/实验二.docx', '实验二.docx', '', '998', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '976', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('977', '非参数估计方法', '非参数估计方法', '997', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/977/非参数估计方法.png', '1', '0', '/download/lab/977/guide/实验三.docx', '实验三.docx', '', '998', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '977', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('978', 'Fisher线性分类器', 'Fisher线性分类器', '997', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/978/Fisher线性分类器.png', '1', '0', '/download/lab/978/guide/实验四.docx', '实验四.docx', '', '998', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '978', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('979', '支持向量机', '支持向量机', '997', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/979/SVM.png', '1', '0', '/download/lab/979/guide/实验五.docx', '实验五.docx', '', '998', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '979', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('980', '最近邻分类器与K近邻分类器', '最近邻分类器与K近邻分类器', '997', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/980/最近邻分类器与K近邻分类器.png', '1', '0', '/download/lab/980/guide/实验六.docx', '实验六.docx', '', '998', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '980', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('981', '基于PCA的手写数字识别', '基于PCA的手写数字识别', '997', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/981/基于PCA的人脸识别.png', '1', '0', '/download/lab/981/guide/实验七.docx', '实验七.docx', '', '998', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '981', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('982', 'K均值聚类', 'K均值聚类', '997', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/982/K均值聚类.png', '1', '0', '/download/lab/982/guide/实验八.docx', '实验八.docx', '', '998', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '982', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('983', '分级聚类', '分级聚类', '997', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/983/1分级聚类.png', '1', '0', '/download/lab/983/guide/实验九.docx', '实验九.docx', '', '998', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '983', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('984', '人耳识别系统设计及实现', '人耳识别系统设计及实现', '997', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/984/1人耳识别系统设计及实现.png', '1', '0', '/download/lab/984/guide/实验十.docx', '实验十.docx', '', '998', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '984', '0', '0');



REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (975, 975, '/download/lab/975/answer/course_lab_file_answer150.docx', '130000', 'course_lab_file_answer150.docx', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (976, 976, '/download/lab/976/answer/course_lab_file_answer151.docx', '128000', 'course_lab_file_answer151.docx', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (977, 977, '/download/lab/977/answer/course_lab_file_answer152.docx', '118000', 'course_lab_file_answer152.docx', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (978, 978, '/download/lab/978/answer/course_lab_file_answer153.docx', '153000', 'course_lab_file_answer153.docx', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (979, 979, '/download/lab/979/answer/course_lab_file_answer154.docx', '186000', 'course_lab_file_answer154.docx', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (980, 980, '/download/lab/980/answer/course_lab_file_answer155.docx', '149000', 'course_lab_file_answer155.docx', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (981, 981, '/download/lab/981/answer/course_lab_file_answer156.docx', '171000', 'course_lab_file_answer156.docx', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (982, 982, '/download/lab/982/answer/course_lab_file_answer157.docx', '168000', 'course_lab_file_answer157.docx', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (983, 983, '/download/lab/983/answer/course_lab_file_answer158.docx', '130000', 'course_lab_file_answer158.docx', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (984, 984, '/download/lab/984/answer/course_lab_file_answer159.docx', '168000', 'course_lab_file_answer159.docx', NULL, NULL, NULL, NULL, '0');


REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (946, 975, '/download/lab/975/code/1_Bayes classifier.py', '4287', '2020-05-16 15:29:19', '1_Bayes classifier.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (947, 976, '/download/lab/976/code/2_MinRiskBayes.py', '4792', '2020-05-16 15:29:19', '2_MinRiskBayes.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (948, 977, '/download/lab/977/code/3_nonparametric estimation.py', '4449', '2020-05-16 15:29:19', '3_nonparametric estimation.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (949, 978, '/download/lab/978/code/4_Fisher.py', '4792', '2020-05-16 15:29:19', '4_Fisher.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (950, 979, '/download/lab/979/code/5_SVM.py', '4672', '2020-05-16 15:29:19', '5_SVM.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (951, 980, '/download/lab/980/code/6_kNN.py', '4199', '2020-05-16 15:29:19', '6_kNN.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (952, 981, '/download/lab/981/code/7_PCA-handwriting.py', '4957', '2020-05-16 15:29:19', '7_PCA-handwriting.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (953, 982, '/download/lab/982/code/8_KMeans.py', '4926', '2020-05-16 15:29:19', '8_KMeans.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (954, 983, '/download/lab/983/code/9_Hierarchical cluster.py', '4515', '2020-05-16 15:29:19', '9_Hierarchical cluster.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (955, 984, '/download/lab/984/code/10_ears_classify.py', '4575', '2020-05-16 15:29:19', '10_ears_classify.py', '1', NULL, NULL, '0');

REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('988', '975', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-min-rate'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('989', '977', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-non-param'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('990', '979', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-svm-mode'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('991', '981', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-pca'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('992', '984', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-ear'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');

REPLACE INTO `tb_course_reference` VALUES ('99985', '模式分类', '/download/picture/reference_pic_mssbjc01.jpg', 'Ruchard O.Duda, Peter E.Hart, David G.Stock', '机械工业出版社', '2004年第2版', '998', '2019-05-11 18:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_reference` VALUES ('99986', '模式识别', '/download/picture/reference_pic_mssbjc02.jpg', 'Sergios Theodoridis',  '电子工业出版
社', '2010年第4版', '998', '2019-05-11 18:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_reference` VALUES ('99987', '现代模式识别', '/download/picture/reference_pic_mssbjc03.jpg', '孙即祥', '高等教育出版社', '2008年第2版', '998', '2019-05-11 18:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_reference` VALUES ('99988', '模式识别', '/download/picture/reference_pic_mssbjc04.jpg', '汪增福', '中国科学技术大学出版社', '2010年第1版', '998', '2019-05-11 18:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_reference` VALUES ('99989', '模式识别', '/download/picture/reference_pic_mssbjc05.jpg', '张学工', '清华大学出版社', '2010年第
3版', '998', '2019-05-11 18:00:00', "-1", null, null, '0');

