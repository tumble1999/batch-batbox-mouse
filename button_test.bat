@echo off

set x=0
set y=0
call :normal
:mouse

for /f "tokens=1,2 delims=:" %%a in ('batbox /m') do (
set "x=%%a"
set "y=%%b"

if %y%==12 (
	if %x% GEQ 38 (
		if %x% LEQ 46 (
			call :click
			) else (
			call :normal
			)
		) else (
		call :normal
		)
	) else (
	call :normal
	)
)

goto mouse

:normal
batbox /g 38 12 /c 0xcf /d "<button>"
goto :eof



:click
batbox /g 38 12 /c 0xec /d "<button>" /w 100
goto :eof
