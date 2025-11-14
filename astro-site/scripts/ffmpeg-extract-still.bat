@echo off
for %%f in (*.gif) do (
    echo Processing gif %%f...
    ffmpeg -y -i "%%f" -vframes 1 "%%~nf.png"
    ffmpeg -y -i "%%f" -vframes 1 "%%~nf.webp"
)
echo Done!
pause
