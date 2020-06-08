import openpyxl
import uuid
import os
import subprocess

ID_PRE = str(uuid.uuid4()).split("-")[0]
NAME_PRE = str(uuid.uuid4()).split("-")[0]

student_id = "%sxxxx" % ID_PRE
student_name = "%stest" % NAME_PRE
college_id = ID_PRE
college_name = "%stestx" % NAME_PRE
department_id = "%sx" % ID_PRE
department_name = "%stestxx" % NAME_PRE
specialty_id = "%sxx" % ID_PRE
specialty_name = "%stestxxx" % NAME_PRE
class_id = "%sxxx" % ID_PRE
class_name = "%stestxxxx" % NAME_PRE

org = openpyxl.load_workbook('org_template.xlsx')
org_sheet = org.get_sheet_by_name('组织机构模板')
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
user_sheet = user.get_sheet_by_name('用户模板')
user_sheet["A3"] = class_id
user_sheet["B3"] = student_id
user_sheet["C3"] = student_name
user_sheet["D3"] = student_name

user.save("autotest_user.xlsx")

if __name__ == "__main__":
    VIP = os.getenv("VIP")
    cmd = "su - autotest -c 'robot -v VIP:%s -v ID_PRE:%s -v NAME_PRE:%s   /home/autotest/kube-kit-v2.3-autotests/ailab.robot'" % (VIP, ID_PRE, NAME_PRE)
    for i in range(3):
        s, o = subprocess.getstatusoutput(cmd)
        if s:
            continue
        else:
            break
