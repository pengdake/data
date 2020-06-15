*** Settings ***
Library           SeleniumLibrary
Library           RequestsLibrary
Library           Collections
Resource          ../resources/base.robot

*** Keywords ***
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
    click element  xpath=//span[text()="换一张"]
    sleep  3
    #插入验证码
    capture element screenshot  id=codeImg   filename=code.png
    sleep  3
    ${code}  EVALUATE  tesserocr.file_to_text('/var/www/html/code.png').replace(" ","")  tesserocr
    input text    name=code   ${code}
    sleep  1
    #click element   xpath=//button[contains(text(), "登录")]
    #等待界面响应
    sleep  30
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
    sleep  5
    click element  xpath=//span[text()="组织机构管理"]
    sleep  5
    wait until page contains element  xpath=//span[text()="${COLLEGE_NAME}"]

    Switch Admin Role By Api

    Import User By Api
    click element  xpath=//span[text()="用户管理"]
    wait until page contains element  //*[@id="app"]/div/div[2]/div/div[2]/div[2]/div/div[2]/div[1]/div[3]/table/tbody/tr[1]/td[2]/div/span[text()="${STUDENT_ID}"]

Switch Role 
    [Arguments]  ${old_role}  ${new_role} 
    mouse over  xpath=//span[text()="${old_role}"]
    wait until page contains element  xpath=//a[text()="${new_role}"]
    click element  xpath=//a[text()="${new_role}"]
    wait until page contains element  xpath=//span[text()="${new_role}"]

Create Lesson
    click element  xpath=//span[text()="课程维护"]
    wait until page contains element  xpath=//button[contains(text(), "新建课程")]
    click element  xpath=//button[contains(text(), "新建课程")]
    wait until page contains element  xpath=//input[@name="name"]
    input text  xpath=//input[@name="name"]    ${LESSON_NAME}
    click element  xpath=//button[text()="新建"]
    wait until page contains element  xpath=//div[contains(text(), "您的课程已经新建成功")]
    click element  xpath=//span[text()="课程维护"]
    wait until page contains element  xpath=//p[text()="${LESSON_NAME}"]
    mouse over  xpath=//p[text()="LESSON_NAME"]
    wait until page contains element  xpath=//span[contains(text(), "发布")]
    click element  xpath=//span[contains(text(), "发布")]
    wait until page contains element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[5]/div/div[3]/div/button[1]
    click element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[5]/div/div[3]/div/button[1]
    wait until page contains element  xpath=//i[text()="已发布"]

