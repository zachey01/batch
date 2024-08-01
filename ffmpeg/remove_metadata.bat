@echo off
color a
set a="input\*.jpg"
set b="output\%%~na.jpg"
set c=ffmpeg
set f=-map_metadata -1
for %%a in (%a%) do (%c% -y -i "%%a" %f% %b%)
exit