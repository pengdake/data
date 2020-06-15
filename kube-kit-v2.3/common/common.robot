*** Settings ***
Library           SeleniumLibrary
Library           RequestsLibrary
Library           DatabaseLibrary
Library           Collections
Resource          ../resources/base.robot

*** Keywords ***
Creat Aistack User By Sql
    connect to database using custom params  pymysql  host='${MYSQL_DBHOST}',port='${MYSQL_DBPORT}',user='${MYSQL_AILAB_DBUSER}',password='${MYSQL_AILAB_DBPASSWORD}',database='${MYSQL_AILAB_DBNAME}'
    execute sql string  replace into `pub_tb_user`(`org_id`,`user_code`,`login_name`,`password`,`user_name`,`status`,`user_type`,`reg_source`,`login_status`,`update_pwd`,`update_info`,`mobile`,`email`,`address`,`postal_code`,`fax`,`phone`,`qq`,`weixin`,`img`,`creater_id`,`reg_time`,`updater_id`,`update_time`) values (70,'00001','awcloudTestAdmin','29cafeb8a69096d0b6141e9918a308da','awcloudTestAdmin',1,1,2,'0','1','0','13345678910','78900912@qq.com',NULL,NULL,NULL,'18840911456',NULL,NULL,NULL,-1,'2020-06-15 11:27:14',1,'2020-06-10 18:04:27');
    execute sql string  replace into `pub_tb_user_role`(user_id,role_id) VALUES ((SELECT user_id FROM pub_tb_user WHERE login_name = 'awcloudTestAdmin'),1) ,((SELECT user_id FROM pub_tb_user WHERE login_name = 'awcloudTestAdmin'),3);
    disconnect from database

Delete Aistack User By Sql
    connect to database using custom params  pymysql  host='${MYSQL_DBHOST}',port='${MYSQL_DBPORT}',user='${MYSQL_AILAB_DBUSER}',password='${MYSQL_AILAB_DBPASSWORD}',database='${MYSQL_AILAB_DBNAME}'
    execute sql string  DELETE FROM pub_tb_user_role WHERE user_id = (SELECT user_id FROM pub_tb_user WHERE login_name = 'awcloudTestAdmin');
    execute sql string  DELETE FROM pub_tb_user WHERE login_name = "awcloudTestAdmin";
    disconnect from database

Ailab Api Auth
    Create Session    ailab    ${BASE_URL}
    ${code_resp}=    Get Request    ailab    /ailab-manager/v1/kaptcha/json
    Should Be Equal As Strings    ${code_resp.status_code}    200
    ${code_json}=    To Json    ${code_resp.text}
    ${captchaCode}=    Set Variable    ${code_json['result']['captchaCode']}
    ${captchaKey}=    Set Variable    ${code_json['result']['captchaKey']}
    ${data}    Evaluate    {"loginName":"${ADMIN_USER}","password":"${ADMIN_PASSWORD}","captchaCode":"${captchaCode}","captchaKey":"${captchaKey}"}
    ${login_resp}=    Post Request    ailab    /ailab-manager/v1/login    json=${data}
    Should Be Equal As Strings    ${login_resp.status_code}    200
    ${login_json}=    to json  ${login_resp.text}
    ${token}=    set variable  ${login_json['result']['token']}
    ${HEADERS}    evaluate  {"X-Auth-Token":"${token}"}
    set global variable  ${HEADERS}

Open Browser To Login Page
   #打开浏览器
    Open Browser    ${BASE_URL}    ${BROWSER}      options=${CHROME_OPTIONS}
    Maximize Browser Window
    #设置Selenium速率
    Set Selenium Speed    ${DELAY}
    #界面等待一直到发现对应元素
    Wait Until Page Contains Element     css=li>a.cursor-pointer
    #点击界面右上角的“登录”
    Click Link    css=li>a.cursor-pointer
    #等待出现登录界面
    Wait Until Page Contains Element     xpath=//title[text()="登录"]

