
# Disable-Windows-Update

Since it is not possible to **disable Windows update** on *Windows 10 Home*, here is a script to regain control.

There are two ways to call the batch script:

 - Via command line
	 - to enable:  type `windows_update.bat disable`
	 - to disable: type `windows_update.bat enable`
 - Via shortcuts Create two shortcuts with following targets: (if you put `windows_update.bat` in a folder *Windows Update* on your Desktop)
	 - to enable: `%windir%\system32\cmd.exe /k "%USERPROFILE%\Desktop\Windows Update\windows_update.bat" enable`
	 - to disable: `%windir%\system32\cmd.exe /k "%USERPROFILE%\Desktop\Windows Update\windows_update.bat" disable`
   - Note: if the path to the Desktop is *not the default* or you want to store the script in another place, you need to modify the target. Example If your userprofile folder is on another drive i.e. "K:\My username so cool\Desktop\Windows Update\windows_update.bat" enable", set `%windir%\system32\cmd.exe /k "K:\Mr Fly\Bureau\Windows Update\windows_update.bat" enable`

*Enable* means to stop (if running) and disable windows update
*Disable* means to start windows update in manual mode