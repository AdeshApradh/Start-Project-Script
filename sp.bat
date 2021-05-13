@echo off

FOR /F "tokens=1,2,3* delims= " %%i IN (project_locations.txt) DO (
    IF %%i EQU %1 (
        cd /d %%j:%%k
        
        TITLE %%i

        

        IF "%~2" == "run" (
            @echo ====================================
            @echo OPENING VSCODE
            @echo ====================================
            @echo ====================================
            @echo RUNNING THE PROJECT ON ANDROID
            @echo ====================================
            code . && npm run android
        ) 
        IF "%~2" == "start" (
            @echo ====================================
            @echo OPENING VSCODE AND STARTING PROJECT
            @echo ====================================
            code . && npm start
        )
        IF "%~2" == ""  (
            @echo ====================================
            @echo CHANGING WORKING DIRECTORY
            @echo ====================================
        )
    ) 
)

