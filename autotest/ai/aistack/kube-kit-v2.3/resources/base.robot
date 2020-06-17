
*** Variables ***
${BROWSER}        Chrome
${DELAY}          0
${VIP}    10.1.32.120
${BASE_URL}    https://${VIP}:8000
${CHROME_OPTIONS}    add_argument("--headless"); add_argument("--no-sandbox"); add_argument("--disable-dev-shm-usage"); add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors"); add_argument("window-size=1600,900")

${MYSQL_DBHOST}     aistack-mysql.aistack-mgmt
${MYSQL_DBPORT}     3306
${MYSQL_AISTACK_DBNAME}    aistack
${MYSQL_AISTACK_DBUSER}    aistack
${MYSQL_AISTACK_DBPASSWORD}    R0otAIStack

${ADMIN_USER}   admin

