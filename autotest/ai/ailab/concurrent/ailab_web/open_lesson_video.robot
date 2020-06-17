*** Settings ***
Library           SeleniumLibrary
Library           Collections
Resource     resources/common.robot


*** Test Cases ***
Open Lesson Video
    Ailab Login
    Update Account  ${STUDENT_OLD_PASSWORD}  ${STUDENT_PASSWORD}
    wait until page contains element  css=.menu-list>li:nth-child(3)
    Click Element    css=.menu-list>li:nth-child(3)
    title should be  我的课程
    wait until page contains element  xpath=//h5[text()="concurrent_lesson"]
    click element  xpath=//h5[text()="concurrent_lesson"]
    wait until page contains element  xpath=//span[text()="播放视频"]
    click element  xpath=//span[text()="播放视频"]
    wait until page contains element  xpath=//button[@title="Play Video"]
    click element  xpath=//button[@title="Play Video"]
    wait until page contains element  xpath=//span[text()="视频"]/../..//div[4]/div[7]/span[2][contains(text(),"${VIDEO_LEN}")]    timeout=60
    capture page screenshot
