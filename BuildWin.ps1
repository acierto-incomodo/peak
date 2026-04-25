./Clear.ps1
cp main.py launcher_win.py
python -m PyInstaller --onefile --windowed --noconsole --icon=peak.ico launcher_win.py
python -m PyInstaller --onefile --windowed --noconsole --icon=peak.ico installer_updater.py
echo 1.1.1 > version_win_launcher.txt