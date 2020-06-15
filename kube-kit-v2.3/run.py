# -*- coding: utf-8 -*-

import openpyxl
import uuid
import os
import commands

def generate_excel(id_pre, name_pre):
    student_id = "%sxxxx" % id_pre
    student_name = "%stestxxxxx" % name_pre
    college_id = id_pre
    college_name = "%stestx" % name_pre
    department_id = "%sx" % id_pre
    department_name = "%stestxx" % name_pre
    specialty_id = "%sxx" % id_pre
    specialty_name = "%stestxxx" % name_pre
    class_id = "%sxxx" % id_pre
    class_name = "%stestxxxx" % name_pre

    org = openpyxl.load_workbook('org_template.xlsx')
    org_sheet = org.get_sheet_by_name(u'组织机构模板')
    org_sheet["A3"] = college_id
    org_sheet["B3"] = "1000"
    org_sheet["C3"] = "学院"
    org_sheet["D3"] = college_name

    org_sheet["A4"] = department_id
    org_sheet["B4"] = college_id
    org_sheet["C4"] = "科系"
    org_sheet["D4"] = department_name

    org_sheet["A5"] = specialty_id
    org_sheet["B5"] = department_id
    org_sheet["C5"] = "专业"
    org_sheet["D5"] = specialty_name

    org_sheet["A6"] = class_id
    org_sheet["B6"] = specialty_id
    org_sheet["C6"] = "班级"
    org_sheet["D6"] = class_name

    org.save('autotest_org.xlsx')

    user = openpyxl.load_workbook('user_template.xlsx')
    user_sheet = user.get_sheet_by_name(u'用户模板')
    user_sheet["A3"] = class_id
    user_sheet["B3"] = student_id
    user_sheet["C3"] = student_name
    user_sheet["D3"] = student_name

    user.save("autotest_user.xlsx")

if __name__ == "__main__":
    VIP = os.getenv("VIP")
    ID_PRE = str(uuid.uuid4()).split("-")[0]
    NAME_PRE = str(uuid.uuid4()).split("-")[0]
    MYSQL_DBHOST = os.getenv("MYSQL_DBHOST")
    MYSQL_DBPORT = os.getenv("MYSQL_DBPORT")
    MYSQL_AILAB_DBNAME = os.getenv("MYSQL_AILAB_DBNAME")
    MYSQL_AILAB_DBUSER = os.getenv("MYSQL_AILAB_DBUSER")
    MYSQL_AILAB_DBPASSWORD = os.getenv("MYSQL_AILAB_DBPASSWORD")
    VERSION = os.getenv("VERSION")

    generate_excel(ID_PRE, NAME_PRE)
    cmd = "su - autotest -c 'robot -v VIP:%s -v ID_PRE:%s -v NAME_PRE:%s -v MYSQL_DBHOST:%s -v MYSQL_DB_PORT:%s -v MYSQL_AILAB_DBNAME:%s -v MYSQL_AILAB_DBUSER:%s -v MYSQL_AILAB_DBPASSWORD:%s  /home/autotest/ai/ailab/%s/ailab.robot'" % (VIP, ID_PRE, NAME_PRE, MYSQL_DBHOST, MYSQL_DBPORT, MYSQL_AISTACK_DBNAME, MYSQL_AISTACK_DBUSER, MYSQL_AISTACK_DBPASSWORD, VERSION)
    s, o = commands.getstatusoutput(cmd)
    print o