#输入用户名和密码
Input Username
    [Arguments]    ${username}
    Input Text    id=input_loginName    ${username}
Input Password
    [Arguments]    ${password}
    Input Text    id=input_password    ${password}


#提交登录信息，并校验是否登录成功
Submit Login_data
    [Arguments]  ${user}
    wait until page contains element  xpath=//span[text()="换一张"]
    click element  xpath=//span[text()="换一张"]
    sleep  3
    #插入验证码
    capture element screenshot  id=codeImg   filename=code.png
    sleep  3
    ${code}  EVALUATE  tesserocr.file_to_text('/home/autotest/ai/kube-kit-v2.3/code.png').replace(" ","")  tesserocr
    input text    name=code   ${code}
    sleep  3
    #click element   xpath=//button[contains(text(), "登录")]
    #等待界面响应
    sleep  10
    #检查是否登录成功(检验用户名)
    ${res}  run keyword and return status  Page Should Contain Element          xpath=//span[text()="${user}"]
    Run Keyword If  '${res}'=='False'    Submit Login_data  ${user}

#登录
Ailab Login
    #打开浏览器并访问登录界面
    Open Browser To Login Page
    Input Username    ${ADMIN_USER}
    Input Password    ${ADMIN_PASSWORD}
    Submit Login_data   ${ADMIN_USER}

Import Org By Api
    create session  ailab-import-org  ${BASE_URL}
    ${files}  evaluate  {'file': open('${ORG_FILE}','rb')}
    ${import_org_resp}=  post request  ailab-import-org  /ailab-manager/v1/orgs/template  files=${files}  headers=${HEADERS}
    ${import_org_resp_json}=  to json  ${import_org_resp.text}
    ${import_org_resp_code}=  set variable  ${import_org_resp_json['code']}
    should be equal as strings  ${import_org_resp_code}  0

Import User By Api
    create session  ailab-import-user  ${BASE_URL}
    ${files}  evaluate  {'file': open('${USER_FILE}','rb')}
    ${import_user_resp}=  post request  ailab-import-user  /ailab-manager/v1/users/template  files=${files}  headers=${HEADERS}
    ${import_user_resp_json}=  to json  ${import_user_resp.text}
    ${import_user_resp_code}=  set variable  ${import_user_resp_json['code']}
    should be equal as strings  ${import_user_resp_code}  0

Switch Admin Role By Api
    create session  ailab-role  ${BASE_URL}
    ${data}=  evaluate  {'roleId': '1'}
    ${resp}=  post request  ailab-role  /ailab-manager/v1/roles/currentRole  json=${data}  headers=${HEADERS}
    ${resp_json}=  to json  ${resp.text}
    ${resp_code}=  set variable  ${resp_json['code']}
    should be equal as strings  ${resp_code}  0

Import Org And User
    wait until page contains element  xpath=//span[text()="系统管理"]/../i[@class="el-submenu__icon-arrow el-icon-arrow-down"]
    sleep  3
    Ailab Api Auth
    Import Org By Api
    element should be visible  xpath=//span[text()="系统管理"]/../i[@class="el-submenu__icon-arrow el-icon-arrow-down"]
    click element  xpath=//span[text()="系统管理"]/../i[@class="el-submenu__icon-arrow el-icon-arrow-down"]
    wait until page contains element  xpath=//span[text()="组织机构管理"]
    sleep  3
    click element  xpath=//span[text()="组织机构管理"]
    sleep  3
    wait until page contains element  xpath=//span[contains(text(), "${COLLEGE_NAME}")]

    Switch Admin Role By Api

    Import User By Api
    click element  xpath=//span[text()="用户管理"]
    wait until page contains element  //*[@id="app"]/div/div[2]/div/div[2]/div[2]/div/div[2]/div[1]/div[3]/table/tbody/tr[1]/td[2]/div/span[text()="${STUDENT_ID}"]