Create Lesson Group
    click element  xpath=//span[text()="排课管理"]
    wait until page contains element  xpath=//input[@class="el-input__inner"]
    click element  xpath=//input[@class="el-input__inner"]
    wait until page contains element  xpath=//li/span[text()="${LESSON_NAME}"]
    click element  xpath=//li/span[text()="${LESSON_NAME}"]
    wait until page contains element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[2]/div/div[3]/div/button[1]
    click element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[2]/div/div[3]/div/button[1]
    wait until page contains element  xpath=//span[contains(text(), "添加分组")]
    click element  xpath=//span[contains(text(), "添加分组")]
    wait until page contains element  name="oneGroupName"
    input text  name="oneGroupName"    ${LESSON_GROUP}
    click element  xpath=/html/body/div[3]/div/div[3]/div/button[1]
    wait until page contains element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[2]/div/div[4]/div/div[3]/div/button[1]
    click element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[2]/div/div[4]/div/div[3]/div/button[1]
    wait until page contains element  xpath=//span[@title="${LESSON_GROUP}"]/../span[2]/button/span/i
    click element  xpath=//span[@title="${LESSON_GROUP}"]/../span[2]/button/span/i
    wait until page contains element  xpath=/html/body/div[3]/div/div[3]/div/button[1]
    click element  xpath=/html/body/div[3]/div/div[3]/div/button[1]
    wait until page contains element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[2]/div/div[4]/div/div[3]/div/button[1]
    click element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[1]/div[2]/div/div[4]/div/div[3]/div/button[1]
    wait until page contains element  xpath=//span[contains(text(), "${LESSON_GROUP}-")]
    click element  xpath=//span[contains(text(), "${LESSON_GROUP}-")]
    wait until page contains element  xpath=//button[contains(text(),"管理学生")]
    click element  xpath=//button[contains(text(),"管理学生")]
    wait until page contains element  xpath=//input[@placeholder="输入关键字进行过滤"]
    input text  xpath=//input[@placeholder="输入关键字进行过滤"]  ${CLASS_NAME}
    wait until page contains element  xpath=//span[text()="${CLASS_NAME}"]/../label/i
    click element  xpath=//span[text()="${CLASS_NAME}"]/../label/i
    wait until page contains element  xpath=//p[text()="已选择了1位学生"]
    click element  xpath=/html/body/div[3]/div/div[3]/div/button[1]
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
    click element  xpath=//span[text()="实验作业"]
    wait until page contains element  xpath=//input[@class="el-input__inner"]
    input text  xpath=//input[@class="el-input__inner"]    ${LESSON_NAME}
    wait until page contains element  xpath=//li/span[text()="${LESSON_NAME}"]
    click element  xpath=//li/span[text()="${LESSON_NAME}"]
    click element  xpath=//span[contains(text(), "新建实验")]
    wait until page contains element  xpath=//li[contains(text(),"新建jupyter实验")]
    click element  xpath=//li[contains(text(),"新建jupyter实验")]
    wait until page contains element  xpath=//label[contains(text(), "实验名称")]/../div/div/input
    input text  xpath=//label[contains(text(), "实验名称")]/../div/div/input  ${LAB_NAME}
    input text  xpath=//textarea    ${LAB_NAME}
    click element  xpath=//label[contains(text(), "实验环境配置")]/../div/div/div/input
    wait until page contains element  xpath=//li/span[text()="${LAB_CONF_NAME}"]
    click element  xpath=//li/span[text()="${LAB_CONF_NAME}"]
    click element  xpath=//span[text()="pdf"]/../span/span
    choose file    xpath=//span[contains(text(), ".ipynb")]/../input    ${LAB_GUIDE}
    click element  xpath=//span[contains(text(), " 新建 ")]
    wait until page contains element  xpath=//h5[text()="${LAB_NAME}"]


Create Lab work
    click element  xpath=//span[text()="实验作业"]
    wait until page contains element  xpath=//input[@class="el-input__inner"]
    click element  xpath=//input[@class="el-input__inner"]
    wait until page contains element  xpath=//li/span[text()="${LESSON_NAME}"]
    click element  xpath=//li/span[text()="${LESSON_NAME}"]
    wait until element is enabled  xpath=//span[contains(text(), "布置实验作业")]/..
    click element  xpath=//span[contains(text(), "布置实验作业")]/..
    wait until page contains element  xpath=//input[@placeholder="请输入实验作业名称"]
    input text  xpath=//input[@placeholder="请输入实验作业名称"]    ${LAB_WORK_NAME}
    click element  xpath=//label[contains(text(), "实验作业布置给")]/../div/div/div[2]/input
    wait until page contains element  xpath=//span[contains(text(),"${LESSON_GROUP}-")]
    click element  xpath=//span[contains(text(),"${LESSON_GROUP}-")]
    click element  xpath=//input[@placeholder="请输入实验开始时间"]
    wait until page contains element  xpath=//input[@placeholder="开始时间"]
    click element  xpath=//input[@placeholder="开始时间"]
    wait until element is enabled  xpath=/html/body/div[4]/div[2]/button[2]
    click element  xpath=/html/body/div[4]/div[2]/button[2]
    click element  xpath=//input[@placeholder="请选择实验"]
    wait until page contains element  xpath=//span[text()="${LAB_NAME}"]/../../../td[3]//span[@class="el-checkbox__inner"]
    click element  xpath=//span[text()="${LAB_NAME}"]/../../../td[3]//span[@class="el-checkbox__inner"]
    wait until page contains element  xpath=//span[text()="已选择1个实验"]
    click element  xpath=//*[@id="app"]/div/div[2]/div/div[2]/div[6]/div/div[3]/div/button[1]
    wait until page contains element  xpath=//span[contains(text(),"未开始")]
    sleep  400
    execute javascript   window.location.reload();
    wait until page contains element   xpath=//span[contains(text(),"已开始")]

