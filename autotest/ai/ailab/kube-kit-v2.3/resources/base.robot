
*** Variables ***
${BROWSER}        Chrome
${DELAY}          0
${VIP}    10.1.32.120
${BASE_URL}    https://${VIP}:8093
${CHROME_OPTIONS}    add_argument("--headless"); add_argument("--no-sandbox"); add_argument("--disable-dev-shm-usage"); add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors"); add_argument("window-size=1600,900")

${ADMIN_USER}   awcloudTestAdmin
${ADMIN_PASSWORD}    Awcloud!23

${ID_PRE}    1000xxx
${NAME_PRE}  auto

${STUDENT_ID}    ${ID_PRE}xxxx
${STUDENT_NAME}  ${NAME_PRE}testxxxxx
${STUDENT_PASSWORD}   Awcloud!23
${STUDENT_OLD_PASSWORD}  xxxx

${COLLEGE_ID}      ${ID_PRE}
${COLLEGE_NAME}    ${NAME_PRE}testx
${DEPARTMENT_ID}   ${ID_PRE}x
${DEPARTMENT_NAME}  ${NAME_PRE}testxx
${SPECIALTY_ID}    ${ID_PRE}xx
${SPECIALTY_NAME}   ${NAME_PRE}testxxx
${CLASS_ID}      ${ID_PRE}xxx
${CLASS_NAME}    ${NAME_PRE}testxxxx

${LESSON_NAME}   ${NAME_PRE}test_lesson
${LESSON_GROUP}  2020
${LAB_CONF_NAME}    ${NAME_PRE}test_lab_conf
${LAB_CONF_IMG}  tensorflow-cpu-course
${LAB_NAME}    ${NAME_PRE}test_lab
${LAB_WORK_NAME}  ${NAME_PRE}test_lab_work

${ORG_FILE}   /home/autotest/kube-kit-v2.3-autotests/autotest_org.xlsx
${USER_FILE}   /home/autotest/kube-kit-v2.3-autotests/autotest_user.xlsx
${LAB_GUIDE}     /home/autotest/kube-kit-v2.3-autotests/autotest.pdf