Switch Role 
    [Arguments]  ${old_role}  ${new_role} 
    mouse over  xpath=//span[text()="${old_role}"]
    wait until page contains element  xpath=//a[text()="${new_role}"]
    wait until element is enabled  xpath=//a[text()="${new_role}"]
    click element  xpath=//a[text()="${new_role}"]
    wait until page contains element  xpath=//span[text()="${new_role}"]

Create Lesson
    wait until page contains element  xpath=//span[text()="课程维护"]
    click element  xpath=//span[text()="课程维护"]
    wait until page contains element  xpath=//button[contains(text(), "新建课程")]
    click element  xpath=//button[contains(text(), "新建课程")]
    wait until page contains element  xpath=//input[@name="name"]
    input text  xpath=//input[@name="name"]    ${LESSON_NAME}
    click element  xpath=//button[text()="新建"]
    wait until page contains element  xpath=//div[contains(text(), "您的课程已经新建成功")]
    click element  xpath=//span[text()="课程维护"]
    wait until page contains element  xpath=//p[text()="${LESSON_NAME}"]
    mouse over  xpath=//p[text()="${LESSON_NAME}"]
    wait until page contains element  xpath=//i[@class="icon-aw-fb2"]
    sleep  3
    click element  xpath=//i[@class="icon-aw-fb2"]
    wait until page contains element  xpath=//span[text()="课程发布后,相关信息不可再编辑！"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="课程发布后,相关信息不可再编辑！"]/../..//button[text()="确定"]
    wait until page contains element  xpath=//span[text()="已发布"]

Create Lesson Group
    click element  xpath=//span[text()="排课管理"]
    wait until page contains element  xpath=//input[@class="el-input__inner"]
    click element  xpath=//input[@class="el-input__inner"]
    wait until page contains element  xpath=//li/span[text()="${LESSON_NAME}"]
    sleep  3
    click element  xpath=//li/span[text()="${LESSON_NAME}"]
    wait until page contains element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[2]/div/div[3]/div/button[1]
    click element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[2]/div/div[3]/div/button[1]
    wait until page contains element  xpath=//span[contains(text(), "添加分组")]
    click element  xpath=//span[contains(text(), "添加分组")]
    wait until page contains element  xpath=//input[@name="oneGroupName"]
    input text  xpath=//input[@name="oneGroupName"]    ${LESSON_GROUP}
    click element  xpath=//label[contains(text(),"名称")]/../../..//button[text()="确定"]
    wait until page contains element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[2]/div/div[4]/div/div[3]/div/button[1]
    click element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[2]/div/div[4]/div/div[3]/div/button[1]

    wait until page contains element  xpath=//span[@title="${LESSON_GROUP}"]
    click element  xpath=//span[@title="${LESSON_GROUP}"]
    wait until page contains element  xpath=//span[text()="学生列表"]
    click element  xpath=//span[text()="学生列表"]
    wait until page contains element  xpath=//button[contains(text(),"管理学生")]
    sleep  3
    click element  xpath=//button[contains(text(),"管理学生")]
    wait until page contains element  xpath=//input[@placeholder="输入关键字进行过滤"]    timeout=10
    input text  xpath=//input[@placeholder="输入关键字进行过滤"]  ${STUDENT_NAME}
    wait until page contains element  xpath=//span[text()="${STUDENT_NAME}"]/../i     timeout=10
    click element  xpath=//span[text()="${STUDENT_NAME}"]/../i
    click element  xpath=/html/body/div[3]/div/div[3]/div/button[1]

    wait until page contains element  xpath=//span[@title="${LESSON_GROUP}"]/../span[2]/button/span/i
    click element  xpath=//span[@title="${LESSON_GROUP}"]/../span[2]/button/span/i
    wait until page contains element  xpath=/html/body/div[3]/div/div[3]/div/button[1]
    click element  xpath=/html/body/div[3]/div/div[3]/div/button[1]
    wait until page contains element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[2]/div/div[4]/div/div[3]/div/button[1]
    click element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[2]/div/div[4]/div/div[3]/div/button[1]
    wait until page contains element  xpath=//span/b[contains(text(), "${LESSON_GROUP}-")]
    sleep  3
    click element  xpath=//span/b[contains(text(), "${LESSON_GROUP}-")]
    wait until page contains element  xpath=//button[contains(text(),"管理学生")]
    click element  xpath=//button[contains(text(),"管理学生")]
    wait until page contains element  xpath=//input[@placeholder="输入关键字进行过滤"]
    input text  xpath=//input[@placeholder="输入关键字进行过滤"]  ${STUDENT_NAME}
    wait until page contains element  xpath=//span[text()="${STUDENT_NAME}"]/../label/i
    click element  xpath=//span[text()="${STUDENT_NAME}"]/../label/i
    wait until page contains element  xpath=//p[text()="已选择了1位学生"]
    wait until page contains element  xpath=//span[text()="管理学生"]/../../..//button[text()="确定"]
    click element  xpath=//span[text()="管理学生"]/../../..//button[text()="确定"]
    wait until page contains element  xpath=//span[text()="${STUDENT_NAME}"]

