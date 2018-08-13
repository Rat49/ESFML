@echo off
cd scripts
premake5.exe --file=esfml.lua --fatal vs2017
cd ..