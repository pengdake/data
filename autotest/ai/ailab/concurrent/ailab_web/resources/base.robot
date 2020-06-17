*** Variables ***
${BROWSER}        Chrome
${DELAY}          0
${VIP}    10.1.32.120
${BASE_URL}    https://${VIP}:8093
${CHROME_OPTIONS}    add_argument("--headless"); add_argument("--no-sandbox"); add_argument("--disable-dev-shm-usage"); add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors"); add_argument("window-size=1600,900")

${STUDENT_NAME}    29640529d9testxxxxx
${STUDENT_OLD_PASSWORD}  xxxx
${STUDENT_PASSWORD}  Awcloud!23

${VIDEO_LEN}   -1:2
${BOOK_PAGE}   86
