# -*- coding: utf-8 -*-

import os
import commands
import shutil
import sys
import time

STUDENT_NUM = 3
VIP = "10.1.32.120"
STUDENT_NAME_PRE = '640529d9testxxxxx'
#CASE = "open_lesson_book.robot"
CASE = "open_lesson_video.robot"
VIDEO_LEN = "-1:2"
BOOK_PAGE = "86"

current_path = os.path.abspath(".")
TEST_PATH = os.path.join(current_path, "ailab_web")
REPORT_DIR = os.path.join(current_path, "report")


if __name__ == "__main__":
    if os.path.exists(REPORT_DIR):
        shutil.rmtree(REPORT_DIR)
    os.mkdir(REPORT_DIR)
    student_name_pre = STUDENT_NAME_PRE
    for i in range(STUDENT_NUM):
        student_name = str(i) + student_name_pre
        report_path = os.path.join(REPORT_DIR, student_name)
        os.mkdir(report_path)
        check_user = "su autotest"
        test_cmd = "robot -v VIP:%s -v STUDENT_NAME:%s -v VIDEO_LEN:%s -v BOOK_PAGE:%s -d /home/autotest/report /home/autotest/ailab_web/%s" % (VIP, student_name, VIDEO_LEN, BOOK_PAGE, CASE)
        docker_cmd = "sh -c 'chmod -R 777 /home/autotest/report && %s && %s'" % (check_user, test_cmd)
        s, o = commands.getstatusoutput("docker run -d -v %s:/home/autotest/ailab_web --name %s -v %s:/home/autotest/report ailab-autotest:0.1.0  %s" % (TEST_PATH, student_name, report_path, docker_cmd))
        if s != 0:
            print("Failed to start container %s to test!" % student_name)
        else:
            print("start containers %s successed" % student_name)

    print("*" * 12 + "wait  containers about batch tests  exited" + "*" * 12)
    time.sleep(30)

    while True:
        s, o = commands.getstatusoutput("docker ps | grep %s" % student_name_pre)
        if s != 0 and o == '':
            print("batch tests finish")
            break
        elif s == 0:
            time.sleep(3)
        else:
            print("error about docker: %s" % o)
            sys.exit(1)

    print("*" * 12 + "get result about batch tests" + "*" * 12)
    for i in range(STUDENT_NUM):
        student_name = str(i) + student_name_pre
        s, o = commands.getstatusoutput("docker logs %s | grep 'FAIL'" % student_name)
        if s == 0:
            clean_flag = False
            print("container %s: one or more tests is fail" % student_name)
        elif s != 0 and o == '':
            print("container %s: all tests are pass" % student_name)
        else:
            print("error about container %s: %s" % (student_name, o))
            sys.exit(1)

        if clean_flag:
            s, o = commands.getstatusoutput("docker rm $(docker ps -a | grep %s | awk '{print $1}')" % student_name)
            if s != 0:
                print("clean container %s failed: %s" % (student_name, o))
                sys.exit(1)
            else:
                print("clean container %s finished" % student_name)
