@echo off

set projname="USP.UI"

rmdir /s /q publish 

cd %projname%
rmdir /s /q bin
rmdir /s /q obj

dotnet publish %projname%.csproj --nologo -c Release -r win-x64 -f net6.0-windows -p:PublishSingleFile=true --no-self-contained -o ..\publish

pause