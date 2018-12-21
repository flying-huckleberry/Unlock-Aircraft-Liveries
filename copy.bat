@echo off

REM copies descriptions from Bazar/Liveries
cd /D G:\DCS World OpenBeta\Bazar\Liveries
for /D %%A in (*) do (
  cd %%A
  for /D %%B in (*) do (
    cd %%B
    xcopy description.lua "G:\test\Bazar\Liveries\%%A\%%B\"
    cd ..
  )
  cd ..
)

REM copies descriptions from CoreMods/aircraft
cd /D G:\DCS World OpenBeta\CoreMods\aircraft
for /D %%A in (*) do (
  cd %%A
  if exist "G:\DCS World OpenBeta\CoreMods\aircraft\%%A\Liveries\" (
    cd Liveries
    for /D %%B in (*) do (
      cd %%B
      for /D %%C in (*) do (
        cd %%C
        xcopy description.lua "G:\test\CoreMods\aircraft\%%A\Liveries\%%B\%%C\"
        cd ..
      )
      cd ..
    )
    cd ..
  )
  cd ..
)

REM copies descriptions from CoreMods/WWII Units
cd /D G:\DCS World OpenBeta\CoreMods\WWII Units
for /D %%A in (*) do (
  cd %%A
  if exist "G:\DCS World OpenBeta\CoreMods\WWII Units\%%A\Liveries\" (
    cd Liveries
    for /D %%B in (*) do (
      cd %%B
      for /D %%C in (*) do (
        cd %%C
        xcopy description.lua "G:\test\CoreMods\WWII Units\%%A\Liveries\%%B\%%C\"
        cd ..
      )
      cd ..
    )
    cd ..
  )
  cd ..
)
