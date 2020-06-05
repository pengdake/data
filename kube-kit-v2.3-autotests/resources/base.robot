
*** Variables ***
${BROWSER}        Chrome
${DELAY}          0
${VIP}    10.1.32.120
${BASE_URL}    https://${VIP}:8093
${CHROME_OPTIONS}    add_argument("--headless"); add_argument("--no-sandbox"); add_argument("--disable-dev-shm-usage"); add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors"); add_argument("window-size=1600,900")

${ADMIN_USER}   awcloudTestAdmin
${ADMIN_PASSWORD}    Awcloud!23

${STUDENT_ID}    1000xxxxxxx
${STUDENT_NAME}  autotest
${STUDENT_PASSWORD}   Awcloud!23
${STUDENT_OLD_PASSWORD}  test

${COLLEGE_ID}      1000xxx
${COLLEGE_NAME}    autotestx
${DEPARTMENT_ID}   1000xxxx
${DEPARTMENT_NAME}  autotestxx
${SPECIALTY_ID}    1000xxxxx
${SPECIALTY_NAME}   autotestxxx
${CLASS_ID}      1000xxxxxx
${CLASS_NAME}    autotestxxxx
${LESSON_NAME}   autotest_lesson

${LESSON_GROUP}  2020
${LAB_CONF_NAME}    autotest_lab_conf
${LAB_CONF_IMG}  tensorflow-cpu-course
${LAB_NAME}    autotest_lab
${LAB_WORK_NAME}  autotest_lab_work

${COLLEGE_FILE}   /home/autotest/ai/autotest_college.xlsx
${STUDENT_FILE}   /home/autotest/ai/autotest_student.xlsx
${LAB_GUIDE}     /home/autotest/ai/autotest.pdf