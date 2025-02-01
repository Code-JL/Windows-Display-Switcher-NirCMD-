@echo off
SETLOCAL EnableDelayedExpansion

:: Check if 'active.txt' exists, which stores the last active display
IF EXIST active.txt (
    :: Read the last active display from the file
    set /p display=< active.txt
    del active.txt  :: Delete the file to update it later

    :: Toggle between display 1 and 2
    IF "!display!" == "1" (
        nircmd.exe setprimarydisplay 2
        echo | set /P ="3"> "active.txt"  :: Store the new active display
    ) ELSE (
        nircmd.exe setprimarydisplay 1
        echo | set /P ="1"> "active.txt"
    )
) ELSE (
    :: If no previous record exists, default to display 1
    nircmd.exe setprimarydisplay 1
    echo | set /P ="1"> "active.txt"
)