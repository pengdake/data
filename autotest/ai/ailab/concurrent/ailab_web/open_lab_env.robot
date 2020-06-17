*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource     resources/common.robot


*** Test Cases ***
Open Lab Env
    Ailab Login
    Update Account  ${STUDENT_OLD_PASSWORD}  ${STUDENT_PASSWORD}
    wait until page contains element  css=.menu-list>li:nth-child(3)
    Click Element    css=.menu-list>li:nth-child(3)
    title should be  我的课程
    wait until page contains element  xpath=//span[text()="我的实验"]
    click element  xpath=//span[text()="我的实验"]
    wait until page contains element  id=tab-running
    click element  id=tab-running
    wait until page contains element  xpath=//button[contains(text(),"进入实验")]
    click element  xpath=//button[contains(text(),"进入实验")]
    wait until page contains element  xpath=//span[text()="开始实验"]
    click element  xpath=//span[text()="开始实验"]
    sleep  120
    switch window  title=开始实验
    capture page screenshot
    wait until page contains element  xpath=//div[text()="结束实验"]
    click element  xpath=//div[text()="结束实验"]
    wait until page contains element  xpath=//p[text()="您确定要结束实验吗？"]/../..//button[text()="确定"]
    click element  xpath=//p[text()="您确定要结束实验吗？"]/../..//button[text()="确定"]
    sleep  120
    ${status}  run keyword and return status  switch window  title=开始实验
    should be equal as strings  '${status}'  'False'
