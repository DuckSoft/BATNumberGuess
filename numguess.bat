echo off
title �����ֻ���
color a
cls
:r
 echo === �����ֻ��� ===
 set num=50
 set numL=1
 set numR=100
 pause
:try
 echo �Ҳ�%num%��
 echo ��/С/����?��d/x/r��

 set/p strIn="]"

 if "%strIn%"=="d" goto d
 if "%strIn%"=="x" goto x
 if "%strIn%"=="r" goto r
 
 goto try
:d
 set numR=%num%
 set/a num=numL+(numR-numL)/2
 goto try
:x
 set numL=%num%
 set/a num=numL+(numR-numL)/2
 goto try