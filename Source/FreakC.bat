@echo off
setlocal enabledelayedexpansion
if "%1" == "" fcshell
if "%2" == "--compile" set fccompile=true
set fccompilename=%1
set a=%fccompilename:.fclang=%
echo @echo off>%a%.bat
echo :FreakCCompiled>>%a%.bat
echo set /a numpuke=%%random%% %%%% 99 + 1 >>%a%.bat
echo set /a numpoop=%%random%% %%%% 999 + 1 >>%a%.bat
echo set /a numpiss=%%random%% %%%% 9 + 1 >>%a%.bat
echo set /a numdiarrhea=%%random%% %%%% 9999 + 1 >>%a%.bat
echo set /a numbutt=%%random%% %%%% 99999 + 1 >>%a%.bat
for /f "tokens=* delims= " %%x in (%a%.fclang) do (
	set printString=%%x
	for %%a in (%%x) do (
		if %%a == EatDrive[fnc] set printString=!printString:EatDrive[fnc] =!:
		if %%a == OddOrEven[fnc] (
			set /a num=!printString:~14! %% 2
			if !num! == 0 set printString=echo Is even!
			if not !num! == 0 set printString=echo Is odd!
		)
	)
	set printString=!printString:Swear[fnc]=echo!
	set printString=!printString:SwearLine[fnc]=echo.!
	set printString=!printString:PukeDir[fnc]=md!
	set printString=!printString:EatDir[fnc]=cd!
	set printString=!printString:Trash[fnc]=del!
	set printString=!printString:TrashDir[fnc]=rmdir!
	set printString=!printString:StealDiary[fnc]=type!
	set printString=!printString:PoopInt[fnc]=set /a!
	set printString=!printString:PoopString[fnc]=set!
	set printString=!printString:PoopInput[fnc]=set /p!
	set printString=!printString:EatFnc[fnc]=goto!
	set printString=!printString:GrabFnc[fnc]=call!
	set printString=!printString:ChangeColor[fnc]=color!
	set printString=!printString:ChangeSize[fnc]=mode!
	set printString=!printString:ChangeName[fnc]=title!
	set printString=!printString:RenameFile[fnc]=ren!
	set printString=!printString:MoveFile[fnc]=move!
	set printString=!printString:CopyFile[fnc]=copy!
	set printString=!printString:PlayFile[fnc]=start!
	set printString=!printString:Die[fnc]=exit!
	set printString=!printString:Loop[fnc]=goto FreakCCompiled!
	set printString=!printString:ShutdownSystem[fnc]=shutdown -s -t 0!
	set printString=!printString:RestartSystem[fnc]=shutdown -r -t 0!
	set printString=!printString:Forget[fnc]=cls!
	set printString=!printString:GotoToilet[fnc]=pause!
	set printString=!printString:OpenHouse[fnc]=SETLOCAL!
	set printString=!printString:CloseHouse[fnc]=ENDLOCAL!
	set printString=!printString:SeeTime[fnc]=date /t!
	set printString=!printString:SeeDate[fnc]=time /t!
	set printString=!printString:BuyCalender[fnc]=date!
	set printString=!printString:BuyClock[fnc]=time!
	set printString=!printString:MyMemory[fnc]=dir!
	set printString=!printString:DoIf[fnc]=if!
	set printString=!printString:DoIfFalse[fnc]=if not!
	set printString=!printString:DoIfDefined[fnc]=if defined!
	set printString=!printString:DoIfExist[fnc]=if exist!
	set printString=!printString:OrNot[fnc]=else!
	set printString=!printString:PoopFnc[fnc] =:!
	set printString=!printString:WaitForBus[fnc]=timeout /nobreak /t!
	set printString=!printString:EnableCoolStuff[fnc]=@echo on!
	set printString=!printString:DisableCoolStuff[fnc]=@echo off!
	set printString=!printString:LoopStuffs[fnc]=for /l!
	set printString=!printString:ScanOrgans[fnc]=for /r!
	set printString=!printString:ScanLetters[fnc]=for /f!
	set printString=!printString:ScanDiaries[fnc]=for!
	set printString=!printString:ScanDir[fnc]=for /d!
	set printString=!printString:++=+=1!
	set printString=!printString:--=-=1!
	echo. !printString!>>%a%.bat
)
echo pause>>%a%.bat
if not "%fccompile%" == "true" call %a%.bat
@echo on