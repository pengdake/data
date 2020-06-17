*** Settings ***
Library           SeleniumLibrary
Library           RequestsLibrary
Library           Collections
Library           DatabaseLibrary
Resource          ../resources/base.robot

*** Keywords ***
Select Aistack User By Sql
    [Arguments]   ${user}
    connect to database using custom params  pymysql  host='${MYSQL_DBHOST}',port=${MYSQL_DBPORT},user='${MYSQL_AISTACK_DBUSER}',password='${MYSQL_AISTACK_DBPASSWORD}',database='${MYSQL_AISTACK_DBNAME}'
    @{result}  query  SELECT PASSWORD FROM `tb_user` WHERE username = '${user}'
    disconnect from database
    ${password}  evaluate  @{result}[0][0]
    return from keyword   ${password}

Open Browser To Login Page
    #打开浏览器
    Open Browser    ${BASE_URL}    ${BROWSER}        options=${CHROME_OPTIONS}
    Maximize Browser Window
    Login Page Should Be Open
    #界面等待，一直到有对应元素定位到
    Wait Until Page Contains Element     id=input_username

#验证登录界面
Login Page Should Be Open
    Title Should Be    登录

#输入用户名和密码
Input Username
    [Arguments]    ${username}
    Input Text    id=input_username    ${username}
Input Password
    [Arguments]    ${password}
    Input Text    id=input_password    ${password}

#点击“登录”
Submit Login_data
    Click Button    css=button[type="submit"]

#验证是否登录成功
Welcome Page Should Be Open
    sleep  1
    #验证登录成功后的标签页标题
    Title Should Be    资源概览
# Creat User By Sql
Aistack Login
    #打开浏览器并进入登录界面
    Open Browser To Login Page
    #输入用户名和密码并确认登录
    ${ADMIN_PASSWORD}=  select aistack user by sql  ${ADMIN_USER}
    Input Username    ${ADMIN_USER}
    Input Password    ${ADMIN_PASSWORD}
    Submit Login_data
    #验证是否登录成功
    Welcome Page Should Be Open


Create Dataset
  [Arguments]  ${dataset_name}
  wait until page contains element  xpath=//a[@href="#/dataset/datasetmanage"]/span/..
  click element  xpath=//a[@href="#/dataset/datasetmanage"]/span
  wait until page contains element  xpath=//button[text()="新建数据集"]
  click element  xpath=//button[text()="新建数据集"]
  wait until page contains element  xpath=//input[@placeholder="请输入数据集名称"]
  input text  xpath=//input[@placeholder="请输入数据集名称"]  ${dataset_name}
  wait until page contains element  xpath=//input[@placeholder="请输入数据集名称"]/../../../../..//button[text()="确定"]
  click element  xpath=//input[@placeholder="请输入数据集名称"]/../../../../..//button[text()="确定"]
  wait until page contains element  xpath=//a[contains(text(),"${dataset_name}")]

Create Code
  [Arguments]  ${code_name}
  wait until page contains element  xpath=//a[@href="#/alg/algorithm"]/span/..
  click element  xpath=//a[@href="#/alg/algorithm"]/span/..
  wait until page contains element  xpath=//button[contains(text(),"新建算法")]
  click element  xpath=//button[contains(text(),"新建算法")]
  wait until page contains element  xpath=//input[@placeholder="请输入算法名称"]
  input text  xpath=//input[@placeholder="请输入算法名称"]  ${code_name}
  wait until page contains element  xpath=//input[@placeholder="请输入算法名称"]/../../../../..//button[text()="确定"]
  click element  xpath=//input[@placeholder="请输入算法名称"]/../../../../..//button[text()="确定"]
  wait until page contains element  xpath=//a[contains(text(),"${code_name}")]

