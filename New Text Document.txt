::/// IGNORE
set yx=0
set yy=0
for /f "tokens=1,2 delims=:" %%a in ('batbox /y') do (
set "yx=%%a"
set "yy=%%b"
if %yy%==12 (
	if %yx% GEQ 38 (
		if %yx% LEQ 46 (
			call :hover
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

:hover
batbox /g 38 12 /c 0xce /d "<button>" /w 10
goto :eof