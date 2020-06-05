*** Settings ***
Documentation    Suite description
Resource          resources/base.robot
Resource          common/common.robot
*** Test Cases ***
Lab Workflow Test
    Ailab Login
    Click Element    css=.menu-list>li:nth-child(3)
    #pdk
    ${teacher_status}  Run Keyword And Return Status  wait until page contain element  xpath=//span[text()="教师"]
    ${admin_status}  Run Keyword And Return Status  wait until page contain element  xpath=//span[text()="系统管理员"]
    Run Keyword If  '${admin_status}'=='False'  Switch Role  教师  系统管理员
    Prepare Colledge Info
    Switch Role  系统管理员  教师
    Create Lesson
    Create Lesson Group
    Create Lab Conf
    Create Lab
    Create Lab work
    Ailab Logout  ${ADMIN_USER}
    Switch Account  ${STUDENT_NAME}  ${STUDENT_PASSWORD}
    Update Account  ${STUDENT_OLD_PASSWORD}  ${STUDENT_PASSWORD}
    Run Lab work
    Ailab Logout  ${STUDENT_NAME}
    Switch Account  ${ADMIN_USER}  ${ADMIN_PASSWORD}
    ${teacher_status}  Run Keyword And Return Status  wait until page contain element  xpath=//span[text()="教师"]
    ${admin_status}  Run Keyword And Return Status  wait until page contain element  xpath=//span[text()="系统管理员"]
    Run Keyword If  '${teacher_status}'=='False'  Switch Role  系统管理员  教师
    Clean Environment