Create Lab Conf
    Ailab Api Auth
    ${data}  evaluate  {"name":"${LAB_CONF_NAME}","type":1,"description":"","dockercfg":{"engine":"Tensorflow","engineversion":"1.12.0","datasize":1,"image":"1","isSupportVnc":0,"session":{"nodetype":"kvm-virtual-machine","computeUnit":"CPU","flavor":{"cpu":1,"memory":1,"gpu":0,"group":""}},"ps":{"num":0,"nodetype":"","flavor":{"cpu":0,"memory":0,"group":"","gpu":0}},"worker":{"num":0,"nodetype":"","flavor":{"cpu":0,"memory":0,"group":"","gpu":0}},"supportVnc":0,"imageName":"${LAB_CONF_IMG}"}}
    create session  ailab-lab-conf  ${BASE_URL}
    ${lab_conf_resp}=   post request   ailab-lab-conf  /ailab-manager/v1/labconfig  json=${data}  headers=${HEADERS}
    ${lab_conf_resp_json}=  to json  ${lab_conf_resp.text}
    ${lab_conf_resp_code}=  set variable  ${lab_conf_resp_json['code']}
    ${status}  run keyword and return status  should be equal as strings  ${lab_conf_resp_code}  0
    run keyword if  '${status}'=='False'  set global variable  ${LAB_CONF_NAME}  ${lab_conf_resp_json['result']}

Create Lab
    click element  xpath=//span[text()="实验管理"]
    wait until page contains element  xpath=//span[text()="实验维护"]
    sleep  3
    click element  xpath=//span[text()="实验维护"]
    wait until page contains element  xpath=//input[@class="el-input__inner"]
    click element  xpath=//input[@class="el-input__inner"]
    input text  xpath=//input[@class="el-input__inner"]    ${LESSON_NAME}
    wait until page contains element  xpath=//li/span[text()="${LESSON_NAME}"]
    click element  xpath=//li/span[text()="${LESSON_NAME}"]
    click element  xpath=//button[contains(text(), "新建实验")]
    wait until page contains element  xpath=//li[contains(text(),"新建Jupyter实验")]
    wait until element is enabled  xpath=//li[contains(text(),"新建Jupyter实验")]
    click element  xpath=//li[contains(text(),"新建Jupyter实验")]
    wait until page contains element  xpath=//span[contains(text(),"新建Jupyter实验")]
    wait until page contains element  xpath=//label[contains(text(), "实验名称")]/../div/div/input
    input text  xpath=//label[contains(text(), "实验名称")]/../div/div/input  ${LAB_NAME}
    input text  xpath=//textarea    ${LAB_NAME}
    click element  xpath=//label[contains(text(), "实验环境配置")]/../div/div/div/input
    wait until page contains element  xpath=//li/span[text()="${LAB_CONF_NAME}"]
    sleep  3
    click element  xpath=//li/span[text()="${LAB_CONF_NAME}"]
    click element  xpath=//span[text()="pdf"]/../span/span
    choose file    xpath=//span[contains(text(), ".ipynb")]/../input    ${LAB_GUIDE}
    click element  xpath=//button[contains(text(), " 新建 ")]
    wait until page contains element  xpath=//h5[text()="${LAB_NAME}"]


