REPLACE INTO `tb_course` VALUES ('997', '数字图像处理', '001017', '0', '本课程介绍数字图像处理技术的发展方向和应用情况，以及图像空间域增强、图像频域增强、图像复原、彩色图像处理、形态学图像处理、图像压缩及图像分割等方面的基本概念、基本理论和方法。', '0', '/download/course/17_数字图像处理/数字图像处理.png', '/download/course/17_数字图像处理/教学大纲_encrypt.pdf', '32', '2019-05-11 08:00:17', "-1", null, null, '0');

REPLACE INTO `tb_tag` VALUES ('1000', '人工智能', NULL, '2020-5-16 16:53:24', 1, NULL, NULL, 0, 1);
REPLACE INTO `tb_course_tag` VALUES ('997', '997', '1000', '2020-5-16 18:12:08', 1, NULL, NULL, 0);

REPLACE INTO `tb_course_chapter` VALUES ('99974', '绪论', '', '1', '997', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99974/1_绪论_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99975', '数字图像基础', '', '2', '997', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99975/2_数字图像基础_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99976', '空间域图像增强', '', '3', '997', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99976/3_空间域图像增强_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99977', '频域图像增强', '', '4', '997', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99977/4_频域图像增强_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99978', '图像复原', '', '5', '997', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99978/5_图像复原_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99979', '彩色图像处理', '', '6', '997', '2019-05-11 09:00:00', "-1", null, null, '0', null , '/download/pdf/99979/6_彩色图像处理_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99980', '图像压缩', '', '7', '997', '2019-05-11 09:00:00', "-1", null, null, '0', null,  '/download/pdf/99980/7_图像压缩_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99981', '形态学图像处理', '', '8', '997', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99981/8_形态学图像处理_encrypt.pdf');
REPLACE INTO `tb_course_chapter` VALUES ('99982', '图像分割', '', '9', '997', '2019-05-11 09:00:00', "-1", null, null, '0', null, '/download/pdf/99982/9_图像分割_encrypt.pdf');

