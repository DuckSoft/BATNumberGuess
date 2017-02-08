echo off
title 猜数字机器
color a
cls
:r
 echo === 猜数字机器 ===
 set num=50
 set numL=1
 set numR=100
 pause
:try
 echo 我猜%num%。
 echo 大/小/重来?（d/x/r）

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