Create Train
  [Arguments]  ${train_name}  ${dataset_name}  ${code_name}  ${model_name}
  wait until page contains element  xpath=//i[@class="icon-aw-wdgd"]
  click element  xpath=//i[@class="icon-aw-wdgd"]
  wait until page contains element  xpath=//a[@href="#/train/traincluster"]
  click element  xpath=//a[@href="#/train/traincluster"]
  wait until page contains element  xpath=//button[text()="新建训练"]
  click element  xpath=//button[text()="新建训练"]
  wait until page contains element  xpath=//input[@placeholder="请输入任务名称"]
  input text  xpath=//input[@placeholder="请输入任务名称"]  ${train_name}
  wait until page contains element  xpath=//div[@placeholder="请选择一个镜像"]
  click element  xpath=//div[@placeholder="请选择一个镜像"]
  wait until page contains element  xpath=//ul[@class="ui-select-choices ui-select-choices-content ui-select-dropdown dropdown-menu ng-scope"]/li/div[3]
  click element  xpath=//ul[@class="ui-select-choices ui-select-choices-content ui-select-dropdown dropdown-menu ng-scope"]/li/div[3]
  wait until page contains element  xpath=//label[contains(text(), "数据集")]/..//span
  click element  xpath=//label[contains(text(), "数据集")]/..//span
  wait until page contains element  xpath=//div[@placeholder="请选择数据集"]
  click element  xpath=//div[@placeholder="请选择数据集"]
  wait until page contains element  xpath=//div[text()="${dataset_name}"]
  click element  xpath=//div[text()="${dataset_name}"]
  wait until page contains element  xpath=//button[@ng-click="stepTo(createFirstForm)"]
  click element  xpath=//button[@ng-click="stepTo(createFirstForm)"]
  wait until page contains element    xpath=//button[@ng-click="stepTo(createSecondForm)"]
  click element  xpath=//button[@ng-click="stepTo(createSecondForm)"]
  wait until page contains element    xpath=//button[@ng-click="stepTo(createThirdForm)"]
  click element  xpath=//button[@ng-click="stepTo(createThirdForm)"]
  wait until page contains element  xpath=//input[@placeholder="模型名称"]
  input text  xpath=//input[@placeholder="模型名称"]  ${model_name}
  wait until page contains element    xpath=//button[@ng-click="stepTo(createFourthForm)"]
  click element  xpath=//button[@ng-click="stepTo(createFourthForm)"]
  wait until page contains element    xpath=//button[@ng-click="stepTo(createFivethForm)"]
  click element  xpath=//button[@ng-click="stepTo(createFivethForm)"]
  wait until page contains element   xpath=//button[text()="新建"]
  click element  xpath=//button[text()="新建"]
  wait until page contains element  xpath=//a[text()="${train_name}"]/../..//span[text()="运行中"]    timeout=300

Stop Train
  [Arguments]  ${train_name}
  wait until page contains element  xpath=//a[text()="${train_name}"]/../..//i
  click element  xpath=//a[text()="${train_name}"]/../..//i
  wait until page contains element  xpath=//button[text()="停止训练"]
  wait until element is enabled  xpath=//button[text()="停止训练"]
  click element  xpath=//button[text()="停止训练"]
  wait until page contains element  xpath=//span[text()="确定要停止所选训练吗？"]/../..//button[text()="确定"]
  click element  xpath=//span[text()="确定要停止所选训练吗？"]/../..//button[text()="确定"]
  wait until page contains element  xpath=//a[text()="${train_name}"]/../..//span[text()="已停止"]   timeout=300


Delete Train
  [Arguments]  ${train_name}
  wait until page contains element  xpath=//a[text()="${train_name}"]/../..//i
  click element  xpath=//a[text()="${train_name}"]/../..//i
  wait until page contains element  xpath=//button[contains(text(), "更多操作")]
  wait until element is enabled  xpath=//button[contains(text(), "更多操作")]
  click element  xpath=//button[contains(text(), "更多操作")]
  wait until page contains element  xpath=//button[contains(text(), "删除训练")]
  click element  xpath=//button[contains(text(), "删除训练")]
  wait until page contains element  xpath=//span[text()="您确定删除所选的训练吗？"]/../..//button[text()="确定"]
  click element  xpath=//span[text()="您确定删除所选的训练吗？"]/../..//button[text()="确定"]
  wait until page does not contain element  xpath=//a[text()="${train_name}"]  timeout=300

Delete Dataset
  [Arguments]  ${dataset_name}
  wait until page contains element  xpath=//a[@href="#/dataset/datasetmanage"]/span/..
  click element  xpath=//a[@href="#/dataset/datasetmanage"]/span
  wait until page contains element  xpath=//a[contains(text(),"${dataset_name}")]/../..//i
  click element  xpath=//a[contains(text(),"${dataset_name}")]/../..//i
  wait until element is enabled  xpath=//button[contains(text(),"删除")]
  click element  xpath=//button[contains(text(),"删除")]
  wait until page contains element  xpath=//span[text()="你确认删除所选数据集吗？"]/../..//button[text()="确定"]
  click element  xpath=//span[text()="你确认删除所选数据集吗？"]/../..//button[text()="确定"]
  wait until page does not contain element  xpath=//a[contains(text(),"${dataset_name}")]

Delete Code
  [Arguments]  ${code_name}
  wait until page contains element  xpath=//a[@href="#/alg/algorithm"]/span/..
  click element  xpath=//a[@href="#/alg/algorithm"]/span/..
  wait until page contains element  xpath=//a[contains(text(),"${code_name}")]/../..//i
  click element  xpath=//a[contains(text(),"${code_name}")]/../..//i
  wait until element is enabled  xpath=//button[contains(text(),"新建算法")]/..//button[contains(text(),"删除")]
  click element  xpath=//button[contains(text(),"新建算法")]/..//button[contains(text(),"删除")]
  wait until page contains element  xpath=//span[text()="您确定要删除所选内容吗?"]/../..//button[text()="确定"]
  click element  xpath=//span[text()="您确定要删除所选内容吗?"]/../..//button[text()="确定"]
  wait until page does not contain element  xpath=//a[contains(text(),"${code_name}")]
