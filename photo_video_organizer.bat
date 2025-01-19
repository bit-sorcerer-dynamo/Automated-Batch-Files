@echo off
setlocal enabledelayedexpansion
set "imageFound=false"

for %%f in (*.jpg *.jpeg *.png *.gif *.mp4 *.avi *.mov *.mkv) do (

    set "imageFound=true"
    echo Found image: %%f

    :: Get the creation date of the image
    for /f "tokens=1-3 delims= " %%a in ('forfiles /m "%%f" /c "cmd /c echo @fdate"') do (
        set "creationDate=%%c-%%a-%%b"
    )

    :: Create a folder named by the creation date if it doesn't exist
    if not exist "!creationDate!" (
        mkdir "!creationDate!"
    )

    :: Move the photo to the date-named folder
    move "%%f" "!creationDate!\"
)

if "%imageFound%"=="false" (
    echo No images found in the current directory.
)

endlocal
pause