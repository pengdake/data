REPLACE INTO `tb_course` VALUES ('999', '计算智能基础', '001009', '0', '计算智能是近年来发展迅速的一个新兴学科，它在控制系统、数据分析与建模、模式识别等广泛的领域中得到应用，将智能计算作为自动化系本科生的专业选修课，目的是使本科生能够掌握智能计算中的人工神经网络、粒子群算法、遗传算法和免疫算法等仿生算法的基本概念、原理、算法和程序实现，结合专业和工程应用，熟练使用经典的智能计算方法来研究实际问题，了解智能计算的发展及其工程应用前景。', '0', '/download/course/9_计算智能基础/计算智能基础.png', '/download/course/9_计算智能基础/计算智能基础_课程大纲_encrypt.pdf', '40', '2019-05-11 08:00:09', "-1", null, null, '0');

REPLACE INTO `tb_tag` VALUES ('1000', '人工智能', NULL, '2020-5-16 16:53:24', 1, NULL, NULL, 0, 1);
REPLACE INTO `tb_course_tag` VALUES ('999', '999', '1000', '2020-5-16 18:12:08', 1, NULL, NULL, 0);

REPLACE INTO `tb_course_chapter` VALUES ('99991', '智能计算概论', '', '1', '999', '2019-05-11 09:00:00', "-1", null, null, '0', null, null);
REPLACE INTO `tb_course_chapter` VALUES ('99992', '人工神经网络', '', '2', '999', '2019-05-11 09:00:00', "-1", null, null, '0', null, null);
REPLACE INTO `tb_course_chapter` VALUES ('99993', '仿生计算', '', '3', '999', '2019-05-11 09:00:00', "-1", null, null, '0', null, null);

