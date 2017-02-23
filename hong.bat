@echo off
setlocal enabledelayedexpansion
rem 指定保存截图的路径
set ScFolder=C:\BatHome\Batcher
rem 规定指定截图3个小时
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