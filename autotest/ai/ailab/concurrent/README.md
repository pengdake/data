# ailab界面并发测试
目前测试用例适用于kubekit v2.3版本

## 使用说明
前提：准备好测试所需的包含课程课件和课程视频的课程，课程还需创建实验作业，关联教师
1. 根据需要修改genrate.py中的学生数量STUDENT_NUM
执行
python generate.py 生成测试所需的组织机构autotest_org.xlsx和学生列表autotest_user.xlsx,并记录打印出来的学生名称后缀
2. 使用系统管理员账号登录ailab测试环境，导入组织机构和学生列表 
3. 切换教师账号，给前提准备的课程创建排课分组，包括所有包含学生名称后缀的学生。如果是执行实验环境的相关用例，还需要创建实验相关的内容，并给前面指定的分组分配实验作业
4. 根据实际修改run.py中的学生数量STUDENT_NUM，测试环境虚拟地址VIP，学生名称后缀STUDENT_NAME_PRE，测试用例名CASE

目前测试用例包含
* 打开课程课件：open_lesson_book.robot
* 打开课程视频: open_lesson_video.robot
* 实验环境准备和销毁: open_lab_env.robot

5. 执行python run.py执行测试，测试报告会输出到当前目录下的report中，不同学生的测试报告会放在以学生名为名的目录下。
