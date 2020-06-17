*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource          base.robot


*** Keywords ***
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
    #插入验证码
    sleep  3
    capture element screenshot  id=codeImg   filename=code.png
    sleep  3
    ${code}  EVALUATE  tesserocr.file_to_text('/home/autotest/report/code.png').replace(" ","")  tesserocr
    input text    name=code   ${code}
    sleep  1
    capture page screenshot
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
    Input Username    ${STUDENT_NAME}
    Input Password    ${STUDENT_OLD_PASSWORD}
    Submit Login_data   ${STUDENT_NAME}

Update Account
    [Arguments]    ${old_password}  ${new_password}
    wait until page contains element  id=oldPw
    input text  id=oldPw  ${old_password}
    input text  id=newPw  ${new_password}
    input text  xpath=//input[@placeholder="请再次输入新密码"]  ${new_password}
    click element  xpath=//button[text()="保存"]