REPLACE INTO `tb_course_chapter_note` VALUES ('99868', '数字图像处理的基本概念', '', null, null, '1', '99974', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99869', '数字图像处理的发展历史及应用领域', '', null, null, '2', '99974', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99870', '数字图像处理的主要研究内容', '', null, null, '3', '99974', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99871', '数字图像处理系统的组成部分', '', null, null, '4', '99974', '2019-05-11 09:00:00', "-1", null, null, '0');

REPLACE INTO `tb_course_chapter_note` VALUES ('99872', '视觉感知要素', '', null, null, '2', '99975', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99873', '图像获取方法', '', null, null, '3', '99975', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99874', '图像的采样和量化', '', null, null, '4', '99975', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99875', '图像像素间的基本关系', '', null, null, '5', '99975', '2019-05-11 09:00:00', "-1", null, null, '0');

REPLACE INTO `tb_course_chapter_note` VALUES ('99876', '空间域图像增强的概念及目的', '', null, null, '1', '99976', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99877', '图像灰度变换', '', null, null, '2', '99976', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99878', '图像直方图处理', '', null, null, '3', '99976', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99879', '图像的算术运算和逻辑运算', '', null, null, '4', '99976', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99880', '空间域滤波基础', '', null, null, '5', '99976', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99881', '图像的空间平滑滤波方法', '', null, null, '6', '99976', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99882', '图像的空间锐化滤波方法', '', null, null, '7', '99976', '2019-05-11 09:00:00', "-1", null, null, '0');

REPLACE INTO `tb_course_chapter_note` VALUES ('99883', '傅图像的傅里叶变换', '', null, null, '1', '99977', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99884', '频域滤波的基本步骤', '', null, null, '2', '99977', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99885', '图像的频域平滑滤波方法', '', null, null, '3', '99977', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99886', '图像的频域锐化滤波方法', '', null, null, '4', '99977', '2019-05-11 09:00:00', "-1", null, null, '0');

REPLACE INTO `tb_course_chapter_note` VALUES ('99887', '图像退化/复原的模型', '', null, null, '1', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99888', '噪声模型', '', null, null, '2', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99889', '只存在噪声的空间滤波复原', '', null, null, '3', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99890', '频域滤波消减周期噪声', '', null, null, '4', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99891', '线性、位置不变的退化', '', null, null, '5', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99892', '估计退化函数', '', null, null, '6', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99893', '逆滤波', '', null, null, '7', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99894', '最小均方误差滤波（维纳滤波）', '', null, null, '8', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99895', '约束最小二乘方滤波器', '', null, null, '9', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99896', '几何均值滤波', '', null, null, '10', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99897', '几何变换', '', null, null, '11', '99978', '2019-05-11 09:00:00', "-1", null, null, '0');

REPLACE INTO `tb_course_chapter_note` VALUES ('99898', '彩色基础', '', null, null, '2', '99979', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99899', '彩色模型', '', null, null, '3', '99979', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99900', '伪彩色处理', '', null, null, '4', '99979', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99901', '全彩色图像处理基础', '', null, null, '5', '99979', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99902', '彩色变换', '', null, null, '6', '99979', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99903', '平滑和尖锐化', '', null, null, '7', '99979', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99904', '彩色分割', '', null, null, '8', '99979', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99905', '彩色图像的噪声', '', null, null, '9', '99979', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99906', '彩色图像压缩', '', null, null, '10', '99979', '2019-05-11 09:00:00', "-1", null, null, '0');

REPLACE INTO `tb_course_chapter_note` VALUES ('99907', '图像压缩基础知识', '', null, null, '3', '99980', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99908', '图像压缩模型', '', null, null, '4', '99980', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99909', '信息论简介', '', null, null, '5', '99980', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99910', '量化', '', null, null, '6', '99980', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99911', '预测编码和变换编码', '', null, null, '7', '99980', '2019-05-11 09:00:00', "-1", null, null, '0');

REPLACE INTO `tb_course_chapter_note` VALUES ('99912', '形态学图像处理基础知识', '', null, null, '1', '99981', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99913', '膨胀与腐蚀', '', null, null, '2', '99981', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99914', '开操作与闭操作', '', null, null, '3', '99981', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99915', '击中或击不中变换', '', null, null, '4', '99981', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99916', '一些基本的形态学算法', '', null, null, '5', '99981', '2019-05-11 09:00:00', "-1", null, null, '0');

REPLACE INTO `tb_course_chapter_note` VALUES ('99917', '间断检测', '', null, null, '1', '99982', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99918', '边缘连接', '', null, null, '2', '99982', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99919', '门限处理', '', null, null, '3', '99982', '2019-05-11 09:00:00', "-1", null, null, '0');
REPLACE INTO `tb_course_chapter_note` VALUES ('99920', '基于区域的分割', '', null, null, '4', '99982', '2019-05-11 09:00:00', "-1", null, null, '0');





























REPLACE INTO `tb_labconfig` (`labcfg_id`, `labcfg_name`, `labcfg_desc`, `labcfg_type`, `labcfg_value`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('996', '内置实验配置-容器', '内置实验配置-容器', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '2020-05-18 11:03:35', '0', NULL, NULL, '0');



REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('965', '基于灰度变换的图像增强', '基于灰度变换的图像增强', '996', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/965/基于灰度变换的图像增强.png', '1', '0', '/download/lab/965/guide/实验一_encrypt.pdf', '实验一_encrypt.pdf', '', '997', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '965', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('966', '直方图均衡化', '直方图均衡化', '996', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/966/直方图均衡化.png', '1', '0', '/download/lab/966/guide/实验二_encrypt.pdf', '实验二_encrypt.pdf', '', '997', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '966', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('967', '图像空间滤波（平滑和锐化）', '图像空间滤波（平滑和锐
化）', '996', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/967/图像空间滤波平滑和锐化.png', '1', '0', '/download/lab/967/guide/实验三_encrypt.pdf', '实验三_encrypt.pdf', '', '997', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '967', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('968', '图像频域滤波（平滑和锐化）', '图像频域滤波（平滑和锐
化）', '996', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/968/图像频域滤波平滑和锐化.png', '1', '0', '/download/lab/968/guide/实验四_encrypt.pdf', '实验四_encrypt.pdf', '', '997', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '968', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('969', '图像去噪（复原）', '图像去噪（复原）', '996', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/969/图像去噪复原.png', '1', '0', '/download/lab/969/guide/实验五_encrypt.pdf', '实验五_encrypt.pdf', '', '997', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '969', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('970', '伪彩色图像处理（X光图像）', '伪彩色图像处理（X光图像
）', '996', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/970/基于灰度变换的图像增强.png', '1', '0', '/download/lab/970/guide/实验六_encrypt.pdf', '实验六_encrypt.pdf', '', '997', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '970', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('971', '彩色图像滤波及直方图处理', '彩色图像滤波及直方图处理
', '996', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/971/基于灰度变换的图像增强.png', '1', '0', '/download/lab/971/guide/实验七_encrypt.pdf', '实验七_encrypt.pdf', '', '997', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '971', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('972', '图像形态学处理（膨胀、腐蚀、开操作和闭操作）', '图像
形态学处理（膨胀、腐蚀、开操作和闭操作）', '996', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/972/图像形态学处理.png', '1', '0', '/download/lab/972/guide/实验八_encrypt.pdf', '实验八_encrypt.pdf', '', '997', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '972', '0', '0');


REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('973', '图像分割（阈值、区域）', '图像分割（阈值、区域）', '996', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/973/图像分割.png', '1', '0', '/download/lab/973/guide/实验九_encrypt.pdf', '实验九_encrypt.pdf', '', '997', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '973', '0', '0');

REPLACE INTO `tb_course_lab` (`lab_id`, `lab_name`, `lab_desc`, `lab_config_id`, `lab_type`, `lab_env_type`, `lab_env_config`, `lab_logo_path`, `lab_guide_file_type`, `lab_guide_editor`, `lab_guide_path`, `lab_guide_original_file_name`, `lab_reporttmp_path`, `course_id`, `create_time`, `update_time`, `create_id`, `update_id`, `is_del`, `file_root_dir`, `lab_source`, `is_duplicate`) VALUES ('974', '图像处理系统算法设计及实现', '图像处理系统算法设计及
实现', '996', '1', '1', '{"dockercfg":{"image":"__IMG_UUID__","ps":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0},"engine":"Tensorflow","session":{"flavor":{"memory":1,"cpu":1,"gpu":0,"group":""},"nodetype":"kvm-virtual-machine","num":1,"computeUnit":"CPU"},"datasize":1,"engineversion":"1.12.0","worker":{"flavor":{"memory":0,"cpu":0,"gpu":0,"group":""},"nodetype":"","num":0}}}', '/download/lab/974/图像处理系统算法设计及实现.png', '1', '0', '/download/lab/974/guide/实验十_encrypt.pdf', '实验十_encrypt.pdf', '', '997', '2020-05-18 11:15:35', NULL, '1', NULL, '0', '974', '0', '0');



REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (965, 965, '/download/lab/965/answer/course_lab_file_answer56_encrypt.pdf', '72000', 'course_lab_file_answer56_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (966, 966, '/download/lab/966/answer/course_lab_file_answer57_encrypt.pdf', '76000', 'course_lab_file_answer57_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (967, 967, '/download/lab/967/answer/course_lab_file_answer58_encrypt.pdf', '84000', 'course_lab_file_answer58_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (968, 968, '/download/lab/968/answer/course_lab_file_answer59_encrypt.pdf', '84000', 'course_lab_file_answer59_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (969, 969, '/download/lab/969/answer/course_lab_file_answer60_encrypt.pdf', '76000', 'course_lab_file_answer60_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (970, 970, '/download/lab/970/answer/course_lab_file_answer61_encrypt.pdf', '96000', 'course_lab_file_answer61_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (971, 971, '/download/lab/971/answer/course_lab_file_answer62_encrypt.pdf', '112000', 'course_lab_file_answer62_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (972, 972, '/download/lab/972/answer/course_lab_file_answer63_encrypt.pdf', '92000', 'course_lab_file_answer63_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (973, 973, '/download/lab/973/answer/course_lab_file_answer64_encrypt.pdf', '88000', 'course_lab_file_answer64_encrypt.pdf', NULL, NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_answer` (`answer_id`, `lab_id`, `file_path`, `file_size`, `original_file_name`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (974, 974, '/download/lab/974/answer/course_lab_file_answer65_encrypt.pdf', '84000', 'course_lab_file_answer65_encrypt.pdf', NULL, NULL, NULL, NULL, '0');


REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (936, 965, '/download/lab/965/code/1_Gray-transformation.py', '4374', '2020-05-16 15:29:19', '1_Gray-transformation.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (937, 966, '/download/lab/966/code/2_Histogram equalization.py', '4937', '2020-05-16 15:29:19', '2_Histogram equalization.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (938, 967, '/download/lab/967/code/3_spatial filtering.py', '4560', '2020-05-16 15:29:19', '3_spatial filtering.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (939, 968, '/download/lab/968/code/4_Frequency Domain Filtering.py', '4443', '2020-05-16 15:29:19', '4_Frequency Domain Filtering.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (940, 969, '/download/lab/969/code/5_Statistical Sorting Filter.py', '4419', '2020-05-16 15:29:19', '5_Statistical Sorting Filter.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (941, 970, '/download/lab/970/code/6_Pseudo-color Image Processing-x.py', '4487', '2020-05-16 15:29:19', '6_Pseudo-color Image Processing-x.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (942, 971, '/download/lab/971/code/7_RGBFilter.py', '4027', '2020-05-16 15:29:19', '7_RGBFilter.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (943, 972, '/download/lab/972/code/8_Graphic_Morphologica.py', '4483', '2020-05-16 15:29:19', '8_Graphic_Morphologica.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (944, 973, '/download/lab/973/code/9_ImageSegmentation.py', '4019', '2020-05-16 15:29:19', '9_ImageSegmentation.py', '1', NULL, NULL, '0');
REPLACE INTO `tb_course_lab_code` (`code_id`, `lab_id`, `code_filepath`, `code_filesize`, `create_time`, `original_file_name`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES (945, 974, '/download/lab/974/code/10_image processing system.py', '4721', '2020-05-16 15:29:19', '10_image processing system.py', '1', NULL, NULL, '0');

REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('978', '965', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-exchange'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('979', '966', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-histogram'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('980', '967', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-space-smooth'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('981', '968', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-fre-smooth'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('982', '969', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-image-denoise'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('983', '970', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-x-ray'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('984', '971', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-filter-hisogram'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('985', '972', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-expand'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('986', '973', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-image-cut'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
REPLACE INTO `tb_course_lab_dateset` (`id`, `lab_id`, `dataset_id`, `create_time`, `create_id`, `update_time`, `update_id`, `is_del`) VALUES ('987', '974', (SELECT dataset_id FROM tb_dataset WHERE is_del = 0 AND dataset_name = 'dataset-image-design'), '2020-05-18 13:41:16', NULL, NULL, NULL, '0');