REPLACE INTO `tb_course_chapter_note` VALUES ('99959', '从生物神经元到人工神经元网络', '', null, null, '1', '99991', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99960', '人工神经网络的发展历史回顾、现状、应用和发展动向', '', null, null, '2', '99991', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99961', '仿生计算的发展历史回顾、现状、应用和发展动向', '', null, null, '3', '99991', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99962', '人工神经网络的基本模型', '', null, null, '1', '99992', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99963', '感知器人工神经网络', '', null, null, '2', '99992', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99964', '线性自适应人工神经网络', '', null, null, '3', '99992', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99965', 'BP人工神经网络', '', null, null, '4', '99992', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99966', 'RBF人工神经网络', '', null, null, '5', '99992', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99967', 'Hopfield人工神经网络', '', null, null, '6', '99992', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99968', 'Elmen人工神经网络', '', null, null, '7', '99992', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99969', 'Hamming 和SOFM人工神经网络', '', null, null, '8', '99992', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99970', '深度人工神经网络概述', '', null, null, '9', '99992', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99971', '引言', '', null, null, '1', '99993', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99972', '粒子群算法', '', null, null, '2', '99993', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99973', '基本遗传算法', '', null, null, '3', '99993', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99974', '基本免疫算法', '', null, null, '4', '99993', '2019-05-11 09:00:00', "-1", null, null, '0');


REPLACE INTO `tb_labconfig` (`labcfg_id`, `labcfg_name`, `labcfg_desc`, `labcfg_type`, `labcfg_value`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('998', '内置实验配置-容器', '内置实验配置-容器', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '2020-05-18 11:03:35', '0', NULL, NULL, '0');


REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('985', 'BP人工神经网络实验', 'BP人工神经网络实验', '998', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', NULL, '1', '0', '/download/lab/985/guide/BP神经网络实验指导书_encrypt.pdf', 'BP神经网络实验指导书_encrypt.pdf', '/download/lab/985/course_lab_file_reporttmp38.docx', '999', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '985', '0', '0');


REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('986', 'Elman人工神经网络实验', 'Elman人工神经网络实验', '998', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/986/1Elman网络.png', '1', '0', '/download/lab/986/guide/Elman神经网络实验指导书_encrypt.pdf', 'Elman神经网络实验指导书_encrypt.pdf', '/download/lab/986/course_lab_file_reporttmp108.docx', '999', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '986', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('987', 'RBF人工神经网络实验', 'RBF人工神经网络实验', '998', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/987/1RBF网络.png', '1', '0', '/download/lab/987/guide/RBF神经网络实验指导书_encrypt.pdf', 'RBF神经网络实验指导书_encrypt.pdf', '/download/lab/987/course_lab_file_reporttmp39.docx', '999', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '987', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('988', '粒子群算法实验', '粒子群算法实验', '998', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/988/BP网络应用实验.png', '1', '0', '/download/lab/988/guide/粒子群算法实验指导书_encrypt.pdf', '粒子群算法实验指导书_encrypt.pdf', '/download/lab/988/course_lab_file_reporttmp111.docx', '999', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '988', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('989', '线性自适应神经元实验', '线性自适应神经元实验', '998', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/989/BP网络应用实验.png', '1', '0', '/download/lab/989/guide/线性自适应神经元实验指导书_encrypt.pdf', '线性自适应神经元实验指导书_encrypt.pdf', '/download/lab/989/course_lab_file_reporttmp37.docx', '999', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '989', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('990', 'HopField人工神经网络实验', 'HopField人工神经网络实验', '998', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/990/Hopfield网络应用实验.png', '1', '0', '/download/lab/990/guide/Hopfield神经网络实验指导书_encrypt.pdf', 'Hopfield神经网络实验指导书_encrypt.pdf', '/download/lab/990/course_lab_file_reporttmp40.docx', '999', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '990', '0', '0');


REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('991', 'SOFM人工神经网络实验', 'SOFM人工神经网络实验', '998', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', NULL, '1', '0', '/download/lab/991/guide/SOFM神经网络实验指导书_encrypt.pdf', 'SOFM神经网络实验指导书_encrypt.pdf', '/download/lab/991/course_lab_file_reporttmp109.docx', '999', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '991', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('992', '遗传算法', '遗传算法', '998', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/992/遗传算法实现优化的实验学时.png', '1', '0', '/download/lab/992/guide/遗传算法实验指导书_encrypt.pdf', '遗传算法实验指导书_encrypt.pdf', '/download/lab/992/course_lab_file_reporttmp110.docx', '999', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '992', '0', '0');

REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (985, 985, '/download/lab/985/answer/course_lab_file_answer38_encrypt.pdf', '130000', 'course_lab_file_answer38_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (986, 986, '/download/lab/986/answer/course_lab_file_answer108_encrypt.pdf', '70000', 'course_lab_file_answer108_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (987, 987, '/download/lab/987/answer/course_lab_file_answer39_encrypt.pdf', '98000', 'course_lab_file_answer39_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (988, 988, '/download/lab/988/answer/course_lab_file_answer111_encrypt.pdf', '236000', 'course_lab_file_answer111_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (989, 989, '/download/lab/989/answer/course_lab_file_answer37_encrypt.pdf', '65000', 'course_lab_file_answer37_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (990, 990, '/download/lab/990/answer/course_lab_file_answer40_encrypt.pdf', '75000', 'course_lab_file_answer40_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (991, 991, '/download/lab/991/answer/course_lab_file_answer109_encrypt.pdf', '79000', 'course_lab_file_answer109_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (992, 992, '/download/lab/992/answer/course_lab_file_answer110_encrypt.pdf', '228000', 'course_lab_file_answer110_encrypt.pdf', NULL, NULL, NULL, NULL, '0');


REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (956, 985, '/download/lab/985/code/simpleNeuralNetwork.py', '4036', '2020-05-16 15:29:19', 'simpleNeuralNetwork.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (957, 986, '/download/lab/986/code/Elman.py', '4186', '2020-05-16 15:29:19', 'Elman.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (958, 987, '/download/lab/987/code/RBF_NN.ipynb', '4727', '2020-05-16 15:29:19', 'RBF_NN.ipynb', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (959, 988, '/download/lab/988/code/pso.py', '4042', '2020-05-16 15:29:19', 'pso.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (960, 988, '/download/lab/988/code/using_pso.py', '4820', '2020-05-16 15:29:19', 'using_pso.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (961, 989, '/download/lab/989/code/Adaline_main.py', '4239', '2020-05-16 15:29:19', 'Adaline_main.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (962, 990, '/download/lab/990/code/Hopfield.py', '4345', '2020-05-16 15:29:19', 'Hopfield.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (963, 991, '/download/lab/991/code/SOFM.py', '4220', '2020-05-16 15:29:19', 'SOFM.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (964, 992, '/download/lab/992/code/sga.py', '4047', '2020-05-16 15:29:19', 'sga.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (965, 992, '/download/lab/992/code/using_sga.py', '4551', '2020-05-16 15:29:19', 'using_sga.py', '1', NULL, NULL, '0');

REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('993', '985', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-bp-human'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('994', '989', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-liner-nerve'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('995', '991', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-sofm'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