Ailab Logout
    [Arguments]  ${user}
    mouse over  xpath=//span[text()="${user}"]
    wait until page contains element  xpath=//a[text()="退出"]
    click element  xpath=//a[text()="退出"]
    Wait Until Page Contains Element     css=li>a.cursor-pointer

Update Account
    [Arguments]    ${old_password}  ${new_password}
    wait until page contains element  name="oldPassword"
    input text  name="oldPassword"  ${old_password}
    input text  name="newPassword"  ${new_password}
    input text  name="comfirmpass"  ${new_password}
    click element  xpath=//button[text()="保存"]

Run Lab work
    wait until page contains element  css=.menu-list>li:nth-child(3)
    Click Element    css=.menu-list>li:nth-child(3)
    title should be  我的课程
    click element  xpath=//span[text()="我的实验"]
    wait until page contains element  xpath=//div[text()="进行中实验"]
    click element  xpath=//div[text()="进行中实验"]
    wait until page contains element  xpath=//button[contains(text(),"进入实验")]
    click element  xpath=//button[contains(text(),"进入实验")]
    wait until page contains element  xpath=//span[text()="开始实验"]

Switch Account
    [Arguments]  ${user}  ${password}
    page should contain element  css=li>a.cursor-pointer
    Click Link    css=li>a.cursor-pointer
    Wait Until Page Contains Element     xpath=//title[text()="登录"]
    Input Username    ${user}
    Input Password    ${password}
    Submit Login_data  ${user}

Clean Lesson
    click element  xpath=//span[text()="实验管理"]
    wait until page contains element  xpath=//span[text()="实验维护"]
    click element  xpath=//span[text()="实验维护"]
    wait until page contains element  xpath=h5[text()="${LAB_NAME}"]
    mouse over  xpath=h5[text()="${LAB_NAME}"]
    wait until page contains element    xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="删除"]
    click element  xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="删除"]
    wait until page contains element  xpath=//span[text()="您确定要删除该实验吗？"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="您确定要删除该实验吗？"]/../..//button[text()="确定"]
    wait until page does not contain element  xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="删除"]
    wait until page contains element  xpath=//span[text()="回收站"]
    click element  xpath=//span[text()="回收站"]
    mouse over  xpath=h5[text()="${LAB_NAME}"]
    wait until page contains element    xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="彻底删除"]
    click element  xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="彻底删除"]
    wait until page contains element  xpath=//span[text()="您确定要彻底删除该实验吗？一旦删除后将无法恢复"]/../..//button[text()="确定"]
    click element  xpath=//span[text()="您确定要彻底删除该实验吗？一旦删除后将无法恢复"]/../..//button[text()="确定"]
    wait until page does not contain element  xpath=//h5[text()="${LAB_NAME}"]/..//span[text()="彻底删除"]
    switch role  教师  系统管理员
    #删除学生
    wait until page contains element  xpath=//span[text()="系统管理"]
    click element  xpath=//span[text()="系统管理"]
    wait until page contains element  xpath=//span[text()="用户管理"]
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
    click element  xpath=//span[text()="删除"]
    
    
    #删除组织机构
    wait until page contains element  xpath=//span[text()="组织机构管理"]
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

    wait until page contains element  xpath=//span/span[contains(text(), "${CLASS_NAME}")]/../..//button[2]//i
    click element    xpath=//span/span[contains(text(), "${CLASS_NAME}")]/../..//button[2]//i

    wait until page contains element  xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    click element    xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
       
    #删除专业
    wait until page contains element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span
    click element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../../span
    click element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]/../../span
    click element  xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]/../..//button[2]//i
    click element    xpath=//span/span[contains(text(), "${SPECIALTY_NAME}")]/../..//button[2]//i

    wait until page contains element  xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    click element    xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    #删除科系
    wait until page contains element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span
    click element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../../span
    click element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../..//button[2]//i
    click element    xpath=//span/span[contains(text(), "${DEPARTMENT_NAME}")]/../..//button[2]//i

    wait until page contains element  xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    click element    xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    #删除学院
    wait until page contains element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span
    click element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../../span

    wait until page contains element  xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../..//button[2]//i
    click element    xpath=//span/span[contains(text(), "${COLLEGE_NAME}")]/../..//button[2]//i

    wait until page contains element  xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]
    click element    xpath=//div[contains(text(),"确定要删除所选内容吗？")]/../../div[3]//button[text()="确定"]

