REPLACE INTO `tb_course` VALUES ('1000', '机器学习基础', '001008', '0', '机器学习是人工智能的核心技术，也是智能科学发展最快的领域，本课程介绍目前主流的机器学习理论、方法、算法和应用，重点介绍Logistic回归、决策树、神经网络及Bayes学习基本内容。', '0', '/download/course/8_机器学习基础/机器学习基础.png', '/download/course/8_机器学习基础/机器学习基础-教学大纲1118_encrypt.pdf', '48', '2019-05-11 08:00:08', "-1", null, null, '0');


REPLACE INTO `tb_tag` VALUES ('1000', '人工智能', NULL, '2020-5-16 16:53:24', 1, NULL, NULL, 0, 1);
REPLACE INTO `tb_course_tag` VALUES ('1000', '1000', '1000', '2020-5-16 18:12:08', 1, NULL, NULL, 0);

REPLACE INTO `tb_course_chapter` VALUES ('99994', '绪论', '', '1', '1000', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99994/机器学习-1-绪论_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99995', '线性模型', '', '2', '1000', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99995/机器学习-2-线性模型_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99996', '决策树', '', '3', '1000', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99996/机器学习-3-决策树_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99997', '神经网络学习', '', '4', '1000', '2019-05-11 09:00:00', "-1", null, null, '0', null, null);
REPLACE INTO `tb_course_chapter` VALUES ('99998', '支持向量机', '', '5', '1000', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99998/机器学习-4-支持向量机_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99999', 'Bayes学习方法', '', '6', '1000', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99999/机器学习-5-Bayes分类器_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('100000', '图模型简介', '', '7', '1000', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/100000/机器学习-6-HMM模型_encrypt.pdf');


REPLACE INTO `tb_course_chapter_note` VALUES ('99975', '机器学习的一般原理及相关概念', '', null, null, '1', '99994', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99976', '机器学习问题的计算模型', '', null, null, '2', '99994', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99977', '机器学习发展及现状', '', null, null, '3', '99994', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99978', '线性回归模型', '', null, null, '1', '99995', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99979', 'Logistic回归', '', null, null, '2', '99995', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99980', 'ECOC学习框架', '', null, null, '3', '99995', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99981', '最大熵模型', '', null, null, '4', '99995', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99982', '决策树学习的基本流程', '', null, null, '1', '99996', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99983', '属性选择度量标准', '', null, null, '2', '99996', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99984', '剪枝方法', '', null, null, '3', '99996', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99985', '连续属性与缺失', '', null, null, '4', '99996', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99986', '回归树学习', '', null, null, '5', '99996', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99987', '神经元模型', '', null, null, '1', '99997', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99988', '感知机与多层网络', '', null, null, '2', '99997', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99989', '误差逆向传播算法', '', null, null, '3', '99997', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99990', '其他神经网络', '', null, null, '4', '99997', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99991', '深度网络介绍', '', null, null, '5', '99997', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99992', '硬间隔与支持向量机', '', null, null, '1', '99998', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99993', '软间隔支持向量机', '', null, null, '2', '99998', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99994', '非线性支持向量机', '', null, null, '3', '99998', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99995', '支持向量回归', '', null, null, '4', '99998', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99996', '贝叶斯最优分类器原理和算法', '', null, null, '1', '99999', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99997', '朴素贝叶斯分类器算法', '', null, null, '2', '99999', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99998', 'EM算法的原理和应用', '', null, null, '3', '99999', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99999', 'HMM模型', '', null, null, '1', '100000', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('100000', 'Bayesian网络简介', '', null, null, '2', '100000', '2019-05-11 09:00:00', "-1", null, null, '0');






REPLACE INTO `tb_labconfig` (`labcfg_id`, `labcfg_name`, `labcfg_desc`, `labcfg_type`, `labcfg_value`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('1000', '内置实验配置-容器', '内置实验配置-容器', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '2020-05-18 11:03:35', '0', NULL, NULL, '0');


REPLACE INTO `tb_labconfig` (`labcfg_id`, `labcfg_name`, `labcfg_desc`, `labcfg_type`, `labcfg_value`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('999', '内置实验配置-容器', '内置实验配置-容器', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":4,"cpu":2,"gpu":1,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '2020-05-18 11:03:35', '0', NULL, NULL, '0');




REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('993', 'EM算法实验', 'EM算法实验', '1000', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/993/1多元线性回归成分预测.png', '1', '0', '/download/lab/993/guide/EM实验指导书_encrypt.pdf', 'EM实验指导书_encrypt.pd', '/download/lab/993/course_lab_file_reporttmp107.docx', '1000', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '993', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('994', 'Logistic回归实验', 'Logistic回归实验', '1000', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/994/1Logistic回归.png', '1', '0', '/download/lab/994/guide/Logistic回归实验指导书_encrypt.pdf', 'Logistic回归实验指导书_encrypt.pdf', '/download/lab/994/course_lab_file_reporttmp101.docx', '1000', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '994', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('995', '支持向量机实验', '支持向量机实验', '1000', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/995/1核SVM分类.png', '1', '0', '/download/lab/995/guide/支持向量机实验指导书_encrypt.pdf', '支持向量机实验指导书_encrypt.pdf', '/download/lab/995/course_lab_file_reporttmp105.docx', '1000', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '995', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('996', '分类回归树实验', '分类回归树实验', '1000', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/996/1回归树.png', '1', '0', '/download/lab/996/guide/分类回归树实验指导书_encrypt.pdf', '分类回归树实验指导书_encrypt.pdf', '/download/lab/996/course_lab_file_reporttmp103.docx', '1000', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '996', '0', '0');


REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('997', '决策树实验', '决策树实验', '1000', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/997/应用决策树方法实现西瓜分类系统.png', '1', '0', '/download/lab/997/guide/决策树实验指导书_encrypt.pdf', '决策树实验指导书_encrypt.pdf', '/download/lab/997/course_lab_file_reporttmp102.docx', '1000', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '997', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('998', '朴素贝叶斯实验', '朴素贝叶斯实验', '1000', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/998/1朴素贝叶斯分类.png', '1', '0', '/download/lab/998/guide/朴素贝叶斯实验指导书_encrypt.pdf', '朴素贝叶斯实验指导书_encrypt.pdf', '/download/lab/998/course_lab_file_reporttmp106.docx', '1000', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '998', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('999', '神经网络实验', '神经网络实验', '999', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":4,"cpu":2,"gpu":1,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/999/1多元线性回归成分预测.png', '1', '0', '/download/lab/999/guide/神经网络实验指导书_encrypt.pdf', '神经网络实验指导书_encrypt.pdf', '/download/lab/999/course_lab_file_reporttmp104.docx', '1000', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '999', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('1000', '线性回归实验', '线性回归实验', '1000', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/1000/1多元线性回归成分预测.png', '1', '0', '/download/lab/1000/guide/线性回归实验指导书_encrypt.pdf', '线性回归实验指导书_encrypt.pdf', '/download/lab/1000/course_lab_file_reporttmp100.docx', '1000', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '1000', '0', '0');






REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (993, 993, '/download/lab/993/answer/course_lab_file_answer107_encrypt.pdf', '181000', 'course_lab_file_answer107_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (994, 994, '/download/lab/994/answer/course_lab_file_answer101_encrypt.pdf', '374000', 'course_lab_file_answer101_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (995, 995, '/download/lab/995/answer/course_lab_file_answer105_encrypt.pdf', '139000', 'course_lab_file_answer105_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (996, 996, '/download/lab/996/answer/course_lab_file_answer103_encrypt.pdf', '276000', 'course_lab_file_answer103_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (997, 997, '/download/lab/997/answer/course_lab_file_answer102_encrypt.pdf', '395000', 'course_lab_file_answer102_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (998, 998, '/download/lab/998/answer/course_lab_file_answer106sencrypt.pdf', '126000', 'course_lab_file_answer106_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (999, 999, '/download/lab/999/answer/course_lab_file_answer104_encrypt.pdf', '237000', 'course_lab_file_answer104_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (1000, 1000, '/download/lab/1000/answer/course_lab_file_answer100_encrypt.pdf', '70000', 'course_lab_file_answer100_encrypt.pdf', NULL, NULL, NULL, NULL, '0');

REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (966, 993, '/download/lab/993/code/main.py', '4149', '2020-05-16 15:29:19', 'main.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (967, 993, '/download/lab/993/code/main_old.py', '4512', '2020-05-16 15:29:19', 'main_old.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (968, 993, '/download/lab/993/code/mixGaussData.py', '4271', '2020-05-16 15:29:19', 'mixGaussData.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (969, 993, '/download/lab/993/code/mixGaussEM.py', '4502', '2020-05-16 15:29:19', 'mixGaussEM.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (970, 994, '/download/lab/994/code/GLM.py', '4731', '2020-05-16 15:29:19', 'GLM.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (971, 994, '/download/lab/994/code/Logistic_2Classifier.py', '4443', '2020-05-16 15:29:19', 'Logistic_2Classifier.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (972, 994, '/download/lab/994/code/Logistic_3Classifier.py', '4034', '2020-05-16 15:29:19', 'Logistic_3Classifier.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (973, 995, '/download/lab/995/code/svm.py', '4419', '2020-05-16 15:29:19', 'svm.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (974, 995, '/download/lab/995/code/svm_kernels.py', '4636', '2020-05-16 15:29:19', 'svm_kernels.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (975, 995, '/download/lab/995/code/svmLinearClassification.py', '4565', '2020-05-16 15:29:19', 'svmLinearClassification.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (976, 995, '/download/lab/995/code/svr.py', '4179', '2020-05-16 15:29:19', 'svr.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (977, 996, '/download/lab/996/code/cal_ent_of_dataset.py', '4682', '2020-05-16 15:29:19', 'cal_ent_of_dataset.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (978, 996, '/download/lab/996/code/cal_gini_of_dataset.py', '4248', '2020-05-16 15:29:19', 'cal_gini_of_dataset.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (979, 996, '/download/lab/996/code/cal_gini_of_density.py', '4744', '2020-05-16 15:29:19', 'cal_gini_of_density.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (980, 997, '/download/lab/997/code/cal_ent_of_dataset.py', '4370', '2020-05-16 15:29:19', 'cal_ent_of_dataset.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (981, 997, '/download/lab/997/code/cal_gain_of_fea.py', '4746', '2020-05-16 15:29:19', 'cal_gain_of_fea.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (982, 997, '/download/lab/997/code/cal_gain_of_fea2.py', '4857', '2020-05-16 15:29:19', 'cal_gain_of_fea2.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (983, 997, '/download/lab/997/code/cal_gr_of_fea.py', '4236', '2020-05-16 15:29:19', 'cal_gr_of_fea.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (984, 997, '/download/lab/997/code/dtree.py', '4251', '2020-05-16 15:29:19', 'dtree.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (985, 997, '/download/lab/997/code/dtreeplot.py', '4442', '2020-05-16 15:29:19', 'dtreeplot.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (986, 997, '/download/lab/997/code/normal_dtree.py', '4731', '2020-05-16 15:29:19', 'normal_dtree.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (987, 997, '/download/lab/997/code/T1.py', '4244', '2020-05-16 15:29:19', 'T1.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (988, 997, '/download/lab/997/code/T2.py', '4015', '2020-05-16 15:29:19', 'T2.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (989, 998, '/download/lab/998/code/naiveBayesClassifier.py', '4854', '2020-05-16 15:29:19', 'naiveBayesClassifier.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (990, 998, '/download/lab/998/code/naiveBayesClassifier_onlyfortestasreference.py', '4405', '2020-05-16 15:29:19', 'naiveBayesClassifier_onlyfortestasreference.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (991, 999, '/download/lab/999/code/simpleNeuralNetwork.ipynb', '4691', '2020-05-16 15:29:19', 'simpleNeuralNetwork.ipynb', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (992, 999, '/download/lab/999/code/simpleNeuralNetwork.py', '4128', '2020-05-16 15:29:19', 'simpleNeuralNetwork.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (993, 1000, '/download/lab/1000/code/lasso_fit.py', '4963', '2020-05-16 15:29:19', 'lasso_fit.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (994, 1000, '/download/lab/1000/code/linear_regression.py', '4822', '2020-05-16 15:29:19', 'linear_regression.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (995, 1000, '/download/lab/1000/code/load_xydata.py', '4530', '2020-05-16 15:29:19', 'load_xydata.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (996, 1000, '/download/lab/1000/code/polynomial_fit.py', '4148', '2020-05-16 15:29:19', 'polynomial_fit.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (997, 1000, '/download/lab/1000/code/polynomial_model.py', '4408', '2020-05-16 15:29:19', 'polynomial_model.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (998, 1000, '/download/lab/1000/code/Predict.py', '4130', '2020-05-16 15:29:19', 'Predict.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (999, 1000, '/download/lab/1000/code/ridge_fit.py', '4037', '2020-05-16 15:29:19', 'ridge_fit.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (1000, 1000, '/download/lab/1000/code/xlsread.py', '4637', '2020-05-16 15:29:19', 'xlsread.py', '1', NULL, NULL, '0');

REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('996', '996', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-classify'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('997', '997', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-decision'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('998', '998', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-bayes'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('999', '999', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-bp'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('1000', '1000', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-liner'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');


REPLACE INTO `tb_course_reference` VALUES ('99996', '机器学习',  '/download/picture/reference_pic_jqxxjc01.jpg', '周志华', '清华大学出版社', '2016年', '1000', '2019-05-11 18:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_reference` VALUES ('99997', 'Pattern Recognition and Machine Learning',  '/download/picture/reference_pic_jqxxjc02.jpg', 'Christopher M. Bishop',  '无', '2006 Springer', '1000', '2019-05-11 18:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_reference` VALUES ('99998', '统计学习方法',  '/download/picture/reference_pic_jqxxjc03.jpg', '李航', '清华大学出版社', '2012年', '1000', '2019-05-11 18:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_reference` VALUES ('99999', '机器学习',  '/download/picture/reference_pic_jqxxjc04.jpg', 'Peter Flach著，段菲译', '人民邮电出版社', '2016年', '1000', '2019-05-11 18:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_reference` VALUES ('100000', '机器学习',  '/download/picture/reference_pic_jqxxjc05.jpg', 'Tom M. Mitchell著，曾华军 张银奎等译', '>机械工业出版社', '2003年', '1000', '2019-05-11 18:00:00', "-1", null, null, '0');
