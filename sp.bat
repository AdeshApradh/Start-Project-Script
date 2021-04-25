@echo off

FOR /F "tokens=1,2,3* delims= " %%i IN (project_locations.txt) DO (
    IF %%i EQU %1 (
        cd /d %%j:%%k
        
        TITLE %%i

        @echo ====================================
        @echo OPENING VSCODE
        @echo ====================================

        IF %2 EQU run (
            @echo ====================================
            @echo RUNNING THE PROJECT
            @echo ====================================
            code . && npm run android
        ) ELSE (
            code .   
        )
    ) 
)

