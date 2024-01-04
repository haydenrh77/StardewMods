powershell.exe -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/haydenrh77/StardewMods/main/version -OutFile version"
set /p curr=< currentVersion 
set /p new=< version

if %new% gtr %curr% (
	echo update available
	start cmd /k Call ".\update.bat"
)


start cmd /k Call ".\StardewModdingAPI.exe"