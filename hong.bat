@echo off
setlocal enabledelayedexpansion
rem ָ�������ͼ��·��
set ScFolder=C:\BatHome\Batcher
rem �涨ָ����ͼ3��Сʱ
set hours=3
set /a minutes=hours*60
set count=181
:LoopPrtSc
call "C:\mouse.bat" scrollDown 1100
nircmd cmdwait 500 savescreenshot "%ScFolder%\screenshot_!count!.jpg"
if !count! equ %minutes% (
  goto :eof
) else (
  set /a count+=1
  goto :LoopPrtSc
)