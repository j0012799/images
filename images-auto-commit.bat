::@echo off
@title bat ����ִ��git����
E:
cd E:/learning
:: ϵͳ�в�����λʱ, �ǲ��ո��, �����жϵ�ʱ�ո�, ��0���滻�Ϳ�����
set hour=%time:~,2%
if "%time:~,1%"==" " set hour=0%time:~1,1%
git pull
git status
git add .
git commit -m %date:~0,4%��%date:~5,2%��%date:~8,2%��%hour%ʱ%time:~3,2%��%time:~6,2%��
git push
call :waitTimes
exit

:waitTimes
ping/n 200 127.0.0.1