Create Lab work
    click element  xpath=//span[text()="实验作业"]
    wait until page contains element  xpath=//input[@class="el-input__inner"]
    click element  xpath=//input[@class="el-input__inner"]
    wait until page contains element  xpath=//li/span[text()="${LESSON_NAME}"]
    sleep  3
    click element  xpath=//li/span[text()="${LESSON_NAME}"]
    wait until element is enabled  xpath=//button[contains(text(), "布置实验作业")]
    click element  xpath=//button[contains(text(), "布置实验作业")]
    wait until page contains element  xpath=//span[text()="布置实验作业"]
    wait until page contains element  xpath=//input[@placeholder="请输入实验作业名称"]
    input text  xpath=//input[@placeholder="请输入实验作业名称"]    ${LAB_WORK_NAME}
    click element  xpath=//label[contains(text(), "实验作业布置给")]/../div/div/div[2]/input
    wait until page contains element  xpath=//span[contains(text(),"${LESSON_GROUP}-")]
    wait until element is enabled  xpath=//span[contains(text(),"${LESSON_GROUP}-")]
    sleep  3
    click element  xpath=//span[contains(text(),"${LESSON_GROUP}-")]
    click element  xpath=//span[text()="布置实验作业"]
    click element  xpath=//input[@placeholder="请输入实验开始时间"]
    wait until page contains element  xpath=//input[@placeholder="开始时间"]
    click element  xpath=//input[@placeholder="开始时间"]
    wait until element is enabled  xpath=//span[contains(text(), "清空")]/../../button/span[contains(text(), "确定")]
    click element  xpath=//span[contains(text(), "清空")]/../../button/span[contains(text(), "确定")]
    wait until page contains element  xpath=//div[@class="exp-form-item"]
    sleep  3
    click element  xpath=//div[@class="exp-form-item"]
    wait until page contains element  css=.el-table__fixed-body-wrapper tbody .el-checkbox__inner
    wait until element is enabled  css=.el-table__fixed-body-wrapper tbody .el-checkbox__inner
    execute javascript  document.querySelector(".el-table__fixed-body-wrapper tbody .el-checkbox__inner").click()
    wait until page contains element  xpath=//span[text()="已选择1个实验"]
    wait until page contains element  xpath=//span[text()="请选择实验"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="请选择实验"]/../..//button[text()="确定"]
    wait until page contains element  xpath=//span[text()="布置实验作业"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="布置实验作业"]/../..//button[text()="确定"]
    wait until page contains element  xpath=//span[contains(text(),"未开始")]

Ailab Logout
    [Arguments]  ${user}
    mouse over  xpath=//span[text()="${user}"]
    wait until page contains element  xpath=//a[text()="退出"]
    execute javascript  css=.admin-center-language~.admin-center-info .dropdown-layer li:nth-child(3)  
    Wait Until Page Contains Element     css=li>a.cursor-pointer

Update Account
    [Arguments]    ${old_password}  ${new_password}
    wait until page contains element  id=oldPw
    input text  id=oldPw  ${old_password}
    input text  id=newPw  ${new_password}
    input text  xpath=//input[@placeholder="请再次输入新密码"]  ${new_password}
    click element  xpath=//button[text()="保存"]

