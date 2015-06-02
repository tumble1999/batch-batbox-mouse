@echo off
:mouse

for /f "tokens=1,2 delims=:" %%a in ('batbox /y') do (
set x=%%a
set y=%%b
batbox /g 0 0 /c 0x0f /d "X:%x% Y:%y% T:%t%" /c 0x07 /d "  "

)
goto mouse
