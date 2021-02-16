@echo off

set HOME=/home/aithinker

%~dp0\bin\mintty.exe -i /AiThinker_Terminal.ico %~dp0\bin\bash.exe --login -c "cd %1 ; exec bash -rcfile ~/.bashrc"
