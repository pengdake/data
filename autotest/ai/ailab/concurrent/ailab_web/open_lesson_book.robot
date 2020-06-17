*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource     resources/common.robot


*** Test Cases ***
Open Lesson Book
    Ailab Login
    Update Account  ${STUDENT_OLD_PASSWORD}  ${STUDENT_PASSWORD}
    wait until page contains element  css=.menu-list>li:nth-child(3)
    Click Element    css=.menu-list>li:nth-child(3)
    title should be  我的课程
    wait until page contains element  xpath=//h5[text()="concurrent_lesson"]
    click element  xpath=//h5[text()="concurrent_lesson"]
    wait until page contains element  xpath=//span[text()="查看课件"]
    click element  xpath=//span[text()="查看课件"]
    wait until page contains element  xpath=//span[@class="total"][text()="${BOOK_PAGE}"]    timeout=60
    capture page screenshot

