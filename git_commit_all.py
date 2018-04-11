import os
import subprocess
from datetime import datetime
from time import time
from os.path import isdir, exists, join, abspath


def main():
    now = datetime.now()
    # input(os.getcwd())
    # @echo off
    # for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set "dt=%%a"
    # set "YYYY=%dt:~0,4%"
    # set "MM=%dt:~4,2%"
    # set "DD=%dt:~6,2%"
    # set "HH=%dt:~8,2%"
    # set "Min=%dt:~10,2%"
    # set "Sec=%dt:~12,2%"

    try:
        print(time() - os.path.getmtime(r'.git\index.lock'))
        if time() - os.path.getmtime(r'.git\index.lock') > 3000:
            os.system(r'del ".\.git\index.lock"')
    except:
        pass

    si = subprocess.STARTUPINFO()
    si.dwFlags |= subprocess.STARTF_USESHOWWINDOW
    # subprocess.call('git rm -r --cached .', startupinfo=si)
    for dir in os.listdir('.'):
        break
        dir = abspath(dir)
        if isdir(dir) and isdir(join(dir, '.git')):
            os.system('git submodule add "{}"'.format(dir))
            # print(dir)
    # return

    subprocess.call('git add .', startupinfo=si)
    subprocess.call(
        'git commit -a -m "{}" '.format(now.strftime('%y-%m-%d %H%M')), startupinfo=si)


main()
# os.chdir(r'C:\Users\SANA-Sirius\Desktop\Software\AutoHotkey\repo')
# main()

if __name__ == '__main__':
    input()
