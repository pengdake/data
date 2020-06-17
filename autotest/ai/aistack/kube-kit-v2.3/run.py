import os
import commands

if __name__ == "__main__":
    VIP = os.getenv("VIP")
    MYSQL_DBHOST = os.getenv("MYSQL_DBHOST")
    MYSQL_DBPORT = os.getenv("MYSQL_DBPORT")
    MYSQL_AISTACK_DBNAME = os.getenv("MYSQL_AISTACK_DBNAME")
    MYSQL_AISTACK_DBUSER = os.getenv("MYSQL_AISTACK_DBUSER")
    MYSQL_AISTACK_DBPASSWORD = os.getenv("MYSQL_AISTACK_DBPASSWORD")
    VERSION = os.getenv("VERSION")
    commands.getoutput("chmod -R 777 /home/autotest/ai/aistack/%s" % VERSION)
    cmd = "su - autotest -c 'robot -v VIP:%s -v MYSQL_DBHOST:%s -v MYSQL_DB_PORT:%s -v MYSQL_AISTACK_DBNAME:%s -v MYSQL_AISTACK_DBUSER:%s -v MYSQL_AISTACK_DBPASSWORD:%s -d /home/autotest/ai/aistack/%s/ /home/autotest/ai/aistack/%s/aistack.robot'" % (VIP, MYSQL_DBHOST, MYSQL_DBPORT, MYSQL_AISTACK_DBNAME, MYSQL_AISTACK_DBUSER, MYSQL_AISTACK_DBPASSWORD, VERSION, VERSION)
    s, o = commands.getstatusoutput(cmd)
    print o
