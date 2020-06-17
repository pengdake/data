# -*- coding: utf-8 -*-

import openpyxl
import uuid

STUDENT_NUM = 3


def generate_excel(id_pre, name_pre):
    student_id_pre = "%sxxxx" % id_pre
    student_name_pre = "%stestxxxxx" % name_pre
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
    for i in range(STUDENT_NUM):
        k = str(i+3)
        user_sheet["A"+k] = class_id
        user_sheet["B"+k] = str(i) + student_id_pre
        user_sheet["C"+k] = str(i) + student_name_pre
        user_sheet["D"+k] = str(i) + student_name_pre

    user.save("autotest_user.xlsx")

if __name__ == "__main__":
    ID_PRE = str(uuid.uuid4()).split("-")[0]
    NAME_PRE = str(uuid.uuid4()).split("-")[0]
    generate_excel(ID_PRE, NAME_PRE)
    student_name_pre = "%stestxxxxx" % NAME_PRE
    print(student_name_pre)