Run Lab work
    wait until page contains element  css=.menu-list>li:nth-child(3)
    Click Element    css=.menu-list>li:nth-child(3)
    title should be  我的课程
    click element  xpath=//span[text()="我的实验"]
    wait until page contains element  xpath=//div[text()="未开始实验"]

Switch Account
    [Arguments]  ${user}  ${password}
    execute javascript   window.location.reload();
    Wait Until Page Contains Element     xpath=//title[text()="登录"]
    Input Username    ${user}
    Input Password    ${password}
    Submit Login_data  ${user}

Clean Environment
    click element  xpath=//span[text()="实验管理"]

    wait until page contains element  xpath=//span[text()="实验作业"]
    sleep  3
    click element  xpath=//span[text()="实验作业"]
    sleep  3
    wait until page contains element  xpath=//div[4]//tr[1]//td[8]//button[text()="删除"]
    wait until element is enabled  xpath=//div[4]//tr[1]//td[8]//button[text()="删除"]
    click element  xpath=//div[4]//tr[1]//td[8]//button[text()="删除"]
    wait until page contains element  xpath=//span[text()="您确定要删除所选内容吗？"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="您确定要删除所选内容吗？"]/../..//button[text()="确定"]

    wait until page contains element  xpath=//span[text()="实验维护"]
    click element  xpath=//span[text()="实验维护"]
    wait until page contains element  xpath=//h5[text()="${LAB_NAME}"]
    mouse over  xpath=//h5[text()="${LAB_NAME}"]
    wait until page contains element    xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="删除"]
    click element  xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="删除"]
    wait until page contains element  xpath=//span[text()="您确定要删除该实验吗？"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="您确定要删除该实验吗？"]/../..//button[text()="确定"]
    wait until page does not contain element  xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="删除"]
    wait until page contains element  xpath=//span[text()="回收站"]
    sleep  3
    click element  xpath=//span[text()="回收站"]
    sleep  3
    mouse over  xpath=//h5[text()="${LAB_NAME}"]
    wait until page contains element    xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="彻底删除"]
    click element  xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="彻底删除"]
    wait until page contains element  xpath=//span[text()="您确定要彻底删除该实验吗？一旦删除后将无法恢复"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="您确定要彻底删除该实验吗？一旦删除后将无法恢复"]/../..//button[text()="确定"]
    wait until page does not contain element  xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="彻底删除"]


    #删除课程
    wait until page contains element  xpath=//span[text()="课程管理"]
    click element  xpath=//span[text()="课程管理"]
    wait until page contains element  xpath=//span[text()="课程维护"]
    click element  xpath=//span[text()="课程维护"]
    wait until page contains element  xpath=//p[text()="${LESSON_NAME}"]
    mouse over  xpath=//p[text()="${LESSON_NAME}"]
    wait until page contains element    xpath=//p[text()="${LESSON_NAME}"]/..//span[contains(text(),"取消发布")]
    click element  xpath=//p[text()="${LESSON_NAME}"]/..//span[contains(text(),"取消发布")]
    wait until page contains element  xpath=//span[text()="您确定要取消发布所选课程吗？"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="您确定要取消发布所选课程吗？"]/../..//button[text()="确定"]
    wait until page does not contain element  xpath=//p[text()="${LESSON_NAME}"]/..//span[contains(text(),"取消发布")]

    mouse over  xpath=//p[text()="${LESSON_NAME}"]
    wait until page contains element    xpath=//p[text()="${LESSON_NAME}"]/..//span[contains(text(),"删除")]
    click element  xpath=//p[text()="${LESSON_NAME}"]/..//span[contains(text(),"删除")]
    wait until page contains element  xpath=//span[contains(text(),"您确定要删除该课程吗？")]/../..//button[text()="确定"]
    click element  xpath=//span[contains(text(),"您确定要删除该课程吗？")]/../..//button[text()="确定"]
    wait until page does not contain element  xpath=//p[text()="${LESSON_NAME}"]/..//span[contains(text(),"删除")]

    wait until page contains element  xpath=//li[1]//span[text()="回收站"]
    sleep  3
    click element  xpath=//li[1]//span[text()="回收站"]
    sleep  3
    mouse over  xpath=//p[text()="${LESSON_NAME}"]
    wait until page contains element    xpath=//p[text()="${LESSON_NAME}"]/..//span[contains(text(),"彻底删除")]
    click element  xpath=//p[text()="${LESSON_NAME}"]/..//span[contains(text(),"彻底删除")]
    wait until page contains element  xpath=//span[text()="您确定要删除该课程吗？一旦删除后将无法恢复"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="您确定要删除该课程吗？一旦删除后将无法恢复"]/../..//button[text()="确定"]
    wait until page does not contain element  xpath=//p[text()="${LESSON_NAME}"]/..//span[contains(text(),"彻底删除")]


    switch role  教师  系统管理员
    #删除学生
    wait until page contains element  xpath=//span[text()="系统管理"]
    click element  xpath=//span[text()="系统管理"]
    wait until page contains element  xpath=//span[text()="用户管理"]
    sleep  3
    click element  xpath=//span[text()="用户管理"]
    wait until page contains element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[2]/div/div[2]/div[1]/div[3]/table/tbody/tr[1]/td[1]/div/label/span/span
    click element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[2]/div/div[2]/div[1]/div[3]/table/tbody/tr[1]/td[1]/div/label/span/span
    wait until element is enabled  xpath=//button[contains(text(), "禁用")]
    click element  xpath=//button[contains(text(), "禁用")]
    wait until page contains element  xpath=//span[text()="您确定要禁用所选用户吗?"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="您确定要禁用所选用户吗?"]/../..//button[text()="确定"]
    wait until page contains element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[2]/div/div[2]/div[1]/div[3]/table/tbody/tr[1]/td[1]/div/label/span/span
    click element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[2]/div/div[2]/div[1]/div[3]/table/tbody/tr[1]/td[1]/div/label/span/span
    click element  xpath=//button[contains(text(),"更多操作")]
    wait until page contains element  xpath=//span[text()="删除"]
    sleep  3
    click element  xpath=//span[text()="删除"]
    wait until page contains element  xpath=//span[contains(text(),"您确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    click element    xpath=//span[contains(text(),"您确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    
    
    #删除组织机构
    sleep  3
    wait until page contains element  xpath=//span[text()="组织机构管理"]
    sleep  3
    click element  xpath=//span[text()="组织机构管理"]
    #删除班级
    wait until page contains element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span
    click element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../../span
    click element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]/../../span
    click element  xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${CLASS_NAME}")]/../../span
    click element  xpath=//span/span[contains(text(), "${CLASS_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${CLASS_NAME}")]
    click element    xpath=//span/span[contains(text(), "${CLASS_NAME}")]
    wait until element is visible  xpath=//span/span[contains(text(), "${CLASS_NAME}")]/../..//button[2]//i
    click element    xpath=//span/span[contains(text(), "${CLASS_NAME}")]/../..//button[2]//i

    wait until page contains element  xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    click element    xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
       
    #删除专业
    wait until page contains element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span
    sleep  3
    click element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../../span
    sleep  3
    click element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]/../../span
    sleep  3
    click element  xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]
    click element    xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]
    wait until element is visible  xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]/../..//button[2]//i
    click element    xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]/../..//button[2]//i

    wait until page contains element  xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    click element    xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    #删除科系
    wait until page contains element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span
    sleep  3
    click element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../../span
    sleep  3
    click element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]
    click element    xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]
    wait until element is visible  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../..//button[2]//i
    click element    xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../..//button[2]//i

    wait until page contains element  xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    click element    xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    #删除学院
    wait until page contains element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span
    sleep  3
    click element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]
    click element    xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]
    wait until element is visible  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../..//button[2]//i
    click element    xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../..//button[2]//i

    wait until page contains element  xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    click element    xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]

    delete ailab user by sql
