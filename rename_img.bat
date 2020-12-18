@echo off

for %%a in (*@2x.png) do (
  echo %%a >> filename.txt
)
pause

setlocal ENABLEDELAYEDEXPANSION
for /f "tokens=1,2 delims=@" %%a in (filename.txt) do (
  del %%a.png
  pause
  rename %%a@%%b %%a.png
)
end local

del filename.txt
pause